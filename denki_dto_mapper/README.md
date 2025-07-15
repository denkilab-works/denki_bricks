# Denki DTO Mapper

A brick that creates a Mapper class for DTOs and Models translations
This brick works with the pine architecture and is strongly inspired by the [pine_bricks](https://github.com/MyLittleSuite/pine_bricks)

## Dependencies needed in the codebase

- [pine](https://pub.dev/packages/pine)
- [data_fixture_dart](https://pub.dev/packages/data_fixture_dart)

## How to use 🚀

```
mason make denki_dto_mapper --parent "feature" --dto_name "ExampleDTO" --model_name "Example"
```

## Variables ✨

| Variable     | Description                                    | Default | Type     |
| ------------ | ---------------------------------------------- | ------- | -------- |
| `parent`     | The name of the feature folder                 | feature | `string` |
| `dto_name`   | The name of the DTO (used for the mapper name) | Dash    | `string` |
| `model_name` | The name of the Model                          | Dash    | `string` |

## Outputs 📦

```
--parent "example_feature" --dto_name "ExampleDTO" --model_name "Example"
├── lib
│   └── example_feature
│       └── mappers
│           └── example_dto_mapper.dart
├── test
│   └── example_feature
│       └── mappers
│           └── example_dto_mapper_test.dart
└── ...
```
