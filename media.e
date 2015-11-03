class MEDIA
--
-- Classe représentant les médias
-- Cette classe sera abstraite par la suite
--
creation{ANY}
       make

feature{}
       idMedia : INTEGER
       titre : STRING

feature{ANY}
       make (n : INTEGER; t : STRING) is
              -- Création d'un nouveau media
              require
                     n >= 1
              do
                     idMedia := n
                     titre := t
              end

end -- classe MEDIA

