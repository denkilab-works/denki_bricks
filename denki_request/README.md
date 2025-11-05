# Denki DTO

A brick to create your network request class including fixtures for testing.

This brick works with the pine architecture and is strongly inspired by the [pine_bricks](https://github.com/MyLittleSuite/pine_bricks)

## Dependencies needed in the codebase

- [pine](https://pub.dev/packages/pine)
- [data_fixture_dart](https://pub.dev/packages/data_fixture_dart)
- [freezed](https://pub.dev/packages/freezed)

## How to use 🚀

```
mason make denki_request --parent "feature" --name "Example"
```

## Variables ✨

| Variable | Description                    | Default | Type     |
| -------- | ------------------------------ | ------- | -------- |
| `parent` | The name of the feature folder | feature | `string` |
| `name`   | The name of the request        | Dash    | `string` |

## Outputs 📦

```
--parent "example_feature" --name "Example"
├── lib
│   └── example_feature
│       └── request
│            └── example
│                 └── example_request.dart
├── test
│   └── example_feature
│     └── fixtures
│          └── request
│               └── example_request_fixture_factory.dart
└── ...
```
