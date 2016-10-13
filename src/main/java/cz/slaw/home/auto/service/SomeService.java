package cz.slaw.home.auto.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.messaging.MessageChannel;
import org.springframework.stereotype.Service;

@Service
public class SomeService {

	@Autowired
	@Qualifier("out")
    private MessageChannel helloWorldChannel;
	
	public void msg(String msg){
		System.out.println("msg "+msg);
	}
	
}
