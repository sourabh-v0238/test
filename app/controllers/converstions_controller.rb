class ConverstionsController < ApplicationController
  before_action :authenticate_user!

  # GET /converstions
  # GET /converstions.json
  def index
    @users = User.all
    @converstions = Converstion.all
  end


  def create
    if Converstion.between(params[:sender_id], params[:recipient_id]).present?
      @converstion = Converstion.between(params[:sender_id], params[:recipient_id]).first
    else
      @converstion = Converstion.create!(converstion_params)
    end
    redirect_to converstion_messages_path(@converstion)
  end
   
  # DELETE /converstions/1
  # DELETE /converstions/1.json
  def destroy
    @converstion.destroy
    respond_to do |format|
      format.html { redirect_to converstions_url, notice: 'Conversation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    def converstion_params
      params.permit(:sender_id, :recipient_id)
    end
end
