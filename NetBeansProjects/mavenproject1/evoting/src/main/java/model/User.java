/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author apple
 */
public class User {
    
    private String username;
	private String password;
	private String name;
	private String role;
	private String create_time;

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }
	
	
	
	
	public User(String username, String password, String name, String role, String create_time) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.role = role;
		this.create_time = create_time;
	}
	
	
	
	public User() {
		super();
	}



	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", name=" + name + ", role=" + role
				+ ", create_time=" + create_time + "]";
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getCreate_time() {
		return create_time;
	}
	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}
	
    
}
