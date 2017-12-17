require 'rails_helper'

RSpec.describe UserGroupsController, type: :controller do


	describe "new user_group" do
      context "create" do
      	it "should redirect_to the user_groups_path" do 
					post_attributes = {:user_group => {:name => "First Group", :director_id => 1, :assistant_director_id => 2, :member_id => 3}}
	    #   post "/user_groups", :user_group => post_attributes
	    		post :create , post_attributes
	    		# xhr :post , :create, post_attributes
	      	response.should redirect_to(user_groups_path)
	      end
		  end
    end

    describe "new user_group" do
      context "create" do
      	it "should redirect_to the user_groups_path" do
      		UserGroup.create(name: "testing", director_id: 2, assistant_director_id: 1, member_id: 3)
	      	get :index , {}
      		expect(assigns(:user_groups)).not_to be_nil
	      end
		  end
    end
end
