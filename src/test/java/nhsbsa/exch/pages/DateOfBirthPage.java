package nhsbsa.exch.pages;

import net.serenitybdd.core.steps.UIInteractionSteps;
import org.junit.Assert;
import org.openqa.selenium.By;

public class DateOfBirthPage extends UIInteractionSteps {

    static By DOB_HEADING = By.xpath("//h1[@class='nhsuk-fieldset__heading']");
    static By DAY_INPUT = By.id("dob-day");
    static By MONTH_INPUT = By.id("dob-month");
    static By YEAR_INPUT = By.id("dob-year");
    static By CONTINUE_BUTTON = By.id("next-button");
    static By ERROR_SUMMARY = By.id("error-summary-title");


    public void verifyDateOfBirthHeadingIsVisible() {
        if ($(DOB_HEADING).isPresent()) {
            $(DOB_HEADING).shouldBeVisible();
        } else {
            Assert.fail("Date of birth heading is not visible!");
        }
    }

    public void verifyDateFieldsAreVisible() {
        if ($(DAY_INPUT).isPresent() && $(MONTH_INPUT).isPresent() && $(YEAR_INPUT).isPresent()) {
            $(DAY_INPUT).shouldBeVisible();
            $(MONTH_INPUT).shouldBeVisible();
            $(YEAR_INPUT).shouldBeVisible();
        } else {
            Assert.fail("One or more date input fields are not visible!");
        }
    }

    public void verifyContinueButtonIsVisibleAndEnabled() {
        if ($(CONTINUE_BUTTON).isPresent()) {
            $(CONTINUE_BUTTON).shouldBeVisible();
            $(CONTINUE_BUTTON).shouldBeEnabled();
        } else {
            Assert.fail("Continue button is not visible!");
        }
    }

    public void enterDateOfBirth(String day, String month, String year) {
        if ($(DAY_INPUT).isPresent() && $(MONTH_INPUT).isPresent() && $(YEAR_INPUT).isPresent()) {
            $(DAY_INPUT).type(day);
            $(MONTH_INPUT).type(month);
            $(YEAR_INPUT).type(year);
        } else {
            Assert.fail("Cannot enter date of birth: one or more fields are missing!");
        }
    }

    public void clickContinueButton() {
        if ($(CONTINUE_BUTTON).isPresent()) {
            $(CONTINUE_BUTTON).click();
        } else {
            Assert.fail("Continue button is not available!");
        }
    }

    public void verifyErrorSummaryIsVisible() {
        if ($(ERROR_SUMMARY).isPresent()) {
            $(ERROR_SUMMARY).shouldBeVisible();
        } else {
            Assert.fail("Error summary is not visible when expected!");
        }
    }
}



