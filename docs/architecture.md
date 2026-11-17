# Архітектура рішення

## Компоненти
- **Manifest**: `.github/agents/build-engineer.agent.md` задає роль, межі та критерії завершення.
- **Skills**: `.github/skills/*/SKILL.md` описують повторно використовувані операції (scaffold, build/test, CI).
- **Commands**: `.github/prompts/*.prompt.md` задають кроки виконання на рівні задачі.
- **Orchestrator**: `.github/prompts/init.prompt.md` координує виклики команд у правильному порядку.

## Потік даних
1. `init` ініціює послідовність команд.
2. `create-project` створює вихідний код і базову CMake-конфігурацію.
3. `create-build` додає тест та CI-скрипти.
4. `create-actions` підключає GitHub Actions workflow.
5. `check` виконує локальну валідацію структури, YAML та CMake/CTest.

## Відповідність вимогам
- Кросплатформність забезпечується matrix CI і розділенням `ci.sh`/`ci.bat`.
- Тестованість забезпечується CTest і тестом `BasicAddition`.
- Безпечність забезпечується забороною руйнівних дій та перевіркою відсутності секретів у процесі розробки.
