# Docker 이미지 선택 (Java 17 기준)
FROM eclipse-temurin:17-jdk

# 작업 디렉토리 생성
WORKDIR /app

# JAR 복사
COPY build/libs/app-0.0.1-SNAPSHOT.jar app.jar

# 포트 열기
EXPOSE 8080

# 애플리케이션 실행
ENTRYPOINT ["java", "-jar", "app.jar"]
