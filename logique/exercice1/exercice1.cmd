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

!create u1, u2: Universite

!create p1: Professeur
!set p1.nom := 'p1'

!create p2: Professeur

!create c1: Cours
!set c1.sigle := 'INF'
!set c1.coef := 80.0

!create c2: Cours
!set c2.sigle := 'error'
!set c2.coef := -10.0

!insert(u1, c1) into UniversiteCours
!insert(u1, c2) into UniversiteCours

!insert(p1, c1) into ProfesseurCours
!insert(p2, c2) into ProfesseurCours

!insert(p1, u1) into ProfesseurUniversite
!insert(p2, u2) into ProfesseurUniversite
