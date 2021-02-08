# 7. Maintenance

## 1. Report errors to a service

- 에러가 생기면 리포트 생성해서 받기
- 예시: Sentry 서비스로 에러 리포트를 보내는 방법
  1. Sentry에서 DSN (Data Source Name) 받기
  2. Sentry 패키지 임포트
  3. `SentryClient` 생성
     ```dart
     final SentryClient _sentry = SentryClient(dsn: "App DSN goes Here");
     ```
  4. 에러 리포트 함수 생성
  5. Dart 관련 에러 캐치
  6. Flutter 관련 에러 캐치
