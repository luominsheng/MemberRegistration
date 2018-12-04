<%@ page import ="java.util.*" %>
<%@ page import="com.nsc.nscmemutils.utils.*, com.nsc.nscmemutils.dataaccess.*, com.nsc.nscmemutils.*"%>

<%@ page import="java.lang.*, java.lang.String, java.io.*, java.sql.*, java.text.*" %>
<%


String Name = request.getParameter("Name");
String Company = request.getParameter("Company");
String Title = request.getParameter("Title");
String City = request.getParameter("City");
String State = request.getParameter("State");
String DaytimePhone = request.getParameter("DaytimePhone");
String EmailAddr = request.getParameter("Email");
String GroupRates = request.getParameter("GroupRate");
//String BedType = request.getParameter("bedType");

	
String HotelArrivalDate = request.getParameter("HotelArrivalDate");
	if (HotelArrivalDate=="" || HotelArrivalDate==null) {
	HotelArrivalDate = "No Hotel Arrival Date";
	}
String HotelDepartureDate = request.getParameter("HotelDepartureDate");
	if (HotelDepartureDate=="" || HotelDepartureDate==null) {
	HotelDepartureDate = "No Hotel Departure Date";
	}
	
	if (GroupRates.equals("Making Own Reservations")) { //if making own reservations, clear out arrival/departure dates if selected
	HotelArrivalDate = "";
	HotelDepartureDate = "";
	}
	
String SpecialRequests = request.getParameter("SpecialRequests");
String GuestFirstName1 = request.getParameter("Guest_FirstName1");
String GuestLastName1 = request.getParameter("Guest_LastName1");
String GuestAge1 = request.getParameter("Guest_Age1");
String GuestFirstName2 = request.getParameter("Guest_FirstName2");
String GuestLastName2 = request.getParameter("Guest_LastName2");
String GuestAge2 = request.getParameter("Guest_Age2");
String Sunday_WIN = request.getParameter("WIN_Sunday");
String Sunday_Dinner = request.getParameter("Dinner_Sunday");
String Monday_Guest = request.getParameter("SpouseGuest_Monday");
String Transportation_Monday = request.getParameter("Transportation_Monday");
String HOB_Monday = request.getParameter("HOB_Monday");
String HOBTrans_Monday = request.getParameter("HOBTrans_Monday");
String Tuesday_Dinner = request.getParameter("Dinner_Tuesday");
String Comments = request.getParameter("Comments");


//String source = request.getParameter("Source");
//String recipient = request.getParameter("recipient");

String recipient = "ajackson@networkdistribution.com";
//String recipient = "kristi@journeysandgatherings.com";
//String recipient = "jhalliday@networkdistribution.com";
//String recipient = "srussell@networkdistribution.com";
String subject = request.getParameter("subject");

String EmailAddr1 = "srussell@networkdistribution.com";
String EmailAddr2 = "akass@networkdistribution.com";
//String EmailAddr2 = "jhalliday@networkdistribution.com";
//String EmailAddr2 = "srussell@networkdistribution.com";
String EmailAddrFrom = "NETWORKStockholderRegistration@networkdistribution.com";


String title;
String redirect;
String required;
String sort;
String print_config;
//String env_report = request.getParameter("env_report");
String print_blank_fields;

					
if (Company.equals("google")) {
	sendEmailNotification email = new sendEmailNotification();
//SPAM email to Sean 
		email.sendIt("SPAM of Online Registration Form\n\n Name: " +Name 
   +"\n Company: "+Company
   +"\n Title: "+Title
   +"\n Email Address: "+EmailAddr
   +"\n Address: "+City +", "+State
   +"\n Cell Phone: "+DaytimePhone
   +"\n Group Rates: "+GroupRates
   //+"\n Bed Type: "+BedType
   +"\n\n Hotel Arrival Date: "+HotelArrivalDate
   +"\n Hotel Departure Date: "+HotelDepartureDate
   +"\n Special Requests: "+SpecialRequests
   +"\n\n Guest #1: "+GuestFirstName1+" "+GuestLastName1
   +"\n Guest #1 Age: "+GuestAge1
   +"\n Guest #2: "+GuestFirstName2+" "+GuestLastName2
   +"\n Guest #2 Age: "+GuestAge2
   +"\n\n Sunday WIN Lunch & Workshop: "+Sunday_WIN
   +"\n\n Sunday Evening Welcome Dinner: "+Sunday_Dinner
   +"\n\n Monday Guest Outing: "+Monday_Guest
   +"\n\n Monday Guest Outing Transportation: "+Transportation_Monday
   +"\n\n Monday Evening House of Blues Event: "+HOB_Monday
   +"\n\n Monday Evening House of Blues Event Transportation: "+HOBTrans_Monday 
   +"\n\n Tuesday Evening Awards Dinner: "+Tuesday_Dinner
   +"\n Comments: "+Comments+"",
     	EmailAddr1,
   		subject,
        EmailAddrFrom);
	
} else {
	
 sendEmailNotification email = new sendEmailNotification();
 //public void sendIt(String msg, String cont, String subject, String sFrom)	
 				
	//email sent to Kristi
					
   email.sendIt("Summary of registration information submitted."
   +"\n\n Name: " +Name 
   +"\n Company: "+Company
   +"\n Title: "+Title
   +"\n Email Address: "+EmailAddr
   +"\n Address: "+City +", "+State
   +"\n Cell Phone: "+DaytimePhone
   +"\n Group Rates: "+GroupRates
  // +"\n Bed Type: "+BedType
   +"\n\n Hotel Arrival Date: "+HotelArrivalDate
   +"\n Hotel Departure Date: "+HotelDepartureDate
   +"\n Special Requests: "+SpecialRequests
   +"\n\n Guest #1: "+GuestFirstName1+" "+GuestLastName1
   +"\n Guest #1 Age: "+GuestAge1
   +"\n Guest #2: "+GuestFirstName2+" "+GuestLastName2
   +"\n Guest #2 Age: "+GuestAge2
   +"\n\n Sunday Afternoon WIN Lunch and Workshop: "+Sunday_WIN
   +"\n\n Sunday Evening Welcome Dinner: "+Sunday_Dinner
   +"\n\n Monday Spouse & Guest Outing: "+Monday_Guest
   +"\n\n Monday Guest Outing Transportation: "+Transportation_Monday
   +"\n\n Monday Evening House of Blues Event: "+HOB_Monday
   +"\n\n Monday Evening House of Blues Event Transportation: "+HOBTrans_Monday  
   +"\n\n Tuesday Evening Awards Dinner: "+Tuesday_Dinner
   +"\n Comments: "+Comments+"",
     	recipient,
   		subject,
        EmailAddr);

	
	//email sent to user submitting form	
		
		email.sendIt("This is a summary of the information you submitted which has also been sent to our registration desk. If there are errors, please contact Amanda Jackson at ajackson@networkdistribution.com or (224) 361-2271"
   +"\n\n Name: " +Name 
   +"\n Company: "+Company
   +"\n Title: "+Title
   +"\n Email Address: "+EmailAddr
   +"\n Address: "+City +", "+State
   +"\n Cell Phone: "+DaytimePhone
   +"\n Group Rates: "+GroupRates
   //+"\n Bed Type: "+BedType
   +"\n\n Hotel Arrival Date: "+HotelArrivalDate
   +"\n Hotel Departure Date: "+HotelDepartureDate
   +"\n Special Requests: "+SpecialRequests
   +"\n\n Guest #1: "+GuestFirstName1+" "+GuestLastName1
   +"\n Guest #1 Age: "+GuestAge1
   +"\n Guest #2: "+GuestFirstName2+" "+GuestLastName2
   +"\n Guest #2 Age: "+GuestAge2
   +"\n\n Sunday Afternoon WIN Lunch and Workshop: "+Sunday_WIN
   +"\n\n Sunday Evening Welcome Dinner: "+Sunday_Dinner
   +"\n\n Monday Spouse & Guest Outing: "+Monday_Guest
   +"\n\n Monday Guest Outing Transportation: "+Transportation_Monday
   +"\n\n Monday Evening House of Blues Event: "+HOB_Monday
   +"\n\n Monday Evening House of Blues Event Transportation: "+HOBTrans_Monday 
   +"\n\n Tuesday Evening Awards Dinner: "+Tuesday_Dinner
   +"\n Comments: "+Comments+"",
     	EmailAddr,
   		subject,
        EmailAddrFrom);
		
		//email sent to user submitting form	
		
		//another email to Kristi
		
		email.sendIt("Summary of registration information submitted."
   +"\n\n Name: " +Name 
   +"\n Company: "+Company
   +"\n Title: "+Title
   +"\n Email Address: "+EmailAddr
   +"\n Address: "+City +", "+State
   +"\n Cell Phone: "+DaytimePhone
   +"\n Group Rates: "+GroupRates
   //+"\n Bed Type: "+BedType
   +"\n\n Hotel Arrival Date: "+HotelArrivalDate
   +"\n Hotel Departure Date: "+HotelDepartureDate
   +"\n Special Requests: "+SpecialRequests
   +"\n\n Guest #1: "+GuestFirstName1+" "+GuestLastName1
   +"\n Guest #1 Age: "+GuestAge1
   +"\n Guest #2: "+GuestFirstName2+" "+GuestLastName2
   +"\n Guest #2 Age: "+GuestAge2
   +"\n\n Sunday Afternoon WIN Lunch and Workshop: "+Sunday_WIN
   +"\n\n Sunday Evening Welcome Dinner: "+Sunday_Dinner
   +"\n\n Monday Spouse & Guest Outing: "+Monday_Guest
   +"\n\n Monday Guest Outing Transportation: "+Transportation_Monday
   +"\n\n Monday Evening House of Blues Event: "+HOB_Monday
   +"\n\n Monday Evening House of Blues Event Transportation: "+HOBTrans_Monday 
   +"\n\n Tuesday Evening Awards Dinner: "+Tuesday_Dinner
   +"\n Comments: "+Comments+"",
     	EmailAddr2,
   		subject,
        EmailAddr);
		
		
		//email to srussell
		email.sendIt("Copy of Online Registration Form\n\n Name: " +Name 
   +"\n Company: "+Company
   +"\n Title: "+Title
   +"\n Email Address: "+EmailAddr
   +"\n Address: "+City +", "+State
   +"\n Cell Phone: "+DaytimePhone
   +"\n Group Rates: "+GroupRates
   //+"\n Bed Type: "+BedType
   +"\n\n Hotel Arrival Date: "+HotelArrivalDate
   +"\n Hotel Departure Date: "+HotelDepartureDate
   +"\n Special Requests: "+SpecialRequests
   +"\n\n Guest #1: "+GuestFirstName1+" "+GuestLastName1
   +"\n Guest #1 Age: "+GuestAge1
   +"\n Guest #2: "+GuestFirstName2+" "+GuestLastName2
   +"\n Guest #2 Age: "+GuestAge2
   +"\n\n Sunday Afternoon WIN Lunch and Workshop: "+Sunday_WIN
   +"\n\n Sunday Evening Welcome Dinner: "+Sunday_Dinner
   +"\n\n Monday Spouse & Guest Outing: "+Monday_Guest
   +"\n\n Monday Guest Outing Transportation: "+Transportation_Monday
   +"\n\n Monday Evening House of Blues Event: "+HOB_Monday
   +"\n\n Monday Evening House of Blues Event Transportation: "+HOBTrans_Monday 
   +"\n\n Tuesday Evening Awards Dinner: "+Tuesday_Dinner
   +"\n Comments: "+Comments+"",
     	EmailAddr1,
   		subject,
        EmailAddrFrom);
		
		session.invalidate();
		
		response.sendRedirect("http://www.networkdistribution.com/stockholder_regconfirm.html");
//response.sendRedirect("http://www.networkdistributionqa.com/stockholder_regconfirm.html");

} //valid submission
%>


