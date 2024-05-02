class VowelsChangesController < ApplicationController
  def index
    @vowels_changes = VowelsChange.all
  end
end
