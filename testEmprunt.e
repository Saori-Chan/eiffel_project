class TESTEMPRUNT


creation{ANY}
	main

feature{ANY}

main is
local
u1 : USER
l1 : LIVRE
m1 : MEDIATHEQUE
t1 : TIME

do

io.put_string("Cas n°1 : un utilisateur emprunte un livre %N%N")
create m1.make(5, 30)
create u1.make("e130159c", "Eflamm", "Ollivier", m1)
create l1.make_livre("Le suicide français", "Eric Zemmour", 1, m1)
t1.update
u1.emprunter(l1, t1)
io.put_string(m1.to_string_all_emprunt)

io.put_string("Cas n°2 : un utilisateur rend un livre emprunté %N%N")

t1.update
u1.rendre(l1, t1)
io.put_string(m1.to_string_all_emprunt)

io.put_string("Cas n°3 : un utilisateur emprunte un livre, mais son quota est déjà atteint %N%N")

io.put_string("Cas n°4 : un utilisateur emprunte un livre, mais celui-ci n'est plus disponible  %N%N")

io.put_string("Cas n°5 : un utilisateur rend un livre emprunté en retard %N%N")

end -- main



end -- class TESTEMPRUNT
