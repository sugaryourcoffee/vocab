class Word < ActiveRecord::Base
  has_many :word_translations
  has_many :translations, through: :word_translations, source: :translation

  validates_uniqueness_of :name, scope: :language
end
