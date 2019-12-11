class HomeController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def home
  end

  def contact
  end

  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]

    if email.blank?
      flash[:alert] = I18n.t('home.request_contact_.no_email')
    else
      flash[:notice] = I18n.t('home.request_contact_.email_sent')
    end

    redirect_to root_path
  end
end
