FROM maven:3.6.3-openjdk-8-slim
WORKDIR /app
COPY . .
# 호스트의 Dockerfile의 위치에 있는 모든 파일이
# 컨테이너 내부의 /app 에 복사가 됨.
RUN mvn clean package
# target 폴더에 springbootApp.jar 생성
CMD ["java","-jar","target/springbootApp.jar"]

