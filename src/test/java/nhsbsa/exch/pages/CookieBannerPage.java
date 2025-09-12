//package nhsbsa.exch.pages;
//
//import net.serenitybdd.core.steps.UIInteractionSteps;
//import org.openqa.selenium.By;
//
//public class CookieBannerPage extends UIInteractionSteps {
//
//    static final By READ_MORE_LINK = By.className("nhsuk-cookie-banner__link");
//    static final By ACCEPT_ANALYTICS_BUTTON = By.className("nhsuk-cookie-banner__link_accept_analytics");
//    static final By DO_NOT_ACCEPT_BUTTON = By.className("nhsuk-cookie-banner__link_accept");
//
//    public void clickReadMoreAboutCookies() {
//        $(READ_MORE_LINK).waitUntilClickable().click();
//    }
//
//    public void acceptAnalyticsCookies() {
//        $(ACCEPT_ANALYTICS_BUTTON).waitUntilClickable().click();
//    }
//
//    public void rejectCookies() {
//        $(DO_NOT_ACCEPT_BUTTON).waitUntilClickable().click();
//    }
//
//    public void verifyCookieBannerIsVisible() {
//        boolean isVisible = $(READ_MORE_LINK).isVisible();
//        if (!isVisible) {
//            throw new AssertionError("Cookie banner is not visible on the page.");
//        }
//    }
//}
//
//
//
