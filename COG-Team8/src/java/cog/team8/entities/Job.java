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
    private Person owner;
    private ArrayList<Bid> bidders = new ArrayList<Bid>();
    private String startTime;
    private String endTime;
    private String date;
    private Bid winner;
    private String comments = "";
    private String title;
    private String description;
    
    public Job(Person owner, String startTime, String endTime, String date, String comments, String title, String description) {
        this.owner = owner;
        this.startTime = startTime;
        this.endTime = endTime;
        this.date = date;
        this.comments = comments;
        this.title = title;
        this.description = description;
    }

    @Override
    public String toString() {
        return "Job{" + "owner=" + owner + ", bidders=" + bidders + ", startTime=" + startTime + ", endTime=" + endTime + ", date=" + date + ", winner=" + winner + ", comments=" + comments + ", title=" + title + ", description=" + description + '}';
    }

    public Person getOwner() {
        return owner;
    }

    public void setOwner(Person owner) {
        this.owner = owner;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    
    
    public void addBid(Bid bid){
        bidders.add(bid);
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
