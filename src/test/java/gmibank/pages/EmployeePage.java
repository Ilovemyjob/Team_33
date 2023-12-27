package gmibank.pages;

import gmibank.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class EmployeePage {


        public EmployeePage(){
            PageFactory.initElements(Driver.getDriver(),this);
        }
        @FindBy(id = "entity-menu")
        public WebElement myOperationSegment;
}
