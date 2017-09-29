/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cog.team8.entities;

/**
 *
 * @author LiXiaowei
 */
public class Bid {
    private double bidpoints;
    private Person bidder;
    
    public Bid(double bidpoints, Person bidder) {
        this.bidpoints = bidpoints;
        this.bidder = bidder;
    }

    public double getBidpoints() {
        return bidpoints;
    }

    public Person getBidder() {
        return bidder;
    }

    public void setBidpoints(double bidpoints) {
        this.bidpoints = bidpoints;
    }

    public void setBidder(Person bidder) {
        this.bidder = bidder;
    }
    
}
