package pojo;

public class loginPOJO {
	String username;
	String password;
	public loginPOJO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public loginPOJO(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "loginPOJO [username=" + username + ", password=" + password + "]";
	}
	

}
