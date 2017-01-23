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

-- Compte c1
!create c1:Compte
!set c1.solde := 0.0

-- Faire réussir la pré-condition sur c1.crediter()
!openter c1 crediter(10)

-- Faire échouer la pré-condition sur c1.crediter()
!openter c1 crediter(-10)

-- Faire réussir la post-condition sur c1.getSolde()
!openter c1 getSolde()
!opexit 0.0 -- = c1.solde

-- Faire échouer la post-condition sur c1.getSolde()
!openter c1 getSolde()
!opexit 10.0 -- <> self.solde

-- Faire réussir la post-condition sur c1.crediter()
!openter c1 crediter(10.0)
!set self.solde := 10.0 -- effet correct
!opexit

-- Faire échouer la post-condition sur c1.crediter()
!openter c1 crediter(10.0)
!set self.solde := 0.0 -- effet incorrect
!opexit
