class Label < ActiveRecord::Base
  # has many to associate a label with many labelings using has_many
  has_many :labelings

  # labels belongs_to the labelable interface in order for labels to associate with
  # topics and posts through Labeling
  belongs_to :labelable, polymorphic: true

  # a label has many topics through the labelings table
  has_many :topics, through: :labelings, source: :labelable, source_type: :Topic

  # a label has many posts through the labelings table
  has_many :posts, through: :labelings, source: :labelable, source_type: :Post


  def self.update_labels(label_string)
    new_labels = []

    unless label_string.nil? || label_string.empty?
      label_string.split(",").each do |label|
        label_name = label.strip
        new_label = Label.find_or_create_by(name: label_name)
        new_labels << new_label
      end
    end
    new_labels
  end
end
