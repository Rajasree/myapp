class UserGroupsController < ApplicationController

	def index
		@user_groups = UserGroup.all
	end

	def new
      @user_group = UserGroup.new
    end

    def create
	    @user_group = UserGroup.new(group_params)
	    if @user_group.save
	      redirect_to user_groups_path
	    else
	      render 'new'
	    end 
	  end

	  private

	  def group_params
	    params.require(:user_group).permit(:name, :director_id, :assistant_director_id, :member_id) 
	  end
end
