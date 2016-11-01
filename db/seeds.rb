class Seed
  def self.start
    clear_seed_data
    create_tags
    create_exercises
    link_tags_to_exercises
  end

  def self.clear_seed_data
    Intensity.delete_all
    Level.delete_all
    Exercise.delete_all
    Tag.delete_all
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
      puts "Created #{tag} tag!"
    end
  end

  def self.create_exercises
    100.times do |i|
      ex = Exercise.create!(
        name: Faker::Superhero.name,
        goal: Faker::Lorem.paragraph,
        video_path: Faker::Internet.url,
        description: Faker::Lorem.paragraph,
        reps_number: Faker::Number.number(1),
        rest_time: Faker::Number.number(2),
        beta: Faker::Lorem.paragraph
      )
      puts "Created #{ex.name} exercise!"
      create_intensities(ex)
      create_levels(ex)
    end
  end

  def self.create_intensities(ex)
    ex.intensities.create(
      title: 'Easier',
      description: Faker::Lorem.sentence
    )

    ex.intensities.create(
      title: 'Harder',
      description: Faker::Lorem.sentence
    )

    puts "Created #{ex.name} intensities"
  end

  def self.create_levels(ex)
    4.times do |i|
      ex.levels.create(
        sets: i * 2,
        duration: Time.now
      )
      puts "Created level for #{ex.name}"
    end
  end

  def self.link_tags_to_exercises
    rand(3..6).times do |i|
      Exercise.all.each do |exercise|
        random_number = rand(2..10)
        random_number.times do |i|
          sample_tag = Tag.all.sample
          ExercisesTag.find_or_create_by(exercise_id: exercise.id, tag_id: sample_tag.id)
          puts "Created exercise tag for #{exercise.name} & #{sample_tag.name}"
        end
      end
    end
  end
end

Seed.start
