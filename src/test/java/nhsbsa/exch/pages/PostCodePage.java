package nhsbsa.exch.pages;

import net.serenitybdd.core.steps.UIInteractionSteps;
import org.junit.Assert;
import org.openqa.selenium.By;

public class PostCodePage extends UIInteractionSteps {

    static By POSTCODE_HEADING = By.xpath("//label[@for='postcode']");
    static By POSTCODE_INPUT = By.id("postcode");
    static By NEXT_BUTTON = By.id("next-button");
    static By ERROR_SUMMARY = By.id("error-summary-title");

    public void verifyPostcodeHeadingIsVisible() {
        if ($(POSTCODE_HEADING).isPresent()) {
            $(POSTCODE_HEADING).shouldBeVisible();
        } else {
            Assert.fail("Postcode page heading is not visible!");
        }
    }

    public void verifyPostcodeFieldIsVisible() {
        if ($(POSTCODE_INPUT).isPresent()) {
            $(POSTCODE_INPUT).shouldBeVisible();
        } else {
            Assert.fail("Postcode input field is not visible!");
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

    public void enterPostcode(String postcode) {
        if ($(POSTCODE_INPUT).isPresent()) {
            $(POSTCODE_INPUT).type(postcode);
        } else {
            Assert.fail("Cannot enter postcode: input field is missing!");
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
