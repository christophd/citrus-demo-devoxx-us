package com.consol.citrus.demo.voting.selenium.pages;

import com.consol.citrus.selenium.model.WebPage;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

/**
 * @author Christoph Deppisch
 */
public class WelcomePage implements WebPage {

    @FindBy(linkText = "Run application")
    private WebElement runButton;

    /**
     * Starts application by clicking respective button on page.
     */
    public void startApp() {
        runButton.click();
    }
}
