class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end
end
# ne pas oublié de mettre :photo dans page_params