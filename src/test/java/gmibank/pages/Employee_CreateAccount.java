package gmibank.pages;

import gmibank.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class Employee_CreateAccount {

    public Employee_CreateAccount(){
        PageFactory.initElements(Driver.getDriver(),this);
    }


    @FindBy(xpath = "(//a[@class='dropdown-item'])[2]")
    public WebElement manageAccount;
    @FindBy (id = "jh-create-entity")
    public WebElement createANewAccount;

    @FindBy (id="tp-account-description") // 1 with for one with id wil it find right one
    public WebElement description;
    @FindBy (xpath = "//div[@class='invalid-feedback']")
    public WebElement descriptionErrorMessage;
    @FindBy (id="tp-account-balance")
    public WebElement balance;
    @FindBy (xpath = "//div[@class='invalid-feedback']")
    public WebElement balanceErrorMessage;
    @FindBy(id="tp-account-accountType")
    public WebElement accountType;
    @FindBy (xpath = "//option[@value='CHECKING']") // Is that possible with option?
    public WebElement checking;
    @FindBy (xpath = "//option[@value='SAVING']")
    public WebElement saving;
    @FindBy (xpath = "//option[@value='CREDIT_CARD']")
    public WebElement creditCard;
    @FindBy (xpath = "//option[@value='INVESTING']")
    public WebElement investing;                    // Why it has different color

    @FindBy(id="accountStatusTypeLabel")
    public WebElement accountStatusType;
    @FindBy (xpath = "//option[@value='ACTIVE']")
    public WebElement active;
    @FindBy (xpath = "//option[@value='SUESPENDED']")
    public WebElement suespended;
    @FindBy (xpath = "//option[@value='CLOSED']")
    public WebElement closed;

    @FindBy(id = "tp-account-createDate")
    public WebElement createDate;
    @FindBy(id="tp-account-closedDate")
    public WebElement closedDate;

    @FindBy(id="tp-account-employee")
    public WebElement employee;
    @FindBy(id="save-entity")
    public WebElement save;
    @FindBy(id = "cancel-save")
    public WebElement back;

}
