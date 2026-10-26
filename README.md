# Mohamed Meshrif — portfolio

Static portfolio built with [Jaspr](https://docs.jaspr.site) (Dart). Static HTML/CSS output in English and Arabic (RTL), with a tiny inline script for locale redirect.

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

## Localization

- English lives at `/`, Arabic at `/ar/`. Locales are defined in `lib/l10n/app_locale.dart`; UI copy in `lib/l10n/strings.dart`.
- First-time visitors with an Arabic device are redirected to `/ar/`; afterwards the saved choice from the header switcher is used.
- Pages emit `hreflang` alternates, a canonical URL and locale-specific Open Graph tags.
- To add a string, add it to `Strings` and provide both the `en` and `ar` values.

## Assets

- **Screenshots**: drop images (png/jpg/webp) into `web/images/projects/<slug>/`. The first file (alphabetical) is used; otherwise a dashed placeholder shows.
- **Profile photo**: `web/images/me.jpg` (shown in the hero).
- **CV**: replace `web/cv.pdf`.
- **Social image**: `web/images/og.png` (1200×627).
- **Favicon**: replace `web/favicon.ico`.

## Add a project

Add a `Project(...)` to `projects` in `lib/data/content/projects_content.dart` and create `web/images/projects/<slug>/`.
Set `playStoreUrl` / `appStoreUrl` to turn the store names in the card footer into links.
Project, experience, skills and package copy lives in `lib/data/content/`; styling tokens in `lib/theme/tokens.dart`.
