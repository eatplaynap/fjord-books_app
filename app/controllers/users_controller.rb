# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[show followings followers]

  def index
    @users = User.with_attached_avatar.order(:id).page(params[:page])
  end

  def show; end

  def followings
    @title = t('.followings.title')
    @users = @user.followings.order(:id)
    render 'show_follow'
  end

  def followers
    @title = t('.followers.title')
    @users = @user.followers.order(:id)
    binding.irb
    render 'show_follow'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
