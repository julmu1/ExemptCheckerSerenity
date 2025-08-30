package nhsbsa.exch.pages;

import net.serenitybdd.core.steps.UIInteractionSteps;
import net.serenitybdd.model.environment.EnvironmentSpecificConfiguration;
import net.thucydides.model.util.EnvironmentVariables;
import org.junit.Assert;
import org.openqa.selenium.By;

public class StartPage extends UIInteractionSteps {
    private EnvironmentVariables environmentVariables;
    static By START_NOW_BUTTON = By.id("next-button");

    public void launchStartPage() {
        String appUrl = EnvironmentSpecificConfiguration.from(environmentVariables).getProperty("webdriver.nhsexemptcheckers.url");
        getDriver().get(appUrl);
    }
    public void clickStartNowButton() {
        if ($(START_NOW_BUTTON).isPresent()) {
            $(START_NOW_BUTTON).click();
        } else {
            Assert.fail("Start now button is not available!");
        }
    }
}
