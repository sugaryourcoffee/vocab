class WordTranslation < ActiveRecord::Base
  belongs_to :word
  belongs_to :translation, class_name: "Word"

  after_create :add_the_translation
  after_destroy :destroy_the_translation

  private

    def add_the_translation
      translation.translations << word unless translation.translations.include? word
    end

    def destroy_the_translation
      translation.translations.delete(word)
    end

end
