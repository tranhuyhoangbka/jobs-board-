module PostsHelper
  def publication_status post
    if post.published_at
      time_ago_in_words post.published_at
    else
      "Draf"
    end
  end
end
