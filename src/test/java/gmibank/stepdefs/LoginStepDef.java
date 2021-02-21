package gmibank.stepdefs;

import gmibank.utilities.ConfigurationReader;
import gmibank.utilities.Driver;
import io.cucumber.java.en.Given;

public class LoginStepDef {

    @Given("open main page")
    public void open_main_page() {
        Driver.getDriver().get(ConfigurationReader.getProperty("url"));
    }

}
