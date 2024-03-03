class PossessivePronounsController < ApplicationController
  def index
    @personal_pronouns_nominative = PersonalPronoun.where(case: Case.find_by(en: 'nominative'))
    @personal_pronouns = PersonalPronoun.all

    @cases = Case.all
  end
end
