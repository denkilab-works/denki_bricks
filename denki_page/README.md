# Pine Page

A brick to generate an auto_route page with some boilerplate and tests.

## Dependencies needed in the codebase

- [auto_route](https://pub.dev/packages/auto_route)
- [flutter_bloc](https://pub.dev/packages/flutter_bloc)

## How to use 🚀

```
mason make pine_page --name "SignIn"
```

## Variables ✨

| Variable     | Description                                 | Default | Type      |
| ------------ | ------------------------------------------- | ------- | --------- |
| `name`       | The name of the page                        | Dash    | `string`  |
| `state`      | Whether the class should be stateful or not | false   | `boolean` |
| `auto_route` | Include the AutoRouteWrapper                | false   | `boolean` |

## Outputs 📦

```
--name "SignIn"
├── lib
│   └── pages
│       └── sign_in_page.dart
├── test
│   └── pages
│       └── sign_in_page
│           └── sign_in_page_test.dart
└── ...
```
