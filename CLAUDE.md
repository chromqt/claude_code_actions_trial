# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Structure

This is a monorepo project with a frontend/backend architecture:
- `packages/frontend/` - Frontend application
- `packages/backend/` - Backend application

## Development Commands

### Frontend Development
```bash
cd packages/frontend
npm install
npm run build
```

### Backend Development
```bash
cd packages/backend
npm install
npm run build
```

## CI/CD Workflows

The project uses GitHub Actions for automated checks:
- Frontend changes trigger `.github/workflows/check-frontend.yml` (Node.js 18.x)
- Backend changes trigger `.github/workflows/check-backend.yml` (Node.js 20.x)

Both workflows run on pull requests to `develop`, `pet`, and `Survey` branches and perform:
1. Install dependencies
2. Build the respective package

## Pull Request Template

Pull requests should follow the Japanese template format including:
- 概要 (Overview)
- 変更点 (Changes)
- 動作確認 (Testing checklist)
- 懸念事項 (Concerns)
- 参考資料 (References with Figma/issue links)