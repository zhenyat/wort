begin
  if (PersonalPronoun.present? and not PersonalPronoun.exists?)
    kasus = Case.find_by(en: 'nominative')
    PersonalPronoun.create!([
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'na'),
        de: 'ich', en: 'I', ru: 'я',
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'na'),
        de: 'du',  en: 'you',  ru: 'ты'
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'masculine'),
        de: 'er',  en: 'he',   ru: 'он'
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'feminine'),
        de: 'sie', en: 'she',  ru: 'она'
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'neuter'),
        de: 'es',  en: 'it',   ru: 'оно'
      },
      { case: kasus, number: Number.find_by(en: 'plural'), 
        person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'na'),
        de: 'wir', en: 'we',   ru: 'мы'
      },
      { case: kasus, number: Number.find_by(en: 'plural'), 
        person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'na'),
        de: 'ihr', en: 'you',  ru: 'вы'
      },
      { case: kasus, number: Number.find_by(en: 'plural'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'na'),
        de: 'sie', en: 'they', ru: 'они'
      },
      { case: kasus, number: Number.find_by(en: 'polite'), 
        person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'na'),
        de: 'Sie', en: 'You',  ru: 'Вы'
      }
    ])

    kasus = Case.find_by(en: 'accusative')
    PersonalPronoun.create!([
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'na'),
        de: 'mich', en: 'me',   ru: 'меня',
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'na'),
        de: 'dich', en: 'you',  ru: 'тебя'
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'masculine'),
        de: 'ihn',  en: 'him',  ru: 'его'
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'feminine'),
        de: 'sie',  en: 'her',  ru: 'её'
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'neuter'),
        de: 'es',   en: 'it',   ru: 'его'
      },
      { case: kasus, number: Number.find_by(en: 'plural'), 
        person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'na'),
        de: 'uns',  en: 'us',   ru: 'нас'
      },
      { case: kasus, number: Number.find_by(en: 'plural'), 
        person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'na'),
        de: 'euch', en: 'you',  ru: 'вас'
      },
      { case: kasus, number: Number.find_by(en: 'plural'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'na'),
        de: 'sie',  en: 'them', ru: 'их'
      },
      { case: kasus, number: Number.find_by(en: 'polite'), 
        person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'na'),
        de: 'Sie',  en: 'You',  ru: 'Вас'
      }
    ])

    kasus = Case.find_by(en: 'dative')
    PersonalPronoun.create!([
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'na'),
        de: 'mir', en: 'me', ru: 'мне',
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'na'),
        de: 'dir', en: 'you', ru: 'тебе'
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'masculine'),
        de: 'ihm', en: 'him', ru: 'ему'
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'feminine'),
        de: 'ihr', en: 'her', ru: 'ей'
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'neuter'),
        de: 'ihm', en: 'it', ru: 'ему'
      },
      { case: kasus, number: Number.find_by(en: 'plural'), 
        person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'na'),
        de: 'uns', en: 'us', ru: 'нам'
      },
      { case: kasus, number: Number.find_by(en: 'plural'), 
        person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'na'),
        de: 'euch',  en: 'you',  ru: 'вам'
      },
      { case: kasus, number: Number.find_by(en: 'plural'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'na'),
        de: 'ihnen', en: 'them', ru: 'им'
      },
      { case: kasus, number: Number.find_by(en: 'polite'), 
        person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'na'),
        de: 'Ihnen', en: 'You',  ru: 'Вам'
      }
    ])

    kasus = Case.find_by(en: 'genitive')
    PersonalPronoun.create!([
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'na'),
        de: 'meiner', en: 'me',   ru: 'мне',
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'na'),
        de: 'deiner', en: 'you',  ru: 'тебе'
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'masculine'),
        de: 'seiner', en: 'him',  ru: 'ему'
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'feminine'),
        de: 'ihrer',  en: 'her',  ru: 'ей'
      },
      { case: kasus, number: Number.find_by(en: 'singular'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'neuter'),
        de: 'seiner', en: 'it',   ru: 'ему'
      },
      { case: kasus, number: Number.find_by(en: 'plural'), 
        person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'na'),
        de: 'unser',  en: 'us',   ru: 'нам'
      },
      { case: kasus, number: Number.find_by(en: 'plural'), 
        person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'na'),
        de: 'euer',   en: 'you',  ru: 'вам'
      },
      { case: kasus, number: Number.find_by(en: 'plural'), 
        person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'na'),
        de: 'ihrer',  en: 'them', ru: 'им'
      },
      { case: kasus, number: Number.find_by(en: 'polite'), 
        person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'na'),
        de: 'Ihrer',  en: 'You',  ru: 'Вам'
      }
    ])

    puts "===== #{PersonalPronoun.count} 'PersonalPronoun' record(s) created"
  else
    puts "===== 'PersonalPronoun' seeding skipped"
  end

rescue StandardError => e
  puts "----- Achtung! 'PersonalPronoun': something went wrong..."
  puts "Rescued: #{e.inspect}"
end
