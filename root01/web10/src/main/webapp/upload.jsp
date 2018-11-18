<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="java.io.File"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="java.util.List"%>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.io.IOException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Insert title here</title>
</head>
<body>
<%
    System.out.println("############## upload.jsp [START] ##############");

    boolean isMultipart = ServletFileUpload.isMultipartContent(request);

    if (isMultipart) {
        File dir = new File("/Users/kangmac/TEMP/tomcat/tmp/");
        File realDir = new File("/Users/kangmac/TEMP/tomcat/upload/");

        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(100 * 1024 * 1024);
        factory.setRepository(dir);

        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(15 * 1024 * 1024 * 1024);
        List<FileItem> items = upload.parseRequest(request);

        System.out.println(">>>>> upload.jsp [REQUEST OK]");

        Iterator<FileItem> iter = items.iterator();
        while (iter.hasNext()) {
            FileItem fileItem = iter.next();

            if (fileItem.isFormField()) {
                // text형태면 if문에 걸림
                System.out.println("폼 파라미터: " + fileItem.getFieldName() + "=" + fileItem.getString("euc-kr") + "<br>");
            } else {
                if (fileItem.getSize() > 0) {
                    String fieldName = fileItem.getFieldName();
                    String fileName = fileItem.getName();
                    String contentType = fileItem.getContentType();
                    boolean isInMemory = fileItem.isInMemory();
                    long sizeInBytes = fileItem.getSize();
                    System.out.println("파일 [fieldName] : " + fieldName + "<br/>");
                    System.out.println("파일 [fileName] : " + fileName + "<br/>");
                    System.out.println("파일 [contentType] : " + contentType + "<br/>");
                    System.out.println("파일 [isInMemory] : " + isInMemory + "<br/>");
                    System.out.println("파일 [sizeInBytes] : " + sizeInBytes + "<br/>");

                    try {
                        File uploadedFile = new File(realDir, fileName);
                        fileItem.write(uploadedFile);
                        fileItem.delete();
                    } catch(IOException ex) {}
                }
            }
        }
    } else {
        System.out.println("인코딩 타입이 multipart/form-data 가 아님.");
    }

    System.out.println("############## upload.jsp [END] ##############");
%>
<a href="/form.html">FILEUPLOAD</a>

</body>
</html>
