class Word < ActiveRecord::Base
  has_many :word_translations
  has_many :translations, through: :word_translations, source: :translation
end
