class RemoveTopicReferenceFromBlogs < ActiveRecord::Migration[6.0]
  def change
    remove_reference :blogs, :topic, foreign_key: true
  end
end
