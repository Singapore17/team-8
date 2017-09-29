/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cog.team8.servlet;

import cog.team8.entities.Language;
import cog.team8.entities.Person;
import cog.team8.entities.Race;
import cog.team8.entities.Job;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONObject;

/**
 *
 * @author Tan Kee Hock
 */
public class NewJob extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewJob</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewJob at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try (PrintWriter out = response.getWriter()) {
            JSONObject obj = new JSONObject();
            String startTime = request.getParameter("startTime");
            String endTime = request.getParameter("endTime");
            String date = request.getParameter("date");
            String description = request.getParameter("description");
            String title = request.getParameter("title");
            String comments = request.getParameter("comments");
            Person person = new Person("Chen Xiao Mei", "", "Sengkang", Race.CHINESE, Language.ENGLISH);
            Job job = new Job(person, startTime, endTime, date, comments, title, description);
            ServletContext context = request.getSession().getServletContext();
            ArrayList<Job> results = (ArrayList<Job>) context.getAttribute("avaliableJobs");
            results.add(job);
            context.setAttribute("avaliableJobs", results);
            obj.put("status", "success");
            System.out.println("Inserted Job: " + job);
            out.println(obj.toJSONString());
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
