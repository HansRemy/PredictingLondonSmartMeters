UPDATE public."Adversity" as meterreading
	SET  temperature=wh."apparentTemperature"
	FROM public."WeatherHourly" as wh 
	Where TO_TIMESTAMP(meterreading.tstp, 'YYYY/MM/DD HH24:MI:SS') - (30 ||' minutes')::interval = TO_TIMESTAMP(wh.time, 'YYYY/MM/DD HH24:MI:SS');

UPDATE public."Adversity" as meterreading
	SET  temperature=wh."apparentTemperature"
	FROM public."WeatherHourly" as wh 
	Where TO_TIMESTAMP(meterreading.tstp, 'YYYY/MM/DD HH24:MI:SS') = TO_TIMESTAMP(wh.time, 'YYYY/MM/DD HH24:MI:SS');
	
	
UPDATE public."Affluent" as meterreading
	SET  temperature=wh."apparentTemperature"
	FROM public."WeatherHourly" as wh 
	Where TO_TIMESTAMP(meterreading.tstp, 'YYYY/MM/DD HH24:MI:SS') - (30 ||' minutes')::interval = TO_TIMESTAMP(wh.time, 'YYYY/MM/DD HH24:MI:SS');

UPDATE public."Affluent" as meterreading
	SET  temperature=wh."apparentTemperature"
	FROM public."WeatherHourly" as wh 
	Where TO_TIMESTAMP(meterreading.tstp, 'YYYY/MM/DD HH24:MI:SS') = TO_TIMESTAMP(wh.time, 'YYYY/MM/DD HH24:MI:SS');


UPDATE public."Comfortable" as meterreading
	SET  temperature=wh."apparentTemperature"
	FROM public."WeatherHourly" as wh 
	Where TO_TIMESTAMP(meterreading.tstp, 'YYYY/MM/DD HH24:MI:SS') - (30 ||' minutes')::interval = TO_TIMESTAMP(wh.time, 'YYYY/MM/DD HH24:MI:SS');
	
UPDATE public."Comfortable" as meterreading
	SET  temperature=wh."apparentTemperature"
	FROM public."WeatherHourly" as wh 
	Where TO_TIMESTAMP(meterreading.tstp, 'YYYY/MM/DD HH24:MI:SS')= TO_TIMESTAMP(wh.time, 'YYYY/MM/DD HH24:MI:SS');
	