package nhsbsa.exch.action;

import nhsbsa.exch.pages.DateOfBirthPage;

public class DateOfBirthActions {

    DateOfBirthPage dateOfBirthPage;


    public void I_verify_the_date_of_birth_heading_is_visible() {
        dateOfBirthPage.verifyDateOfBirthHeadingIsVisible();
    }

    public void I_verify_the_date_fields_are_visible() {
        dateOfBirthPage.verifyDateFieldsAreVisible();
    }

    public void I_verify_the_continue_button_is_visible_and_enabled() {
        dateOfBirthPage.verifyContinueButtonIsVisibleAndEnabled();
    }

    public void I_enter_my_date_of_birth(String day, String month, String year) {
        dateOfBirthPage.enterDateOfBirth(day, month, year);
    }

    public void I_click_the_continue_button() {
        dateOfBirthPage.clickContinueButton();
    }

    public void I_verify_the_error_summary_is_visible() {
        dateOfBirthPage.verifyErrorSummaryIsVisible();
    }



}
