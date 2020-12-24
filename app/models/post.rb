class Post < ApplicationRecord
  validates :title, presence: true

  after_create_commit { broadcast_append_to 'posts', partial: 'posts/post_item' }
  after_update_commit { broadcast_replace_to 'posts', partial: 'posts/post_item' }
  after_destroy_commit { broadcast_remove_to 'posts' }
end
