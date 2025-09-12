package nhsbsa.exch.stepDefinitions;

import io.cucumber.java.en.Then;
import net.serenitybdd.annotations.Steps;
import nhsbsa.exch.action.DateOfBirthActions;
import nhsbsa.exch.action.ResultsPageAction;
import nhsbsa.exch.action.StartPageActions;

public class EndToEndStepDefs {

    @Steps
    DateOfBirthActions dateOfBirthActions;
    @Steps
    StartPageActions startPageActions;
    @Steps
    ResultsPageAction resultsPageAction;


    @Then("I will see {string} and my {string}")
    public void iWillSeeAndMy(String output, String expirydate) {
        resultsPageAction.I_should_see_output_and_expiry(output, expirydate);


    }
}
