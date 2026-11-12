import Component from "@glimmer/component";
import { service } from "@ember/service";

// Top-level discovery routes only — no banner on category, tag, or topic pages.
const BANNER_ROUTES =
  /^discovery\.(categories|latest|new|unread|hot|top|posted|bookmarks)$/;

export default class KelleysCornerBanner extends Component {
  @service router;

  get src() {
    // An uploaded banner_image setting wins; otherwise use the bundled banner.
    return settings.banner_image || settings.theme_uploads?.banner;
  }

  get shouldShow() {
    return (
      settings.show_banner &&
      this.src &&
      BANNER_ROUTES.test(this.router.currentRouteName)
    );
  }

  <template>
    {{#if this.shouldShow}}
      <section class="kc-banner">
        <img
          class="kc-banner__image"
          src={{this.src}}
          alt={{settings.banner_alt}}
          width="1248"
          height="390"
        />
      </section>
    {{/if}}
  </template>
}
