class MEDIA
--
-- Classe représentant les médias
-- Cette classe sera abstraite par la suite
--
inherit
       COMPARABLE
       redefine is_equal end       


creation{ANY}
       make

feature{}
	titre : STRING			--titre de l'oeuvre
	nb_exemplaire : INTEGER  	--nombre d'exemplaires disponibles
	mediatheque : MEDIATHEQUE	--médiathèque à laquelle le média appartient

feature{ANY}

	make (t : STRING;  n : INTEGER; mt : MEDIATHEQUE) is
	      -- Création d'un nouveau media
	do
		titre := t
		nb_exemplaire := n
		mediatheque := mt
	end

	settitre (t : STRING) is
	do
		titre := t
	end

	setnb_exemplaire (n : INTEGER) is
	do
		nb_exemplaire := n
	end

	gettitre : STRING is
	do
		Result := titre
	end

	getnb_exemplaire : INTEGER is
	do
		Result := nb_exemplaire
	end

	to_string : STRING is
		do
			Result :="%N Titre :"+titre+" %N Nombre :" + nb_exemplaire.to_string 
		end

       is_equal(other: like Current): BOOLEAN is
	local
		stra, strb : STRING
       do
		stra := other.gettitre
		strb := titre
		Result := (stra.is_equal(strb))

       end

	infix "<" (other : MEDIA): BOOLEAN is
	local
		stra, strb : STRING
       do
		stra := other.gettitre
		strb := titre
		Result := (stra < strb)
       end



		
			

end -- classe MEDIA

