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

-- Equipes

!create e1:Equipe
!set e1.nom := 'e1'
!set e1.pro := false

!create e2:Equipe
!set e2.nom := 'e2'
!set e2.pro := false

!create e3:Equipe
!set e3.nom := 'e3'
!set e3.pro := true

!create e4:Equipe
!set e4.nom := 'e4'
!set e4.pro := true

-- Joueurs

!create j1:Joueur
!set j1.nom := 'j'
!set j1.age := 10
!insert (e1, j1) into EquipeJoueur

!create j2:Joueur
!set j2.nom := 'j'
!set j2.age := 18
!insert (e1, j2) into EquipeJoueur

!create j3:Joueur
!set j3.nom := 'k'
!set j3.age := 22
!insert (e2, j3) into EquipeJoueur

!create j4:Joueur
!set j4.nom := 'j'
!set j4.age := 45
!insert (e3, j1) into EquipeJoueur
!insert (e3, j4) into EquipeJoueur

!create j5:Joueur
!set j5.nom := 'm'
!set j5.age := 66
!insert (e4, j1) into EquipeJoueur
!insert (e4, j5) into EquipeJoueur

!create j6:Joueur
!set j6.nom := 'j'
!set j6.age := 10
!insert (e4, j6) into EquipeJoueur

-- Tournois

!create t1:Tournoi
!set t1.date := 'date1'
!set t1.pro := false
!insert (t1, e1) into TournoiEquipe
!insert (t1, e2) into TournoiEquipe
!insert (t1, e3) into TournoiEquipe

!create t2:Tournoi
!set t2.date := 'date1'
!set t2.pro := true
!insert (t2, e2) into TournoiEquipe
!insert (t2, e3) into TournoiEquipe
!insert (t2, e4) into TournoiEquipe

!create t3:Tournoi
!set t3.date := 'date2'
!set t3.pro := true

-- Matches

!create m11:Match
!set m11.victoire := true
!insert (t1, m11) into TournoiMatch
!insert (e1, e2, m11) into EquipeMatch

!create m12:Match
!set m12.victoire := false
!insert (t1, m12) into TournoiMatch
!insert (e2, e1, m12) into EquipeMatch

!create m21:Match
!set m21.victoire := true
!insert (t1, m21) into TournoiMatch
!insert (e1, e3, m21) into EquipeMatch

!create m22:Match
!set m22.victoire := false
!insert (t1, m22) into TournoiMatch
!insert (e3, e1, m22) into EquipeMatch

!create m31:Match
!set m31.victoire := true
!insert (t1, m31) into TournoiMatch
!insert (e2, e3, m31) into EquipeMatch

!create m32:Match
!set m32.victoire := false
!insert (t1, m32) into TournoiMatch
!insert (e3, e2, m32) into EquipeMatch

!create m41:Match
!set m41.victoire := false
!insert (t2, m41) into TournoiMatch
!insert (e1, e2, m41) into EquipeMatch

!create m42:Match
!set m42.victoire := true
!insert (t2, m42) into TournoiMatch
!insert (e2, e1, m42) into EquipeMatch

!create m51:Match
!set m51.victoire := false
!insert (t2, m51) into TournoiMatch
!insert (e1, e3, m51) into EquipeMatch

!create m52:Match
!set m52.victoire := true
!insert (t2, m52) into TournoiMatch
!insert (e3, e1, m52) into EquipeMatch

!create m61:Match
!set m61.victoire := false
!insert (t2, m61) into TournoiMatch
!insert (e2, e3, m61) into EquipeMatch

!create m62:Match
!set m62.victoire := true
!insert (t2, m62) into TournoiMatch
!insert (e3, e2, m62) into EquipeMatch
