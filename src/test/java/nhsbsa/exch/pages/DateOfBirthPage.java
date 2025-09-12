package nhsbsa.exch.pages;

import net.serenitybdd.core.steps.UIInteractionSteps;
import org.junit.Assert;
import org.openqa.selenium.By;

import java.time.LocalDate;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

public class DateOfBirthPage extends UIInteractionSteps {

    static By DOB_HEADING = By.xpath("//h1[@class='nhsuk-fieldset__heading']");
    static By DAY_INPUT = By.id("dob-day");
    static By MONTH_INPUT = By.id("dob-month");
    static By YEAR_INPUT = By.id("dob-year");
    static By CONTINUE_BUTTON = By.id("next-button");
    static By ERROR_SUMMARY = By.id("error-summary-title");


    public void verifyDateOfBirthHeadingIsVisible() {
        if ($(DOB_HEADING).isPresent()) {
            $(DOB_HEADING).shouldBeVisible();
        } else {
            Assert.fail("Date of birth heading is not visible!");
        }
    }

    public void verifyDateFieldsAreVisible() {
        if ($(DAY_INPUT).isPresent() && $(MONTH_INPUT).isPresent() && $(YEAR_INPUT).isPresent()) {
            $(DAY_INPUT).shouldBeVisible();
            $(MONTH_INPUT).shouldBeVisible();
            $(YEAR_INPUT).shouldBeVisible();
        } else {
            Assert.fail("One or more date input fields are not visible!");
        }
    }

    public void verifyContinueButtonIsVisibleAndEnabled() {
        if ($(CONTINUE_BUTTON).isPresent()) {
            $(CONTINUE_BUTTON).shouldBeVisible();
            $(CONTINUE_BUTTON).shouldBeEnabled();
        } else {
            Assert.fail("Continue button is not visible!");
        }
    }

    public void enterDateOfBirth(String day, String month, String year) {
        if ($(DAY_INPUT).isPresent() && $(MONTH_INPUT).isPresent() && $(YEAR_INPUT).isPresent()) {
            $(DAY_INPUT).type(day);
            $(MONTH_INPUT).type(month);
            $(YEAR_INPUT).type(year);
        } else {
            Assert.fail("Cannot enter date of birth: one or more fields are missing!");
        }
    }

    public void clickContinueButton() {
        if ($(CONTINUE_BUTTON).isPresent()) {
            $(CONTINUE_BUTTON).click();
        } else {
            Assert.fail("Continue button is not available!");
        }
    }

    public void verifyErrorSummaryIsVisible() {
        if ($(ERROR_SUMMARY).isPresent()) {
            $(ERROR_SUMMARY).shouldBeVisible();
        } else {
            Assert.fail("Error summary is not visible when expected!");
        }
    }

    public void iDeclareMyAge(String ageInput) {
        String day = "";
        String month = "";
        String year = "";

        switch (ageInput.toLowerCase().trim()) {
            case "no_date":
                break;

            case "future":
                day = "01";
                month = "01";
                year = "3000";
                break;

            case "16 tomorrow":
                LocalDate tomorrow = LocalDate.now().plusDays(1).minusYears(16);
                day = String.format("%02d", tomorrow.getDayOfMonth());
                month = String.format("%02d", tomorrow.getMonthValue());
                year = String.valueOf(tomorrow.getYear());
                break;

            case "16 yesterday":
                LocalDate yesterday = LocalDate.now().minusDays(1).minusYears(16);
                day = String.format("%02d", yesterday.getDayOfMonth());
                month = String.format("%02d", yesterday.getMonthValue());
                year = String.valueOf(yesterday.getYear());
                break;

            default:
                try {
                    int age = Integer.parseInt(ageInput);
                    LocalDate dob = LocalDate.now().minusYears(age);
                    day = String.format("%02d", dob.getDayOfMonth());
                    month = String.format("%02d", dob.getMonthValue());
                    year = String.valueOf(dob.getYear());
                } catch (NumberFormatException e) {
                    throw new IllegalArgumentException("Unrecognized age input: " + ageInput);
                }
                break;
        }

        // Fill in the fields using Serenity's $() pattern
        $(DateOfBirthPage.DAY_INPUT).clear();
        $(DateOfBirthPage.DAY_INPUT).sendKeys(day);

        $(DateOfBirthPage.MONTH_INPUT).clear();
        $(DateOfBirthPage.MONTH_INPUT).sendKeys(month);

        $(DateOfBirthPage.YEAR_INPUT).clear();
        $(DateOfBirthPage.YEAR_INPUT).sendKeys(year);

        $(DateOfBirthPage.CONTINUE_BUTTON).click();
    }



    public void verifyDOBOutcome(String output) {
        String currentUrl = getDriver().getCurrentUrl();
        String pageText = getDriver().getPageSource();

        switch (output) {
            case "Result Under 16":
                assertThat(currentUrl)
                        .as("URL should contain 'results/result-under-16'")
                        .contains("results/result-under-16");
                break;

            case "DOB Invalid":
                assertThat(pageText)
                        .as("DOB invalid error message should be present")
                        .contains("Enter your date of birth");
                break;

            case "DOB Incorrect":
                assertThat(pageText)
                        .as("DOB incorrect error message should be present")
                        .contains("Check the year you were born is correct");
                break;

            case "DOB Invalid Year":
                assertThat(pageText)
                        .as("DOB invalid year error message should be present")
                        .contains("Your date of birth must be in the past");
                break;

            case "Name Screen":
                assertThat(currentUrl)
                        .as("URL should contain 'name-exempt'")
                        .contains("name-exempt");

                assertThat(pageText)
                        .as("Name screen content should be present")
                        .contains("What is your name?");
                break;

            default:
                throw new AssertionError("Unrecognized output type: " + output);
        }
    }


}



