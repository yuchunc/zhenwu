class Post < ActiveRecord::Base

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  validates_presence_of :title

  scope :published_filter, lambda { |published| where('published = ?', published) unless published.nil?}
  scope :title_filter, lambda { |title| where('title like ?', "#{title}") unless title.nil?}

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
