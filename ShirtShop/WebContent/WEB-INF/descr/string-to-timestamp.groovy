#input String ingresso
#output Timestamp result
import java.sql.Timestamp
import java.text.SimpleDateFormat

import java.util.*;

println ingresso;

data = ingresso.substring(0, 10);
ora = ingresso.substring(11,19);

println data;
println ora;

SimpleDateFormat sdf = new SimpleDateFormat("y-M-d");
Date d = sdf.parse(data);

sdf = new SimpleDateFormat("H:m:s");
Date s = sdf.parse(ora);

Calendar cal = new GregorianCalendar();
cal.setTime(d);
cal.set(Calendar.HOUR_OF_DAY, s.getHours());
cal.set(Calendar.MINUTE, s.getMinutes());
cal.set(Calendar.SECOND, s.getSeconds());

result = new Timestamp(cal.getTimeInMillis());

return ["result": result];