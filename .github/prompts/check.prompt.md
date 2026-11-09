# Command: check

## Передумови
- Проєктні файли вже створені.

## Дії
1. Запустити `scripts/check.sh` (Linux/macOS) або `scripts/check.ps1` (Windows).
2. Запустити локальний CI-скрипт (`ci.sh`/`ci.bat`).
3. Переконатися, що `BasicAddition` проходить.

## Очікувані файли
- `scripts/check.sh`
- `scripts/check.ps1`

## Перевірки
- Наявність required-структури.
- Перевірка ключових секцій workflow YAML.
- Успішне configure/build/test.

## Помилки
- Відсутні обов'язкові файли або некоректний workflow.

## Ідемпотентність
Перевірки лише читають/збирають, без видалення файлів.
