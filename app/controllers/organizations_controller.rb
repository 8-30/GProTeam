class OrganizationsController < ApplicationController
    def new
        @organization = Organization.new
    end

    def create
        @organization = Organization.create(name:params[:organization][:name],description:params[:organization][:description])
        render json:@organization

    end

    def update
        @organization = Organization.find(params[:id])
        @organization.update(name:params[:organization][:name],description:params[:organization][:description])
        redirect_to @organization
    end

    def destroy
        @organization = Organization.find(params[:id])
        @organization.destroy
        redirect_to root_path
    end

    def show
        @organization = Organization.find(params[:id])

    end
    def edit
        @organization = Organization.find(params[:id])

    end
end
