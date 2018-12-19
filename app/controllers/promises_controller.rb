class PromisesController < ApplicationController
  def index
    @promises = Promise.all
  end

  def show
    @promise = Promise.find(params[:id])
  end

  def new
    @promise = Promise.new
  end

  def create
    @promise = Promise.create(promise_params)
    if @promise.save
      redirect_to promise_path(@promise)
      flash[:notice] = "Promise created!"
    else
      flash[:notice] = "One or more fields are invalid"
      render :new
    end
  end

  def destroy
    promise = Promise.find(params[:id])
    promise.destroy
    flash[:notice] = "Promise was deleted!"
  end

  private

  def promise_params
    params.require(:promise).permit(:author, :description)
  end
end
