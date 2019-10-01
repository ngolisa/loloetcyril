class UsersController < ApplicationController
  def invites
    @users=User.all
  end
end
