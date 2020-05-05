package co.breitenbeck.BGame.entity;

import org.springframework.stereotype.Component;

@Component
public class Bomb implements Runnable {
	private int time;
	private int sec = time % 60;
	private int min = time / 60;
	private int exTime;
	private boolean armed;


	@Override
	public void run() {
		while (armed) {
		try {
			Thread.sleep(1000);
			time--;
			if (time <=0) {
				explode();
			}
		}catch (Exception e) {
			
		}
		}
		

	}

	public void explode() {

	}

	public void setTime(int t) {
		this.time = t;
	}

	public int getSec() {
		return sec;
	}

	public int getMin() {
		return min;
	}

	public boolean isArmed() {
		return armed;
	}

	public void arm(boolean armed) {
		this.armed = armed;
	}

	public int getTime() {
		return time;
	}
	
	public void setExTime(int time) {
		this.exTime=time;
	}
	
	public int getExTime() {
		return exTime;
	}

}
