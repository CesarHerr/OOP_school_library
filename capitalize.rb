require_relative 'baseDecorator.rb'

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.upcase
  end
end
