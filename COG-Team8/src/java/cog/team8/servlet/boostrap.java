/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cog.team8.servlet;

import cog.team8.entities.Bid;
import cog.team8.entities.Job;
import cog.team8.entities.Language;
import cog.team8.entities.Person;
import cog.team8.entities.Race;
import cog.team8.entities.Rating;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tan Kee Hock
 */
public class boostrap extends HttpServlet {

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
        //Adding users        
        ArrayList<Person> users = new ArrayList<Person>();
        Person person1 = new Person("Chen Xiao Wei", "passowrd", "Hougang", Race.CHINESE, Language.CHINESE);
        Person person2 = new Person("Liu Yi Fei", "passowrd", "Hougang", Race.CHINESE, Language.CHINESE);
        Person person3 = new Person("Fatimah Mohamad", "passowrd", "Hougang", Race.CHINESE, Language.ENGLISH);
        users.add(person1);
        users.add(person2);
        users.add(person3);
        
        ArrayList<Job> avaliableJobs = new ArrayList<Job>();
        Job job1 = new Job(person3, "18:00","19:00","29 September 2017", "My son cannot take chilli.", "Fetch my son from school", "My son will be finishing school 6pm on that day ");
        avaliableJobs.add(job1);
        
        ArrayList<Job> myJobs = new ArrayList<Job>();
        Job myJob1 = new Job(person2, "07:00","19:00","30 September 2017", "He likes chicken rice.", "Take care of my daughter during my working hours", "I will be out for a business meeting for the entire day. I need somebody to help me take care of my child");
        Bid myJob1Bid = new Bid(10.40, person1);
        myJob1.addBid(myJob1Bid);
        
        
        ArrayList<Rating> ratings = new ArrayList<Rating>();
        Job ratingJob = new Job(person3, "12:00","13:00","10 August 2017", "Nil", "Fetch my son to his grandparents' place after school", "My son needs someone to bring him from school to his grandparents' place.");
        Rating rating1 = new Rating(ratingJob, person2, person3, 4);
        ratings.add(rating1);

        ArrayList<Bid> bidders = new ArrayList<Bid>();
        Bid bid1 = new Bid(35.30, person1);
        Bid bid2 = new Bid(42.05, person2);
        bidders.add(bid1);
        bidders.add(bid2);
        
        ArrayList<Bid> myBids = new ArrayList<Bid>();
        Bid bid3 = new Bid(42.05, person3);
        myBids.add(bid3);
        
        ServletContext context = request.getSession().getServletContext();
        context.setAttribute("myJobs", myJobs);
        context.setAttribute("avaliableJobs", avaliableJobs);
        context.setAttribute("users", users);
        context.setAttribute("ratings", ratings);
        context.setAttribute("bidders", bidders);
        context.setAttribute("myBids", myBids);
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
