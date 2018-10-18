require 'dotenv'
require 'twitter'
require 'json'
require_relative 'db_interface'

Dotenv.load

class Follow
  attr_accessor :client
  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["config_key"]
      config.consumer_secret     = ENV["config_secret"]
      config.access_token        = ENV["token_key"]
      config.access_token_secret = ENV["token_secret"]
    end
    @contacts = JsonInterface.get_datas_from_json_file('db/contacts.json')
  end

  def letsgo
    update_contacts
    # all_json
    # ideas
    # following
  end
  
  def update_contacts
    # pour chaque contact, j'ajoute une section handle
    @contacts.each do |contact|
      contact["twitter"] = get_handle(contact['name'])
    end
     JsonInterface.save_into_json_file(@contacts, 'db/contacts.json')
  end
  def get_handle(town)
    handle = @client.user_search("mairie #{town['name']}")
  end
  #
  # def follow_handle
  #   @contacts.each do |contact|
  #     client.follow[contact["twitter"]]
  #   end
  # end
  #
  # def ideas
  #   @tab.each do |town_hall|
  #     @townhall_id = @client.user_search(town_hall)
  #       @townhall_id.each do |id|
  #       client.follow(id)
  #       end
  #   end
  # end
end
