--
-- Copyright 2016 Alexandre Terrasa <alexandre@moz-code.org>.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

-- check inv: assurance <> null implies permis.points > 0

-- OK
!create as1: Assure

-- OK
!create as2: Assure

!create v1: Vehicule
!set v1.categorie := 'auto'
!set v1.valeur := 15000

!create a1: Assurance
!set a1.categorie := 'auto'
!set a1.valeur := 20000
!insert(as2, a1) into AssureAssurance
!insert(a1, v1) into AssuranceVehicule

!create p1: Permis
!set p1.points := 6
!insert(as2, p1) into AssurePermis

-- KO
!set p1.points := 0

-- check Permis::retirerPoints(p: Integer)

-- pre OK
!openter p1 retirerPoints(10)
-- pre KO
!openter p1 retirerPoints(-10)

-- post OK
!set p1.points := 6
!openter p1 retirerPoints(6)
!set p1.points := 0
!opexit

-- post KO
!set p1.points := 6
!openter p1 retirerPoints(6)
!opexit

-- check Assuré::valeurVehicule(): Integer

-- post OK
!openter as1 valeurVehicule()
!opexit 0

-- post OK
!openter as2 valeurVehicule()
!opexit 15000

-- post KO
!openter as2 valeurVehicule()
!opexit 20000

-- check inv: categorie = ‘auto’ or categorie = ‘moto’

-- inv KO
!create a2: Assurance
!set a2.categorie := 'error'

-- check inv: categorie = assurance.categorie and valeur <= assurance.valeur

-- inv KO

!create v2: Vehicule
!set v2.categorie := 'moto'
!set v2.valeur := 5000

!create a3: Assurance
!set a3.categorie := 'auto'
!set a3.valeur := 10000
!insert(a3, v2) into AssuranceVehicule

!create as3: Assure
!insert(as3, a3) into AssureAssurance

-- inv KO

!create v3: Vehicule
!set v3.categorie := 'moto'
!set v3.valeur := 5000

!create a4: Assurance
!set a4.categorie := 'moto'
!set a4.valeur := 1000
!insert(a4, v3) into AssuranceVehicule

!create as4: Assure
!insert(as4, a4) into AssureAssurance
