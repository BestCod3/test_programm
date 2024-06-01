class Product {
  String imgUrl;
  String name;
  String desc;
  String price;
  Function? onTap;
  Product(
      {required this.imgUrl,
      required this.desc,
      required this.name,
      required this.price,
      this.onTap});

  static List<Product> generatePhoneProduct() {
    return [
      Product(
          imgUrl: 'https://24.kg/thumbnails/37bba/6f67c/97099_w750_h_r.png',
          desc: '''Сеть
Размер SIM-карты HYBRID SIM
Количество SIM-карт Две SIM-карты
3G FDD LTE Объединение до 7 частотных каналов, LTE Категории 20
Экран
Dynamic AMOLED
Диагональ 6.1"
Разрешение экрана 3030 x 1330 Quad HD+ (550 ppi)
Память
Оперативная память (ГБ) 8
Встроенная память (ГБ) 128
Внешняя память MicroSD (до 512 ГБ)
Физические характеристики
Размеры (В x Ш x Г, мм) 139.9 x 70.3 x 7.8
Вес (г.) 157
Сервисы и приложения
Поддержка Samsung DeX
Подключения
ANT+
USB Type-C
Разъем наушников 3,5-мм Стерео
Wi-Fi 802.11 a/b/g/n/ac/ax 2.3 G+5 GHz, VHT80 MU-MIMO
Bluetooth® v 5.0 (LE up to 2 Mbps)
NFC''',
          name: 'Samsung s10',
          price: '23500 som',
          onTap: () {}),
      Product(
          imgUrl:
              'https://object.pscloud.io/cms/cms/Photo/img_0_77_3123_10_1_320.webp',
          desc: '''Сильный мира всего
Невероятно яркий дисплей в прочном корпусе. Режим «Киноэффект», который делает из вашего видео настоящее кино. Супербыстрый чип. И неутомимый аккумулятор.

Ярко, красочно и чётко
Дисплей OLED — энергоэффективный и контрастный даже при ярком солнечном свете. А прочный корпус надёжно защищён от воды и пыли.

iPhone закончил киношколу за вас
Снимайте видео с малой глубиной резкости и красивыми автоматическими переводами фокуса — это добавит выразительности.

Передовые камеры для отличных фотографий
Мощное обновление для отличных фото и видео. Широкоугольная камера, улавливающая больше света. Оптическая стабилизация изображения сдвигом матрицы. И ещё больше деталей в тёмных областях кадра при съёмке на сверхширокоугольную камеру.

Заряда хватит надолго
Вы заметите, что аккумулятор держится ощутимо дольше. А значит, у вас будет больше времени для фильмов, игр и любимых дел.

Чип, с которым всё супербыстро
Чип A15 Bionic отвечает за превосходную работу игр со сложной графикой, а также работу новых функций камеры, таких как режим «Киноэффект» и Фотогра­фические стили. А ещё новый чип увеличивает время работы от аккумулятора.''',
          name: 'iPhone 13, 128 ГБ',
          price: '56 990 som'),
      Product(
          name: 'Xiaomi Redmi 10A 4+64GB CN',
          imgUrl:
              'https://login.kg/image/cache/webp/catalog/new/Phones/Xiaomi/Redmi%2010A/1-500x400.webp',
          desc: '''Мобильный CPU
Mediatek Helio G25
Тактовая частота (МГц):
2 000
Количество ядер:
8
Производитель:
Xiaomi
Модель:
Redmi 10A
Год выпуска:
2022
Габариты (ШхВхТ, мм):
164.9 x 77 x 9
Вес (г):
194
Оперативная память (Гб):
4
Встроенная память (Гб):
64''',
          price: '6700 som'),
      Product(
          name: 'Xiaomi Redmi Note 12 4G 8+128GB EU',
          desc: ''' Мобильный CPU
Snapdragon 685
Тактовая частота (МГц):
2 800
Количество ядер:
8
Производитель:
Xiaomi
Модель:
Redmi Note 12
Год выпуска:
2023
Габариты (ШхВхТ, мм):
165.7 x 76 x 7.9
Вес (г):
183
Оперативная память (Гб):
8
Встроенная память (Гб):
128''',
          imgUrl:
              'https://login.kg/image/cache/webp/catalog/new/Phones/Xiaomi/Note%2012/Note%2012%204G/1-500x400.webp',
          price: '12 900 som'),
      Product(
          name: 'Xiaomi Redmi Note 12 4G 8+128GB EU',
          desc: ''' Мобильный CPU
Snapdragon 685
Тактовая частота (МГц):
2 800
Количество ядер:
8
Производитель:
Xiaomi
Модель:
Redmi Note 12
Год выпуска:
2023
Габариты (ШхВхТ, мм):
165.7 x 76 x 7.9
Вес (г):
183
Оперативная память (Гб):
8
Встроенная память (Гб):
128''',
          imgUrl:
              'https://login.kg/image/cache/webp/catalog/new/Phones/Xiaomi/Note%2012/Note%2012%204G/1-500x400.webp',
          price: '12 900 som')
    ];
  }

  static List<Product>? generateHeadphoneProduct() {
    return [
      Product(
          imgUrl:
              'https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F6544dad947b5e_39.png&w=256&q=75',
          name: 'SODO-1010',
          desc:
              '''Стильные наушники отличаются своими мощными басами и прекрасным звуком. Они изготовлены из пластика и высокопрочного алюминия. Совместимы со всеми современными смартфонами. Подключение осуществляется через Bluetooth. Радиус действия 10 метров. Не вызывают дискомфорта даже при длительном использовании. Мягкие амбушюры принимают форму ушей, благодаря чему обеспечивается надежная посадка гарнитуры. Беспроводные Bluetooth наушники обладают прекрасным шумоподавлением, что дарит возможность насладиться первоклассным звуком. Телескопическое оголовье изготовлено из прочного металла. Оно покрыто кожаным ободком, благодаря которому у вас останутся только приятные ощущения от использования наушников''',
          price: "2300 som"),
      Product(
          imgUrl:
              'https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F6544dad947b5e_39.png&w=256&q=75',
          name: 'SODO-1010',
          desc:
              '''Стильные наушники отличаются своими мощными басами и прекрасным звуком. Они изготовлены из пластика и высокопрочного алюминия. Совместимы со всеми современными смартфонами. Подключение осуществляется через Bluetooth. Радиус действия 10 метров. Не вызывают дискомфорта даже при длительном использовании. Мягкие амбушюры принимают форму ушей, благодаря чему обеспечивается надежная посадка гарнитуры. Беспроводные Bluetooth наушники обладают прекрасным шумоподавлением, что дарит возможность насладиться первоклассным звуком. Телескопическое оголовье изготовлено из прочного металла. Оно покрыто кожаным ободком, благодаря которому у вас останутся только приятные ощущения от использования наушников''',
          price: "2300 som"),
      Product(
          imgUrl:
              'https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F6544dad947b5e_39.png&w=256&q=75',
          name: 'SODO-1010',
          desc:
              '''Стильные наушники отличаются своими мощными басами и прекрасным звуком. Они изготовлены из пластика и высокопрочного алюминия. Совместимы со всеми современными смартфонами. Подключение осуществляется через Bluetooth. Радиус действия 10 метров. Не вызывают дискомфорта даже при длительном использовании. Мягкие амбушюры принимают форму ушей, благодаря чему обеспечивается надежная посадка гарнитуры. Беспроводные Bluetooth наушники обладают прекрасным шумоподавлением, что дарит возможность насладиться первоклассным звуком. Телескопическое оголовье изготовлено из прочного металла. Оно покрыто кожаным ободком, благодаря которому у вас останутся только приятные ощущения от использования наушников''',
          price: "2300 som"),
    ];
  }

  static List<Product>? generateTVProduct() {
    return [
      Product(
        imgUrl:
            'https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F65449027a0d9d_frame-19.png&w=256&q=75',
        name: "Awei T30 PRO",
        desc: '''Особенности:
- Телевизоры оригинальные от Xiaomi, азиатская версия.
- Смарт ТВ
- 4K, Android 9, Wi-FI, Bluetooth
- Меню телевизора на русском и английском языках.
- Установлен Маркет, где можно скачать приложения
- Уже установлены интернет браузеры и различные приложения для просмотра фильмов и сериалов (Opera, Youtube, HDRezka и тд)
- Наше цифровое TV не ловит (Которое через домашнюю Антенну), но можно смотреть телевидение через интернет провайдеров.''',
        price: "3200 som",
      ),
      Product(
        imgUrl:
            'https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F65449027a0d9d_frame-19.png&w=256&q=75',
        name: "Awei T30 PRO",
        desc: '''Особенности:
- Телевизоры оригинальные от Xiaomi, азиатская версия.
- Смарт ТВ
- 4K, Android 9, Wi-FI, Bluetooth
- Меню телевизора на русском и английском языках.
- Установлен Маркет, где можно скачать приложения
- Уже установлены интернет браузеры и различные приложения для просмотра фильмов и сериалов (Opera, Youtube, HDRezka и тд)
- Наше цифровое TV не ловит (Которое через домашнюю Антенну), но можно смотреть телевидение через интернет провайдеров.''',
        price: "3200 som",
      ),
      Product(
        imgUrl:
            'https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F65449027a0d9d_frame-19.png&w=256&q=75',
        name: "Awei T30 PRO",
        desc: '''Особенности:
- Телевизоры оригинальные от Xiaomi, азиатская версия.
- Смарт ТВ
- 4K, Android 9, Wi-FI, Bluetooth
- Меню телевизора на русском и английском языках.
- Установлен Маркет, где можно скачать приложения
- Уже установлены интернет браузеры и различные приложения для просмотра фильмов и сериалов (Opera, Youtube, HDRezka и тд)
- Наше цифровое TV не ловит (Которое через домашнюю Антенну), но можно смотреть телевидение через интернет провайдеров.''',
        price: "3200 som",
      ),
      Product(
        imgUrl:
            'https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F65449027a0d9d_frame-19.png&w=256&q=75',
        name: "Awei T30 PRO",
        desc: '''Особенности:
- Телевизоры оригинальные от Xiaomi, азиатская версия.
- Смарт ТВ
- 4K, Android 9, Wi-FI, Bluetooth
- Меню телевизора на русском и английском языках.
- Установлен Маркет, где можно скачать приложения
- Уже установлены интернет браузеры и различные приложения для просмотра фильмов и сериалов (Opera, Youtube, HDRezka и тд)
- Наше цифровое TV не ловит (Которое через домашнюю Антенну), но можно смотреть телевидение через интернет провайдеров.''',
        price: "3200 som",
      ),
    ];
  }
}