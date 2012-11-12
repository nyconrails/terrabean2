class Admin::ApplicationController < ApplicationController
  protect_from_forgery
  layout 'admin'
end