<?php
use Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;
set_include_path(get_include_path() . PATH_SEPARATOR . "../../lib");
require_once("iCalculator.php");
require_once("iScientificCalculator.php");
require_once("Calculator.php");
class FeatureContext extends BehatContext {
    protected $calculator;
    public function __construct() {
        $this->calculator = new Calculator();
    }
    /**
     * @Given /^I enter "([^"]*)" into the calculator$/
     */
    public function iEnterIntoTheCalculator($argument1) {
        $this->calculator->pressNumber($argument1);
    }
	
	
    /**
     * @When /^I hit "multiply"$/
     */
    public function iHitMultiply() {
        $this->calculator->pressMultiply();
    }
	
	
    /**
     * @When /^I hit "divide"$/
     */
    public function iHitDivide() {
        $this->calculator->pressDivide();
    }
	
	 /**
     * @When /^I hit "add"$/
     */
    public function iHitAdd() {
        $this->calculator->pressAdd();
    }
	
	 /**
     * @When /^I hit "subtract"$/
     */
    public function iHitSubtract() {
        $this->calculator->pressSubtract();
    }
	
    /**
     * @Given /^I hit "equals"$/
     */
    public function iHitEquals() {
        $this->calculator->pressEquals();
    }
	
	 /**
     * @Given /^I hit "factorial"$/
     */
    public function iHitFactorial() {
		$this->calculator->pressFactorial();
    }
	
	 /**
     * @Given /^I hit "CubeRoot"$/
     */
    public function iHitCubeRoot() {
		$this->calculator->pressCubeRoot();
    }
	
	/**
     * @Given /^I hit "decTohex"$/
     */
    public function iHitdecTohex() {
		$this->calculator->pressdecTohex();
    }
	
	 /**
     * @Then /^I see a result of \[INF\]$/
     */
    public function iSeeAResultOfInf()
    {
        $result = $this->calculator->readScreen();
		if($result != [INF]) {
            throw new Exception("Wrong result, actual is [$result]");
		}
    }
	
    /**
     * @Then /^I see a result of "([^"]*)"$/
     */
    public function iSeeAResultOf($argument1) {
        $result = $this->calculator->readScreen();
        if($result != $argument1) {
            throw new Exception("Wrong result, actual is [$result]");
        }
    }
	
	    /**
     * @Given /^I enter (-?\d+) into the calculator$/
     */
    public function iEnterIntoTheCalculator2($arg1)
    {
        $this->calculator->pressNumber($arg1);
    }
	
	

      /**
     * @Then /^I see a result of (-?\d+)$/
     */
    public function iSeeAResultOf2($arg1)
    {
        $result = $this->calculator->readScreen();
        if($result != $arg1) {
            throw new Exception("Wrong result, actual is [$result]");
        }
    }

}