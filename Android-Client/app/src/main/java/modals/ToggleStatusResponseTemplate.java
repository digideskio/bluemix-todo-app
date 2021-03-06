package modals;

/**
 * Created by manishautomatic on 18/05/16.
 */
public class ToggleStatusResponseTemplate {

    private int response_code=1;  // 1 = failure, 0=success
    private String type="";
    private TaskIDTemplate result =new TaskIDTemplate();
    private String response_message ="";
    private LoginDetailsObject details = new LoginDetailsObject();
    private int task_id=-1;


    public int getTask_id() {
        return task_id;
    }

    public void setTask_id(int task_id) {
        this.task_id = task_id;
    }

    public int getResponse_code() {
        return response_code;
    }

    public void setResponse_code(int response_code) {
        this.response_code = response_code;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public TaskIDTemplate getResult() {
        return result;
    }

    public void setResult(TaskIDTemplate result) {
        this.result = result;
    }

    public String getResponse_message() {
        return response_message;
    }

    public void setResponse_message(String response_message) {
        this.response_message = response_message;
    }

    public LoginDetailsObject getDetails() {
        return details;
    }

    public void setDetails(LoginDetailsObject details) {
        this.details = details;
    }
}
