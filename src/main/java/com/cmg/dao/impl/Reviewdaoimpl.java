package com.cmg.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cmg.dao.ReviewDao;
import com.cmg.dto.Review;
import com.cmg.dto.User;
import com.cmg.utility.Connector;

public class Reviewdaoimpl implements ReviewDao {
	private Connection con;

public Reviewdaoimpl() {
	
		this.con=Connector.requestConnection();
	
}
	@Override
	public void addReview(Review review) {
		 String sql = "INSERT INTO review(user_id,product_id,rating,comment) VALUES(?,?,?,?)";

	        try {
	            PreparedStatement ps = con.prepareStatement(sql);

	            ps.setInt(1, review.getUserId());
	            ps.setInt(2, review.getProductId());
	            ps.setInt(3, review.getRating());
	            ps.setString(4, review.getComment());

	             ps.executeUpdate();// TODO Auto-generated method stub
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	       
	}

	@Override
	public void updateReview(Review review) {
		 String sql = "UPDATE review SET user_id=?, product_id=?, rating=?, comment=? WHERE review_id=?";

	        try {
	            PreparedStatement ps = con.prepareStatement(sql);

	            ps.setInt(1, review.getUserId());
	            ps.setInt(2, review.getProductId());
	            ps.setInt(3, review.getRating());
	            ps.setString(4, review.getComment());
	            ps.setInt(5, review.getReviewId());
	            ps.executeUpdate();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}

	@Override
	public void deleteReview(int reviewId) {
		 String sql = "DELETE FROM review WHERE review_id=?";

	        try {
	            PreparedStatement ps = con.prepareStatement(sql);

	            ps.setInt(1, reviewId);

	            ps.executeUpdate();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

		
	}

	@Override
	public Review findById(int reviewId) {
        String sql = "SELECT * FROM review WHERE review_id=?";
        Review review =null;
        try {
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, reviewId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                review = new Review();
                review.setReviewId(rs.getInt("review_id"));
                review.setUserId(rs.getInt("user_id"));
                review.setProductId(rs.getInt("product_id"));
                review.setRating(rs.getInt("rating"));
                review.setComment(rs.getString("comment"));
                review.setReviewDate(rs.getString("review_date"));

               
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return review;

	}

	@Override
	public List<Review> findAll() {

        String sql = "SELECT * FROM review";

        List<Review> reviews = new ArrayList();

        try {
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Review review = new Review();
                review.setReviewId(rs.getInt("review_id"));
                review.setUserId(rs.getInt("user_id"));
                review.setProductId(rs.getInt("product_id"));
                review.setRating(rs.getInt("rating"));
                review.setComment(rs.getString("comment"));
                review.setReviewDate(rs.getString("review_date"));

                reviews.add(review);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return reviews;
		
	}

	
}
