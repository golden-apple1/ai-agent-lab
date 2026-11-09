# Command: create-build

## Передумови
- Вже існує базовий C++ проєкт.

## Дії
1. Додати `tests/test_main.cpp`.
2. Додати `enable_testing()` і `add_test` у `CMakeLists.txt`.
3. Створити `ci.sh` і `ci.bat` для configure/build/test.

## Очікувані файли
- `tests/test_main.cpp`
- `ci.sh`
- `ci.bat`
- Оновлений `CMakeLists.txt`

## Перевірки
- `bash ./ci.sh` або `./ci.bat`.

## Помилки
- `ctest` не бачить `BasicAddition`: перевірити реєстрацію тесту.

## Ідемпотентність
Скрипти та CMake конфігурація залишаються стабільними при повторному запуску.
