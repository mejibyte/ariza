class InvitationsController < ApplicationController
  def new
  end

  def after_invite
    # Hack to avoid Facebook iframe inside Facebook iframe
    render :text => "<script language='javascript'>top.location='http://apps.facebook.com/ariza_testi';</script>"
  end
end
