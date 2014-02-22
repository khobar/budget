package com.khobar.budget.signup;

import org.hibernate.validator.constraints.*;

import com.khobar.budget.account.Account;

public class SignupForm {

	private static final String NOT_BLANK_MESSAGE = "{notBlank.message}";
	private static final String EMAIL_MESSAGE = "{email.message}";
	private static final String MIN_PASSWORD_LENGTH = "{passwordlength.message}";

	@NotBlank(message = SignupForm.NOT_BLANK_MESSAGE)
	private String name;

	@NotBlank(message = SignupForm.NOT_BLANK_MESSAGE)
	private String surname;

	@NotBlank(message = SignupForm.NOT_BLANK_MESSAGE)
	@Email(message = SignupForm.EMAIL_MESSAGE)
	private String email;

	@NotBlank(message = SignupForm.NOT_BLANK_MESSAGE)
	@Length(min = 8, message = SignupForm.MIN_PASSWORD_LENGTH)
	private String password;

	@NotBlank(message = SignupForm.NOT_BLANK_MESSAGE)
	@Length(min = 8, message = SignupForm.MIN_PASSWORD_LENGTH)
	private String confirmPassword;

	public Account createAccount() {
		return new Account(getEmail(), getPassword(), "ROLE_USER");
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public String getEmail() {
		return email;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	public String getSurname() {
		return surname;
	}

	public boolean isPasswordConfirmed() {
		return password.equals(confirmPassword);
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}
}
