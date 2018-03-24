class HealthController < ApplicationController
  def index
    check
  end

  private

  def check
    ActiveRecord::Base.connection.active?
    render json: {status: good}, status: 200
  rescue
    render json: {status: bad}, status: 503
  end

  def good
    'Everything\'s fine'
  end

  def bad
    'Something went wrong'
  end
end
