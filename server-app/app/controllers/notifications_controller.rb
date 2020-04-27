class NotificationsController < ApplicationController
  before_action :set_notification, only: [:show, :update, :destroy]

  def index
    notifications = Notification.all
    render json: notifications
  end

  # GET /notifications/1
  def show
    notification = Notification.find(params[:id])
    render json: notification
  end

  # POST /notifications
  def create
    # byebug
    notification = Notification.new(notification_params)
    if notification.save
      render json: notification, status: :created, notification: notification
    else
      render json: notification.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notifications/1
  def update
    if notification.update(notification_params)
      render json: notification
    else
      render json: notification.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notifications/1
  def destroy
    notification.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notification
      notification = Notification.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def notification_params
      params.permit(:id,:message_content, :connection_id, :created_at, :updated_at)
    end

end
