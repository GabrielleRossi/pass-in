package rocketseat.com.passin.domain.checkins.exceptions;

public class CheckInAlreadyExistsException extends RuntimeException {
    public CheckInAlreadyExistsException(String message){
        super(message);
    }
}
