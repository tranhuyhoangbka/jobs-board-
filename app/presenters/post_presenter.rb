class PostPresenter < BasePresenter
  def publication_status
    if @model.published_at?
      h.time_ago_in_words @model.published_at
    else
      "Draft"
    end
  end
end