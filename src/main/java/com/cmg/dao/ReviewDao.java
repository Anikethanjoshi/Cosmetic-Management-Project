package com.cmg.dao;

import java.util.List;

import com.cmg.dto.Review;

public interface ReviewDao {
	 void addReview(Review review);

	    void updateReview(Review review);

	    void deleteReview(int reviewId);

	    Review findById(int reviewId);

	    List<Review> findAll();

}
