class OrganizationsController < ApplicationController
    before_action :find_organization, except:[:new,:create,:index]
    before_action :authenticate_user!,  except:[:index,:show]
    def index
        @organizations = Organization.all
    end

    def new
        @organization = Organization.new
    end

    def create
        @organization = Organization.create(name:params[:organization][:name],description:params[:organization][:description])
        redirect_to organizations_path
    end

    def update
        @organization.update(name:params[:organization][:name],description:params[:organization][:description])
        redirect_to @organization
    end

    def destroy
        @organization.destroy
        redirect_to root_path
    end

    def show
    end
    def edit
    end
    def find_organization
        @organization = Organization.find(params[:id])

    end
end
