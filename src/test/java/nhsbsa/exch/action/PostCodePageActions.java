package nhsbsa.exch.action;

import nhsbsa.exch.pages.PostCodePage;

public class PostCodePageActions {

        PostCodePage postcodePage;

        public void I_verify_the_postcode_heading_is_visible() {
            postcodePage.verifyPostcodeHeadingIsVisible();
        }

        public void I_verify_the_postcode_field_is_visible() {
            postcodePage.verifyPostcodeFieldIsVisible();
        }

        public void I_verify_the_next_button_is_visible_and_enabled() {
            postcodePage.verifyNextButtonIsVisibleAndEnabled();
        }

        public void I_enter_my_postcode(String postcode) {
            postcodePage.enterPostcode(postcode);
        }

        public void I_click_the_next_button() {
            postcodePage.clickNextButton();
        }

        public void I_verify_the_error_summary_is_visible() {
            postcodePage.verifyErrorSummaryIsVisible();
        }


}
