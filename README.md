# Mohamed Meshrif — portfolio

Static portfolio built with [Jaspr](https://docs.jaspr.site) (Dart). Pure static HTML/CSS output, no client JS.

Requires Dart ≥ 3.10 and `jaspr_cli` (`dart pub global activate jaspr_cli`).

## Run & build

```sh
dart pub get
jaspr serve   # dev server with hot reload
jaspr build   # static site in build/jaspr
```

Deploying under a sub-path (project GitHub Pages site):
`jaspr build --dart-define=BASE_HREF=/repo-name/`. The workflow in `.github/workflows/deploy.yml` does this automatically on push to `main`
(enable Settings → Pages → Source: GitHub Actions).

## Assets

- **Screenshots**: drop images (png/jpg/webp) into `web/images/projects/<slug>/`. The first file (alphabetical) is used; otherwise a dashed placeholder shows.
- **CV**: replace `web/cv.pdf`.
- **Social image**: add `web/og.png` (1200×630).
- **Favicon**: replace `web/favicon.ico`.

## Add a project

Add a `Project(...)` to `projects` in `lib/data/content/projects_content.dart` and create `web/images/projects/<slug>/`.
Set `playStoreUrl` / `appStoreUrl` to turn the store names in the card footer into links.
All copy lives in `lib/data/content/`; styling tokens in `lib/theme/tokens.dart`.
