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
    private Person provider;
    private Person rater;
    private int rating;

    public Rating(Job job, Person provider, Person rater, int rating) {
        this.job = job;
        this.provider = provider;
        this.rater = rater;
        this.rating = rating;
    }

    public Job getJob() {
        return job;
    }

    public Person getProvider() {
        return provider;
    }

    public Person getRater() {
        return rater;
    }

    public int getRating() {
        return rating;
    }

    public void setJob(Job job) {
        this.job = job;
    }

    public void setProvider(Person provider) {
        this.provider = provider;
    }

    public void setRater(Person rater) {
        this.rater = rater;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    @Override
    public String toString() {
        return "Rating{" + "job=" + job + ", provider=" + provider + ", rater=" + rater + ", rating=" + rating + '}';
    }
    
    
}
