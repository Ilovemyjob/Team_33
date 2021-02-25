package gmibank.pages;

import io.cucumber.java.en.Given;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class RegistrationPage extends BasePage{

    @FindBy(xpath = "//span[.='Register']")
    public WebElement register;

    @FindBy(css = "#ssn")
    public WebElement ssn;

    @FindBy(xpath = "//div[.='Your SSN is invalid']")
    public WebElement ssn_message;

    @FindBy(css = "#firstname")
    public WebElement firstName;

    @FindBy(xpath = "//div[.='Your First Name is required']")
    public WebElement firstName_message;

    @FindBy(css = "#lastname")
    public WebElement lastName;

    @FindBy(xpath = "//div[.='Your Last Name is required']")
    public WebElement lastName_message;

    @FindBy(css = "#mobilephone")
    public WebElement mobilePhone;

    @FindBy(xpath = "//div[.='Your mobile phone number is invalid']")
    public WebElement mobilePhone_message;

    @FindBy(css = "#username")
    public WebElement username;

    @FindBy(xpath = "//div[.='Your username is required.']")
    public WebElement username_message;

    @FindBy(css = "#email")
    public WebElement email;

    @FindBy(xpath = "//div[.='This field is invalid']")
    public WebElement email_message_invalid;

    @FindBy(xpath = "//div[.='Your email is required to be at least 5 characters.']")
    public WebElement email_message_5_character;

    @FindBy(xpath = "//div[.='Your email is required.']")
    public WebElement email_message;

    @FindBy(css = "#firstPassword")
    public WebElement password_new;

    @FindBy(xpath = "//div[.='Your password is required.']")
    public WebElement noNewPassword_message;

    @FindBy(xpath = "//div[.='Your password is required to be at least 4 characters.']")
    public WebElement password_message_4_character;










}
