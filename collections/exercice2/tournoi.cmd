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

!create j1:Joueur
!set j1.nom := 'j'
!set j1.age := 10

!create j2:Joueur
!set j2.nom := 'j'
!set j2.age := 18

!create j3:Joueur
!set j3.nom := 'j'
!set j3.age := 18

-- inv1 OK
!create e1:Equipe
!set e1.nom := 'e1'
!set e1.pro := true
!insert (e1, j2) into EquipeJoueur

-- inv1 KO
!create e2:Equipe
!set e2.nom := 'e2'
!set e2.pro := true
!insert (e1, j1) into EquipeJoueur
!insert (e2, j3) into EquipeJoueur
