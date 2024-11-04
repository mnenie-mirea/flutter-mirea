# Программирование корпоративных систем
Дисциплина: **Программирование корпоративных систем** <br>
Семестр: 5 <br>
Выполнил студент **ЭФБО-01-22 Пешков А.Н.** <br>

### Usage

Create

```bash
flutter create flutter_app_8
```

Run Frontend

```bash
flutter emulators --launch Pixel 4 API 35
flutter run
```

Run Backend

```bash
go run main.go
```

Протестил API через Hoppccortch

<img src="/-static/practice_8/hoppscotch.png" />

На фронте использовал [dio](https://pub.dev/packages/dio) для запросов на бэк а так же написал отдельный сервис для продуктов с отдельными методами: [product_service.dart](/flutter_app_8/lib/services/product_service.dart)

`getProducts`, `getProductById`, `createProduct`, `updateProductById`, `deleteProduct`

### Screens

<img src="/-static/practice_8/products.png" />
&nbsp;
<img src="/-static/practice_8/product.png" />
&nbsp;
