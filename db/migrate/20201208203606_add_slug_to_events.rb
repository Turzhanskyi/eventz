# frozen_string_literal: true

class AddSlugToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :slug, :string
  end
end
