class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(companies_params)
      @company.save
      redirect_to @company
  end
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
     if @company.update(companies_params)
       redirect_to @company
     else
      render 'edit'
    end
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy

    redirect_to companies_path
  end

private

  def companies_params
  params.require(:company).permit(:name, :location, :description)
  end
end
