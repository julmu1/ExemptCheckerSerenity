package nhsbsa.exch.action;

import nhsbsa.exch.pages.NamePage;

public class NamePageActions {

    NamePage namePage;


    public void I_verify_the_name_heading_is_visible() {
        namePage.verifyNameHeadingIsVisible();
    }

    public void I_verify_the_name_fields_are_visible() {
        namePage.verifyNameFieldsAreVisible();
    }

    public void I_verify_the_next_button_is_visible_and_enabled() {
        namePage.verifyNextButtonIsVisibleAndEnabled();
    }

    public void I_enter_my_first_and_last_name(String firstName, String lastName) {
        namePage.enterFirstAndLastName(firstName, lastName);
    }

    public void I_click_the_next_button() {
        namePage.clickNextButton();
    }

    public void I_verify_the_error_summary_is_visible() {
        namePage.verifyErrorSummaryIsVisible();
    }



}
