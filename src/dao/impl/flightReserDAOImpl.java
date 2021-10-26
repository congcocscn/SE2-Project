package dao.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnect;
import connection.DBConnect;
import model.fightReser;
import dao.fightReserDAO;
public  class flightReserDAOImpl extends DBConnect implements fightReserDAO{

	@Override
	public void insert(fightReser fr) {
		Connection conn = DBConnect.getConnection();
		try {
			String insert_fr="INSERT INTO flightreservation (flight_id,ticket_id,passenger_id) VALUES(?,?,?);";
			PreparedStatement preparedStatement = conn.prepareStatement(insert_fr);
			preparedStatement.setInt(1, fr.getFlight_id());
			preparedStatement.setInt(2, fr.getTicket_id());
			preparedStatement.setInt(3, fr.getPassenger_id());
			preparedStatement.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public int edit(fightReser fr) {
		Connection conn = DBConnect.getConnection();
		int status=0;  
		try {
			String update_fr="UPDATE flightreservation"+"set flight_id=?,ticket_id=?,passenger_id=? where id=?";
			PreparedStatement preparedStatement = conn.prepareStatement(update_fr);
			preparedStatement.setInt(1, fr.getFlight_id());
			preparedStatement.setInt(2, fr.getTicket_id());
			preparedStatement.setInt(3, fr.getPassenger_id());
			preparedStatement.setInt(4, fr.getId());
			status=preparedStatement.executeUpdate();
		 				  
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;
		
	}

	@Override
	public int delete(int id) {
		int status=0;  
        try{  
            Connection conn=DBConnect.getConnection();  
            PreparedStatement ps=conn.prepareStatement("delete from flightreservation where id=?");  
            ps.setInt(1,id);  
            status=ps.executeUpdate();  
              
            conn.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return status;    
		
	}

	@Override
	public fightReser get(int flightID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<fightReser> getAll(String from ,String  to) {
		List<fightReser> listReser = new ArrayList<>();
		Connection conn = DBConnect.getConnection();
		try {
			//SQL statement 
			String sql = "SELECT * FROM flightreservationsystem.flightreservation as fs"
					+ " left join  flightreservationsystem.flight as f on "
					+ " fs.flight_id=f.flight_id ";
			if((from!="" && from!=null) || (to!="" && to!=null)) {
				sql=sql+"where";
			}
			if(from !="" && from !=null) {
				sql=sql+" f.departure='"+from+"'";
			}
			if(to !="" && to !=null) {
				sql=sql+" and f.arrival='"+to+"'";
			}
			
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			
			//Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();
			
			//Process the ResultSet object
			while (rs.next()) {
				int ticket_id = rs.getInt("ticket_id");
				int passenger_id = rs.getInt("passenger_id");
				int fight_id = rs.getInt("flight_id");
				System.out.print("asdasd");
				listReser.add(new fightReser(fight_id,ticket_id,passenger_id));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return listReser;
	}

	@Override
	public List<fightReser> search(String flightNumber) {
		// TODO Auto-generated method stub
		return null;
	}

	}

