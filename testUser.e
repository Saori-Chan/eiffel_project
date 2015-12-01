class TESTUSER
--
-- Projet de Génie Logiciel à Objets
-- Eflamm Ollivier & Aurore Bouchet
-- Classe de tests
--
creation{ANY}
	main

feature{ANY}

main is
	local
             	u1, u2 : USER
		a1, a2, a3 : ADMIN
		tu1, tu2, tu3 : ARRAY[USER]
		l1 : LIVRE
		te1 : ARRAY[EMPRUNT]
	do
		io.put_string("%N%N-------- USER -------- %N%N")

		io.put_string("%N Test de make %N")
		!!u1.make("e130159c", "eflamm", "ollivier")
		io.put_string("Identifiant: "+u1.getid+"%N")
		io.put_string("Prenom: "+u1.getprenom+"%N")
		io.put_string("Nom: "+u1.getnom+"%N")

		io.put_string("%N Test de emprunter %N")
		!!u2.make("e130159c", "eflamm", "ollivier")
		!!l1.make_livre("Le suicide français", 2014, "Eric Zemmour")
		!!te1.make(1,1)
		u2.emprunter(l1, te1)
		io.put_string("Titre du media emprunté : "+te1.item(1).getmedia.gettitre+" %N")
		io.put_string("Nom de l'emprunteur : "+te1.item(1).getuser.to_string+" %N")


		io.put_string("%N-------- ADMIN --------%N")

		io.put_string("%N Test de ajouteruser %N")
		!!a1.make("admin1", "bob", "leponge")
		!!tu1.make(1,1)
		a1.ajouteruser("e130159c", "eflamm", "ollivier", tu1)
		a1.ajouteruser("c951031e", "mmalfe", "reivillo", tu1)
		io.put_string("Première valeur du tableau d'utilisateur : "+tu1.item(1).getid+" %N")
		io.put_string("Deuxième valeur du tableau d'utilisateur : "+tu1.item(2).getid+" %N")

		io.put_string("%N Test de modifieruser %N")
		!!a2.make("admin2", "patrick", "star")
		!!tu2.make(1,1)
		a2.ajouteruser("e130159c", "eflamm", "ollivier", tu2)
		io.put_string("Valeur de l'élément non-modifié : "+tu1.item(1).getprenom+" %N")
		a2.modifieruser("e130159c", "mmalfe", "reivillo", tu2)
		--a2.modifieruser("c951031e", "mmalfe", "reivillo", tu2) -- utilisateur inexistant
		io.put_string("Valeur de l'élément modifié : "+tu1.item(1).getprenom+" %N")

		io.put_string("%N Test de supprimeruser %N")
		!!a3.make("admin2", "patrick", "star")
		!!tu3.make(1,1)
		io.put_string("Taille du tableau à l'initialisation: %N")
		io.put_integer(tu3.count) -- la taille du tableau à la création est de 1, voir pourquoi?
		io.put_new_line
		a3.ajouteruser("e130159c", "eflamm", "ollivier", tu3)
		io.put_string("Taille du tableau après ajout d'un utilisateur: %N")
		io.put_integer(tu3.count)
		io.put_new_line
		a3.supprimeruser("e130159c", tu3)
		io.put_string("Taille du tableau après suppression d'un utilisateur: %N")
		io.put_integer(tu3.count)
		io.put_new_line

		
	
	end


end -- class testuser
