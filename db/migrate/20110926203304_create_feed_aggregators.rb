class CreateFeedAggregators < ActiveRecord::Migration
  def change
    create_table :feed_aggregators do |t|
      t.string :title
      t.string :desc
      t.text :feeds

      t.timestamps
    end
  end
end
