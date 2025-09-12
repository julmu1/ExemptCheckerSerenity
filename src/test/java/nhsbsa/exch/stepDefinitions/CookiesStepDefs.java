//
//package nhsbsa.exch.stepDefinitions;
//
//import io.cucumber.java.en.And;
//import io.cucumber.java.en.Then;
//import io.cucumber.java.en.When;
//import net.serenitybdd.annotations.Steps;
//import nhsbsa.exch.action.CookieBannerActions;
//
//public class CookiesStepDefs {
//
//    @Steps
//    CookieBannerActions cookieBannerActions;
//
//    @Given("I am on the {string} page")
//    public void i_am_on_the_page(String screen) {
//        cookieBannerActions.I_am_on_page(screen);
//
//    @Then("I should see the cookie banner")
//    public void i_should_see_the_cookie_banner() {
//        cookieBannerActions.I_verify_cookie_banner_is_displayed();
//    }
//
//    @When("I accept cookies")
//    public void i_accept_cookies() {
//        cookieBannerActions.I_accept_cookies();
//    }
//
//    @When("I reject cookies")
//    public void i_reject_cookies() {
//        cookieBannerActions.I_reject_cookies();
//    }
//
//    @And("I change my cookie preference to {string}")
//    public void i_change_my_cookie_preference_to(String preference) {
//        cookieBannerActions.I_change_cookie_preference(preference);
//    }
//
//    @Then("my cookie settings are saved")
//    public void my_cookie_settings_are_saved() {
//        cookieBannerActions.I_verify_cookie_settings_saved();
//    }
//
//    @And("I return to {string}")
//    public void i_return_to_screen(String screen) {
//        cookieBannerActions.I_return_to_screen(screen);
//    }
//}