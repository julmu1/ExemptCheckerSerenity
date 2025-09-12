//package nhsbsa.exch.action;
//
//import nhsbsa.exch.pages.CookieBannerPage;
//
//public class CookieBannerActions {
//
//    CookieBannerPage cookieBannerPage;
//
//    public void I_accept_cookies() {
//        cookieBannerPage.acceptAnalyticsCookies();
//    }
//
//    public void I_reject_cookies() {
//        cookieBannerPage.rejectCookies();
//    }
//
//    public void click_read_more_link() {
//        cookieBannerPage.clickReadMoreAboutCookies();
//    }
//
//    public void I_verify_cookie_banner_is_displayed() {
//        cookieBannerPage.verifyCookieBannerIsVisible();
//    }
//
//    public void I_change_cookie_preference(String preference) {
//        if ("use_analytics_cookies".equals(preference)) {
//            cookieBannerPage.acceptAnalyticsCookies();
//        } else if ("dont_use_analytics_cookies".equals(preference)) {
//            cookieBannerPage.rejectCookies();
//        } else {
//            throw new IllegalArgumentException("Unknown cookie preference: " + preference);
//        }
//    }
//
//    public void I_verify_cookie_settings_saved() {
//        // Implement verification logic as needed, e.g. check for confirmation message
//        cookieBannerPage.verifyCookieSettingsSaved();
//    }
//
//    public void I_return_to_screen(String screen) {
//        cookieBannerPage.returnToScreen(screen);
//    }
//}
