# Лабораторна робота 1: AI Agent Lab

- **Студент:** Павлюк Володимир Михайлович
- **Група:** 403
- **Варіант:** 1 (C++ / CMake / CTest)

## Опис
Репозиторій містить мінімальний кросплатформний C++ проєкт `Hello, World!` з CMake/CTest, CI для Linux/Windows/macOS, а також структуру AI-агента (manifest, skills, commands, orchestrator).

## Структура
```text
.github/
  agents/build-engineer.agent.md
  prompts/
    git-init.prompt.md
    create-project.prompt.md
    create-build.prompt.md
    create-actions.prompt.md
    check.prompt.md
    init.prompt.md
  skills/
    project-scaffold/SKILL.md
    build-and-test/SKILL.md
    github-actions/SKILL.md
  workflows/ci.yml
src/main.cpp
tests/test_main.cpp
scripts/check.sh
scripts/check.ps1
CMakeLists.txt
ci.sh
ci.bat
docs/architecture.md
docs/usage.md
docs/ai-log.md
.gitignore
```

## Точні команди запуску агента
1. Відкрити Copilot Chat у репозиторії.
2. Викликати orchestrator-команду `init` (файл: `.github/prompts/init.prompt.md`).
3. Або виконувати команди поетапно: `git-init` → `create-project` → `create-build` → `create-actions` → `check`.

## Локальна перевірка
### Linux/macOS
```bash
bash ./ci.sh
bash ./scripts/check.sh
```

### Windows (PowerShell)
```powershell
.\ci.bat
pwsh -File .\scripts\check.ps1
```

## Запуск зібраного проєкту
### Linux/macOS
```bash
./build/hello
```

### Windows
```powershell
.\build\Debug\hello.exe
```
