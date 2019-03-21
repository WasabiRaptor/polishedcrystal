; Functions relating to the timer interrupt and the real-time-clock.


UpdateTime:: ; 5a7
	farjp GetTimeOfDay
