begin
  if (Article.present? and not Article.exists?)

    # Definite articles
    kasus = Case.find_by(en: 'nominative')
    Article.create!([
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'definite', de: 'der'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'definite', de: 'die'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'definite', de: 'das'
      },
      { case: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'na'), kind: 'definite', de: 'die'
      }
    ])
    kasus = Case.find_by(en: 'accusative')
    Article.create!([
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'definite', de: 'den'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'definite', de: 'die'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'definite', de: 'das'
      },
      { case: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'na'), kind: 'definite', de: 'die'
      }
    ])
    kasus = Case.find_by(en: 'dative')
    Article.create!([
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'definite', de: 'dem'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'definite', de: 'der'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'definite', de: 'dem'
      },
      { case: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'na'), kind: 'definite', de: 'den'
      }
    ])
    kasus = Case.find_by(en: 'genitive')
    Article.create!([
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'definite', de: 'des'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'definite', de: 'der'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'definite', de: 'des'
      },
      { case: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'na'), kind: 'definite', de: 'der'
      }
    ])

    # Indefinite articles
    kasus = Case.find_by(en: 'nominative')
    Article.create!([
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'indefinite', de: 'ein'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'indefinite', de: 'eine'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'indefinite', de: 'ein'
      },
      { case: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'na'), kind: 'indefinite', de: 'keine'
      }
    ])
    kasus = Case.find_by(en: 'accusative')
    Article.create!([
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'indefinite', de: 'einen'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'indefinite', de: 'eine'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'indefinite', de: 'ein'
      },
      { case: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'na'), kind: 'indefinite', de: 'keine'
      }
    ])
    kasus = Case.find_by(en: 'dative')
    Article.create!([
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'indefinite', de: 'einem'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'indefinite', de: 'einer'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'indefinite', de: 'einem'
      },
      { case: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'na'), kind: 'indefinite', de: 'keinen'
      }
    ])
    kasus = Case.find_by(en: 'genitive')
    Article.create!([
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'indefinite', de: 'eines'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'indefinite', de: 'einer'
      },
      { case: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'indefinite', de: 'eines'
      },
      { case: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'na'), kind: 'indefinite', de: 'keiner'
      }
    ])

    puts "===== #{Article.count} 'Article' record(s) created"
  else
    puts "===== 'Article' seeding skipped"
  end
rescue StandardError => e
  puts "----- Achtung! 'Article': something went wrong..."
  puts "Rescued: #{e.inspect}"
end