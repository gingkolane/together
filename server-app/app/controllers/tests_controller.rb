class TestsController < ApplicationController

  def index
    tests = Test.all
    render json: tests
  end

  # GET /tests/1
  def show
    test = Test.find(params[:id])
    render json: test
  end

  # POST /tests
  def create
    # byebug
    test = Test.new(test_params)
    if test.save
      render json: test, status: :created, test: test
    else
      render json: test.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tests/1
  def update
    if test.update(test_params)
      render json: test
    else
      render json: test.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tests/1
  def destroy
    test.destroy
  end

  private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_test
  #     test = test.find(params[:id])
  #   end

    # Only allow a trusted parameter "white list" through.
    def test_params
      params.permit(:id, :testperson_id, :testtype, :testkit_name, :testkit_identifier, :result, :date_testadmin, :date_testresult)
    end
end