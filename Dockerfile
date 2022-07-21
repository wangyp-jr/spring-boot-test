# 基础镜像使用Java
FROM java:8
# 作者
MAINTAINER mamr <mamr@broada.com>
# 指定容器的/tmp目录(挂载点、卷)与主机的/var/lib/docker目录下创建的临时文件夹关联起来
VOLUME /tmp
# 将jar包添加到容器中并更名为spring-boot-test.jar
ADD spring-boot-test-1.0-SNAPSHOT.jar spring-boot-test.jar
# 运行jar包
RUN bash -c 'touch /spring-boot-test.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-boot-test.jar"]