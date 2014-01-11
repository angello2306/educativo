class Admin::BackendController < ApplicationController
  layout "backend"
  #before_filter :require_user!,:except => [:login,:validation,:logout]

end