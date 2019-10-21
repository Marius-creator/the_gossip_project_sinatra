require 'pry'
require 'csv'

class Gossip
  attr_accessor :author, :content #pour utiliser ces 2 varaibles d'instance hors de la class

  def initialize(author,content) #initialize 2 variables d'instance
    @author = author
    @content = content
  end

  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [@author,@content]
    end
  end

  def self.all #va créer un array avec tous les potins 
  all_gossips = []
  CSV.read("./db/gossip.csv").each do |csv_line|
    all_gossips << Gossip.new(csv_line[0], csv_line[1])
  end
  return all_gossips
  end
end
