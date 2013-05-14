class CertificatesController < ApplicationController
  def index
  end

  def search
    @search = params[:search]
    @certificates = Certificate.search(@search).by_newest.group_similar
    render :index
  end
end
