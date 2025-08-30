package nhsbsa.exch.pages;

import net.serenitybdd.core.steps.UIInteractionSteps;
import org.openqa.selenium.By;
import org.junit.Assert;

public class NamePage extends UIInteractionSteps {

    static By NAME_HEADING = By.xpath("//h1[@class='nhsuk-fieldset__heading']");
    static By FIRST_NAME_INPUT = By.id("firstname");
    static By LAST_NAME_INPUT = By.id("lastname");
    static By NEXT_BUTTON = By.id("next-button");
    static By ERROR_SUMMARY = By.id("error-summary-title");

    public void verifyNameHeadingIsVisible() {
        if ($(NAME_HEADING).isPresent()) {
            $(NAME_HEADING).shouldBeVisible();
        } else {
            Assert.fail("Name page heading is not visible!");
        }
    }

    public void verifyNameFieldsAreVisible() {
        if ($(FIRST_NAME_INPUT).isPresent() && $(LAST_NAME_INPUT).isPresent()) {
            $(FIRST_NAME_INPUT).shouldBeVisible();
            $(LAST_NAME_INPUT).shouldBeVisible();
        } else {
            Assert.fail("One or both name input fields are not visible!");
        }
    }

    public void verifyNextButtonIsVisibleAndEnabled() {
        if ($(NEXT_BUTTON).isPresent()) {
            $(NEXT_BUTTON).shouldBeVisible();
            $(NEXT_BUTTON).shouldBeEnabled();
        } else {
            Assert.fail("Next button is not visible!");
        }
    }

    public void enterFirstAndLastName(String firstName, String lastName) {
        if ($(FIRST_NAME_INPUT).isPresent() && $(LAST_NAME_INPUT).isPresent()) {
            $(FIRST_NAME_INPUT).type(firstName);
            $(LAST_NAME_INPUT).type(lastName);
        } else {
            Assert.fail("Cannot enter name: one or both fields are missing!");
        }
    }

    public void clickNextButton() {
        if ($(NEXT_BUTTON).isPresent()) {
            $(NEXT_BUTTON).click();
        } else {
            Assert.fail("Next button is not available!");
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
