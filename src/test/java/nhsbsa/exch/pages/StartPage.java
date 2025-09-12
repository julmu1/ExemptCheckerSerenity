package nhsbsa.exch.pages;

import net.serenitybdd.core.pages.WebElementFacade;
import net.serenitybdd.core.steps.UIInteractionSteps;
import net.serenitybdd.model.environment.EnvironmentSpecificConfiguration;
import net.thucydides.model.util.EnvironmentVariables;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class StartPage extends UIInteractionSteps {
    private EnvironmentVariables environmentVariables;
    static By START_NOW_BUTTON = By.id("next-button");
    static By NEXT_BUTTON = By.id("next-button");
    static By ACCESSIBILITY_LINK = By.id("footer-link-accessibility");
    static By PRIVACY_LINK = By.id("footer-link-privacy");
    static By COOKIES_LINK = By.id("footer-link-cookies");
    static By TERMS_LINK = By.id("footer-link-terms");
    static By RESULTS_HEADING = By.xpath("//h1[@class='nhsuk-heading-xl done-panel nhsuk-u-margin-top-0']");
    static By SCREEN_TITLE = By.xpath("//h1[@class='nhsuk-fieldset__heading']");

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

    public void clickNextButton() {
        if ($(NEXT_BUTTON).isPresent()) {
            $(NEXT_BUTTON).click();
        } else {
            Assert.fail("Next button is not available!");
        }
    }

    public void clickFooterLinks(String link) {
        String originalWindow = getDriver().getWindowHandle();
        Set<String> existingWindows = getDriver().getWindowHandles();

        if (link.equals("Accessibility statement") && $(ACCESSIBILITY_LINK).isPresent()) {
            evaluateJavascript("arguments[0].scrollIntoView(true);", $(ACCESSIBILITY_LINK));
            $(ACCESSIBILITY_LINK).click();
        } else if (link.equals("Privacy") && $(PRIVACY_LINK).isPresent()) {
            evaluateJavascript("arguments[0].scrollIntoView(true);", $(PRIVACY_LINK));
            $(PRIVACY_LINK).click();
        } else if (link.equals("Cookies") && $(COOKIES_LINK).isPresent()) {
            evaluateJavascript("arguments[0].scrollIntoView(true);", $(COOKIES_LINK));
            $(COOKIES_LINK).click();
        } else if (link.equals("Terms") && $(TERMS_LINK).isPresent()) {
            evaluateJavascript("arguments[0].scrollIntoView(true);", $(TERMS_LINK));
            $(TERMS_LINK).click();
        } else {
            Assert.fail("Footer link not available or unrecognized: " + link);
        }

        // Wait briefly for new window to open
        new WebDriverWait(getDriver(), Duration.ofSeconds(5)).until(driver -> driver.getWindowHandles().size() > existingWindows.size());

        Set<String> updatedWindows = getDriver().getWindowHandles();
        updatedWindows.removeAll(existingWindows);

        if (!updatedWindows.isEmpty()) {
            String newWindow = updatedWindows.iterator().next();
            getDriver().switchTo().window(newWindow);
            System.out.println("Switched to new window: " + getDriver().getCurrentUrl());
        } else {
            getDriver().switchTo().window(originalWindow);
        }
    }



    public void verifyUrlContainsLinkKeyword(String link) {
        String normalizedLink = link.trim().toLowerCase();

        // Click the link
        switch (normalizedLink) {
            case "feedback":
                $(By.linkText("Feedback")).waitUntilClickable().click();
                break;
            case "certain benefits":
                $(By.linkText("Certain Benefits")).waitUntilClickable().click();
                break;
            case "privacy":
                $(By.id("footer-link-privacy")).waitUntilClickable().click();
                break;
            case "cookies":
                $(By.linkText("Cookies")).waitUntilClickable().click();
                break;
            case "terms and conditions":
                $(By.id("footer-link-terms")).waitUntilClickable().click();
                break;
            case "accessibility":
            case "accessibility statement":
                $(By.id("footer-link-accessibility")).waitUntilClickable().click();
                break;
            case "nhsbsa":
                $(By.linkText("NHSBSA")).waitUntilClickable().click();
                break;
            case "open government licence":
                $(By.linkText("Open Government Licence")).waitUntilClickable().click();
                break;
            default:
                Assert.fail("Unrecognized link name: " + link);
        }

        waitABit(1000); // Allow time for navigation

        List<String> windowHandles = new ArrayList<>(getDriver().getWindowHandles());
        if (windowHandles.size() > 1) {
            getDriver().switchTo().window(windowHandles.get(1));
        }

        String currentUrl = getDriver().getCurrentUrl();

        // URL verification
        if (normalizedLink.equals("feedback")) {
            Assert.assertTrue(currentUrl.contains("check-my-nhs-exemption-feedback"));
        } else if (normalizedLink.equals("certain benefits")) {
            Assert.assertTrue(currentUrl.contains("getting-benefits"));
        } else if (normalizedLink.equals("privacy")) {
            Assert.assertTrue(currentUrl.contains("privacy-notice"));
        } else if (normalizedLink.equals("cookies")) {
            Assert.assertTrue(currentUrl.contains("cookies"));
        } else if (normalizedLink.equals("terms and conditions")) {
            Assert.assertTrue(currentUrl.contains("terms-and-conditions"));
        } else if (normalizedLink.equals("accessibility") || normalizedLink.equals("accessibility statement")) {
            Assert.assertTrue(currentUrl.contains("accessibility"));
        } else if (normalizedLink.equals("nhsbsa")) {
            Assert.assertTrue(currentUrl.contains("nhsbsa.nhs.uk"));
        } else if (normalizedLink.equals("open government licence")) {
            Assert.assertTrue(currentUrl.contains("open-government-licence"));
        }

        if (windowHandles.size() > 1) {
            getDriver().close();
            getDriver().switchTo().window(windowHandles.get(0));
        }
    }


}
