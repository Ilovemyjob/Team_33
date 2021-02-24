package gmibank.pages;

import gmibank.utilities.BrowserUtils;
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

    public void login(String role) throws InterruptedException {

        switch (role) {
            case "admin":
                Driver.getDriver().get(ConfigurationReader.getProperty("url"));
                account.click();
                signIn.click();
                signInBtn.click();
                BrowserUtils.wait(5);
                username.sendKeys(ConfigurationReader.getProperty("username_admin"));
                Thread.sleep(1000);
                password.sendKeys(ConfigurationReader.getProperty("password_admin"));
                Thread.sleep(1000);
                signInBtn.click();
                Thread.sleep(2000);
                break;
            case "manager":
                Driver.getDriver().get(ConfigurationReader.getProperty("url"));
                account.click();
                signIn.click();
                signInBtn.click();
                BrowserUtils.wait(5);
                username.sendKeys(ConfigurationReader.getProperty("username_manager"));
                Thread.sleep(1000);
                password.sendKeys(ConfigurationReader.getProperty("password_manager"));
                Thread.sleep(1000);
                signInBtn.click();
                Thread.sleep(2000);
                break;
            case "employee":
                Driver.getDriver().get(ConfigurationReader.getProperty("url"));
                account.click();
                signIn.click();
                signInBtn.click();
                BrowserUtils.wait(5);
                username.sendKeys(ConfigurationReader.getProperty("username_employee"));
                Thread.sleep(1000);
                password.sendKeys(ConfigurationReader.getProperty("password_employee"));
                Thread.sleep(1000);
                signInBtn.click();
                Thread.sleep(3000);
                break;
            case "customer":
                Driver.getDriver().get(ConfigurationReader.getProperty("url"));
                account.click();
                signIn.click();
                signInBtn.click();
                BrowserUtils.wait(5);
                username.sendKeys(ConfigurationReader.getProperty("username_customer"));
                Thread.sleep(1000);
                password.sendKeys(ConfigurationReader.getProperty("password_customer"));
                Thread.sleep(1000);
                signInBtn.click();
                Thread.sleep(3000);
                break;
        }
    }
}
