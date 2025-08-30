package nhsbsa.exch.action;

import nhsbsa.exch.pages.StartPage;

public class StartPageActions {

    StartPage startPage;

    public void i_have_clicked_on_start_now_button() {
        startPage.clickStartNowButton();
    }

    public void I_launch_the_NHSBSA_prescription_cost_checker_website() {
        startPage.launchStartPage();
    }
}
