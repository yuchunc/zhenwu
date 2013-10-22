class Post < ActiveRecord::Base

  validates_presence_of :title

  before_save do |post|
    recurrent = 1
    post_sane_name = post.title.translit
    if post.sane_name.nil?
      unless Post.find_by(sane_name: post_sane_name).nil?
        while Post.find_by(sane_name: (post_sane_name + "_" + recurrent.to_s)).present? do
          recurrent += 1
        end
        post.sane_name = post_sane_name + "_" + recurrent.to_s
      else
        post.sane_name = post_sane_name
      end
    end

    if post.published
      post.published_datetime = Time.now
    else
      post.published_datetime = nil
    end
  end

end
