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

-- Universites
!create u1: Universite
!create u2: Universite
!create u3: Universite

-- Professeur p1
!create p1:Professeur
!set p1.nom := null
!set p1.age := 55
!set p1.matricule := 'mat1'

-- Professeur p2
!create p2:Professeur
!set p2.nom := 'p2'
!set p2.age := 25
!set p2.matricule := 'mat2'
!insert (p2, u1) into ProfUni

-- Professeur p3
!create p3:Professeur
!set p3.nom := 'p3'
!set p3.age := 62
!set p3.matricule := 'mat3'
!insert (p3, u2) into ProfUni

-- Professeur p4
!create p4:Professeur
!set p4.nom := 'p4'
!set p4.age := 12
!set p4.matricule := 'mat3'
!insert (p4, u2) into ProfUni

-- Cours c1
!create c1:Cours
!set c1.sigle := 'INF1120'
!set c1.coef := 0.0
!insert (c1, u1) into CoursUni
!insert (p2, c1) into ProfCours

-- Cours c2
!create c2:Cours
!set c2.sigle := 'INF3143'
!set c2.coef := 100.0
!insert (c2, u1) into CoursUni
!insert (p3, c2) into ProfCours

-- Cours c3
!create c3:Cours
!set c3.sigle := 'INF5000'
!set c3.coef := -1.0
!insert (c3, u2) into CoursUni
!insert (p3, c3) into ProfCours

-- Etudiant e1
!create e1:Etudiant
!set e1.nom := 'e1'
!set e1.moyenne := 0.0
!insert (c1, e1) into CoursEtudiant
!insert (c2, e1) into CoursEtudiant
!insert (c3, e1) into CoursEtudiant

-- Etudiant e2
!create e2:Etudiant
!set e2.nom := 'e2'
!set e2.moyenne := 0.0
!insert (c2, e2) into CoursEtudiant
!insert (c3, e2) into CoursEtudiant
