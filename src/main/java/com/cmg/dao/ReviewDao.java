package com.cmg.dao;

import java.util.List;

import com.cosmetics.dto.Review;

public interface ReviewDao {
	 int addReview(Review review);

	    int updateReview(Review review);

	    int deleteReview(int reviewId);

	    Review findById(int reviewId);

	    List<Review> findAll();

}
