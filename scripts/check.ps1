$ErrorActionPreference = "Stop"

$requiredFiles = @(
  ".github/agents/build-engineer.agent.md",
  ".github/skills/project-scaffold/SKILL.md",
  ".github/skills/build-and-test/SKILL.md",
  ".github/skills/github-actions/SKILL.md",
  ".github/prompts/git-init.prompt.md",
  ".github/prompts/create-project.prompt.md",
  ".github/prompts/create-build.prompt.md",
  ".github/prompts/create-actions.prompt.md",
  ".github/prompts/check.prompt.md",
  ".github/prompts/init.prompt.md",
  ".github/workflows/ci.yml",
  "src/main.cpp",
  "tests/test_main.cpp",
  "CMakeLists.txt",
  "ci.sh",
  "ci.bat",
  "docs/architecture.md",
  "docs/usage.md",
  "docs/ai-log.md"
)

foreach ($file in $requiredFiles) {
  if (-not (Test-Path $file)) {
    throw "Missing required file: $file"
  }
}

$workflow = Get-Content ".github/workflows/ci.yml" -Raw
$requiredSnippets = @(
  "ubuntu-latest",
  "windows-latest",
  "macos-latest",
  "pull_request",
  "push",
  "branches: [develop, main]"
)

foreach ($snippet in $requiredSnippets) {
  if (-not $workflow.Contains($snippet)) {
    throw "Workflow validation failed. Missing snippet: $snippet"
  }
}

Write-Host "Structure and workflow checks passed."
