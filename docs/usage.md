# Використання

## Запуск агента (через orchestrator)
1. Відкрити репозиторій.
2. У Copilot Chat виконати команду `init` з `.github/prompts/init.prompt.md`.

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

## Запуск зібраного застосунку
### Linux/macOS
```bash
./build/hello
```

### Windows
```powershell
.\build\Debug\hello.exe
```

## Ручні перевірки
- `ctest --test-dir build --output-on-failure`
- перевірка структури та workflow:
  - `bash ./scripts/check.sh` або
  - `pwsh -File .\scripts\check.ps1`
