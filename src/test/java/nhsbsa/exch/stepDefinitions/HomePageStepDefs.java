package nhsbsa.exch.stepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.annotations.Steps;
import nhsbsa.exch.action.*;

public class HomePageStepDefs {

    @Steps
    StartPageActions startPageActions;
    @Steps
    DateOfBirthActions dateOfBirthActions;
    @Steps
    NamePageActions namePageActions;
    @Steps
    PostCodePageActions postCodePageActions;
    @Steps
    ResultsPageAction resultsPageAction;

    @Given("I am checking to see if I am exempt from paying for prescriptions")
    public void i_am_checking_to_see_if_i_am_exempt_from_paying_for_prescriptions() {
        startPageActions.I_launch_the_NHSBSA_prescription_cost_checker_website();
        startPageActions.i_have_clicked_on_start_now_button();
    }

    @Given("I am checking start page")
    public void i_am_checking_start_page() {
        startPageActions.I_launch_the_NHSBSA_prescription_cost_checker_website();}


    @When("my date of birth is {string} {string} {string}")
    public void my_date_of_birth_is(String day, String month, String year) {
        dateOfBirthActions.I_verify_the_date_of_birth_heading_is_visible();
        dateOfBirthActions.I_verify_the_date_fields_are_visible();
        dateOfBirthActions.I_verify_the_continue_button_is_visible_and_enabled();
        dateOfBirthActions.I_enter_my_date_of_birth(day, month, year);
        dateOfBirthActions.I_click_the_continue_button();
    }


    @And("my firstname is {string} and my lastname is {string}")
    public void my_firstname_is_and_my_lastname_is(String firstName, String lastName) {
        namePageActions.I_verify_the_name_heading_is_visible();
        namePageActions.I_verify_the_name_fields_are_visible();
        namePageActions.I_verify_the_next_button_is_visible_and_enabled();
        namePageActions.I_enter_my_first_and_last_name(firstName, lastName);
        namePageActions.I_click_the_next_button();}




    @And("my postcode is {string}")
    public void my_postcode_is(String postcode) {
        postCodePageActions.I_verify_the_postcode_heading_is_visible();
        postCodePageActions.I_verify_the_postcode_field_is_visible();
        postCodePageActions.I_verify_the_next_button_is_visible_and_enabled();
        postCodePageActions.I_enter_my_postcode(postcode);
        postCodePageActions.I_click_the_next_button();
    }


    @Then("I should see that I am exempt from prescriptions and dental check-ups")
    public void i_should_see_that_i_am_exempt_from_prescriptions_and_dental_check_ups() {
        resultsPageAction.I_verify_the_results_heading_is_visible();
        resultsPageAction.I_verify_the_results_content_indicates_exemption();
    }

    @Then("I should see we cannot match you to our records")
    public void i_should_see_we_cannot_match_you_to_our_records() {
//        resultsPageAction.I_verify_the_results_heading_is_visible();
        resultsPageAction.I_verify_the_no_match_message_is_displayed();
    }

    @Then("I should see that I am exempt from prescriptions but not dental checkups and treatment")
    public void i_should_see_that_i_am_exempt_from_prescriptions_but_not_dental_checkups_and_treatment() {
//        resultsPageAction.I_verify_the_results_heading_is_visible();
        resultsPageAction.I_verify_the_results_content_indicates_no_dental_exemption();
    }

    @And("the content contains details on how to get help and collecting prescriptions")
    public void the_content_contains_details_on_how_to_get_help_and_collecting_prescriptions() {
        resultsPageAction.I_verify_results_contain_guidance_for_collecting_prescriptions();
    }

    @When("I choose the {string}")
    public void i_choose_the(String string){
        startPageActions.verify_links(string);
//        startPageActions.I_click_footer_link(string);
    }
    @Then("I should see {string}")
    public void i_should_see(String screen){
        startPageActions.verify_screen_title(screen);

    }





}




