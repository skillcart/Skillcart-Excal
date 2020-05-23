import java.io.BufferedReader;
	import java.io.InputStreamReader;
	import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
	import java.net.URLConnection;
	import java.net.URLEncoder;
	 
public class SmsApi {


	
	String msg,number;
		 public SmsApi(String msg, String number) {
			 System.out.println("System of Constructor smsapi");
					
		this.msg = msg;
		this.number = number;
	}
		@Override
	public String toString() {
		return "SmsApi [msg=" + msg + ", number=" + number + "]";
	}
		public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public void sendSms()	{
			try {
				// Construct data
				System.out.println("System of try in smsapi");
				String apiKey = "apikey=" + "PBdYt5zZHGk-8Q07Fdbx4STyn0qz0ay2nbCczqFRQZ";
				String	 message = "&message=" + msg;
				String sender = "&sender=" + "TXTLCL";
				String numbers = "&numbers=" + number;
				
				// Send data
				HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
				String data = apiKey + numbers + message + sender;
				conn.setDoOutput(true);
				conn.setRequestMethod("POST");
				conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
				conn.getOutputStream().write(data.getBytes("UTF-8"));
				final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
				final StringBuffer stringBuffer = new StringBuffer();
				String line;
				while ((line = rd.readLine()) != null) {
					stringBuffer.append(line);
				}
				rd.close();
				
				System.out.println( stringBuffer.toString());
			} catch (Exception e) {
				System.out.println("Error SMS "+e);
				
			}
		}
	}

