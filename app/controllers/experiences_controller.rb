class ExperiencesController < ApplicationController
  before_action :set_experience, only: [ :show, :edit, :update, :destroy]


  skip_after_action :verify_authorized, except: :index, unless: :skip_pundit?
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def index
    @experiences = policy_scope(Experience)
    if params[:query].present?
      if params[:query][:city].present?
        @experiences = @experiences.where(address: params[:query][:city])
      end
      if params[:query][:category].present?
        @experiences = @experiences.where(category: params[:query][:category])
      end
    end
  end

  def new
    @experience = Experience.new
    authorize @experience
  end

  def create
    @experience = Experience.new(strong_params)
    @experience.user = current_user
    authorize @experience

    if @experience.save
      redirect_to new_experience_booking_path(@experience)
    else
      render :new
    end
  end

  def edit
    authorize @experience
  end

  def show
    authorize @experience
    @booking = Booking.new
  end

  def update
    if @experience.update(strong_params)
      authorize @experience
      redirect_to experience_path(@experience)
    else
      render :edit
    end
  end

  def destroy
    @experience.destroy
    authorize @experience
    redirect_to dashboard_path
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
  end

  def strong_params
    params.require(:experience).permit(:description, :name, :price, :address, :category, :photo)
  end
end
