class InvitationsController < ApplicationController
  ensure_application_is_installed_by_facebook_user
  def new
  end
end
