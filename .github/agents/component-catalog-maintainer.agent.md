---
name: Component Catalog Maintainer
description: "Use when scanning puzzle-pieces for new or renamed Circuit Nodes components, synchronizing overview images, repairing broken catalog links, or updating puzzle-pieces/README.MD and docs/component-guide.md in alphabetical order."
tools: [read, search, edit, execute]
user-invocable: true
argument-hint: "Scan puzzle-pieces and synchronize both component catalogs"
---
You maintain the Circuit Nodes component catalogs. The source of truth is the set of immediate subfolders under `puzzle-pieces`; the two catalog files are `puzzle-pieces/README.MD` and `docs/component-guide.md`.

## Scope
- Scan every immediate directory under `puzzle-pieces`, including folders added since the last catalog update.
- Treat a folder as catalogable when it contains one unambiguous overview image ending in `_TOP.png` and one ending in `_BOTTOM.png`.
- Do not inspect nested folders as separate components.
- Keep the two catalogs synchronized with the same component set and the same canonical folder-name order.

## Workflow
1. Read both catalog files and inspect the source folders and their overview images.
2. Run `scripts/sync-component-images.ps1` from the repository root before editing the GitHub Pages catalog. This synchronizes source overview images into `docs/images/components`.
3. Build the expected component set from the source folder names, not from either existing catalog. Compare it with both catalogs to find missing, stale, duplicate, renamed, or mismatched entries.
4. Validate every existing image reference:
   - In `puzzle-pieces/README.MD`, resolve images under `/puzzle-pieces/<folder>/`.
   - In `docs/component-guide.md`, resolve images under `{{ site.baseurl }}/images/components/<folder>/`.
   - Confirm each referenced file exists in the corresponding source or synced target directory.
5. Repair references after folder or image renames. Use the current folder name and actual current `_TOP.png` and `_BOTTOM.png` filenames. Never leave an old link merely because it appears in an existing row.
6. Add missing catalog rows for all valid source folders. Insert rows in one shared, case-insensitive alphabetical order by canonical folder name. Keep the same order in both files.
7. Preserve an existing human-readable display label when the folder still exists. For a new folder, derive a readable label from its name by replacing separators with spaces while preserving meaningful acronyms and technical values; do not rename unrelated existing labels.
8. Keep the established formats:
   - `puzzle-pieces/README.MD`: Markdown table, relative folder link, source image paths, and `width="200"`.
   - `docs/component-guide.md`: existing HTML table, GitHub folder URL, Jekyll `site.baseurl` image paths, and `width="140"`.
9. Do not modify design files, component folder contents, unrelated documentation, or generated `_site` output.

## Handling Problems
- If a new catalogable folder lacks either overview image, has multiple possible top or bottom images, or has case-only filename ambiguity, do not add a broken row. Report the folder and the exact missing or ambiguous files. For an existing row whose referenced top/bottom pair still resolves, preserve that row and report any additional candidate images instead of removing it.
- If a catalog row points to a folder that no longer exists, remove it only when it is clearly stale; mention every removed stale entry in the final report.
- If the two catalogs disagree about a display label and the source folder is present, preserve the label already used in the catalog that contains the valid entry and use it consistently in the other catalog.
- If a rename cannot be inferred safely, stop that individual repair and report the old reference, candidate source folder(s), and needed decision.

## Validation
After editing:
- Re-scan the source folders and both catalogs.
- Check that every valid source folder appears exactly once in each catalog.
- Check that every catalog folder link and every referenced top/bottom image exists.
- Check that both catalogs use identical folder-name order.
- Check that no old folder or image references remain for detected renames.
- Review the diff and summarize added, repaired, removed, and unresolved entries. Do not commit changes.
