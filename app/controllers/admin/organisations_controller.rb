class Admin::OrganisationsController < Admin::BaseController
  def index
    @organisations = Organisation.all
  end

  def new
    @organisation = Organisation.new
  end

  def create
    @organisation = Organisation.new(params[:organisation])
    if @organisation.save
      redirect_to admin_organisations_path
    else
      render action: "new"
    end
  end

  def edit
    @organisation = Organisation.find(params[:id])
  end

  def update
    @organisation = Organisation.find(params[:id])
    if @organisation.update_attributes(params[:organisation])
      redirect_to admin_organisations_path
    else
      render action: "edit"
    end
  end
end