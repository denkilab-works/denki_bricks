# Denki Repo

A brick to create your repository class including tests.
This brick works with the pine architecture and is strongly inspired by the [pine_bricks](https://github.com/MyLittleSuite/pine_bricks)

## How to use 🚀

```
mason make pine_repository --parent "auth" --name "Authentication" --methods "perform"
```

## Variables ✨

| Variable  | Description                               | Default | Type     |
|-----------|-------------------------------------------|---------|----------|
| `parent`  | The name of the feature folder            | feature | `string` |
| `name`    | The name of the repository                | Dash    | `string` |
| `methods` | The list of the methods (comma separated) | action  | `string` |

## Outputs 📦

```
--parent "auth" --name "Authentication"
├── lib
│   └── auth
│     └── repositories
│       └── authentication_repository.dart
├── test
│   └── auth
│     └── repositories
│       └── authentication_repository
│           └── authentication_repository_test.dart
└── ...
```
