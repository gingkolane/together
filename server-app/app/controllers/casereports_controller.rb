class CasereportsController < ApplicationController
  # before_action :set_casereport, only: [:show, :update, :destroy]

    def index
      casereports = Casereport.all
      render json: casereports
    end

  
    # GET /casereports/1
    def show
      casereport = Casereport.find(params[:id])
      render json: casereport
    end
  
    # POST /casereports
    def create
      # byebug
      casereport = Casereport.new(casereport_params)
      if Casereport.save
        render json: casereport, status: :created, location: casereport
      else
        render json: casereport.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /surveys/1
    def update
      if casereport.update(casereport_params)
        render json: casereport
      else
        render json: casereport.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /surveys/1
    def destroy
      casereport.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      # def set_casereport
      #   casereport = Casereport.find(params[:id])
      # end
  
      # Only allow a trusted parameter "white list" through.
      def casereport_params
        params.permit(:id, :report_type, :symptoms, :testrequested, :date_testrequested, :created_at, :updated_at)
      end
  
end