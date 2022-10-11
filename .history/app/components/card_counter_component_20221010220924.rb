# frozen_string_literal: true

class CardCounterComponent < ViewComponent::Base
  def initialize(value:, subtitle:, icon:, percent:)
    @value = value
    @subtitle = subtitle
    @icon = icon
    @percent = percent
  end

end
