package co.breitenbeck.BGame;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.breitenbeck.BGame.entity.Bomb;

@Controller
public class BombController {
	
	@RequestMapping("/")
	public ModelAndView start() {
		ModelAndView mav = new ModelAndView("home");
		return mav;
		
	}
	
	@RequestMapping("/instructions")
	public ModelAndView instruct(
			@RequestParam("dif") int dif) {
		int time = 30;
		int exTime =10;
		int ques = 3;
		switch (dif){
		case 1:  {
			time=30;
			exTime=10;
			ques = 3;
			break;
		}
		case 2:  {
			time=20;
			exTime=5;
			ques = 6;
			break;
		}
		case 3:  {
			time=10;
			exTime=3;
			ques = 9;
			break;
		}
		}
		ModelAndView mav = new ModelAndView("instructions");
		mav.addObject("time", time);
		mav.addObject("exTime", exTime);
		mav.addObject("ques", ques);
		return mav;	
	}
	
	

	@RequestMapping("/bomb")
	public ModelAndView bomb(@RequestParam("time") int time,
			@RequestParam("exTime") int exTime,
			@RequestParam("ques") int ques){
		
		ModelAndView mav = new ModelAndView("bomb");
		mav.addObject("time", time);
		mav.addObject("exTime", exTime);
		return mav;
		
	}
		
	
	

}
