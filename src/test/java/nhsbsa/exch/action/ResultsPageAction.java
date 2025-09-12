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

    public void I_verify_the_results_content_indicates_no_dental_exemption() {
        resultsPage.verifyExemptionDetailsIncludePrescriptionsOnly();
    }

    public void I_verify_results_contain_guidance_for_collecting_prescriptions(){
        resultsPage.verifyExemptionDetailsIncludePrescriptionGuidance();
    }

    public void I_should_see_output_and_expiry(String output, String expirydate) {
        resultsPage.verifyUrlContainsOutput(output);
        resultsPage.verifyExpiryOnResultsPage(expirydate);
    }

    public void I_verify_the_results_page_url_for_DoB_contains(String outputs) {
        resultsPage.verifyUrlDoBContainsOutputs(outputs);
    }

    public void I_verify_the_results_page_url_for_Dental_Exemptions_contains(String output) {
        resultsPage.verifyUrlDentalExemptContainsOutputs(output);
    }


}
