package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {




//  private static String DB_PASSWORD = "tien1234";
    
    
   //  private static String DB_URL = "jdbc:mysql://localhost:3306/flightreservationdb?useSSL=false";
    // private static String DB_USERNAME = "root";
    // private static String DB_PASSWORD = "congcocscn1406";

//    private static String DB_URL = "jdbc:mysql://localhost:3318/flightreservationsystem?useSSL=false";


//      private static String DB_URL = "jdbc:mysql://localhost:3318/flightreservationdb?useSSL=false";
 //   private static String DB_USERNAME = "root";
//
//    //  private static String DB_PASSWORD = "Trang@2710";
//
// private static String DB_PASSWORD = "tien1234";


//      private static String DB_PASSWORD = "Trang@2710";
//
//// private static String DB_PASSWORD = "tien1234";
//

//
//

	private static String DB_URL = "jdbc:mysql://localhost:3306/flightreservationdbs?allowPublicKeyRetrieval=true&useSSL=false";

//	private static String DB_URL = "jdbc:mysql://localhost:3306/flightreservationdbs?useSSL=false";

//    private static String DB_USERNAME = "root";

//   private static String DB_PASSWORD = "tien1234";

   
  

//    private static String DB_USERNAME = "root";
  private static String DB_PASSWORD = "Thuy2000";

    private static String DB_USERNAME = "root";
  
	
	public static Connection getConnection()  {
		Connection connect = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
			System.out.println("Connect successfull");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Failed");
		} 
		return connect;
	}
}