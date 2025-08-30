package nhsbsa.exch.testRunners;

import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        glue = {"nhsbsa.exch.stepDefinitions"},
        plugin = {"pretty"},
        features = "src/test/resources/features",
        tags = "not @Pensions"
)
public class NHSExemptionCheckerCompleteTestSuite {
}
