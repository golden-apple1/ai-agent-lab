# Skill: github-actions

## Призначення
Створення CI matrix для Windows/Linux/macOS.

## Умови застосування
- Наявні `ci.sh` і `ci.bat`.
- Репозиторій містить CMake-проєкт.

## Входи
- Цільові ОС: `ubuntu-latest`, `windows-latest`, `macos-latest`.
- Гілки тригерів: `develop`, `main`.

## Виходи
- `.github/workflows/ci.yml`.

## Кроки
1. Створити одну job з matrix ОС.
2. Додати `actions/checkout@v4`.
3. Для Windows запускати `ci.bat`.
4. Для Linux/macOS запускати `ci.sh`.
5. Додати trigger `push` і `pull_request` для `develop` та `main`.

## Перевірки
- YAML валідний.
- На кожній ОС виконується лише відповідний скрипт.

## Очікуваний результат
Єдина CI job з matrix 3 ОС та успішним build/test.

## Типовий сценарій помилки
- **Симптом:** Windows job намагається запускати `ci.sh`.
- **Дія:** виправити умови `if` у workflow-кроках.
