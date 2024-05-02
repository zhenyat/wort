# https://www.de-online.ru/gram-tabelle/tablica_Deutsch-online.pdf

begin
  if (VowelsChange.present? and not VowelsChange.exists?)

    VowelsChange.create scheme: 'e-a-o',    assoc: 'пЕдАгОг',   sample: 'брать — nehmen — nahm — genommen'
    VowelsChange.create scheme: 'e-o-o',    assoc: 'бЕльмОндО', sample: 'поднимать — heben — hob — gehoben'
    VowelsChange.create scheme: 'ei-i-i',   assoc: 'дАЙкИрИ',   sample: 'резать — schneiden — schnitt — geschnitten'
    VowelsChange.create scheme: 'ei-ie-ie', assoc: 'дАЙкИрИ',   sample: 'писать — sreiben — srieb — gesrieben'
    VowelsChange.create scheme: 'ei-ie-ei'
    VowelsChange.create scheme: 'i-a-o',    assoc: 'пИфАгОр',   sample: 'побеждать — gewinnen — gewann — gewonnen'
    VowelsChange.create scheme: 'i-a-e',    assoc: 'дИАбЕт',    sample: 'просить — bitten — bat — gebeten'
    VowelsChange.create scheme: 'i-a-u',    assoc: 'сИрАкУзы',  sample: 'находить — finden — fand — gefunden'
    VowelsChange.create scheme: 'ie-o-o',   assoc: 'кИмОнО',    sample: 'летать — fliegen — flog — geflogen'
    VowelsChange.create scheme: 'o-ie-u'
    VowelsChange.create scheme: 'u-ie-u',                       sample: 'кричать, звать — rufen — rief — gerufen'
    VowelsChange.create scheme: 'ö-o-o',    assoc: 'бЕльмОндО'
    VowelsChange.create scheme: 'ü-o-o',    assoc: 'бЕльмОндО', sample: 'лгать - lügen - log - gelog'
    VowelsChange.create scheme: 'e-i-a',                        sample: 'отправляться — gehen — ging — gegangen'
    VowelsChange.create scheme: 'nicht anwendbar'
    VowelsChange.create scheme: 'nicht definiert'

    puts "===== #{VowelsChange.count} 'Case' record(s) created"
  else
    puts "===== 'VowelsChange' seeding skipped"
  end

rescue StandardError => e
  puts "----- Achtung! 'VowelsChange': something went wrong..."
  puts "Rescued: #{e.inspect}"
end
