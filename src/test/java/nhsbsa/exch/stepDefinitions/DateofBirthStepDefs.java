package nhsbsa.exch.stepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.annotations.Steps;
import nhsbsa.exch.action.*;

public class DateofBirthStepDefs {
    @Steps
    DateOfBirthActions dateOfBirthActions;
    @Steps
    StartPageActions startPageActions;
    @Steps
    ResultsPageAction resultsPageAction;

    @When("I enter my date of birth as {string} {string} {string}")
    public void iEnterMyDateOfBirth(String day, String month, String year) {
        dateOfBirthActions.I_enter_my_date_of_birth(day, month, year);
        startPageActions.I_click_the_next_button();

    }

    @When("I declare my age as {string}")
    public void iDeclareMyAge(String ageInput) {
        dateOfBirthActions.I_declare_my_age(ageInput);
    }

    @Then("I should see these {string}")
    public void iShouldSeeThese(String outputs) {
//        resultsPageAction.I_verify_the_results_page_url_for_DoB_contains(outputs);
        dateOfBirthActions.I_verify_DOB_page_url_contains(outputs);
    }

}
