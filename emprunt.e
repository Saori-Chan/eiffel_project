class EMPRUNT
--
-- Projet de Génie Logiciel à Objets
-- Eflamm Ollivier & Aurore Bouchet
--

inherit
	COMPARABLE
	redefine is_equal end

creation{ANY}
	make

feature{}
	dateemprunt, datedelai : TIME
	is_rendu : BOOLEAN
	user : USER
	media : MEDIA

feature{ANY}

	-- pre : la date d'emprunt doit être inférieure à la date de délai
	make ( u : USER; m : MEDIA; de : TIME) is	
	do
		user := u
		media := m
		dateemprunt := de
		datedelai := dateemprunt
		datedelai.add_day(user.getmediatheque.getdelai) -- la date de l'emprunt + le delai accordé par la mediatheque
		is_rendu := False
	end

	setuser (u : USER) is
	do
		user := u
	end

	getuser : USER is
	do
		Result := user
	end

	setmedia (m : MEDIA) is
	do
		media := m
	end

	getmedia : MEDIA is
	do
		Result := media
	end

	getdateemprunt : TIME is
	do
		Result := dateemprunt
	end

	getdatedelai : TIME is
	do
		Result := datedelai
	end

	setdateemprunt(t : TIME) : TIME is
	do
		dateemprunt := t
	end

	setdatedelai(t : TIME) : TIME is
	do
		datedelai := t
	end

	getis_rendu : BOOLEAN is
	do
		Result := is_rendu
	end

	setis_rendu ( b : BOOLEAN) is
	do
		is_rendu := b
	end

	--Vérifie si l'emprunt fait office d'un retard de rendu
	retard : BOOLEAN is
	local
		actuel : TIME
	do
		actuel.update
		if actuel > datedelai and is_rendu = False then
			Result := True
		else
			Result := False
		end
	end

	to_string : STRING is
	local
		tempsemprunt, tempsdelai : TIME_IN_FRENCH
		rendu, is_retard : STRING
		temps_actuel : TIME
	do
		create tempsemprunt
		create tempsdelai
		tempsemprunt.set_time(dateemprunt)
		tempsdelai.set_time(datedelai)
		temps_actuel.update
		is_retard := ""
		if is_rendu = True then
			rendu := "a été rendu."
		else
			rendu := "n'a toujours pas été rendu."
			if retard = True then
				is_retard := "RETARD%N"
			end
		end
		Result := is_retard+"L'emprunt du "+tempsemprunt.to_string+"%Njusqu'au "+tempsdelai.to_string+",%N"+rendu+" Il concerne: %N"+user.to_string+"%Nqui a emprunté: %N"+media.to_string+"%N"
	end

	is_equal (other : like Current) : BOOLEAN is
	do
		Result := user.is_equal(other.getuser) and media.is_equal(other.getmedia)
	end


	infix "<" (other : like Current) : BOOLEAN is
	do
		if not (user < other.getuser) and not (other.getuser < user) then
			Result := media < other.getmedia
		else 
			Result := user < other.getuser
		end
	end



end -- classe EMPRUNT
