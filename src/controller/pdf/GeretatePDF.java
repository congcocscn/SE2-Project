package controller.pdf;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
@WebServlet(urlPatterns = "/generatePDF")
public class GeretatePDF extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public GeretatePDF() {
		super();
	}
//	public void init ()
@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw =response.getWriter();
		
		String status =request.getParameter("status");
		pw.print("<script> aleart ('PDF Generate ...')</script>");
		try {
			Document document= new Document();
			PdfWriter.getInstance(document, new FileOutputStream("D:\\Faculty of Information Technology\\testticket.pdf"));
			document.open();
			Paragraph p=new Paragraph();
			p.add("Ticket");
			p.setAlignment(Element.ALIGN_CENTER);
			document.add(p);
			document.add(Chunk.NEWLINE);
			document.add(Chunk.NEWLINE);
			
			
			
			document.close();
			System.out.print("DONE");
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/client/payment.jsp");
		dispatcher.forward(request, response);
	}
	
}