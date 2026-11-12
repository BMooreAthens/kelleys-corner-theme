# Kelley's Corner theme

The Discourse theme for Kelley's Corner, the Athens Paper community. Forked from the Discourse [Sublime theme](https://meta.discourse.org/t/discourse-sublime-theme/242048).

## Theme configuration

### Edit Theme

Go to **Admin > Themes & components** (`/admin/config/customize/themes`) and edit the Kelley's Corner theme.

- Set the **Light color palette** to `kelleys-corner-light` and the **Dark color palette** to `kelleys-corner-dark`.
- The banner image ships with the theme (`assets/banner.webp`), text included. To change it, upload a replacement to **banner_image** and update **banner_alt** to match its wording.

### Interface & layout

Go to **Admin > Interface & layout** (`/admin/config/interface`).

- Set **Desktop category page style** to `Boxes with Subcategories`.

### Categories

- Give each category an icon (category **Settings > Style > Icon**); the card icons and sidebar squares come from these.
- Category colors drive the sidebar squares. Card top borders and icons are always the theme blue.

### Welcome banner

The theme renders its own hero banner, so turn off Discourse's built-in welcome banner (**Admin > Welcome banner**) for this theme.
