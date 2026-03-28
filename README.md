<p align="center">
  <a href="https://www.amazon.fr/GitHub-Actions-pratique-Louis-Guillaume-MORAND/dp/2957832909" target="_blank">
    <img src="https://github.com/lgmorand/lgmorand/raw/master/images/books/github-actions-en.jpg" height="250" alt="GitHub Actions: A Practical Guide - Book Cover" />
  </a>
</p>

# GitHub Actions: A Practical Guide — Advanced Workflows

[![Generate a book](https://github.com/lgmorand/book-github-actions-advanced-workflows/actions/workflows/book.yaml/badge.svg)](https://github.com/lgmorand/book-github-actions-advanced-workflows/actions/workflows/book.yaml)
[![DevSecOps](https://github.com/lgmorand/book-github-actions-advanced-workflows/actions/workflows/devsecops.yaml/badge.svg)](https://github.com/lgmorand/book-github-actions-advanced-workflows/actions/workflows/devsecops.yaml)
[![Deploy website](https://github.com/lgmorand/book-github-actions-advanced-workflows/actions/workflows/website.yaml/badge.svg)](https://github.com/lgmorand/book-github-actions-advanced-workflows/actions/workflows/website.yaml)
[![Container](https://github.com/lgmorand/book-github-actions-advanced-workflows/actions/workflows/container.yaml/badge.svg)](https://github.com/lgmorand/book-github-actions-advanced-workflows/actions/workflows/container.yaml)

This repository contains all the source code and advanced workflow examples linked to the book **GitHub Actions: A Practical Guide** by **Louis-Guillaume MORAND**.

## 📖 Get the book

| Language | Link |
|----------|------|
| 🇫🇷 French | [Amazon.fr](https://www.amazon.fr/GitHub-Actions-pratique-Louis-Guillaume-MORAND-dp-2957832941/dp/2957832941) |
| 🇬🇧 English | [Amazon.com](https://www.amazon.com/GitHub-Actions-practical-Louis-Guillaume-MORAND-ebook/dp/B09D3Z3Y48/) |

## 📂 Repository structure

| Folder | Description |
|--------|-------------|
| [`book/`](book/) | Source content for generating the book (Markdown → PDF, EPUB, DOCX via Pandoc) |
| [`container/`](container/) | Bicep IaC templates and a complex container build & release pipeline (multi-arch, Helm, signing) |
| [`devsecops/`](devsecops/) | Full DevSecOps pipeline example: secrets scanning, SAST, SCA, DAST, IaC scanning, load testing, and deployment |
| [`powerpoint/`](powerpoint/) | Generate a PowerPoint presentation from Markdown using Pandoc |
| [`website/`](website/) | Hugo-based documentation site deployed to GitHub Pages |

## ⚙️ Workflows

| Workflow | File | Purpose |
|----------|------|---------|
| **Generate a book** | [`book.yaml`](.github/workflows/book.yaml) | Converts Markdown source to PDF, EPUB, and DOCX using Pandoc |
| **Clean logs** | [`clean-logs.yaml`](.github/workflows/clean-logs.yaml) | Scheduled cleanup of old workflow run logs |
| **Container** | [`container.yaml`](.github/workflows/container.yaml) | Full container lifecycle: SAST, build multi-arch images, sign with Cosign, Helm chart, publish |
| **DevSecOps** | [`devsecops.yaml`](.github/workflows/devsecops.yaml) | End-to-end DevSecOps pipeline with secrets, IaC, SAST, SCA, Docker, DAST & load testing |
| **Generate PowerPoint** | [`powerpoint.yaml`](.github/workflows/powerpoint.yaml) | Generates PPTX and HTML (reveal.js) presentations from Markdown |
| **Deploy website** | [`website.yaml`](.github/workflows/website.yaml) | Builds a Hugo site and deploys it to GitHub Pages |

## 🚀 Getting started

1. **Fork** this repository
2. Configure the required **secrets** for the workflows you want to use (e.g., `AZURE_CREDENTIALS`, `SNYK_TOKEN`, `SPECTRAL_DSN`)
3. Trigger workflows manually via the **Actions** tab (`workflow_dispatch`)

## 🛠️ Prerequisites

Some workflows require external services or credentials:

- **Azure** — `AZURE_CREDENTIALS`, `AZUREAPPSERVICE_PUBLISHPROFILE_DEV`, `AZUREAPPSERVICE_PUBLISHPROFILE_PRD`
- **Snyk** — `SNYK_TOKEN`
- **Spectral** — `SPECTRAL_DSN`
- **Docker Hub** — `DOCKER_HUB_PAT`
- **Cosign** — `COSIGN_PASSWORD`, `COSIGN_PRIVATE_KEY`
