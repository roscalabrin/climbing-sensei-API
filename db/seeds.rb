class Seed
  def self.start
    create_tags
  end

  def self.create_tags
    tags = ["climbing", 
            "bouldering", 
            "sport", 
            "trad", 
            "mini", 
            "boards", 
            "system", 
            "hang", 
            "campus", 
            "thread", 
            "peg", 
            "fitness", 
            "stretching", 
            "cardio", 
            "calisthenics", 
            "TRX", 
            "weights", 
            "skills", 
            "technical", 
            "mental"]
    tags.each do |tag|
      Tag.create!(name: tag)
    end
  end
end

Seed.start
