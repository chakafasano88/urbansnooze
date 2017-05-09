class ProfileController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def create
    @profile = Profile.new
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.fname = params[:profile][:fname]
    @profile.lname = params[:profile][:lname]
    @profile.username = params[:profile][:username]
    @profile.password = params[:profile][:password]
    @profile.bday = params[:profile][:bday]
    @profile.phone_num = params[:profile][:phone_num]
    @profile.cc_num = params[:profile][:cc_num]


    if @profile.save
      flash[:notice] = "Changes saved!"
      redirect_to profile_path(@profile)
    else
      flash[:alert] = "Unable to save changes"
      redirect_to edit_profile_path(@profile)
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
  end

  def destroy
    @profile = Comment.find(params[:id])

    if @profile.destroy
      flash[:notice] = "Your profile was deleted."
      session[:profile_id] = nil
      redirect_to profile_path
    else
      flash[:alert] = "Unable to delete your profile."
      redirect_to edit_profile_path
    end
  end
end
