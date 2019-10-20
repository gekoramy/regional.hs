package dunder.mifflin.utils;

public class Result {

    private final String action;
    private final int code;

    Result(String action, int code) {
        this.action = action;
        this.code = code;
    }

    public String action() {
        return action;
    }

    public int code() {
        return code;
    }
}
