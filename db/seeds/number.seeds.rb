begin
  if (Number.present? and not Number.exists?)
    Number.create!([
      {de: 'single', en: 'single', ru: 'единственное число',  abbr_de: 'sngl', abbr_en: 'sngl', abbr_ru: 'ед.ч.'},
      {de: 'plural', en: 'plural', ru: 'множественное число',  abbr_de: 'pl', abbr_en: 'pl', abbr_ru: 'мн.ч.'},
      {de: 'polite', en: 'polite', ru: 'вежливая',  abbr_de: 'polite', abbr_en: 'polite', abbr_ru: 'вежл.ф.'}
    ])
    puts "===== #{Number.count} 'Number' record(s) created"
  else
    puts "===== 'Number' seeding skipped"
  end

rescue StandardError => e
  puts "----- Achtung! 'Number': something went wrong..."
  puts "Rescued: #{e.inspect}"
end
