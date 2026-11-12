import Component from "@glimmer/component";
import { htmlSafe } from "@ember/template";
import { iconHTML } from "discourse/lib/icon-library";
import { emojiUnescape } from "discourse/lib/text";

// Shows the category's icon (or emoji) above its name on the category cards.
// Core's box template doesn't render it, so we add it through this outlet.
export default class KelleysCornerBoxIcon extends Component {
  get category() {
    return this.args.outletArgs?.category;
  }

  get iconMarkup() {
    const c = this.category;
    if (!c) {
      return null;
    }
    if (c.style_type === "icon" && c.icon) {
      return htmlSafe(iconHTML(c.icon));
    }
    if (c.style_type === "emoji" && c.emoji) {
      return htmlSafe(emojiUnescape(`:${c.emoji}:`));
    }
    return null;
  }

  <template>
    {{#if this.iconMarkup}}
      <span class="kc-box-icon">{{this.iconMarkup}}</span>
    {{/if}}
  </template>
}
