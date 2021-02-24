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






}
