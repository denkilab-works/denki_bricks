# Denki Cubit

A brick to create your cubits (with methods and states) including tests.
This brick works with the pine architecture and is strongly inspired by the [pine_bricks](https://github.com/MyLittleSuite/pine_bricks)

## Dependencies needed in the codebase

- [flutter_bloc](https://pub.dev/packages/flutter_bloc)

## How to use 🚀

```
mason make denki_cubit --parent "auth" --name "SignIn" --methods "perform" --states "performing,performed,error"
```

## Variables ✨

| Variable  | Description                               | Default | Type      |
| --------- | ----------------------------------------- | ------- | --------- |
| `parent`  | The name of the feature folder            | feature | `string`  |
| `name`    | The name of the cubit                     | Dash    | `string`  |
| `methods` | The list of the methods (comma separated) | action  | `string`  |
| `states`  | The list of the states (comma separated)  | initial | `string`  |
| `utils`   | Generate a state utils file               | false   | `boolean` |
| `context` | Generate Cubit extension on context       | true    | `boolean` |

## Outputs 📦

```
--name "SignIn" --parent "auth" --methods "perform" --states "performing,performed,error"
├── lib
│   └── auth
│     └── cubits
│       └── sign_in
│           |── sign_in_cubit.dart
│           └── sign_in_state.dart
├── test
│   └── auth
│     └── cubits
│       └── sign_in
│           └── sign_in_cubit_test.dart
└── ...
```
