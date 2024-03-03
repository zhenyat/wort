begin
  if PossessivePronoun.present? and not PossessivePronoun.exists?
    
    kasus =  Case.find_by(en: 'nominative')
    # Nominativ 1.ich
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'mein', en: 'my', ru: 'мой'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'meine', en: 'my', ru: 'моя', ending: 'e'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'mein', en: 'my', ru: 'моё'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'meine', en: 'my', ru: 'мои', ending: 'e'
      }
    ])
    # Nominativ 2. du
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'dein', en: 'your', ru: 'твой'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'deine', en: 'your', ru: 'твоя', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'dein', en: 'your', ru: 'твоё'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'deine', en: 'your', ru: 'твои', ending: 'e'
      },
    ])
    # Nominativ 3. er
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'masculine')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'sein', en: 'his', ru: 'его'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'seine', en: 'his', ru: 'его', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'sein', en: 'his', ru: 'его'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'seine', en: 'his', ru: 'его', ending: 'e'
      },
    ])
    # Nominativ 4. sie
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'feminine')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'ihr', en: 'her', ru: 'её'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'ihre', en: 'her', ru: 'её', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'ihr', en: 'her', ru: 'её'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'ihre', en: 'her', ru: 'её', ending: 'e'
      },
    ])
    # Nominativ 5. es
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'neuter')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'sein', en: 'his', ru: 'его'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'seine', en: 'his', ru: 'его', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
         number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'sein', en: 'his', ru: 'его'
      },
      { personal_pronoun: personal_pronoun,
         number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'seine', en: 'his', ru: 'его', ending: 'e'
      },
    ])
    # Nominativ 6. wir
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'plural'),
      person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'unser', en: 'our', ru: 'наш'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'unsere', en: 'our', ru: 'наша', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
         number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'unser', en: 'our', ru: 'наш'
      },
      { personal_pronoun: personal_pronoun,
         number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'unsere', en: 'our', ru: 'наши', ending: 'e'
      },
    ])
    # Nominativ 7. ihr
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'plural'),
      person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'eure', en: 'your', ru: 'ваш'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'euer', en: 'your', ru: 'ваша', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
         number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'eure', en: 'your', ru: 'ваш'
      },
      { personal_pronoun: personal_pronoun,
         number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'euer', en: 'your', ru: 'ваши', ending: 'e'
      },
    ])
    # Nominativ 8. sie
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'plural'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'ihr', en: 'their', ru: 'их'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'ihre', en: 'their', ru: 'их', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
         number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'ihr', en: 'their', ru: 'их'
      },
      { personal_pronoun: personal_pronoun,
         number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'ihre', en: 'their', ru: 'их', ending: 'e'
      },
    ])
    # Nominativ 9. Sie
    personal_pronoun = PersonalPronoun.find_by(case: kasus, number: Number.find_by(en: 'polite'), 
      person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'Ihr', en: 'Your', ru: 'Ваш'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'Ihre', en: 'Your', ru: 'Ваша', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
         number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'Ihr', en: 'Your', ru: 'Ваш'
      },
      { personal_pronoun: personal_pronoun,
         number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'Ihre', en: 'Your', ru: 'Ваши', ending: 'e'
      },
    ])

    kasus =  Case.find_by(en: 'accusative')
    # Akkusativ 1. mich
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'meinen', en: 'my', ru: 'моего', ending: 'en'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'meine', en: 'my', ru: 'мою', ending: 'e'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'mein', en: 'my', ru: 'моего'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'meine', en: 'my', ru: 'моих', ending: 'e'
      }
    ])
    # Akkusativ 2. dich
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'deinen', en: 'your', ru: 'твоего', ending: 'en'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'deine', en: 'your', ru: 'твою', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'dein', en: 'your', ru: 'твоё'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'deine', en: 'your', ru: 'твои', ending: 'e'
      },
    ])
    # Akkusativ 3. ihn
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'masculine')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'seinen', en: 'your', ru: 'твой', ending: 'en'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'seine', en: 'your', ru: 'твоя', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'sein', en: 'your', ru: 'твоё'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'seine', en: 'your', ru: 'твои', ending: 'e'
      },
    ])
    # Akkusativ 4. sie
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'feminine')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'ihren', en: 'her', ru: 'её', ending: 'en'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'ihre', en: 'her', ru: 'её', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'ihr', en: 'her', ru: 'её'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'ihre', en: 'her', ru: 'её', ending: 'e'
      },
    ])
    # Akkusativ 5. es
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'neuter')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'seinen', en: 'his', ru: 'его', ending: 'en'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'seine', en: 'his', ru: 'его', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'sein', en: 'his', ru: 'его'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'seine', en: 'his', ru: 'его', ending: 'e'
      },
    ])
    # Akkusativ 6. uns
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'plural'),
      person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'unseren', en: 'our', ru: 'наш', ending: 'en'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'unsere', en: 'our', ru: 'наша', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'unser', en: 'our', ru: 'наш'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'unsere', en: 'our', ru: 'наши', ending: 'e'
      },
    ])
    # Akkusativ 7. euch
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'plural'),
      person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'euren', en: 'your', ru: 'ваш', ending: 'en'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'eure', en: 'your', ru: 'ваша', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'euer', en: 'your', ru: 'ваш'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'eure', en: 'your', ru: 'ваши', ending: 'e'
      },
    ])
    # Akkusativ 8. sie
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'plural'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'ihren', en: 'their', ru: 'их', ending: 'en'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'ihre', en: 'their', ru: 'их', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'ihr', en: 'their', ru: 'их'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'ihre', en: 'their', ru: 'их', ending: 'e'
      },
    ])
    # Akkusativ 9. Sie
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'polite'),
      person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'Ihren', en: 'Your', ru: 'Ваш', ending: 'en'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'Ihre', en: 'Your', ru: 'Ваша', ending: 'e'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'Ihr', en: 'Your', ru: 'Ваш'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'Ihre', en: 'Your', ru: 'Ваши', ending: 'e'
      },
    ])

    kasus =  Case.find_by(en: 'dative')
    # Dativ 1. mir
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'meinem', en: 'my', ru: 'моего', ending: 'em'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'meiner', en: 'my', ru: 'мою', ending: 'er'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'meinem', en: 'my', ru: 'моего', ending: 'em'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'meinen', en: 'my', ru: 'моих', ending: 'en'
      }
    ])
    # Dativ 2. dir
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'deinem', en: 'your', ru: 'твоего', ending: 'em'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'deiner', en: 'your', ru: 'твою', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'deinem', en: 'your', ru: 'твоё', ending: 'em'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'deinen', en: 'your', ru: 'твои', ending: 'en'
      },
    ])
    # Dativ 3. ihm
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'masculine')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'seinem', en: 'your', ru: 'твой', ending: 'em'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'seiner', en: 'your', ru: 'твоя', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'seinem', en: 'your', ru: 'твоё', ending: 'em'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'seinen', en: 'your', ru: 'твои', ending: 'en'
      },
    ])
    # Dativ 4. ihr
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'feminine')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'ihrem', en: 'her', ru: 'её', ending: 'em'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'ihrer', en: 'her', ru: 'её', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'ihrem', en: 'her', ru: 'её', ending: 'em'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'ihren', en: 'her', ru: 'её', ending: 'e'
      },
    ])
    # Dativ 5. ihm
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'neuter')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'seinem', en: 'his', ru: 'его', ending: 'em'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'seiner', en: 'his', ru: 'его', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'seinem', en: 'his', ru: 'его', ending: 'em'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'seinen', en: 'his', ru: 'его', ending: 'en'
      },
    ])
    # Dativ 6. uns
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'plural'),
      person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'unserem', en: 'our', ru: 'наш', ending: 'em'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'unserer', en: 'our', ru: 'наша', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'unserem', en: 'our', ru: 'наш', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'unseren', en: 'our', ru: 'наши', ending: 'en'
      },
    ])
    # Dativ 7. euch
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'plural'),
      person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'eurem', en: 'your', ru: 'ваш', ending: 'em'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'eurer', en: 'your', ru: 'ваша', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'euerem', en: 'your', ru: 'ваш', ending: 'em'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'euren', en: 'your', ru: 'ваши', ending: 'en'
      },
    ])
    # Dativ 8. ihnen
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'plural'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'ihrem', en: 'their', ru: 'их', ending: 'em'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'ihrer', en: 'their', ru: 'их', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'ihrem', en: 'their', ru: 'их', ending: 'em'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'ihren', en: 'their', ru: 'их', ending: 'en'
      },
    ])
    # Dativ 9. Ihnen
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'polite'),
      person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'Ihrem', en: 'Your', ru: 'Ваш', ending: 'em'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'Ihrer', en: 'Your', ru: 'Ваша', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'Ihrem', en: 'Your', ru: 'Ваш', ending: 'em'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'Ihren', en: 'Your', ru: 'Ваши', ending: 'en'
      },
    ])

    kasus =  Case.find_by(en: 'genitive')
    # Genitiv 1. meiner
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'meines', en: 'my', ru: 'моего', ending: 'es'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'meiner', en: 'my', ru: 'мою', ending: 'er'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'meines', en: 'my', ru: 'моего', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'meiner', en: 'my', ru: 'моих', ending: 'er'
      }
    ])
    # Genitiv 2. deiner
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'deines', en: 'your', ru: 'твоего', ending: 'es'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'deiner', en: 'your', ru: 'твою', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'deines', en: 'your', ru: 'твоё', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'deiner', en: 'your', ru: 'твои', ending: 'er'
      },
    ])
    # Genitiv 3. seiner
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'masculine')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'seines', en: 'your', ru: 'твой', ending: 'es'
      },
      { personal_pronoun: personal_pronoun, 
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'seiner', en: 'your', ru: 'твоя', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'seines', en: 'your', ru: 'твоё', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'seiner', en: 'your', ru: 'твои', ending: 'er'
      },
    ])
    # Genitiv 4. ihrer
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'feminine')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'ihres', en: 'her', ru: 'её', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'ihrer', en: 'her', ru: 'её', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'ihres', en: 'her', ru: 'её', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'ihrer', en: 'her', ru: 'её', ending: 'er'
      },
    ])
    # Genitiv 5. seiner
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'singular'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'neuter')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'seines', en: 'his', ru: 'его', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'seiner', en: 'his', ru: 'его', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'seines', en: 'his', ru: 'его', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'seiner', en: 'his', ru: 'его', ending: 'er'
      },
    ])
    # Genitiv 6. unser
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'plural'),
      person: Person.find_by(en: '1st person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'unseres', en: 'our', ru: 'наш', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'unserer', en: 'our', ru: 'наша', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'unseres', en: 'our', ru: 'наш', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'unserer', en: 'our', ru: 'наши', ending: 'er'
      },
    ])
    # Genitiv 7. euer
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'plural'),
      person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'eures', en: 'your', ru: 'ваш', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'eurer', en: 'your', ru: 'ваша', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'eures', en: 'your', ru: 'ваш', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'eurer', en: 'your', ru: 'ваши', ending: 'er'
      },
    ])
    # Genitiv 8. ihrer
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'plural'),
      person: Person.find_by(en: '3rd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'ihres', en: 'their', ru: 'их', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'ihrer', en: 'their', ru: 'их', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'ihres', en: 'their', ru: 'их', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'ihrer', en: 'their', ru: 'их', ending: 'er'
      },
    ])
    # Genitiv 9. Ihrer
    personal_pronoun = PersonalPronoun.find_by(
      case: kasus, number: Number.find_by(en: 'polite'),
      person: Person.find_by(en: '2nd person'), gender: Gender.find_by(en: 'any')
    )
    PossessivePronoun.create!([
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'masculine'),
        de: 'Ihres', en: 'Your', ru: 'Ваш', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'feminine'),
        de: 'Ihrer', en: 'Your', ru: 'Ваша', ending: 'er'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'singular'), gender: Gender.find_by(en: 'neuter'),
        de: 'Ihres', en: 'Your', ru: 'Ваш', ending: 'es'
      },
      { personal_pronoun: personal_pronoun,
        number: Number.find_by(en: 'plural'), gender: Gender.find_by(en: 'any'),
        de: 'Ihrer', en: 'Your', ru: 'Ваши', ending: 'es'
      },
    ])

  puts "===== #{PossessivePronoun.count} 'PossessivePronoun' record(s) created"
else
  puts "===== 'PossessivePronoun' seeding skipped"
end

rescue StandardError => e
puts "----- Achtung! 'PossessivePronoun': something went wrong..."
puts "Rescued: #{e.inspect}"
end
