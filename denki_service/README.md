# Denki Service

A brick to create your Services including some unit tests.
This brick works with the pine architecture and is strongly inspired by the [pine_bricks](https://github.com/MyLittleSuite/pine_bricks)

## Dependencies needed in the codebase

- [pine](https://pub.dev/packages/pine)
- [data_fixture_dart](https://pub.dev/packages/data_fixture_dart)
- [freezed](https://pub.dev/packages/freezed)

## How to use 🚀

```
mason make denki_service --parent "feature" --name "Example" --methods "get, set"
```

## Variables ✨

| Variable  | Description                               | Default | Type     |
| --------- | ----------------------------------------- | ------- | -------- |
| `parent`  | The name of the feature folder            | feature | `string` |
| `name`    | The name of the service                   | Dash    | `string` |
| `methods` | The list of the methods (comma separated) | action  | `string` |

## Outputs 📦

```
--parent "exampleFeature" --name "authentication" --methods "get, set"
├── lib
│   └── example_feature
│     └── services
│       └── authentication_service.dart
├── test
│   └── example_feature
│       └── services
│         └── authentication
│           └── authentication_service_test.dart
└── ...
```
