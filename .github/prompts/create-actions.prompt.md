# Command: create-actions

## Передумови
- Присутні `ci.sh` і `ci.bat`.

## Дії
1. Створити `.github/workflows/ci.yml`.
2. Налаштувати одну job з matrix для 3 ОС.
3. Додати `checkout` і запуск лише відповідного CI-скрипта.

## Очікувані файли
- `.github/workflows/ci.yml`

## Перевірки
- YAML містить `push`/`pull_request` для `develop` і `main`.
- Matrix містить `ubuntu-latest`, `windows-latest`, `macos-latest`.

## Помилки
- Некоректний YAML: виправити відступи/ключі.

## Ідемпотентність
Повторний запуск підтримує той самий workflow-стан.
