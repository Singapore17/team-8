/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cog.team8.entities;

import java.util.ArrayList;

/**
 *
 * @author Tan Kee Hock
 */

public class Job {
    private ArrayList<Bid> bidders;
    private String startTime;
    private String endTime;
    private String date;
    private Bid winner;
    private String comments = "";
    
    public Job(String startTime, String endTime, String date, String comments) {
        this.startTime = startTime;
        this.endTime = endTime;
        this.date = date;
        this.comments = comments;
    }

    public ArrayList<Bid> getBidders() {
        return bidders;
    }

    public String getStartTime() {
        return startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public String getDate() {
        return date;
    }

    public Bid getWinner() {
        return winner;
    }

    public String getComments() {
        return comments;
    }

    public void setBidders(ArrayList<Bid> bidders) {
        this.bidders = bidders;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setWinner(Bid winner) {
        this.winner = winner;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }
    
}
