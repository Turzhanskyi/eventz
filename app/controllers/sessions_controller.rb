# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    params[:email]
    params[:password]
  end

  def destroy; end
end
