# Denki pine

A brick to generate the initial boilerplate for a pine DI and some utilities.

> IMPORTANT: you need to configure sentry and talker

## Dependencies needed in the codebase

- [pine](https://pub.dev/packages/pine)
- [talker](https://pub.dev/packages/talker)
- [sentry](https://pub.dev/packages/sentry)
- ...

## How to use 🚀

```
mason make denki_pine
```

## Outputs 📦

```
├── exceptions
│    └── repository_exception.dart
├── lib
│   └── di
│       └── blocs.dart
│       └── dependency_injector.dart
│       └── mappers.dart
│       └── providers.dart
│       └── repositories.dart
├── misc
│    └── repository.dart
└── ...
```
