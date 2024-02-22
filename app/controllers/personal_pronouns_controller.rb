class PersonalPronounsController < ApplicationController
  def index
    @cases = Case.all
    @personal_pronouns = PersonalPronoun.all
  end
end
