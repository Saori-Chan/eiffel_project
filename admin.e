class ADMIN
--
-- 
--
inherit USER

creation{ANY}
	make

feature{ANY}
	ajouterUser (nom,prenom : STRING) is
		-- Création d'un nouvel utilisateur

       modifierUser (id: STRING) is
		-- Modification d'un utilisateur

       supprimerUser (nom,prenom : STRING) is
		-- Suppression d'un utilisateur
       
       getUtilisateur (id: STRING) is
              -- Retourne un utilisateur par son identifiant
		


end -- classe ADMIN

			
			
