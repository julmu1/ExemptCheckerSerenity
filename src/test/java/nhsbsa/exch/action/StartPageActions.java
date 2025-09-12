package nhsbsa.exch.action;

import nhsbsa.exch.pages.StartPage;

import java.util.List;

public class StartPageActions {

    StartPage startPage;

    public void i_have_clicked_on_start_now_button() {
        startPage.clickStartNowButton();
    }

    public void I_launch_the_NHSBSA_prescription_cost_checker_website() {
        startPage.launchStartPage();
    }

    public void I_click_footer_link(String string) {
        startPage.clickFooterLinks(string);
    }

    public void verify_screen_title(String screen) {
        startPage.verifyUrlContainsLinkKeyword(screen);

    }

    public void I_click_the_next_button() {
        startPage.clickNextButton();
    }

    public void verify_links(String link){
        startPage.verifyUrlContainsLinkKeyword(link);
    }




}
