package nhsbsa.exch.stepDefinitions;

import io.cucumber.java.en.Then;
import net.serenitybdd.annotations.Steps;
import nhsbsa.exch.action.ResultsPageAction;

public class DentalExemptionsStepDefs {

    @Steps
    ResultsPageAction resultsPageAction;

    @Then("I should see the {string} screen")
    public void i_should_see_the_screen(String output) {
        resultsPageAction.I_verify_the_results_page_url_for_Dental_Exemptions_contains(output);
    }

}
