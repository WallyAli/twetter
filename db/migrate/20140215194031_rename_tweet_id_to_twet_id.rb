class RenameTweetIdToTwetId < ActiveRecord::Migration
  def self.up
  	rename_column :retwets, :tweet_id, :twet_id 
  end

  def self.down
  	rename_column :retwets, :twet_id, :tweet_id
  end
end
