package nhsbsa.exch.pages;

import net.serenitybdd.core.steps.UIInteractionSteps;
import org.junit.Assert;
import org.openqa.selenium.By;

public class ResultsPage extends UIInteractionSteps {

    static By RESULTS_HEADING = By.xpath("//h1[@class='nhsuk-heading-xl done-panel nhsuk-u-margin-top-0']");
    static By RESULTS_CONTENT = By.xpath("//div[@class='nhsuk-panel__body']");
    static By EXEMPTION_DETAILS = By.xpath("//dt[contains(text(),'Exempt from paying')]/following-sibling::dd");
    static By NO_MATCH_MESSAGE = By.xpath("//h1[@class='nhsuk-heading-xl']");
    static By EXEMPTION_EXCLUSIONS_HEADER = By.xpath("//dt[normalize-space()='This exemption is not for']");
    static By DENTAL_EXCLUSION_ITEM = By.xpath("//dd[contains(text(), 'NHS dental check-ups') or contains(text(), 'NHS dental treatment')]");
    static By DENTAL_EXCLUSION_HEADER = By.xpath("//dt[normalize-space()='This exemption is not for']");
    public void verifyResultsHeadingIsVisible() {
        if ($(RESULTS_HEADING).isPresent()) {
            $(RESULTS_HEADING).shouldBeVisible();
        } else {
            Assert.fail("Results page heading is not visible!");
        }
    }

    public void verifyExemptionDetailsIncludePrescriptionsAndDental() {
        if ($(EXEMPTION_DETAILS).isPresent()) {
            String actualText = $(EXEMPTION_DETAILS).getText().toLowerCase().trim();

            boolean hasPrescriptions = actualText.contains("nhs prescriptions");
            boolean hasDental = actualText.contains("nhs dental check-ups") || actualText.contains("nhs dental check ups");

            if (!hasPrescriptions || !hasDental) {
                Assert.fail("Exemption details are incomplete. Expected both NHS prescriptions and dental check-ups. Actual: \"" + actualText + "\"");
            }
        } else {
            Assert.fail("Exemption details section is not visible!");
        }
    }


    public void verifyExemptionDetailsIncludePrescriptionsOnly() {
        boolean hasPrescriptions = $(By.xpath("//li[normalize-space()='NHS prescriptions']")).isPresent();
        boolean hasExclusionHeader = $(By.xpath("//dt[normalize-space()='This exemption is not for']")).isPresent();
        boolean hasDentalExclusion = $(By.xpath("//li[normalize-space()='NHS dental check-ups and treatment']")).isPresent();

        boolean excludesDental = hasExclusionHeader && hasDentalExclusion;

        if (!hasPrescriptions || !excludesDental) {
            Assert.fail("Exemption details are incomplete. Expected NHS prescriptions and explicit exclusion of NHS dental check-ups and treatment.");
        }
    }





    public void verifyNoMatchMessageIsDisplayed() {
        if ($(NO_MATCH_MESSAGE).isPresent()) {
            String actualText = $(NO_MATCH_MESSAGE).getText().toLowerCase().trim();

            boolean containsExpectedMessage = actualText.contains("we cannot match you to our records")
                    || actualText.contains("could not find your exemption");

            if (!containsExpectedMessage) {
                Assert.fail("Unexpected message content. Actual: \"" + actualText + "\"");
            }
        } else {
            Assert.fail("No match message is not visible!");
        }
    }

    public void verifyExemptionDetailsIncludePrescriptionGuidance() {
        boolean hasGuidanceHeader = $(By.xpath("//h2[normalize-space()='How to get your help']")).isPresent();
        boolean mentionsLostCertificate = $(By.xpath("//p[contains(text(), 'lost your exemption certificate')]")).isPresent();
        boolean mentionsShowPageAsProof = $(By.xpath("//p[contains(text(), 'show this page as proof')]")).isPresent();

        boolean guidanceComplete = hasGuidanceHeader &&
                mentionsLostCertificate &&
                mentionsShowPageAsProof;

        if (!guidanceComplete) {
            Assert.fail("Exemption details are incomplete. Expected guidance on lost certificate and showing page as proof.");
        }
    }

}












