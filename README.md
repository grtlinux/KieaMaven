KieaMaven
=========

Maven project

```
DOS> set M2_HOME=C:\hanwha\apache-maven-3.3.3

DOS> set PATH=%M2_HOME%\bin;%PATH%

DOS> mvn -version
	Apache Maven 3.3.3 (7994120775791599e205a5524ec3e0dfe41d4a06; 2015-04-22T20:57:37+09:00)
	Maven home: C:\hanwha\apache-maven-3.3.3\bin\..
	Java version: 1.8.0_152, vendor: Oracle Corporation
	Java home: C:\hanwha\java\jdk1.8.0_152\jre
	Default locale: ko_KR, platform encoding: MS949
	OS name: "windows 7", version: "6.1", arch: "amd64", family: "dos"

DOS> mvn archetype:generate
	.....
	Choose a number or apply filter (format: [groupId:]artifactId, case sensitive contains): 1285: <Enter>
	Choose org.apache.maven.archetypes:maven-archetype-quickstart version:
	1: 1.0-alpha-1
	2: 1.0-alpha-2
	3: 1.0-alpha-3
	4: 1.0-alpha-4
	5: 1.0
	6: 1.1
	7: 1.3
	Choose a number: 7: <Enter>
	.....
	
	Define value for property 'groupId': org.tain
	Define value for property 'artifactId': kang01
	Define value for property 'version' 1.0-SNAPSHOT: :
	Define value for property 'package' org.tain: :
	Confirm properties configuration:
	groupId: org.tain
	artifactId: kang01
	version: 1.0-SNAPSHOT
	package: org.tain
	 Y: :
	[INFO] ----------------------------------------------------------------------------
	[INFO] Using following parameters for creating project from Archetype: maven-archetype-quickstart:1.3
	[INFO] ----------------------------------------------------------------------------
	[INFO] Parameter: groupId, Value: org.tain
	[INFO] Parameter: artifactId, Value: kang01
	[INFO] Parameter: version, Value: 1.0-SNAPSHOT
	[INFO] Parameter: package, Value: org.tain
	[INFO] Parameter: packageInPathFormat, Value: org/tain
	[INFO] Parameter: package, Value: org.tain
	[INFO] Parameter: version, Value: 1.0-SNAPSHOT
	[INFO] Parameter: groupId, Value: org.tain
	[INFO] Parameter: artifactId, Value: kang01
	[INFO] Project created from Archetype in dir: D:\TEST\kang01
	[INFO] ------------------------------------------------------------------------
	[INFO] BUILD SUCCESS
	[INFO] ------------------------------------------------------------------------
	[INFO] Total time: 01:38 min
	[INFO] Finished at: 2018-11-19T02:55:46+09:00
	[INFO] Final Memory: 14M/144M
	[INFO] ------------------------------------------------------------------------

DOS> 
DOS> 
DOS> 
```

Maven Web Project with jetty web

```
DOS> mvn archetype:generate -DarchetypeArtifactId=maven-archetype-webapp

DOS> type pom.xml
	<project 
		xmlns="http://maven.apache.org/POM/4.0.0" 
		xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
		xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 
			http://maven.apache.org/maven-v4_0_0.xsd">
		
		<modelVersion>4.0.0</modelVersion> 
		
		<groupId>com.devkuma</groupId> 
		<artifactId>SampleWebApp</artifactId> 
		<packaging>war</packaging> 
		<version>1.0-SNAPSHOT</version> 
		<name>SampleWebApp Maven Webapp</name> 
		<url>http://maven.apache.org</url> 
		
		<properties> 
			<project.build.sourceEncoding>UTF-8</project.build.sourceEncoding> 
			<jetty.version>9.4.8.v20171121</jetty.version>
		</properties> 
		
		<dependencies>
			<dependency> 
				<groupId>junit</groupId> 
				<artifactId>junit</artifactId> 
				<version>3.8.1</version> 
				<scope>test</scope> 
			</dependency> 
			<dependency> 
				<groupId>org.eclipse.jetty</groupId> 
				<artifactId>jetty-server</artifactId> 
				<version>${jetty.version}</version> 
			</dependency> 
			<dependency> 
				<groupId>org.eclipse.jetty</groupId> 
				<artifactId>jetty-webapp</artifactId> 
				<version>${jetty.version}</version>
			</dependency> 
		</dependencies>
		<build> 
			<finalName>SampleWebApp</finalName> 
			<plugins> 
				<plugin>
					<groupId>org.eclipse.jetty</groupId>
					<artifactId>jetty-maven-plugin</artifactId>
					<version>${jetty.version}</version>
				</plugin> 
			</plugins>
		</build> 
	</project>

DOS> mvn package

DOS> mvn install

DOS> mvn jetty:run

DOS> 
DOS> 
DOS> 
DOS> 
DOS> 
DOS> 
DOS> 
DOS> 

```


### References
- [Maven 기초 사용법](http://javacan.tistory.com/entry/MavenBasic "")
- [Maven 을 이용한 프로젝트 생성 및 활용](http://unabated.tistory.com/entry/Maven-%EC%9D%84-%EC%9D%B4%EC%9A%A9%ED%95%9C-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%EC%83%9D%EC%84%B1-%EB%B0%8F-%ED%99%9C%EC%9A%A9 "")
- [Maven 빠르게 시작(퀵 가이드)](http://araikuma.tistory.com/445 "")
- [Maven-Web 응용 프로그램 개발](http://araikuma.tistory.com/449 "Maven-Web 응용 프로그램 개발")
- [tomcat7-maven-plugin - 메이븐에서 톰캣 구동해서 app deploy 하기](https://www.lesstif.com/pages/viewpage.action?pageId=14090451 "tomcat7-maven-plugin - 메이븐에서 톰캣 구동해서 app deploy 하기")
- [Maven Tomcat plugin 설치 및 웹프로젝트 생성방법](http://jijs.tistory.com/entry/Maven-Tomcat-plugin-%EC%84%A4%EC%B9%98-%EB%B0%8F-%EC%9B%B9%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%EC%83%9D%EC%84%B1%EB%B0%A9%EB%B2%95 "Maven Tomcat plugin 설치 및 웹프로젝트 생성방법"): deploy method
- [Maven에서 Tomcat을 실행시켜 결과를 확인해보자..](https://zgundam.tistory.com/39 "Maven에서 Tomcat을 실행시켜 결과를 확인해보자..")
- [Run Maven Java Web Application in Tomcat Maven Plugin](https://o7planning.org/en/10133/run-maven-java-web-application-in-tomcat-maven-plugin "Run Maven Java Web Application in Tomcat Maven Plugin")
- [Linux에 Azure App Service에 Spring Boot JAR 파일 웹앱 배포](https://docs.microsoft.com/ko-kr/java/azure/spring-framework/deploy-spring-boot-java-app-with-maven-plugin?view=azure-java-stable "Linux에 Azure App Service에 Spring Boot JAR 파일 웹앱 배포"):
- [Building an Application with Spring Boot](https://spring.io/guides/gs/spring-boot/ "Building an Application with Spring Boot")
- [STS를 이용한 Spring Boot 웹 프로젝트 시작하기](http://millky.com/@origoni/post/1000 "STS를 이용한 Spring Boot 웹 프로젝트 시작하기")
- []( "")
- []( "")
- []( "")
- []( "")
- []( "")
- []( "")

.....


