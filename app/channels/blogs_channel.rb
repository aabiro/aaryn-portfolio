class BlogsChannel < ApplicationCable::Channel

  def subscribed
    post = "blogs_#{params['blog_id']}_channel"
    stream_from post
  end

  def unsubscribed
  end

  def send_comment(data)
    current_user.comments.create!(content: data['comment'], blog_id: data['blog_id'])
  end

end
