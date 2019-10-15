class TopController < ApplicationController
  skip_before_action :login_required
end