package gmibank.stepdefs;

import gmibank.utilities.ConfigurationReader;
import gmibank.utilities.Driver;
import io.cucumber.java.en.Given;
import org.junit.Assert;

public class RegistrationStepDef {

    @Given("open main page")
    public void open_main_page() {
        Driver.getDriver().get(ConfigurationReader.getProperty("url"));
    }

}
