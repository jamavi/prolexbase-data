[QueryItem="prlexeme_french"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX prolex: <http://www.univ-tours.fr/li/Prolex/data/>

SELECT * WHERE {
	?x a :Prolexeme.
	?x :language prolex:language\/french
}

[QueryItem="prolexeme_english"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX prolex: <http://www.univ-tours.fr/li/Prolex/data/>
select * where {
	?x rdf:type :Sense  ; 
		rdfs:label "Blois" ;
		:hasSenseAxis ?y . 
	?y :meronym ?z . 
	?z :type :country .  
}

[QueryItem="recherche_collocation"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX prolex: <http://www.univ-tours.fr/li/Prolex/data/>

SELECT * WHERE {
	?x :collocation ?y.
}

[QueryItem="recherche_classifi cation"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX prolex: <http://www.univ-tours.fr/li/Prolex/data/>

SELECT * WHERE {
	?x a :Classification.
}

[QueryItem="recherche_instance"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX prolex: <http://www.univ-tours.fr/li/Prolex/data/>

SELECT * WHERE {
	?x a :Instence;
		:morphology ?y;
		:partOfSpeech ?z.
}

[QueryItem="recherche_derivative"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX prolex: <http://www.univ-tours.fr/li/Prolex/data/>

SELECT * WHERE {
	?x :derivative ?y .
filter regex(?x, 'entry/fr/lemma/50-Barr')
}

[QueryItem="recherche_pivot"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX prolex: <http://www.univ-tours.fr/li/Prolex/data/>

SELECT * WHERE {
	prolex:prolexeme\/fr\/125 :pivot ?y .
}

[QueryItem="Q1"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?x where { ?x rdf:type :SenseAxis . }
order by ?x

[QueryItem="q1"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?x where { ?x rdf:type :Territory . }
order by ?x

[QueryItem="q2"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?x where { ?x :primaryHypernym :region . }
order by ?x

[QueryGroup="Group1"] @collection [[
[QueryItem="q3"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?x where { ?x rdf:type :Existence . }
order by ?x

[QueryItem="q4"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?x ?y where { ?x :existence ?y . }
order by ?x

[QueryItem="q5"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?x ?rel ?y where { ?x ?rel ?y . ?x a :Pivot . ?y a :Pivot .}
order by ?x

[QueryItem="q6"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?x ?y where { ?x :meronym ?y . }
order by ?x

[QueryItem="q7"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?x ?y where { ?x :capitalAccessible ?y . }
order by ?x

[QueryItem="q8"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?x ?y where { ?x :diastraticSynonym ?y . }
order by ?x
]]

[QueryGroup="Group2"] @collection [[
[QueryItem="q21"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?x where { ?x rdf:type :PropernameHypernym . }
order by ?x
]]

[QueryGroup="Group3"] @collection [[
[QueryItem="q31"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

#select * where { :Entry-prolexeme-14 :hasDerivative ?x . ?x rdfs:label ?y . }


#select * where { ?x :isDerivativeOf  :Entry-prolexeme-14  ; rdfs:label ?y . }

select * where { ?x :hasDerivative  ?y . ?y rdfs:label ?z .  
FILTER regex(?x ,  "Entry-prolexeme-14$" ) }

[QueryItem="q32"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

#select ?x where { ?x rdf:type :LexicalEntry . }

#select ?x where { ?x rdf:type :Canonical . }

#select ?x where { ?x rdf:type :Alias . }

select ?x where { ?x rdf:type :Derivative . }

#select * where { ?x rdf:type :LexicalEntry ; rdfs:label ?y .}

[QueryItem="q33"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?x where { :Entry-prolexeme-15 :hasSenseAxis ?x . }

[QueryItem="q34"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select * where { ?x :hasDerivative  ?y . ?y rdfs:label ?z .   }

#select * where { ?x :hasDerivative  ?y . ?x rdfs:label ?z .   }

#select * where { ?x :isDerivativeOf  ?y .}

[QueryItem="q35"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select  * where {
#?x rdf:type :Canonical ; rdfs:label ?y .
?x rdf:type :Canonical .

#?x rdf:type :Derivative ; rdfs:label ?y .
#?x rdf:type :Derivative .

#?x rdf:type :Alias ; rdfs:label ?y .
#?x rdf:type :Alias .

#?x rdf:type :Sense ; rdfs:label ?y .
#?x rdf:type :Sense .

}
order by ?x
]]

[QueryGroup="Requetes - opérateurs"] @collection [[
[QueryItem="holonym"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX prolex: <http://www.univ-tours.fr/li/Prolex/data/>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur holonym : 
##	paramètres : (pivot ?y ou un label de LexicalEntry) et le type
##  Est ce que l'on prend le pivot où le type en paramètre ?
###################################################################

select * where {
#?x rdf:type :Sense  ; rdfs:label "Paris" . 
#?x :hasSenseAxis ?y .
# ?y :meronym ?z . ?z :type :country .  
#?y rdf:type :SenseAxis .
?y :holonym ?z .  ?z :isSenseAxisOf ?u . 
filter regex(?y, "pivot/38558")
}

[QueryItem="synonym"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur synonym : 
##  	paramètres : pivot ?x, diasystem
##  ++ explication sur le paramètre canonical
###################################################################

select * where {
?x :quasiSynonym ?y .  }

#select * where {
#?x :diaphasicSynonym ?y .  }

#select * where {
#?x :diastraticSynonym ?y .  }

#select * where {
#?x :diachronicSynonym ?y .  }

[QueryItem="is_cano"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur  is_cano : 
##  	paramètres : pivot ?x, diasystem
###################################################################

#monter au synset et redescendre sur le pivot canonical du synset
select * where {
?x :isMemberOf ?syn . ?syn :canonicPivot ?y . filter(?x=?y) }

[QueryItem="accessible_item"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>


###################################################################
##  opérateur  accessible_item : 
##  	paramètres : pivot ?P, subject_file
###################################################################
select * where {
?P :capitalAccessible ?y .  }

[QueryItem="type"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur type : 
##  	paramètres : pivot ?P
###################################################################
select * where {
?P :type ?T .  }

[QueryItem="supertype"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur supertype : 
##  	paramètres : pivot ?P
###################################################################
select * where {
?P :type/:primaryHypernym* ?T .  }

[QueryItem="projection_language"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur projection_language : retrouve le LexicalEntry canonique ?LE d'un pivot ?P 
##		      pour une langue ?L donnée
##  	paramètres : Pivot ?P, langue(lexicon)  ?L
###################################################################
select * where {
?P :isSenseAxisOf ?LE . ?LE a Canonical; :hasLexicon ?LX .  ?LX rdfs:label ?L . 
filter (lang(?L)="en") }

[QueryItem="prolexeme"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>


###################################################################
##  opérateur prolexeme : pour retrouver le LexicalEntry canonique ?C
##  	paramètres : instance ?I
###################################################################

#Solution 1 : on remonte au pivot pour trouver la forme canonique
select * where {
?I :isInstanceOf ?LE . ?LE :hasSenseAxis ?P . ?P :isSenseAxisOf ?C . ?C a :Canonical .  }

#Solution 2 : on remonte dans la hierarchie des LexicalEntry pour trouver la racine
select * where {
?I :isInstanceOf ?LE . ?LE (:isAliasOf|:isDerivativeOf)* ?C . ?C a :Canonical . }
select * where {
?I :isInstanceOf ?LE . ?LE :senseRelation* ?C . ?C a :Canonical . }

[QueryItem="baseform"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX quest: <http://obda.org/quest#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur base form : pour retrouver le lemma d'une instance ?I
##  	paramètres : instance ?I
###################################################################
select * where {
?I :isInstanceOf ?LE . ?LE :hasInstance ?L . ?L a :Lemma .  }

[QueryItem="aliascategory"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur alias category : pour retrouver la catégorie ?C d'un alias 
##  	paramètres : instance ?I
###################################################################
select * where {
?I :isInstanceOf ?LE . ?LE :category ?AC . ?AC rdfs:label ?C . 
filter (lang(?C)="en")  }

[QueryItem="derivationcategory"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur derivation category : pour retrouver la catégorie ?C d'une dérivée 
##  	paramètres : instance ?I
###################################################################
select * where {
?I :isInstanceOf ?LE . ?LE :category ?AC . ?AC rdfs:label ?C . 
filter (lang(?C)="en")  }

[QueryItem="morphology"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur morphology : pour retrouver la valeur ?V pour une morphology d'une instance ?I 
##  	paramètres : instance ?I, relation correspondant au type de morphologie (case, number, gender, etc.)
###################################################################
select * where {
?I :morphology ?M . ?M :grammaticalGender ?V . }

[QueryItem="classifyingcontext"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur classifying context : pour retrouver le classifying context (template) correspondant au LexicalEntry d'une instance ?I 
##  	paramètres : instance ?I
###################################################################
select * where {
?I :isInstanceOf ?LE . ?LE :classification ?C1 .  ?C1 :hasContext ?C2 ; :hasConstituant ?Ct . ?C2 :hasTemplate ?T . ?T rdfs:label ?TL . }

[QueryItem="reliability"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur reliability : pour retrouver le reliability code 
##                 correspondant au LexicalEntry d'une instance ?I 
##  	paramètres : instance ?I
###################################################################
select * where {
?I :isInstanceOf ?LE . ?LE :frequency ?RC .  ?RC rdfs:label ?C . 
filter (lang(?C)="en")  }

[QueryItem="translation"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur translation : pour retrouver le language correspondant 
##                          au LexicalEntry d'une instance ?I 
##  	paramètres : instance ?I
###################################################################
select * where {
?I :isInstanceOf ?LE . ?LE :hasLexicon ?LX .  ?LX rdfs:label ?C . 
filter (lang(?C)="en")  }

[QueryItem="derivation"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur derivation : retrouve la dérivation ?D d'un LexicalEntry ?LE
##                         pour une catégorie de dérivation ?Cat 
##  	paramètres : LexicalEntry ?LE, derivation category ?Cat
###################################################################
select * where {
?LE :hasDerivative ?D . ?D :category ?AC . ?AC rdfs:label ?Cat . }

# si l'on veut récupérer aussi son lemma 
select * where {
?LE :hasDerivative ?D . ?D :category ?AC ; :hasInstance ?I . 
       ?AC rdfs:label ?Cat . ?I a :Lemma . }

[QueryItem="inflect"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur inflect : retrouve l'instance correspondante à un LexicalEntry ?LE
##                     pour une morphologie ?MLabel et un part of speech ?PosLabel 
##  	paramètres : LexicalEntry ?LE, morphology ?MLabel, part of speech ?PosLabel
###################################################################
select * where {
?LE :hasInstance ?I . ?I :category ?Pos ; :morphology ?M . 
        ?Pos rdfs:label ?PosLabel . ?M rdfs:label ?MLabel . }

[QueryItem="alias"]
PREFIX : <http://www.univ-tours.fr/li/Prolex/Ontology#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

###################################################################
##  opérateur alias : retrouve l'alias ?A d'un LexicalEntry ?LE
##                         pour une catégorie d'alias ?Cat 
##  	paramètres : LexicalEntry ?LE, alias category ?Cat
###################################################################
select * where {
?LE :hasAlias ?D . ?D :category ?AC . ?AC rdfs:label ?Cat . }

# si l'on veut récupérer aussi son lemma 
select * where {
?LE :hasAlias ?D . ?D :category ?AC ; :hasInstance ?I . 
       ?AC rdfs:label ?Cat . ?I a :Lemma . }
]]
