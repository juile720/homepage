package user;

public class User {
	
	private String userID;
	private String userPassword;
	private String userName;
	private String userEmail;
	private String chk_agree;
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getchk_agree() {
		return chk_agree;
	}
	public void setchk_agree(String chk_agree) {
		this.chk_agree = chk_agree;
	}
}