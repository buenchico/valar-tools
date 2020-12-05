class StaticPagesController < ApplicationController
  def home
    test = SsoWithDiscourse::Sso.new
    cookies.permanent[:sso] = test
  end

  def about
  end

  def contact
  end
end
