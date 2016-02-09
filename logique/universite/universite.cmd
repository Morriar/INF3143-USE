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

-- Etudiant e1
!create e1:Etudiant
!set e1.nom := 'e1'
!set e1.moyenne := 0.0

-- Etudiant e2
!create e2:Etudiant
!set e2.nom := 'e2'
!set e2.moyenne := 1000.0

-- Etudiant e3
!create e3:Etudiant
!set e3.nom := ''
!set e3.moyenne := -10.0

-- Cours c1
!create c1:Cours
!set c1.sigle := 'INF3143'

-- Cours c2
!create c2:Cours
!set c2.sigle := 'INF5000'

-- Cours c3
!create c3:Cours
!set c3.sigle := ''
