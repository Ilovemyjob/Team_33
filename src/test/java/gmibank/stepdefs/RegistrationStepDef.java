package gmibank.stepdefs;

import gmibank.pages.RegistrationPage;
import gmibank.utilities.BrowserUtils;
import gmibank.utilities.ConfigurationReader;
import gmibank.utilities.Driver;
import io.cucumber.java.en.Given;
import org.junit.Assert;
import org.openqa.selenium.Keys;

import java.util.List;

public class RegistrationStepDef {

    RegistrationPage registrationPage = new RegistrationPage();

    @Given("navigate to registration page")
    public void navigate_to_registration_page() throws InterruptedException {
        registrationPage.register.click();
        Thread.sleep(3000);
    }

    @Given("type ssn number {string}")
    public void type_ssn_number(String ssn) {
        registrationPage.ssn.sendKeys(ssn + Keys.TAB);
    }

    @Given("verify {string}")
    public void verify(String ssn_message) {
        String expectedResult = ssn_message;
        String actualResult = registrationPage.ssn_message.getText();
        Assert.assertEquals(expectedResult,actualResult);
    }

    @Given("type first name {string}")
    public void type_first_name(String firstName) {
        registrationPage.firstName.sendKeys(firstName + Keys.TAB);
    }

    @Given("verify first name message {string}")
    public void verify_first_name_message(String message_firstName) {
        String expectedResult = message_firstName;
        String actualResult = registrationPage.firstName_message.getText();
        Assert.assertEquals(expectedResult,actualResult);
    }

    @Given("type last name {string}")
    public void type_last_name(String lastName) {
        registrationPage.lastName.sendKeys(lastName + Keys.TAB);
    }

    @Given("verify last name message {string}")
    public void verify_last_name_message(String message_lastName) {
        String expectedResult = message_lastName;
        String actualResult = registrationPage.lastName_message.getText();
        Assert.assertEquals(expectedResult,actualResult);
    }

    @Given("type mobile phone {string}")
    public void type_mobile_phone(String mobilePhone) {
        registrationPage.mobilePhone.sendKeys(mobilePhone + Keys.TAB);
    }

    @Given("verify mobile phone message {string}")
    public void verify_mobile_phone_message(String mobilePhone_message) {
        String expectedResult = mobilePhone_message;
        String actualResult = registrationPage.mobilePhone_message.getText();
        Assert.assertEquals(expectedResult,actualResult);
    }

    @Given("type username {string}")
    public void type_username(String username) {
        BrowserUtils.scrollToElement(registrationPage.username);
        registrationPage.username.sendKeys(username + Keys.TAB);
    }

    @Given("verify username message {string}")
    public void verify_username_message(String username_message) {
        String expectedResult = username_message;
        String actualResult = registrationPage.username_message.getText();
        Assert.assertEquals(expectedResult,actualResult);
    }

    @Given("type email {string}")
    public void type_email(String email) {
        BrowserUtils.scrollToElement(registrationPage.email);
        registrationPage.email.sendKeys(email + Keys.TAB);
    }

    @Given("verify email message {string}")
    public void verify_email_message(String email_message) {
        String expectedResult = email_message;
        String actualResult = registrationPage.email_message_invalid.getText();
        Assert.assertEquals(expectedResult,actualResult);
    }

    @Given("verify the email message {string}")
    public void verify_the_email_message(String email_message) {
        String expectedResult = email_message;
        String actualResult = registrationPage.email_message_5_character.getText();
        Assert.assertEquals(expectedResult,actualResult);
    }

    @Given("verify below email message {string}")
    public void verify_below_email_message(String email_message) {
        String expectedResult = email_message;
        String actualResult = registrationPage.email_message.getText();
        Assert.assertEquals(expectedResult,actualResult);
    }

    @Given("type new password {string}")
    public void type_new_password(String noNewPassword) {
        BrowserUtils.scrollToElement(registrationPage.password_new);
        registrationPage.password_new.sendKeys(noNewPassword + Keys.TAB);
    }

    @Given("verify new password message {string}")
    public void verify_new_password_message(String password_message) {
        String expectedResult = password_message;
        String actualResult = registrationPage.noNewPassword_message.getText();
        Assert.assertEquals(expectedResult,actualResult);
    }

    @Given("verify the new password message {string}")
    public void verify_the_new_password_message(String password_message) throws InterruptedException {
        String expectedResult = password_message;
        String actualResult = registrationPage.password_message_4_character.getText();
        Thread.sleep(2000);
        Assert.assertEquals(expectedResult,actualResult);
    }






}
