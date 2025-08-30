package nhsbsa.exch.action;

import nhsbsa.exch.pages.ResultsPage;

public class ResultsPageAction {

    ResultsPage resultsPage;


    public void I_verify_the_results_heading_is_visible() {
        resultsPage.verifyResultsHeadingIsVisible();
    }

    public void I_verify_the_results_content_indicates_exemption() {
        resultsPage.verifyExemptionDetailsIncludePrescriptionsAndDental();
    }

    public void I_verify_the_no_match_message_is_displayed() {
        resultsPage.verifyNoMatchMessageIsDisplayed();
    }


}
