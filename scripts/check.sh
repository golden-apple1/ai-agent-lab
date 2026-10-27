#!/usr/bin/env bash
set -euo pipefail

required_files=(
  ".github/agents/build-engineer.agent.md"
  ".github/skills/project-scaffold/SKILL.md"
  ".github/skills/build-and-test/SKILL.md"
  ".github/skills/github-actions/SKILL.md"
  ".github/prompts/git-init.prompt.md"
  ".github/prompts/create-project.prompt.md"
  ".github/prompts/create-build.prompt.md"
  ".github/prompts/create-actions.prompt.md"
  ".github/prompts/check.prompt.md"
  ".github/prompts/init.prompt.md"
  ".github/workflows/ci.yml"
  "src/main.cpp"
  "tests/test_main.cpp"
  "CMakeLists.txt"
  "ci.sh"
  "ci.bat"
  "docs/architecture.md"
  "docs/usage.md"
  "docs/ai-log.md"
)

for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "Missing required file: $file" >&2
    exit 1
  fi
done

workflow_file=".github/workflows/ci.yml"
grep -q "ubuntu-latest" "$workflow_file"
grep -q "windows-latest" "$workflow_file"
grep -q "macos-latest" "$workflow_file"
grep -q "pull_request" "$workflow_file"
grep -q "push" "$workflow_file"
grep -q "branches: \[develop, main\]" "$workflow_file"

echo "Structure and workflow checks passed."
