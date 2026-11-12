import { apiInitializer } from "discourse/lib/api";
import KelleysCornerBanner from "../components/kelleys-corner-banner";

export default apiInitializer((api) => {
  api.renderInOutlet("above-main-container", KelleysCornerBanner);
});
