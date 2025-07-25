# Denki Retrofit

A brick to generate a network service using retrofit including some unit tests.
This brick works with the pine architecture and is strongly inspired by the [pine_bricks](https://github.com/MyLittleSuite/pine_bricks)

## Dependencies needed in the codebase

- [pine](https://pub.dev/packages/pine)
- [data_fixture_dart](https://pub.dev/packages/data_fixture_dart)
- [freezed](https://pub.dev/packages/freezed)

## How to use 🚀

```
mason make pine_retrofit --name "Authentication"
```

## Variables ✨

| Variable  | Description                            | Default | Type      |
| --------- | -------------------------------------- | ------- | --------- |
| `parent`  | The name of the feature folder         | feature | `string`  |
| `name`    | The name of the retrofit service       | Dash    | `string`  |
| `context` | Generate retrofit extension on context | true    | `boolean` |

## Outputs 📦

```
--parent "auth" --name "Authentication"
├── lib
│   └── auth
│       └── services
│           └── authentication_service
│               └── authentication_service.dart
├── test
│   └── auth
│       └── services
│           └── authentication_service
│               └── authentication_service_test.dart
└── ...
```
