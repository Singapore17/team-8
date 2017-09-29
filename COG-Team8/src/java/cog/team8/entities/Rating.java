/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cog.team8.entities;

/**
 *
 * @author Tan Kee Hock
 */
public class Rating {
    private Job job;
    private Person rateReceiver;
    private Person raceProvider;
    private int rating;

    public Rating(Job job, Person provider, Person rater, int rating) {
        this.job = job;
        this.rateReceiver = provider;
        this.raceProvider = rater;
        this.rating = rating;
    }

    public Job getJob() {
        return job;
    }

    public Person getRateReceiver() {
        return rateReceiver;
    }

    public Person getRaceProvider() {
        return raceProvider;
    }

    public int getRating() {
        return rating;
    }

    public void setJob(Job job) {
        this.job = job;
    }

    public void setRateReceiver(Person rateReceiver) {
        this.rateReceiver = rateReceiver;
    }

    public void setRaceProvider(Person raceProvider) {
        this.raceProvider = raceProvider;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    @Override
    public String toString() {
        return "Rating{" + "job=" + job + ", provider=" + rateReceiver + ", rater=" + raceProvider + ", rating=" + rating + '}';
    }
    
    
}
