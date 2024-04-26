package calculator;

import calculator.Calculator;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class MyStepdefs {
    private Calculator calculator;
    private int value1;
    private int value2;
    private int result;

    @Before
    public void before() {
        calculator = new Calculator();
    }

    @Given("^Two input values, (-?[1-9]\\d*|0) and (-?[1-9]\\d*|0)$")
    public void twoInputValuesAnd(int arg0, int arg1) {
        value1 = arg0;
        value2 = arg1;
    }

    @When("^I * the two values$")
    public void iMultiplyTheTwoValues() {
        result = calculator.multiply(value1, value2);
        System.out.print(result);
    }

    @When("^I / the two values$")
    public void iDivideTheTwoValues() {
        result = calculator.divide(value1, value2);
        System.out.print(result);
    }

    @When("^I ^ the two values$")
    public void iPowerTheTwoValues() {
        result = calculator.power(value1, value2);
        System.out.print(result);
    }

    @Then("^I expect the result (-?[1-9]\\d*|0)$")
    public void iExpectTheResult(int arg0) {
        Assert.assertEquals(arg0, result);

    }
}