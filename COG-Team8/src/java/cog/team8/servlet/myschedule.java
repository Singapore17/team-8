/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cog.team8.servlet;

import cog.team8.entities.Job;
import cog.team8.entities.Bid;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author Tan Kee Hock
 */
public class myschedule extends HttpServlet {

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
                JSONObject obj = new JSONObject();
                ServletContext context = request.getSession().getServletContext();
                JSONArray list = new JSONArray();
                ArrayList<Job> results = (ArrayList<Job>) context.getAttribute("myJobs");
                for(Job job: results) {
                    JSONObject jObject = new JSONObject();
                    JSONObject bObject = new JSONObject();
                    ArrayList<Bid> bidders = job.getBidders();
                    jObject.put("start_time", job.getStartTime());
                    jObject.put("end_time", job.getEndTime());
                    jObject.put("date", job.getDate());
                    jObject.put("comment", job.getComments());
                    jObject.put("title",job.getTitle());
                    jObject.put("description", job.getDescription());
                    for(Bid bidder: bidders) {
                        bObject.put("bidpoint", bidder.getBidpoints());
                        JSONObject bidperson = new JSONObject();
                        bidperson.put("name", bidder.getBidder().getName());
                        bidperson.put("language", bidder.getBidder().getName());
                    }
                    JSONObject bidowner = new JSONObject();
                        bidowner.put("name", job.getOwner().getName());
                        bidowner.put("language", job.getOwner().getLanguage());
                    if(job.getWinner() != null) {
                        JSONObject bidwinner = new JSONObject();
                        bidwinner.put("name", job.getWinner().getBidpoints());
                        JSONObject bidwinnerperson = new JSONObject();
                        bidwinnerperson.put("name", job.getWinner().getBidder().getName());
                        bidwinnerperson.put("language", job.getWinner().getBidder().getName());
                    }
                    list.add(jObject);
                }
                obj.put("my_jobs", list);
            out.print(obj.toJSONString());
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
        processRequest(request, response);
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
