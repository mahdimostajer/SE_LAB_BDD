package calculator;

public class Calculator {
    public int multiply(int a, int b) {
        return a * b;
    }
    public int divide(int a, int b) {
        return a / b;
    }
    public int power(int a, int b) {
        int answer = 1;
        for (int i = 0; i < b; i++) {
            answer *= a;
        }
        return answer;
    }
}