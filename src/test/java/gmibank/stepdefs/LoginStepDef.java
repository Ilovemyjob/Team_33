package gmibank.stepdefs;

import gmibank.pages.BasePage;
import gmibank.pages.LoginPage;
import gmibank.utilities.ConfigurationReader;
import gmibank.utilities.Driver;
import io.cucumber.java.en.Given;

public class LoginStepDef {

    LoginPage loginPage = new LoginPage();

    @Given("sign in as {string}")
    public void sign_in_as(String role) throws InterruptedException {
        loginPage.login(role);
    }

    @Given("open landing page")
    public void open_landing_page() {
        //open the landing page
        Driver.getDriver().get(ConfigurationReader.getProperty("url"));
        loginPage.account.click();
    }

    @Given("click on sign in button & navigate to login page")
    public void click_on_sign_in_button_navigate_to_login_page() {

    }
    @Given("type username {string} & password {string} for {string}")
    public void type_username_password_for(String string, String string2, String string3) {

    }
    @Given("verify error message")
    public void verify_error_message() {

    }
}
