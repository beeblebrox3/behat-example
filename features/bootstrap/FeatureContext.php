<?php

use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\MinkExtension\Context\RawMinkContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawMinkContext
{
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
    }

    /**
     * @Then I wait for :arg be visible
     *
     * @param string $elementSelector
     * @return void
     */
    public function thenIWaitForElementBeVisible(string $elementSelector)
    {
        $this->getSession()->wait(5000); // wait for 5 seconds
    }
}
