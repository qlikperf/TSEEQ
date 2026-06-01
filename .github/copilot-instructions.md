# Copilot instructions for TSEEQ repository

Purpose
- Short, actionable guidance for Copilot sessions working with this repo: commands, high-level architecture, and repo-specific conventions.

Build / Test / Lint
- No language-specific build, test, or linter scripts are present. This repository contains QlikView/Qlik Sense apps, QVDs, and utilities.
- Validation / single-step checks:
  - Open the relevant QVW (QlikView) or QVF (Qlik Sense) file in the appropriate Qlik product and Reload the script to run a single ETL step (e.g., Source Documents\\TSEEQ Sales Sample\\1_Extract\\Sales Extract.qvw).
  - Useful utility BATs (one-off helpers):
    - 1-click ETL Sales Demo.bat — quick demo launcher
    - Utility\\Services Control BAT\\StartSense - All Services.bat / StopSense - All Services.bat — start/stop service bundles
    - Utility\\Folder Creation BAT\\Create New Qlik View/Sense App Folder from SEEQ Sales Sample.bat — scaffolding
  - QVD tools: Utility\\QVD ExtraQtor, Utility\\QVD ShrinQer, Utility\\QVD LooQer contain QVW/QVF tools for inspecting and manipulating QVDs.

High-level architecture (big picture)
- Purpose: TSEEQ is a structured ETL engine for Qlik. ETL behavior is driven by externalized rule sets rather than embedding free-form script inside QVW/QVF files.
- Layers:
  1. Rules layer — Source Documents\\TSEEQ Sales Sample\\ETL_Rules (XLS and CSV). Rule sheets define extracts, transforms, loads, and field-mappings.
  2. Extract / Transform / Load scripts — Source Documents organized by stage: 1_Extract, 2_Transform, 3_Load, 4_App. Each stage contains QVW/QVF files and include scripts.
  3. Include library — Source Documents\\Common\\Include and Utility\\include contain reusable .qvs/.txt include scripts (variable definitions, calendar generators, subroutines).
  4. QVD storage — Source Documents\\*\\QVDs\\Extracted, Transformed, ExtraQted hold produced QVDs; utilities manage QVD shrink/inspect.
  5. Utilities & Admin — Utility and Admin folders provide BATs, QVW tools, meta-data spreadsheets, and ETL analysis apps.

Key repository conventions
- File types and intent:
  - .qvw / .qvf — QlikView / Qlik Sense app files (apps contain ETL scripts). Open in the corresponding Qlik product.
  - .qvs / .txt — include script fragments to be used by app reloads (common functions, variable sets).
  - .qvd — data files produced/consumed by ETL stages.
- Directory conventions:
  - Source Documents/*: structured by ETL stage (1_Extract, 2_Transform, 3_Load, 4_App).
  - ETL_Rules: XLS and CSV rule workbooks define behavior; CSV variants live under ETL_Rules\\CSV and are machine-friendly.
  - Common Include naming: files named Common_* and *_Include indicate shared script fragments.
- Variable & naming patterns:
  - Files named *Variables.xls / Common_*_Variables.xls contain v-prefixed variables referenced across apps.
  - Naming of QVD folders: QVDs\\Extracted, QVDs\\Transformed, QVDs\\ExtraQted represent lifecycle stages.
- Running a single step:
  - Open the specific QVW/QVF and trigger Reload. For automated runs, available BATs in Utility can coordinate service start/stop.

Files to check first
- TSEEQ Documentation.pdf — primary installation and configuration guide (open first).
- README.md — high-level project summary.
- Source Documents\\TSEEQ Sales Sample — example ETL flow and sample data.

Search hints for Copilot sessions
- To find scripts: glob "**\\*.qvs", "**\\*.qvw", "**\\*.qvf"
- To find rule definitions: search under "Source Documents\\**\\ETL_Rules" and "**\\ETL_Rules\\CSV"
- To inspect QVD lists: search for "QVDs\\Extracted" and "QVDs\\Transformed"

Notes for assistants
- Prefer reading TSEEQ Documentation.pdf and the high-level QVW include files before proposing changes that alter ETL logic.
- When suggesting edits to ETL behavior, point to the specific rule workbook and include fragments that need updates.

Last steps
- If adding automation (CI), prefer lightweight checks that open and validate rule CSVs, verify include references, and ensure no missing QVD paths.

'
