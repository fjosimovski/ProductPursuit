module UserHelper
  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, size)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
    image_tag(gravatar_url, alt: user.coy, class: "gravatar twitter-rounded user-image user-image-as-background")
  end
end
  

def signed_in_user
  redirect_to new_user_session_path, alert: "Please sign in." unless signed_in?
end