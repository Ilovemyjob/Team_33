package gmibank.pages;

import gmibank.utilities.ConfigurationReader;
import gmibank.utilities.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage extends BasePage{

    @FindBy(id="account-menu")
    public WebElement account;

    @FindBy(xpath="//span[.='Sign in']")
    public WebElement signIn;

    @FindBy(name="username")
    public WebElement username;

    @FindBy(name="password")
    public WebElement password;

    @FindBy(xpath="(//div[@class='modal-footer']/button/span)[2]")
    public WebElement signInBtn;

    public void login(String role){

        Driver.getDriver().get(ConfigurationReader.getProperty("url"));

        account.click();
        signIn.click();
        username.sendKeys(ConfigurationReader.getProperty("username_employee"));
        password.sendKeys(ConfigurationReader.getProperty("password_employee"));
        signInBtn.click();

        switch (role) {
            case "admin":
                username.sendKeys(ConfigurationReader.getProperty("username_admin"));
                password.sendKeys(ConfigurationReader.getProperty("password_admin"));
                signInBtn.click();
                break;
            case "manager":
                username.sendKeys(ConfigurationReader.getProperty("username_manager"));
                password.sendKeys(ConfigurationReader.getProperty("password_manager"));
                signInBtn.click();
                break;
            case "employee":
                username.sendKeys(ConfigurationReader.getProperty("username_employee"));
                password.sendKeys(ConfigurationReader.getProperty("password_employee"));
                signInBtn.click();
                break;
            case "customer":
                username.sendKeys(ConfigurationReader.getProperty("username_customer"));
                password.sendKeys(ConfigurationReader.getProperty("password_customer"));
                signInBtn.click();
                break;
        }
    }
}
