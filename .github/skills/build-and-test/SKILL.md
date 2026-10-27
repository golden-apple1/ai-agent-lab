# Skill: build-and-test

## Призначення
Налаштування CMake/CTest і тесту `BasicAddition`.

## Умови застосування
- Існує `CMakeLists.txt` і вихідний код проєкту.

## Входи
- Шлях до кореня проєкту.
- Назва тесту (`BasicAddition`).

## Виходи
- Тестовий файл `tests/test_main.cpp`.
- Реєстрація тесту в CTest.

## Кроки
1. Додати каталог `tests`.
2. Створити `tests/test_main.cpp` з перевіркою `2 + 2 == 4`.
3. Увімкнути `enable_testing()`.
4. Додати `add_test(NAME BasicAddition COMMAND test_main)`.
5. Запустити configure/build/test.

## Перевірки
- `ctest --test-dir build --output-on-failure` проходить.
- У виводі є тест `BasicAddition`.

## Очікуваний результат
Стабільний локальний build та один базовий CTest без зовнішніх залежностей.

## Типовий сценарій помилки
- **Симптом:** тест не знайдено CTest.
- **Дія:** перевірити `enable_testing()` і `add_test` у `CMakeLists.txt`.
