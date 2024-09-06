package com.spring.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Role;
import com.spring.model.User;
import com.spring.repository.UserRepository;

@Transactional
public class UserDetailsServiceImpl implements UserDetailsService{
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
    private PasswordEncoder passwordEncoder;
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		
		User user = userRepository.findByuserName(userName);
		
		if(user == null) {
			throw new UsernameNotFoundException("user" + userName + "is invalid, please enter again");
		}
		
		UserBuilder userBuilder = org.springframework.security.core.userdetails.User.builder();
		
		String[] roleNames = user.getRoles().stream().map(Role::getName).toArray(String[]::new);
		
		System.out.println("Role Name from UserDetailServiceImpl is" + roleNames);
		
		
		return userBuilder.username(user.getUserName())
				.password(user.getPassword())
				.roles(roleNames)
				.passwordEncoder(passwordEncoder::encode)
				.build();
	}

}
