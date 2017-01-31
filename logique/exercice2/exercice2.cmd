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

!create i0: MyInteger
!set i0.value := 0

!create i2: MyInteger
!set i2.value := 2

!create i10: MyInteger
!set i10.value := 10

!openter i10 diviserPar(i2)
!create i5: MyInteger
!set i5.value := 5
!opexit i5

!openter i10 diviserPar(i0)

!openter i10 diviserPar(i2)
!create i4: MyInteger
!set i4.value := 4
!opexit i4
