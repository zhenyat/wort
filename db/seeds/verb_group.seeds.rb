# Deutsche Verbgruppen
begin
  if (VerbGroup.present? and not VerbGroup.exists?)
    VerbGroup.create!([
      {en: 'strong',    de: 'starke',        ru: 'сильные глаголы'},
      {en: 'regular', de: 'regulär'},
      {en: 'irregular', de: 'irregulär / Unregelmäßige'},
      {en: 'modal',     de: 'modal / Modalverben', ru: 'модальные'},
      {en: '', de: 'Verben der speziellen Konjugation', ru: 'глаголды особого спряжения'},
  ])
      puts "===== #{VerbGroup.count} 'PartOfSpeech' record(s) created"
  else
    puts "===== 'v' seeding skipped"
  end
rescue
  puts "----- Achtung! 'VerbGroup': something went wrong..."
end  


if Group.all.empty?
  Group.create en: 'strong',    de: 'starke'
  Group.create en: 'regular',   de: 'regulär'
  Group.create en: 'irregular', de: 'irregulär'
  Group.create en: 'modal',     de: 'modal'
end