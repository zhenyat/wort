class PossessivePronounsController < ApplicationController
  def index
    @personal_pronouns_nominative = PersonalPronoun.where(case: Case.find_by(en: 'nominative'))
    @personal_pronouns = PersonalPronoun.all
    @cases = Case.all
  end
end

# @personal_pronouns_nominative.each do |ppn|
#   @cases.each do |kasus|
#     pp = @personal_pronouns.find_by(case: kasus, number: ppn.number, person: ppn.person, gender: ppn.gender)
#     p=pp.possessive_pronouns
#     puts "===== #{ppn.de}/#{kasus.de}/#{pp.de}: #{p.first.de}-#{p.second.de}-#{p.third.de}-#{p.fourth.de}"
#   end
# end

# pp.possessive_pronouns.each do |p|
#   puts "===== #{ppn.de}/#{kasus.de}/#{pp.de}: #{p.first.de}-#{p.second.de}-#{p.third.de}-#{p.fourth.de}"
# end


# <td><%= @possessive_pronouns.find_by(case_id: kasus.id, personal_pronoun_id: pp.id, number_id: @numbers.find_by(en: 'singular').id, gender_id: @genders.find_by(en: 'masculine').id).de %></td>
# <td><%= @possessive_pronouns.find_by(case: kasus, personal_pronoun: pp, number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine')).de %></td>
# <td><%= @possessive_pronouns.find_by(case: kasus, personal_pronoun: pp, number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter')).de %></td>


  # pp=PossessivePronoun.find_by(case: kasus, number: Number.find_by(en: 'singular'), person_id: ppn.person_id, gender: Gender.find_by(en: 'feminine'))

# personal_pronouns_nominative.each do |ppn|
#   pp=possessive_pronouns.find_by(case: kasus, personal_pronoun: ppn, number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'))
#   puts "==== #{ppn.case_id}-#{ppn.number_id}-#{ppn.gender_id}-#{ppn.de}"
#   puts "---- #{pp.case_id}-#{pp.number_id}-#{pp.gender_id}-#{pp.de}"
# end

# personal_pronouns_nominative.each do |ppn|
#   puts "==== #{ppn.case_id}-#{ppn.number_id}-#{ppn.gender_id}-#{ppn.de} / person: #{ppn.person_id}"
#   possessive_pronouns.where(case: kasus, personal_pronoun: ppn).each do |pp|
#     puts "---- #{pp.case_id}-#{pp.number_id}-#{pp.gender_id}-#{pp.de}"
#   end
# end
