## KieaMaven
Maven projects

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
DOS> 
DOS> 
DOS> 
DOS> 
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
> [Maven 기초 사용법](http://javacan.tistory.com/entry/MavenBasic "")  
> [Maven 을 이용한 프로젝트 생성 및 활용](http://unabated.tistory.com/entry/Maven-%EC%9D%84-%EC%9D%B4%EC%9A%A9%ED%95%9C-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%EC%83%9D%EC%84%B1-%EB%B0%8F-%ED%99%9C%EC%9A%A9 "")  
> [Maven 빠르게 시작(퀵 가이드)](http://araikuma.tistory.com/445 "")  
> []( "")  
.....


