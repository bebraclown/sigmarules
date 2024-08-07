
				return function()
                    local mt, mt_data, this_mt = { }, { }

                    mt.__metatable = false
                    mt_data.struct = function(self, name)
                        assert(type(name) == 'string', 'invalid class name')
                        assert(rawget(self, name) == nil, 'cannot overwrite subclass')

                        return function(data)
                            assert(type(data) == 'table', 'invalid class data')
                            rawset(self, name, setmetatable(data, {
                                __metatable = false,
                                __index = function(self, key)
                                    return
                                        rawget(mt, key) or
                                        rawget(this_mt, key)
                                end
                            }))

                            return this_mt
                        end
                    end

                    this_mt = setmetatable(mt_data, mt)

                    return this_mt
                end
			LJD 	  6    BH�6    +  BFR�K  rawset
pairs`     , )  ) M�6  9	 
 B 8 8 < < O�K  random_int
utils� 4  6  -  G  A ?  :  X�6 : D 4 6 ) 6   B A ?  - -  <6  D � �unpackselect
error
pcall�����   )  -   ) M �-  8)  ) M�8	6
  9		 B
 
 X�6 6 9'  B A O�O �K   �+error while resetting found values: %sformatstring
printoverride
pcall]   4   6  96  3 =6 9 93 B2  �K   setshutdownevents 	findui?   6  9B  X�+ L K  get_local_playerentity   +  L     " # L )   #  -    ) B" L  �$   #   "   " L l  #   )   X	� -    ) B" L X	�    "" L K   �X 	    X�-       D X�-   !    D K  	��)   #  -    ) B" L  �2  
#   -    ) B " L  �\   #   )   X� " " "  L X�    "  "  " L K  X 	    X�-       D X�-   !    D K  ��)   #  -    ) B" L  �6  #    -    ) B " L  �r  #   )   X	� -    ) B" L X�     -    ) B " L K   �X 	    X�-       D X�-   !    D K  ��)   #  -    ) B" L  �2  
#   -    ) B " L  �n  #   )   X	� -    ) B" L X
�    -    ) B " L K   �X 	    X�-       D X�-   !    D K  ��8   -  # -  "B"  L ��0  	-  # -  "B" L ��9    -  - " #B" L ��X 	    X�-       D X�-   !    D K  ��V  	   X�L X�-  ) # B" !L K   � ��������]    X� L X� -  )  #B " L K   ������������  %	   X�L   X� L #  )   X�-  )  B" !L X�  -  )  B " L K   � �����ā���қ	��������X 	    X�-       D X�-   !    D K  ��@ 	 #   -  -   ) B B " L � �<  #   -  -   ) B B" L � �w  #   )   X�  -  "  B" L X
�    -  "  B" L K  �X 	    X�-       D X�-   !    D K  !� ��  /	   X�L #  	  X� L   X�+    X�-   B X� X�- #- #	B"  - ) 	 B"- "	 !		-
 

"	
	#		B"  L ��� �� �̙������  .	   X�L #  	  X� L   X�+    X�-   B X� X�- #- #	B"- ) 	 B"- "	 !		-
 

"	
	#		B"  L ��� �� �̙����������  	K	   X�L #  	  X� L   X�  X�)  +    X�-   B X� X�- #- #	B")   X�  - ) 	 B"- "	 !		-
 

"	
	#		B" L X�  - ) 	 B"- "	 !		-
 

"	
	#		B"  L K  ��� �� ����̙��������������h     X	�-     	 
   D X
�-   !  	 
   D K  %�$�B     X�*  #  " " " !" L ��ó����J     X�*  #  "  "  "" L ��ó�����     X�*  #  )   X
�"  " !"" L X�  "  "  "" L K  ��ó����͙������`     X�-      	 
 D X	�-   !   	 
 D K  )�(��   
(#  *    X� " " L X�*   X�   " " L X�*   X�   " " L X�   " 	" L K  ����ы����������ы���Ů������������Ů����Ů�ݨ�������ы��������- 	  	-  ! )    B! L ,�z 	    X
�-    )    B L X�-   !)    B  L K  -�,�����X 	    X�-       D X�-   !    D K  ,�-�� 1[ d6   9  6  96  96  96  96  96  93 3	 3	
 3
 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3  3 ! 3!" 3"# 3#$ 3$% 3%& 3&' 3'( 3() 3)* 3*+ 3+, 3,- 3-. 3./ 3/0 501 =20=30=	40=
50=60=70=80=90=:0=;0=<0==0=>0=?0=@0=A0=B0=C0=D0=E0=F0=G0=H0=I0=J0= K0=!L0="M0=#N0=$O0=%P0=&Q0='R0=(S0=)T0=*U0=+V0=-W0=,X0=.Y0=/Z0. 0 2  �K  �bounce_out_inbounce_in_outbounce_outbounce_inback_out_inback_in_outback_outback_inelastic_out_inelastic_in_outelastic_outelastic_incirc_out_incirc_in_outcirc_outcirc_inexpo_out_inexpo_in_outexpo_outexpo_insine_out_insine_in_outsine_outsine_inquint_out_inquint_in_outquint_outquint_inquart_out_inquart_in_outquart_outquart_incubic_out_incubic_in_outcubic_outcubic_inquad_out_inquad_in_outquad_outquad_inlinear                                           	asinabs	sqrtpicossinpow	math    '   L  inspect.KEY!    '   L  inspect.METATABLE   6    +  J 	nextz  -    '  B  X�-    ' B  X�'   ' &L '  -   '  ' B'  &L ��\"'"Y  -  -  -    '  ' B' - B' - BL ���%c(%c)%f[0-9]\\\i   6    B X�  9 ' B  X�+ X�+ L ^[_%a][_%a%d]*$
matchstring	typea  6    B X
�-    B  X�)   X�  X�+ X�+ L �number	type�  &6    B6   B X
� X� X�   X�+ X�+ L -  8  X�)d -  8  X�)d  X�  X�  X�+ X�+ L �numberstring	type� $) 6     B
  X�U� X� 4  )  -    BX�- 	 
 B  X� <ER�- 9 - B   J 
����	sortrawget� 
#6    B X�8   X�8  < X�) < -    BX�-  	 B-  	 BER�- 6   B BK  
��getmetatable
table	typeA 
  4    )  ) M�8	 <	O� <<L �  K  X�+  L 8  X�8L     B6   B X8�4  <+  -   BX
�-   
 -  
 - 9B B 
  X
�-    -   B B<E
R
�-   6	 
 B	-
  - 9B
 B6  	 B X�+  6 	 
 B L 
���  setmetatableMETATABLEgetmetatableKEY
table	type"  9   =  9  < K  nL  
-  9  9 - 9 9 B&BK  ��
levelindentnewlinebuf_ 9  89    X�6  B8  X�)    <<-   D �	typeids� 	�9  6  B X	�-   - -  B A  AXĀ X� X� X� X� X�-   -  B AX�� X��9	 8  X�� - 9
 X�- 9 X�-   -  B AX��9 9  X�-   ' BX��9 8)  X
�-   - ' 
  9	  B	 A A-  B-  	 '
 B9  = )  	)
 M6�)  X�-   ' B X	�-   ' B  9 8BX#�!8-   B-  B  X�-    BX�-   ' B  9  B-   ' B-   ' B  9 8BO�6 	 B6	 
 B		 X	� 	)
  
	 X	�-	  
 ' B	-	 
  B	-	  
 ' B	
  9	  B	9	 	 	=	 )	   	 X	�6	 
 B		 X	�-	 
  B	X	�)	  	 X	�-	  
 ' B	-	  
 ' B	X�-   - '  
  9	  B	 A AK  ����  	����<%s %d>}<metatable> = getmetatable = ][putValue ,{
getId	<%d>cycles
{...}
depth
levelMETATABLEKEYids
table
ctype
cdatanilbooleannumberstring	typebuf�  3  X�4  9   X�-  99  X�' 9  X�' 9  X�-    4	  4
  B  4  -   	 B6 5	 5	 =	
4	  =	== ==-	 B	 9
  B- 99	
D �����concatputValuecyclesidsbuf 
level  n setmetatableprocess	indent
newline	huge
depth%  -  9   D   inspect�  >�+   6  6   X�'  9' B A   X�)  *   X�6 6 ' B  X�     X�9   X�6    X�9	   X�6	    X�9
   X�6
 5 4  =.  -  ' =-  ' =-  ' =-  ' =-  6 4  5 3 =B=-  6 4  5 3 =B=6 99999	 3
! 3" 5# 5$ )  ) ) M�  B8  X	�'%  &<	 '&  B<O�3' 3( 9)3* 5+ 3, 3- 3. 3/ 30 31 4  52 =334 36 =538 =7-  3: =96 -  5< 3; ==B2  �K  	�__call    inspect putValue 
getId __index         functionbooleanstringnumber
tableuserdatathread 
floor  
\%03d\  \v\b	\t\a\r\f	\127
\n  format	gsub	charreptostring   METATABLE__tostring   setmetatableKEY�		MIT LICENSE
		Copyright (c) 2022 Enrique García Cota
		Permission is hereby granted, free of charge, to any person obtaining a
		copy of this software and associated documentation files (the
		"Software"), to deal in the Software without restriction, including
		without limitation the rights to use, copy, modify, merge, publish,
		distribute, sublicense, and/or sell copies of the Software, and to
		permit persons to whom the Software is furnished to do so, subject to
		the following conditions:
		The above copyright notice and this permission notice shall be included
		in all copies or substantial portions of the Software.
		THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
		OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
		MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
		IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
		CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
		TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
		SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
	_LICENSE-human-readable representations of tables_DESCRIPTION)http://github.com/kikito/inspect.lua	_URLinspect.lua 3.1.0Options  
tablestring	mathcompat53.modulerequire
pcall[%d.]*$
match_VERSIONtonumber�̙���Ԁz  -   B    )    X�6  9-   B- )     B6  9   D ' L  ���stringnewffi   -      BK  ��  #4   .   6   9  ' ' ) ' B 6  9' ' )	 ' B6  9' ' ) ' B6 9'	 B-  3 =
-  3 =2  �K  � set getchar[?]typeofffi3int(__thiscall*)(void*, int, const char*, int)/void(__thiscall*)(void*, const char*, int)int(__thiscall*)(void*)VGUI_System010vgui2.dllget_vfunc
utils!  -  9 <K   �__index�  �6    B X�6 ' D +    9 B6 -  BH
�
 9
B X� X�F
R
�  X�K    X�L 6   B X�6 ' D +  	 9B6	 
 B	H� 9B X� X	�FR�  X	�L   X	�	 
 J	 6	  
 B		 X	�6	 '
 D	 +	   9
B
6 9BH� 9B
 X�	 X�FR� 	 X�  J   X�  	 J 6   B X�6 '	 D +   9B6 9
	BH� 9B X� X�FR�  X�  	 J   X�  	  J 6   B X�6 ' D 9  X�  	  J +   9B6 9BH� 9B X� X�FR�  X�  	  J   	   J   sub_itemsinvalid sub item name
itemsinvalid item namegroupsinvalid group nameinvalid sub tab name
pairs
lowerinvalid tab name
errorstring	type� -  9   B  X�6 ' D 6 -    4  B- -   < K    �rawsettab already exists
error	findm    6   9  9  ' B K  "https://discord.gg/g5K7X6nEyZOpenExternalBrowserURLSteamOverlayAPIpanorama�  56    B X�-  9' 6    B&D 6 6 9  B  X�-  9'  &D 9  X�-  9' 9	&D 9
  X�6  9
B X�-  9' D -  9' 9
&D   Your code is 99FF99FFFF4040FFunknown error	Codemessage
errorFF4040FF
parse	json
pcall#FF4040FFstring expected, got logstring	type� 	 6   9  ' 5 6 9B=5 3 B K      Content-Typeapplication/jsonSecret%w19izBDlgKtZJ383vjLMsDlXxy7B7Xkuusername  get_usernamecommon3http://185.174.136.52:3000/api/v1/verification	postnetwork�N-  9    B  X�6 ' 2 A�  X�6 ' 2 =�-  .  X�5 4  =<2 4�6 9 ' '	 -	 &	B 
 X�5  9'	 '
	 - &		5
 B= 9'	 3
 B= 9'	 3
 B=4  =<X�5  9'	 '
	 - &		5
 B=4  =<K  D D K    �    Loading...discord_ref Request Verification Codediscord_server_ref Discord Serverbuttontab_selection_ref    Loading...Tab Selection
comboGeneral##Chimeracreateuigroups  sub tab already existstab not found
error	find� '-  9     B  X�6 ' D   X�6 ' D   X�6 ' D -  . 95	 6	 9		
  ' - &B	=	
4	  =	<K    �
itemsref  ##createuigroupsgroup already existssub tab not foundtab not found
error	find     +  L  �C-  9     	 B  X	�6	 '
 2 2�  X	�6	 '
 2 .�  X	�6	 '
 2 *�  X	�6	 6
 9

' - B
 2 "�-	 	 	.	 6	 9
	- 8

9	 G A	 	 X�6 
 2 �9
5 =
	6  B X� X�3 =<2  �L
 D	 D	 D	 C	  D   
��callback function	type  
itemsref
pcall%s already existsformatstringgroup not foundsub tab not foundtab not found
error	find     +  L  � X-  9    	 
  B  X�6 ' 2 D�  X�6 ' 2 @�  X�6 ' 2 <� 	 X�6 ' 2 8� 
 X�6 6 9' - B 2 0�9		  X�6 '
 2 +�9	  X�9	 9B=	4  =	6 9	- 89	 G A  X�6  2 �9	5 =6  B X� X�3 =<2  �L D D D D C  D D   �callback function	type  
pcallcreaterefgroup_refsub_items!this item has a color pickercolor_picker_refsub_%salready existsformatstringitem not foundgroup not foundsub tab not foundtab not found
error	find     +  L  � M-  9    	 
  B  X�6 ' 2 :�  X�6 ' 2 6�  X�6 ' 2 2� 	 X�6 ' 2 .�9	  X �  X�6 ' 2 '�6 9		9
9		 G A  X�6  2 �9	5 =6  B X� X�3 =<2  �L 9	 9
G A=	2  �L D D D D D D   color_picker_refcallback function	typeref  color_pickergroup_ref
pcallfuck yousub_itemsitem not foundgroup not foundsub tab not foundtab not found
error	find�
 *-  9    	 
  B  X�6 ' D   X�6 ' D   X�6 ' D  	 X�6 ' D 9
  X�6 ' D 9
 9	G A=
9
L   color_pickerref)this item already has a color pickercolor_picker_refitem not foundgroup not foundsub tab not foundtab not found
error	find�   g-   9      X �6  ' D  6  -  B HY�6  BHS�9
	 
 X
�X
$�9
	
 9

-  9  X�+ X�+ B
9
	 
 X�9
	
 9

-  9  X�+ X�+ B
9
	
 9

-  9  X�+ X�+ B
6
 9	B
H%�6 9	BH�-  9  X�9
BX�+ X�+ 9 9 B9  X�X�6 9BH�9 99
B AFR�FR�FR�FR�FR�K    sub_itemsrefcallback
itemsgroupsdiscord_server_refdiscord_refvisibilitytab_selection_ref
pairsno selected tab
errorselected_tab_name�   )-   - 9 9B=  6  -  B H�6  BH�9
	 
 X
�X
�9
	
 9

B
-  9 
 X
�9
	
 9

-  9 B
FR�FR�-   9  B K   	�updateset
pairsgettab_selection_refselected_tab_name� M-      	   X �6   ' 2 E�-  -  := 6  - B H7�6  BH1�9
	 
 X�9
	
 9

-  B
9
	
 9

3 + B
6
 9	B
H�6 9	BH�9
 9- 9B9  X�X�6 9BH�9
 9- 9BFR�FR�FR�2 �FR�FR�-  9  B K  D  �  sub_itemsref
itemsgroups set_callbackupdatetab_selection_ref
pairsselected_tab_nameno tabs
error � % �6    BH��-  8  X	�-  96 9'	 
 B A X��6   BH
��8
  X	�-  96 9' 
 B A X��6   BH��98  X	�-  96 9'  B A X��6   BH~�98  X	�-  96 9'	  B A Xq�9
 9B X�9
 96 9B AX� X	�9
 99  X�4  BX�9
 99B9  X
�9  X�9 96 9B A9  X�XB�6  9BH<�98  X 	�-   9  6! 9!!'" # B! A  X/�9 
!  9  B   X!�9!
"! 9!!6# 9$B# A!X!�  X!�X�X!�  X!	�9!
"! 9!!9# # X$�4#  B!X!�9!
"! 9!!9#B!9! ! X"
�9! ! X"�9!"! 9!!6# 9$B# A!FR�FR�FRmF
R
[FRHK    5Outdated config, the "%s" sub-item was not foundsub_itemscolor_picker_refselectable
value
colorsetcolor_picker	typeref1Outdated config, the "%s" item was not found
items2Outdated config, the "%s" group was not foundgroups4Outdated config, the "%s" sub-tab was not found0Outdated config, the "%s" tab was not foundformatstringlog
pairs�  # �4   6  -  BH��6   BH	�� X�	 X�X�� X�	 X�X}�6  9
BHw�6  9BHq�8   X�4  < 8 8	  X�4  <	8	8  X�4  <89 9B X�XX�8  X�4  <8	 X	�9 9B 9B=
X�9 9B=
9  X�9 9B 9B=9  X�X3�4  =6  9BH+�9  9B X �X$�9 8     X �9 4!  <! 9 8  	 X!	�9!"! 9!!B!"! 9!!B!=!
 X!�9!"! 9!!B!=!
 9! ! X"�9!"! 9!!B!"! 9!!B!=! FR�FR�FR�F	R	wFRqL    sub_items
colorcolor_picker_refto_hexget
valuecolor_pickerbutton	typeref
itemsgroupsConfigHelperGeneral
pairs'  -  8   X�'  L �
Other� ) V4   .   5  5 6  9== 3 = 6 -    B-  3	 =4  -  3 =
)  -  3 =)  -  3 =6 9' B)  5 6  BH
�-  3 <
2
 �F
R
�)  6 	 BH�-  '  &3 <2 �FR�-  3	 =	-  3	 =	-  3	 =	-  3	 =	-  3	! =	 -  3	# =	"5$ -	  5
& =
%	-	  3
( =
'	2  �K  � get_weapon_type  AutosniperR8 RevolverSSG 08AWPZeus x27PistolDesert EagleSMGShotgun
RifleMachine Gun
Nades
Otherweapon_typesA  Desert EaglePistolPistolPistol  
Rifle
RifleAWP
RifleAutosniper 
RifleMachine Gun 
RifleSMG SMG   SMGSMGShotgunSMGShotgunMachine GunShotgunPistolZeus x27PistolSMGSMGShotgunPistol Autosniper
RifleSSG 08  
Nades
Nades
Nades
Nades
Nades
Nades           
RiflePistol PistolR8 Revolver export import 	init update sub_sub_color_picker sub_color_picker 	sub_ 
pairs buttonselectablesliderswitch
combo
input	list
labeldummy groupcreateui 
group sub_tab tab 	findsetmetatable __newindex__index __metatable  frametimeglobals�  6  9' 6  9' 6  9'   B B: 6  9'   B D unsigned intunsigned int*
void*	castffi
(  4   .   -   3 =  K  � 
rel32    1  K  �-   -   9     9  D   getenabled_ref8  -    X�6  9. K  ��realtimeglobals    L  !    9  B.  K  �getO  		   X�'  L 6 9'  D 
%.1fmformatstringinf���̙����N  -    X�6  9.   9 B. K  ���getrealtimeglobals    9  B  X�K    9 B-   9 B-  X� .  . K  ���dist2dsqrget_originis_alive� T6  9B  X�K   9B  X�K  9  X�K  -  9 9B A -  9 B  X�K   9B. 6 9	1  . 6  9
+ + - B-   X�K  -   X�+ X�+ . -   X�-  9+ B- - " X�-	  9-
 B-   X�-  9+ BK    
�����	��� ��overrideget_players	huge	mathget_origingetget_weapon_indexget_weapon_typem_bIsScopedget_player_weaponget_local_playerentity���̙���������ގ��  _6   9  B    X�K  -  9  9 B-  - 	 X�)  -   X�. - - !" . -   X�K  6 9- !)  X�- 	 X	�6 9- !)	  )
 B. X�6 9-  )	  )
 B. - 	 X�K  - 9- )	  )
 ) B6	 9
	 6
 )� B
- )  ) B6	 9	 6
 )� B
- )  ) BK    ���� circle_3d_outline
colorcircle_3drendercubic_out
clamp	mathrealtimeglobalsget_originframetimeget_local_playerentity��̙���������ގ��0 ��-   -   9     9  D   getenabled_ref    L  !    9  B.  K  �get� F6  9B  X�K   9B  X�K  9  X�-   9B  X�9 
 X�6 99- B-  X	�9	 9
B)  X�+ = 6 99- B-  X�K  - 9 9B A -  9 B  X�K  -  9- BK  	�
�  � ��overrideget_weapon_indexget_weapon_typein_speedlength2dm_vecVelocitym_fFlags	bandbitin_jumpgetm_MoveTypeget_player_weaponget_local_playerentity�  6   9  B    X�K  6 99 ) B	  X�0  X�-  6 9 .  K  �tickintervalglobalsm_fFlags	bandbitget_local_playerentity -   -   9     9  D   getenabled_refY   -     9   ' B    X�-  9    9   B L  � enabled_refMove Leanget!    9  B.  K  �getY   -     9   ' B    X�-  9    9   B L  � enabled_refMove Leanget!    9  B.  K  	�get[   -   9     9  B    X�-    9  ' B L   �Leg Breakergetenabled_ref[   -   9     9  B    X�-    9  ' B L   �Leg Breakergetenabled_ref]   -   9     9  B    X�-    9  ' B L   �Force Fallinggetenabled_ref�  9  .  6 9B  X�K  -  9' B  X�+ = K  ��animate_move_leanMove Leangetget_local_playerentityin_jump�	 �  9   B6 9B  X�K  6 9 B X�K   9B  X�K  -  9 9B  X�K  -  9' B  X�9  X�-  9B  X�-   X�9*  >-  9'	 B  X�9-  9B  X�6
 96
 9- * *	 B* * )	  )
 B  X�) >-  9B-  9' B  X9�-  9B  X	�-  9' B9) >X�-  9' B9) > -  9B  X�6 96 9' -	 B6 9'  BB: :6 99) B X�9	 X�) =6 96 9' -	 B6 9'  BB: :-  9' B  X�-
  9B  X�- -
 B  X�X �X�9)  >	-  9' B  X�6 99) B X�+ X�+   X�-   X�K  6
 9)  6	
 9		)
 9- "B	 A=K   ������
���� 	��minmaxMove LeanSliding on Slow Walkweightm_fFlags	bandbit
char*	$ **typeof	castffiSlidingWalkingLeg Breakeroverride
clampmap	mathForce Fallingm_flPoseParameterlandingLanding Pitchenabled_refget_anim_stategetget_local_playerentityget_original������������͙���̙��� -   -   9     9  D   getenabled_refK   -   9     9  B    X�-    9  B L   �getenabled_ref� 

�9    X�K    X�K  -    X�K  -  9  X�K  -  9' B  X�-  9+ B-  9' B  X�-  9+ B-  9' B  X<�-  9  X8�6 9 9	+ B  X0�6
 96
 96 9 9	B6 9 9	+	 B!B A )   X�+ X�+   X�6 99) B	 X�-  9+ B-  9+ B-  9+ B- 9 9B A  X�6 99) B X�-  9' B  X
�-  9+ B-	  95 BK   ������  	�
�  Full StopIn AirJump ScoutSSG 08get_weapon_indexget_weapon_typem_fFlags	bandbitnormalize_yawabs	mathget_targetantiaim	rageFreestandingAuto PeekoverrideDouble Tapgetlast_state_idin_use-   -   9     9  D   getenabled_ref!    9  B.  K  �get�  1-   9 B-  9 B-  9 B-  9 B-  9 B-   X�-   9 5 B-  9 5 B-  9 ' B-  9 ' B-  9 4  BK  ������Default  	Head  	Headoverride� 

 G-   9 B-  9 B-  9 B-  9 B6 9B 9B-  9B  X�- 9    B-  9 B-  9 B-  9B  X�- 9  B-	  9B  X�- 9  B- 9  B- 9	  BK  �	�
���  ����magic_key_on_createmovegay_on_createmove$in_air_hit_chance_on_createmove%noscope_hit_chance_on_createmoveideal_tick_on_createmovegetget_player_weaponget_local_playerentityoverrideT   
-     9   B    X�-  9  B K  � !noscope_hit_chance_on_renderget    K      K      K  �% ��-   9   ' B -   9  ' ' B -   9  ' ' + B -   9  ' ' ' B -   9  ' ' ' B -   9  ' ' ' B 5  -  9' '	 ' '
 B= .  6  9  ' ' ' ' B 6 9' ' ' ' B, + 6 9) 3 B-  9' '	 ' '	 3
 B 93 B 9' B )  -  9' '	 '	 '
 ' +  )  )d ) ) 3 B 93  +	 B)  -  9'	 '
	 ' ' '! +  )( )� ) ) 3" B	 93
# B	 9'
$ B+	  9
%B

 -
  9
&
' '	 ' ' '' +  5( B
6) 9*, 3+ - 3- =,+  )  - 3/ =.2 �6 9'0 ' '1 '2 B+  -  9' '	 ' '	3 3
4 B 9'5 B )  -  9' '	 '	 '
3 ' +  )  )d ) ) 36 B 937 +	 B4  68 -	  9	9	BH
�: X�; X�< X�X�  <FR�-  9&'	 '
	 ' '3 '' +   B-	  9	=	'
 '	 ' '3 '> B	)
 - 3@ =?2 �+  )  6A 9B 9C3	D B6 9' '	E '
F 'G B-  9H'	 '
	 ' 'I 3J 5K B	 9'
L B +  -	  9	M	'
 '	 ' 'N 3O ) )d ) ) 'P B	
	 9		3Q + B	+	  -
  9

' '	 ' 'R 3S B

 9

3T + B
-
  9

' '	 ' 'U 3V B
-  9' '	 ' 'W 3X B-  9' '	 ' 'Y 3Z B 9'[ B6\ 9]'^ 6 9_'` 'a )��B  X�6b 'c BB6 9'd '	 'e 'f B+ - 3h =g6 9' 'E 'F 'i B6\ 9j'k B- 9l 3m B2 �6 9' ' '	 '
n B6 9' '	 '
 'o B6 9'	 '
E 'p 'q B6	 9		'
 ' ' 'r B	6
 9

' ' ' 'r 's B
6 9' ' ' 'r 'o B6 9' 'E 'p 'q 't B6 9' 'E 'p 'q 'u B-  9' '	 ' 'v 3w B 9'x B- =y-  9H' '	 ' 's 3z 5{ B- 3} =|+  -  9' '	 ' '~ 3 B 93� + B 9'� B6 9' ' ' '� B6 9' ' ' '� B6 9' ' ' '� '� B6 9' ' '� '� B6 9' ' '� '� B6 9' ' '� '� B- 3� =�2 �- 3� =�- 3� =�- 3� =�- 3� =�- 3� =�2  �K  �����
� on_createmove_run on_player_spawn on_player_hurt on_render on_createmove magic_key_on_createmoveEnsure Hitbox SafetySafe PointsBody AimSafetyHead ScaleMultipointHitboxesHS only mode, basically  Magic Key ideal_tick_on_createmove  Auto PeekDouble TapFreestandingJump Scout ideal_tick_ref3A peek mode that is mainly for scouting people Ideal TickBody FreestandingDisable Yaw ModifiersOptionsAuto StopFreestandingAnglesDouble TapPeek Assist hook_func�			struct {
				char		pad0[0x18];
				uint32_t	sequence;
				float		prev_cycle;
				float		weight;
				float		weight_delta_rate;
				float		playback_rate;
				float		cycle;
				void*		entity;
				char		pad1[0x4];
			}
		typeofLeg Movement gay_on_createmovebunny hopmovementmiscellaneousnigger
error 8B F1 80 BE ? ? ? ? ? 74 36client.dllopcode_scanvoid(__thiscall*)(void*)	castffixAttempts to imitate the way it would look like before the Danger Zone update. Should match the fake chams, I guess. Legacy Falling Mode Moonwalk In Air Mode Moonwalk Mode  On Ground Force % Move Lean Forceslider�· Forces specific animations on the local player. Client-side only.

· "Landing Pitch" makes the pitch angle appear to be zero degrees during playback of the landing animation.

· "Force Falling" forces the playback of the animation of falling.

· "Move Lean" enables the playback of the moving lean animation from the 12th animation layer.

· "Leg Breaker" isn't fully client-side as it overrides "Leg Movement" to "Sliding". Looks cool, I guess.

B6B665FF· Please note that this feature can cause inaccuracies of certain cheat features that rely on hit scanning the local player.  Landing PitchForce FallingMove LeanLeg BreakerSliding on Slow Walk #B6B665FFAnimation Fix BreakerselectableSlow Walk	MiscAnti Aim setnet_update_endevents $in_air_hit_chance_on_createmoveDisable Air Strafesub_switchZeus x27
Other
Nadesweapon_types
pairs  ;· Overrides your ragebot hit chance while in the air. In Air ModeAir StrafeMovementMiscellaneous !noscope_hit_chance_on_render %noscope_hit_chance_on_createmove 	huge	math  AutosniperSSG 08AWPWeaponssub_selectablegetL· "Auto Scope" won't be overridden if the distance is set to infinity.  Distance  sub_sliderp· Overrides your ragebot hit chance along with auto scope while an enemy is within the specified distance.tooltip set_callback Noscope Mode execute_after
utilsAuto ScopeAccuracyHit ChanceSelectionRagebotAimbot	finduienabled_ref  Enable General	maingeneralswitchLocations
groupHelper	Mainsub_tabGeneraltab   -      .   K  �@   
6   -  B H� 9BFR�K   �override
pairs� 
e9 99)  9B)  X�) -   9B  X�) *    X�-  9B  X�) 9   X�-  9B  X�6 9 )	 B X�	 X�) X�) - =6	 9
 9B)  X�- - B  X�-  9B X�- - B  X�-  9B X�- :	 9B  X�)	 9   X� 9B X�) - =L ���   ��	�CC4get_classnamein_useexploit	ragelast_state_id	bandbitin_jumpgetlength2dm_fFlagsm_flDuckAmountm_vecVelocity����
� 
?9 99)  9B)  X�) -   9B  X�) *    X�-  9B  X�) 9   X�-  9B  X�6 9 )	 B X�	 X�) X�) - =9	   X� 9
B X�) - =L ���  CC4get_classnamein_uselast_state_id	bandbitin_jumpgetlength2dm_fFlagsm_flDuckAmountm_vecVelocity����
� -  B)   X�  9  B X�-  9B X	�-  9B X�-   D -   G C ���DisabledConditionalgetScope Overlay	nameb   -     9   B   X �-     9   B   X �+  X�+  L  �ConditionalDisabledgetA   
-     9   B   X �+  X�+  L  �Conditionalget� S	   X�K  -   9 B X�K  - 9 9+ B-  9 B  X�- 9 9' B- 9 94  B- 9 9' B- 9 9'	 B-   9 B
 X�- 9 9)��B-   9 B X�- 9 9)Z B-   9 B X�- 9 9)� BK  � ��Forward
Rightyaw_offset_ref	LeftLocal Viewyaw_base_refBackwardyaw_refbody_yaw_options_refyaw_modifier_refoverridefreestanding_refDisabledgetI   -   -  9 B  X �-  B X�+  X�+  L  ���get�   -   B    X�-  9     9  B   X 	�-  9     9  B   X �+  X�+  L  ��5-Way Chimera3-Way Chimeragetyaw_modifier_ref�   -   9     9  B   X �-   9     9  B   X �-  B    X�-   9    9  B    L  X �-  D  K  ��way_mode_ref5-Way Chimera3-Way Chimeragetyaw_modifier_ref    -   D  ��   -   B    X�-  9     9  B   X �-  9     9  B   X �-  9    9  B X�+  X�+  L  ��way_mode_ref5-Way Chimera3-Way Chimeragetyaw_modifier_ref�   -   B    X�-  9     9  B   X �-  9     9  B   X �-  9    9  B X�+  X�+  L  ��way_mode_ref5-Way Chimera3-Way Chimeragetyaw_modifier_ref�   -   B    X�-  9     9  B   X �-  9     9  B   X �-  9    9  B X�+  X�+  L  ��way_mode_ref5-Way Chimera3-Way Chimeragetyaw_modifier_ref�   -   B    X�-  9     9  B   X �-  9    9  B X�+  X�+  L  ��way_mode_ref5-Way Chimeragetyaw_modifier_ref�   -   B    X�-  9     9  B   X �-  9    9  B X�+  X�+  L  ��way_mode_ref5-Way Chimeragetyaw_modifier_ref=   -   B    X�-  - 8    9   B L  �	��get� 	R	   X�-  9  9+ BK  -  9B  X	�  X�  X�  X�  X�K  -  9  9-  9B A6 9 9+ B  X(�6 96 9 9B6 9 9+ B!B)�� X�)  X�-  9  9+ B-  9 9+ BX�-  9 9+ BK   ���disable_yaw_modifiers_refnormalize_yaw	mathget_targetantiaim	ragegetoverridefreestanding_ref�  
 ,6   9  B    X�+ L 9   X �-  9 9' B-  9 9' B-  9 9+ B-  9 9+ B-  9	 9+ B+ L + L  �extended_angles_reffreestanding_refbody_yaw_refyaw_refDisabledoverridepitch_refm_bWarmupPeriodget_game_rulesentityS   
-   9     9  -  9B A K   ��getoverrideavoid_backstab_ref� X	   X�K  -   9 ' B  X�-  9 B X�- 9 9)  B- 9 9)  B6 9 9+ B-   9 '	 B  X.�  X,�- - 9
B  X&�6 96 96 9 9B6 9 9+ B!B A )   X�+ X�+   X�- 9 9)  B- 9 9)  BK  �� � normalize_yawabs	mathfreestanding_refFreestandingget_targetantiaim	rageright_limit_refoverrideleft_limit_refDisabledManual Yaw Baseget�  �-     9   ' B    X�-    9   B    X�-  9    9  + D  -     9   ' B    X�-    9   B    X�-  9    9  + D  6  9  B    X�K    9 B  X�K   9B 9	B- 9
 B-   9 ' B  X�-  9 B  X
�  X�	 X�- 9 9+ D -   9 ' B  X�-  9 B  X�	 X�- 9 9+ D -   9 ' B  X�-  9 B  X� X� X� X� X� X�- 9 9+ D -   9 ' B  X�9  9B)  X�6 99 ) B	  X�- 9 9+ BK  �� �� m_fFlags	bandbitlength2dm_vecVelocityStandingMachine Gun
RifleAutosniperPistolSMGDT High FirerateDT KnifeDT Heavy Pistolsget_weapon_typeget_classidget_weapon_indexget_player_weaponget_local_playerentityHide Shotsoverrideenable_fake_lag_refDouble Tapget��!    9  B.  K  �get    -      L  �!    9  B.  K  "�get� �-  - B  X�-  9 B  X�K  6 99 ) B	  X�-   X�K  -  9 - 9 9B A  A  X�K  -   X0�- 9  B  X�K  99 9	B)   X�-   X�6
 9  . 1	 1 X�1 6
 9-  X=�-	   X:�6 9+ B  X4�6 9 9B1	 X-�6 9+ B  X&� 9B  X"�- 9 9B A  X� X�-   X�6
 9-
  9 B . 1 6
 9-  X�6 9 9BX�1 K   %�"� � � #�$�(�!�
Nades
Otherget_player_weaponforce_teleportexploit	rageget_threatentitytickcountglobalsunpackno_entrycommandget_snapshotget_weapon_indexget_weapon_typem_fFlags	bandbitget!    9  B.  K   �get!    9  B.  K  !�get� D-   9 B-  9 B6 9B 9B  X�K  9  X�-   X�K  -   X�6 99) B	  X�K  - - B  X�-  9B  X�-   9 '	 D - - B  X�-  9B  X�-  9 '
 D K  #�%�!� � "�$�Break LCAlways Ongetm_fFlags	bandbitm_bPinPulledget_player_weaponget_local_playerentityoverride)  -  8   X�'  L 
�Default�   -   9     9  -  9B A -   9    9  -  9B A -   9    9  -  9B A K   �!�"�#�extended_roll_refextended_pitch_refgetoverrideextended_angles_ref�  w-     9   + B -    9  B   X �K  -     9   + B )   -  9B X�6 9)L�)� B  -  9B X	�6 9 *  X�) Z X�) ��-  9B X�) � -  9B	 X�6
 9 9  B)  -  9B X�)Y -  9B X�)��-  9B X�6 96 96 9B)  * )��)Y B -  9B X�6 9)��)Y B 6
 9 9 BK  "����override_hidden_pitchabsmap	mathPAKETAUp	Downoverride_hidden_yaw_offsetantiaim	rage	SpinOppositerealtimeglobalsSidewaysrandom_float
utilsRandomgetoverride��̙������̙�����̙������̙����3    )    X�+   J X�+   J K  � 
	*�6  9B  X�K  -  8 - 9  B- 9B- 9B- 9 99 9B A- 9 99 9B A- 9	 99	 9B A6
 9 9B. 9	  X�- . - 	  X�9 9B. - . 6 99 9B- !9 9B-  B. )  -   X�9 9B X�9 9B 6 9 B - 9 9 B- 9 99 9B A- 9 99 9B A- 9 99 9B A- 9 99 9B A9 9B Xo�6 9	  X�- . - )  X�0  6 9-  - !B - 	  X�- 9 96 99	 9B  X	�9	 9B  X	�9	 9B  B AX6�- 	 X�- 9 96 99	 9B  X	�9 	 9B  X	�)   B AX�- 	 X�- 9 96 99	 9B  X	�9!	 9B  X	�9	 9B B A- 9 9'" BX��9 9B# X��6 9	  X�- . - )  X�0  6 9-  - !B - 	  X�- 9 96 99	 9B  X	�9	 9B  X	�9	 9B  B AXs�- 	 X�- 9 96 99	 9B  X	�9 	 9B  X	�9	 9B  B AXT�- 	 X�- 9 96 99	 9B  X	�9!	 9B  X	�)   B AX:�- 	 X�- 9 96 99	 9B  X	�9$	 9B  X	�9	 9B B AX�- 	 X�- 9 96 99	 9B  X	�9%	 9B  X	�9	 9B B A- 9 9'" BX�- 9 99 9B A- 9 9- B9	  X �- 9& 99& 9B A- 9' 99' 9B A 9(B  X�K   9)BK  �   ��&�'�)�(��get_weapon_infoget_player_weaponbody_yaw_freestanding_refbody_yaw_options_refoffset_5_refoffset_4_ref
5-WayDisabledoffset_3_refoffset_2_refoffset_1_refway_mode_refglobals3-Way Chimerayaw_modifier_refright_limit_refleft_limit_refinverter_refbody_yaw_refyaw_offset_refnormalize_yaw	mathyaw_offset_right_refyaw_offset_left_refmodifier_degree_refrandom_int
utilsjitter_randomize_refchoked_commandsinverterantiaim	rageyaw_base_refyaw_refgetoverridepitch_refanti_backstabextendedfreestandingget_local_playerentity ����� 
"{9 	  X�-  .  -  )  X�0   6 9B  X�K  - 8   X�- :- 9  B- 9B- 9B- 9 99B- 9	 99
B- 9 99B-  	  X�9:  X�9:6 99!9 B- 9 96 99	 		B A- 9 9)  B- 9 99B- 9 99B- 9 99B- 9 99B- 9 99B 9 B  X�K   9!BK  /�*�   �get_weapon_infoget_player_weaponbody_yaw_freestandingbody_yaw_freestanding_refright_limitright_limit_refleft_limitleft_limit_refbody_yaw_optionsbody_yaw_options_refbody_yawbody_yaw_refmodifier_degree_refyaw_offsetnormalize_yaw	mathyaw_offset_refrandomizerandom_int
utilsmodifier_degreeyawyaw_refyaw_baseyaw_base_ref
pitchoverridepitch_refanti_backstabextendedfreestandingget_local_playerentitychoked_commands � 
"{9 	  X�-  .  -  )  X�0   6 9B  X�K  - 8   X�- :- 9  B- 9B- 9B- 9 99B- 9	 99
B- 9 99B-  	  X�9:  X�9:6 99!9 B- 9 96 99	 		B A- 9 9)  B- 9 99B- 9 99B- 9 99B- 9 99B- 9 99B 9 B  X�K   9!BK  /�+�   �get_weapon_infoget_player_weaponbody_yaw_freestandingbody_yaw_freestanding_refright_limitright_limit_refleft_limitleft_limit_refbody_yaw_optionsbody_yaw_options_refbody_yawbody_yaw_refmodifier_degree_refyaw_offsetnormalize_yaw	mathyaw_offset_refrandomizerandom_int
utilsmodifier_degreeyawyaw_refyaw_baseyaw_base_ref
pitchoverridepitch_refanti_backstabextendedfreestandingget_local_playerentitychoked_commands � q9 	  X�-  .  -  )  X�0   6 9B  X�K  - 8   X�- :- 9  B- 9B- 9B- 9 99B- 9	 99
B- 9 99B- 9 99-  8B- 9 99B- 9 99:B- 9 99B- 9 99B- 9 99B- 9 99B- 9 99B 9B  X�K   9BK  /�,�*�   �get_weapon_infoget_player_weaponbody_yaw_freestandingbody_yaw_freestanding_refright_limitright_limit_refleft_limitleft_limit_refbody_yaw_optionsbody_yaw_options_refbody_yawbody_yaw_refmodifier_degreemodifier_degree_refyaw_modifieryaw_modifier_refyaw_offsetyaw_offset_refyawyaw_refyaw_baseyaw_base_ref
pitchoverridepitch_refanti_backstabextendedfreestandingget_local_playerentitychoked_commands � 	"}9 	  X�-  .  -  )  X�0   6 9B  X�K  - 8   X�- :- 9  B- 9B- 9B- 9 99B- 9	 99
B- 9 99B- 9 99B- 9 99B-  	  X�9:  X�9:6 99!9 B- 9 9 B- 9 99B- 9 99B- 9 99B- 9 99B- 9 99B 9 B  X�K   9!BK  /�-�+�   �get_weapon_infoget_player_weaponbody_yaw_freestandingbody_yaw_freestanding_refright_limitright_limit_refleft_limitleft_limit_refbody_yaw_optionsbody_yaw_options_refbody_yawbody_yaw_refmodifier_degree_refrandomizerandom_int
utilsmodifier_degreeyaw_modifieryaw_modifier_refyaw_offsetyaw_offset_refyawyaw_refyaw_baseyaw_base_ref
pitchoverridepitch_refanti_backstabextendedfreestandingget_local_playerentitychoked_commands �
 
)�9 	  X�-  .  -  )  X�0   6 9B  X�K  - 8   X�- :6 9B X
�6 99:$	  X�-  . - 9  B- 9	B- 9
B- 9 99B- 9 99B- 9 99B- 9 96 9B X�9 	 X�-   X�9:  X�9:  X�9B- 9 99B-  	  X�9:  X�9:6 99:!9: B9 	  X�6 9- !B9: X�U�6 99:!9	:		 		B 6 9- !B X�. - 9 9- B- 9 99B- 9 99 B- 9! 99"B- 9# 99$B- 9% 99&B 9'B  X�K   9(BK  /�.�+�2�   �3�get_weapon_infoget_player_weaponbody_yaw_freestandingbody_yaw_freestanding_refright_limitright_limit_refleft_limitleft_limit_refbody_yaw_optionsbody_yaw_options_refbody_yawbody_yaw_refmodifier_degree_refabs	mathrandomizerandom_int
utilsmodifier_degreeyaw_modifieryaw_modifier_ref
tableyaw_offset_refyawyaw_refyaw_baseyaw_base_ref
pitchoverridepitch_refanti_backstabextendedfreestandingtickcountglobalsnumberyaw_offset	typeget_local_playerentitychoked_commands � 
 2  9  B  X�K    9 B  X�K    9 B-   9 B)�  X�K  -   9 B6 96 9-  9 B 9	B#B A )  X�K  1 K  8�9�7�lengthdot	acosdeg	mathto	distget_originget_weapon_ownerget_weapon_index�   9 B.  1 6 B 99  9B A. 6 9+ + - B+  1  .  - L 8�7�9�:�get_entitiesentityunpackview_anglesanglesvectorget_eye_position� 	 	' 9 B6 B 99  9B A6 9    * B9  X�+ L 9 9B X� X�	 X�+ L + L get_classidentitytrace_line
utilsunpackview_anglesanglesvectorget_eye_position�����P��N  -   9   9 B A) X�1 K  <�;�get_origindistsqrM  1  .  6  9)� + - B1  -  L ;�<�=�get_entitiesentity� 	'  9  B9 =-   9 B6 96 9-  9 B 9B#B A -   9 B) X�)(  X�1 K  ?�@�>�distsqrlengthdot	acosdeg	mathtozget_origin�����  1   9 B. 6 B 99  9B A. 6 9)a + - B1  1  -  L >�?�@�A�get_entitiesentityunpackview_anglesanglesvectorget_eye_position�! '�9  	  X�-   .  - 9B- 9  B-  9B  X�- 9B  X�K  -  9B )   X�6   X�- 9B-  9B X��- 9    B - 8 9B  X�) - 9	   B- 9
 B-  9B  X�- 9 B- : 9B  X=�1 9   X�-   X�1 1 X�1  9B99	 9B+	 =	 -	  	 X
%�	 X	�-	  	 X
�  X	� X	
�-		 :		9		
	 9		B	 	 X	�+	 =	 	 X	�+	 =	 	 X	 �-	 9		
 B	 	 X
�-	 9			)
   B	+	 =	 -	 9		
   B	-
  
 X� 	 X
�1
  	 X
�1
 -

  
 X�+
 =
 -	  	 X
	�-	 9		
   B	 	 X
�+	 =	 -	  	 X
݂-	 9		
   B	 	 X
ւ+	 =	 Xӂ-  9B X��- 9    B - 9   B- 9
 B-  9B  X�- 9 B1 9   X�-   X�1 1 X�1  9B99	 9B+	 =	 -	  	 X
��	 X	�-	  	 X
�  X	� X	
�-		 :		9		
	 9		B	 	 X	�+	 =	 	 X	�+	 =	 	 X	 �-	 9		
 B	 	 X
�-	 9			)
   B	+	 =	 -	 9		
   B	-
  
 X� 	 X
�1
  	 X
�1
 -

  
 X�+
 =
 -	  	 X
	�-	 9		
   B	 	 X
�+	 =	 -	  	 X
S�-	 9		
   B	 	 X
L�+	 =	 XI�-  9B X��- 9    B - 9   B- 9
 B-  9B  X�- 9 B1 9   X�-   X�1 1 X�1  9B99	 9B+	 =	 -	  	 X
�	 X	�-	  	 X
�  X	� X	
�-		 :		9		
	 9		B	 	 X	�+	 =	 	 X	�+	 =	 	 X	 �-	 9		
 B	 	 X
�-	 9			)
   B	+	 =	 -	 9		
   B	-
  
 X� 	 X
�1
  	 X
�1
 -

  
 X�+
 =
 -	  	 X
	�-	 9		
   B	 	 X
�+	 =	 -	  	 X
Ɂ-	 9		
   B	 	 X
+	 =	 X��-  9B X��- 9    B - 9   B- 9
 B-  9B  X�- 9 B1 9   X�-   X�1 1 X�1  9B99	 9B+	 =	 -	  	 X
��	 X	�-	  	 X
�  X	� X	
�-		 :		9		
	 9		B	 	 X	�+	 =	 	 X	�+	 =	 	 X	 �-	 9		
 B	 	 X
�-	 9			)
   B	+	 =	 -	 9		
   B	-
  
 X� 	 X
�1
  	 X
�1
 -

  
 X�+
 =
 -	  	 X
	�-	 9		
   B	 	 X
�+	 =	 -	  	 X
?�-	 9		
   B	 	 X
8�+	 =	 X5�-  9B X��- 9    B - 9   B- 9
 B-  9B  X�- 9 B1 9   X�-   X�1 1 X�1  9B99	 9B+	 =	 -	  	 X
��	 X	�-	  	 X
�  X	� X	
�-		 :		9		
	 9		B	 	 X	�+	 =	 	 X	�+	 =	 	 X	 �-	 9		
 B	 	 X
�-	 9			)
   B	+	 =	 -	 9		
   B	-
  
 X� 	 X
�1
  	 X
�1
 -

  
 X�+
 =
 -	  	 X
	�-	 9		
   B	 	 X
�+	 =	 -	  	 X
��-	 9		
   B	 	 X
��+	 =	 X��-  9B X��- 9    B - 9    B- 9
 B-  9B  X�- 9 B1 9   X�-   X�1 1 X�1  9B99	 9B+	 =	 -	  	 X
s�	 X	�-	  	 X
�  X	� X	
�-		 :		9		
	 9		B	 	 X	�+	 =	 	 X	�+	 =	 	 X	 �-	 9		
 B	 	 X
�-	 9			)
   B	+	 =	 -	 9		
   B	-
  
 X� 	 X
�1
  	 X
�1
 -

  
 X�+
 =
 -	  	 X
	�-	 9		
   B	 	 X
�+	 =	 -	  	 X
+�-	 9		
   B	 	 X
$�+	 =	 X!�- 9    B- 9
- 9!B-  9B  X�- 9- 9!B- 9"- 9!B- 9#B- 9$B- 9%B-  9B  X�- 9&  BK  7�  ���	��5�4��6��automatic_exploitrun_hiddenanti_backstabextendedfreestandinglast_state_idhandle_states6Offensive Jitterhandle_states5Aggressive Jitterhandle_states43-Way Chimerahandle_states3M4NG4Lhandle_states2get_state_id2M4NG4L v2is_trying_to_interactcan_pick_up_a_weaponcan_rescuecan_defuseignore_bombsite_refget_classidm_iTeamNumm_bInBombZoneget_originin_useno_body_yawmanual_yaw_basehandle_statesget_state_idConditionaldisable_fake_lagoverride_disable_fl.disable_anti_aim_on_warmup_on_create_movegetforce_lc
resetchoked_commands D�� E� �
4   .   -  9   ' B -  9  ' ' B -  9  ' ' ' B 5  6 9' ' '	 '
 B= 6 9' ' '	 ' B= 6 9' ' '	 ' ' B= 6 9' ' '	 ' ' B= 6 9' ' '	 ' ' B= 6 9' ' '	 ' B= 6 9' ' '	 ' ' B= 6 9' ' '	 ' B= 6 9' ' '	 ' ' B= 6 9' ' '	 ' ' B= 6 9' ' '	 ' ' B= 6 9' ' '	 ' '  B=! 6 9' ' '	 ' '" B=# 6 9' ' '	 '" B=$ 6 9' ' '	 '" '% B=& 6 9' ' '	 '" '' B=( 6 9' ' '	 ') B=* 6 9' ' '	 ') '+ B=, 6 9' ' '	 ') '- B=. 6 9' ' '/ '0 B=1 )  62 93 9435 B)  )  6 9' '6 ' '7 B6 9' '6 ' '	8 B-  3: =96 9' ' '	; '
< B6 9'= '	 '
> '? B6 9'	 '
 '; '@ B4	  -
  3B =A
-
  3D =C
5
E - 9'F ' 'G B- 9H'F 'I 'J 'K +  5L B- 9M6 9N- 3O =M- 9'F ' '; B- 9P'F 'I '; 'Q 3R B3S - 9H'F 'I 'J 'T  
 B+  - 9H'F 'I 'J 'U +  5V B - 9W'F 'I 'J 'X 'Y B-  3[ =Z2 �4  6\ 
 BX� '] &- 9'F '  B4  <83^ 4  - 9H'F 'I  '
   5!_ B=- 9H'F 'I  '   5!` B=- 9a'F 'I  ' '  ! 5"b B=- 9d'F 'I  ' ' e ! )"L�)#� )$  B
=c- 9d'F 'I  ' ' g ! )"L�)#� )$  B
=f- 9H'F 'I  '   5!h B=- 9W'F 'I  ' ' j 3!k B=i- 9d'F 'I  ' '  3!l )"L�)#� )$  B
=- 9d'F 'I  ' ' n 3!o )"  )#� )$  B
=m- 9d'F 'I  ' ' q 3!r )"L�)#� )$  B
=p- 9d'F 'I  ' ' t 3!u )"L�)#� )$  B
=s- 9d'F 'I  ' ' w 3!x )"L�)#� )$  B
=v- 9d'F 'I  ' ' z 3!{ )"L�)#� )$  B
=y- 9d'F 'I  ' ' } 3!~ )"L�)#� )$  B
=|- 9'F 'I  '   B=- 9W'F 'I  ' '  ! B=- 9d'F 'I  ' '  ! )"  )#< B	=- 9d'F 'I  ' '  ! )"  )#< B	=- 9�'F 'I  ' '   ! 5"� B=!- 9a'F 'I  ' ' " ! 5"� B=#� X�- 9'F 'I 'J '�   &   B<	� X	�- 9'F 'I 'J '� 3 � B=�2 �2 �ER�~+  - 9'F 'I '� '" B - 9W'F 'I '� '" '% B- 9W'F 'I '� '" '' B- 9W'F 'I '� '" '� B-  3� =�2 �+  - 9'F 'I '� '� B -  3� =�- 9'F 'I '� ' B-  3� =�- 9'F 'I '� '� B- 9a'F 'I '� '� '
 +  5� B- 9a'F 'I '� '� ' +  5� B)  )  + + +  - 9�'F 'I ' � '!� +"  5#� B -  3� =�+  - 9�'F ' I '!� '"� +#  5$� B 6 9' ' 6 '! '"7 B6 9'  '!6 '" '#8 B-   3!� =!� 2 �, -  9  '!F '"I '#� '$� B   -  9 � '!F '"I '#� '$� '%� +&  -' 9'�'B -! 9!W!'"F '#I '$� '%� '&� B!"! 9!�!3#� +$ B!-! 9!d!'"F '#I '$� '%� '&� 3'� )(  )) B!	+"  -# 9#W#'$F '%I '&� ''� '(� B#$# 9#�#3%� +& B#+# )$  6% 9%%'& ''6 '( ')7 B%6& 9&&'' '(6 ') '*8 B&+' +( 6) 9))'* '+6 ', '-7 '.� B)6* 9**'+ ',6 '- '.8 '/  B*-+  3,� =,�+2  �+   -! 9!!'"F '#I '$� '%� B!"! 9!�!3#� +$ B!+! -" 9"W"'#F '$I '%� '&� ''� B"#" 9"�"3$� +% B"6" 9""'# '$6 '% '&7 B"6# 9##'$ '%6 '& ''7 '(� B#6$ 9$$'% '&6 '' '(8 B$6% 9%%'& ''6 '( ')8 '*  B%-&  3'� ='�&2! �-!  3"� ="�!+!  -" 9""'#F '$I '%� '&) B"!" -" 9"d"'#F '$I '%� '&) ''+ +(  ))L�)*� B"	-# 9#d#'$F '%I '&� '') '(- +)  )*  )+Z B#	-$  3%� =%�$2" �6" 9""'# '$ '%	 '& ''� B"-#  3$� =$�#3#� )$  6% 9%%'& ''6 '( ')8 B%)&  )'  )(  ))  -*  3+� =+�*4* 5+� 5,� =,�+5,� =,�+>+*5+� 5,� =,�+5,� =,�+>+*5+� 5,� =,�+5,� =,�+>+*5+� 5,� =,�+5,� =,�+>+*5+� 5,� =,�+5,� =,�+>+*5+� 5,� =,�+5,� =,�+>+*5+� 5,� =,�+5,� =,�+>+*5+� 5,� =,�+5,� =,�+>+*4+ 5,� 5-� =-�,5-� =-�,>,+5,� 5-� =-�,5-� =-�,>,+5,� 5-� =-�,5-� =-�,>,+5,� 5-� =-�,5-� =-�,>,+5,� 5-� =-�,5-� =-�,>,+5,� 5-� =-�,5-� =-�,>,+5,� 5-� =-�,5-� =-�,>,+5,� 5-� =-�,5-� =-�,>,+4, 5-� 5.� =.�-5.� =.�-5.� =.�->-,5-� 5.� =.�-5.� =.�-5.� =.�->-,5-� 5.� =.�-5.� =.�-5.� =.�->-,5-� 5.� =.�-5.� =.�-4.  =.�->-,5-� 5.� =.�-5.� =.�-5. =.�->-,5-5.=.�-5.=.�-5.=.�->-,5-5.=.�-5.=.�-5.=.�->-,5-	5.
=.�-5.=.�-5.=.�->-,4- 5.5/=/�.5/=/�.>.-5.5/=/�.5/=/�.>.-5.5/=/�.5/=/�.>.-5.5/=/�.5/=/�.>.-5.5/=/�.5/=/�.>.-5.5/=/�.5/=/�.>.-5.5/ =/�.5/!=/�.>.-5."5/#=/�.5/$=/�.>.-4. 5/%50&=0�/50'=0�/50('1)<01/50*=0�/>/.5/+50,=0�/50-=0�/50.'1)<01/50/=0�/>/.5/0501=0�/502=0�/503'1)<01/504=0�/>/.5/5506=0�/507=0�/508'1)<01/509=0�/>/.5/:50;=0�/50<=0�/50='1)<01/50>=0�/>/.5/?50@=0�/50A=0�/50B'1)<01/50C=0�/>/.5/D50E=0�/50F=0�/50G'1)<01/50H=0�/>/.5/I50J=0�/50K'1)<01/50L=0�/>/.)/  )0  )1  -2  '3M34N<432-2  '3O34P<432-2  '3Q34R<432-2  '3S34T<432+2 )3  -4  '5U36V<654+4 +5 +6 +7 ,89 3:W-;  '<X3=Y<=<;-;  '<Z3=[<=<;+; +<  3=\->  '?]3@^<@?>+> ,?@ 3A_-B  'C`3Da<DCB27 �+7 )8  69 999': '; '<; '=bB9-:  ';c3<d<<;:2  �K  
����� on_createmoveLeg Movement can_rescue  can_defuse  is_trying_to_interact can_pick_up_a_weapon  handle_states6 handle_states5 handle_states4 handle_states3 handle_states2  Avoid Overlap  Z-     body_yawyaw_modifierDisabledyaw_baseLocal ViewyawDisabled
pitchDisabledyaw_offset on_shotDefaultbody_yaw_freestandingPeek Fakelby_modeDisabledright_limit<left_limit<  Jitter  #  ��������  22 
body_yawyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downon_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit  Jitter  !  ��������  ,, 
body_yawyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downon_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limit<left_limit<  Jitter  !  ��������  11 
body_yawyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downon_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit  Jitter    ��������  ## 
body_yawyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downon_shotDefaultbody_yaw_freestandingPeek Fakelby_modeDisabledright_limit<left_limit<  Jitter  
  ��������  (( 
body_yawyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downon_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limit<left_limit<  Jitter    ��������  ## 
body_yawyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downon_shotDefaultbody_yaw_freestandingPeek Fakelby_modeDisabledright_limit<left_limit<  Jitterrandomize  Z-  ��������  � 
body_yawyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downon_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit0  Avoid Overlap     body_yawrandomize yaw_modifierDisabledyaw_baseLocal ViewyawDisabled
pitchDisabledyaw_offset on_shotOppositebody_yaw_freestandingPeek Fakelby_modeDisabledright_limit<left_limit<  Jitter  �������� body_yawrandomizeyaw_modifierCenteryaw_baseAt TargetyawBackward
pitch	Downyaw_offseton_shotOppositebody_yaw_freestandingOfflby_modeDisabledright_limit<left_limit<  Jitter  �������� body_yawrandomizeyaw_modifierCenteryaw_baseAt TargetyawBackward
pitch	Downyaw_offset on_shotOppositebody_yaw_freestandingOfflby_modeDisabledright_limit<left_limit<  Jitter  �������� body_yawrandomizeyaw_modifierCenteryaw_baseAt TargetyawBackward
pitch	Downyaw_offset	on_shotOppositebody_yaw_freestandingOfflby_modeDisabledright_limit<left_limit<  Jitter  �������� body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offset-on_shotOppositebody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit  Jitter  �������� body_yawrandomizeyaw_modifierCenteryaw_baseAt TargetyawBackward
pitch	Downyaw_offset on_shotOppositebody_yaw_freestandingOfflby_modeDisabledright_limit<left_limit<  Jitter  �������� body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offset,on_shotOppositebody_yaw_freestandingOfflby_modeDisabledright_limit<left_limit<  Jitter  �������� body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offseton_shotOppositebody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit0  Avoid Overlap          body_yawrandomize yaw_modifierDisabledyaw_baseLocal ViewyawDisabled
pitchDisabledon_shotDefaultbody_yaw_freestandingPeek Fakelby_modeDisabledright_limit<left_limit<    ��������  )�������� body_yawrandomize yaw_modifierDisabledyaw_baseAt TargetyawBackward
pitch	Downon_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit        )�������� body_yawrandomize yaw_modifierDisabledyaw_baseAt TargetyawBackward
pitch	Downon_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limit(left_limit(        0����  body_yawrandomize yaw_modifierDisabledyaw_baseAt TargetyawBackward
pitch	Downon_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit      )�������� body_yawrandomize yaw_modifierDisabledyaw_baseAt TargetyawBackward
pitch	Downon_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit        2�������� body_yawrandomize yaw_modifierDisabledyaw_baseAt TargetyawBackward
pitch	Downon_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limit2left_limit8        )�������� body_yawrandomize yaw_modifierDisabledyaw_baseAt TargetyawBackward
pitch	Downon_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limit#left_limit  Jitter  ��������yaw_offset  ���� Z body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downon_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit0  Avoid Overlap     body_yawrandomizeyaw_modifierDisabledyaw_baseLocal ViewyawDisabled
pitchDisabledyaw_offset on_shotDefaultbody_yaw_freestandingPeek Fakelby_modeDisabledright_limit<left_limit<    ����  body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offset$on_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit    ����  body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offset)on_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit    ����  body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offset0on_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit  Jitter  ����  body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offseton_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit  Jitter  �������� body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offset-on_shotOppositebody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit*  JitterRandomize Jitter  ����  body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offseton_shotOppositebody_yaw_freestandingOfflby_modeDisabledright_limit(left_limit(  Jitter  �������� body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offseton_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit0  Avoid Overlap     body_yawrandomizeyaw_modifierDisabledyaw_baseLocal ViewyawDisabled
pitchDisabledyaw_offset on_shotDefaultbody_yaw_freestandingPeek Fakelby_modeDisabledright_limit<left_limit<    )  body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offset����on_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit    )  body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offset����on_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit    )  body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offset����on_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit  Jitter  )  body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offset����on_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit  JitterRandomize Jitter  2  body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offset����on_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit0  JitterRandomize Jitter  )  body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offset����on_shotOppositebody_yaw_freestandingOfflby_modeDisabledright_limit(left_limit$body_yaw_options  Jittermodifier_degree  �������� body_yawrandomizeyaw_modifierOffsetyaw_baseAt TargetyawBackward
pitch	Downyaw_offseton_shotDefaultbody_yaw_freestandingOfflby_modeDisabledright_limitleft_limit0 handle_states  run_hiddenHidden extended get_name_by_state_id force_lc Disable if Pin Pulled Force Break LC in Air automatic_exploitLag Options In Air Only 
Delay set_callbackAuto Delayweapon_typesWeaponsAutomatic Teleport disable_fake_lag  Double TapHide ShotsStandingDT Heavy PistolsDT KnifeDT High FirerateDisable Fake Lag no_body_yaw  Manual Yaw BaseFreestandingStatic Body Yaw Onselectable  	None	SpinOppositeSidewaysRandom  	None	DownUpRandomPAKETAHidden Customization anti_backstab .disable_anti_aim_on_warmup_on_create_moveDisable during Warmup freestandingBetter Freestanding
other Bombsite Fixignore_bombsite_refIn UseOverride Default  OffPeek FakePeek Real  Avoid OverlapJitterRandomize JitterAnti Bruteforcesub_selectableswitch Offset #5offset_5_ref Offset #4offset_4_ref Offset #3offset_3_ref Offset #2offset_2_ref Offset #1offset_1_ref Randomizejitter_randomize_ref  Manual Modeway_mode_ref
  DisabledCenterOffsetRandom	Spin
3-Way
5-Way3-Way Chimera5-Way ChimeraOffset Rightyaw_offset_right_refOffset Leftsub_slideryaw_offset_left_ref  Local ViewAt Targetsub_combo  DisabledBackwardStatic  Disabled	DownFake DownFake Up  Anglesipairs manual_yaw_baseDisable Yaw Modififersmanual yawsub_switch  Disabled	Left
RightForwardManual YawCurrent State  4Please note that this preset is already set up.
label get_alphaoverride  DisabledAggressive JitterConditional	Modeanti aim settings	main
combo
Otheranti aim
  DefaultStandingMovingSlow WalkingCrouchingIn AirIn Air & CrouchingIn UseNo Exploits get_state_id2 get_state_idSlow WalkBunny HopMovementMiscellaneousFake Duck	Misc 
resetHide ShotsDouble TapRagebot setcreatemove_runeventsenable_fake_lag_refEnabledFake Lagextended_roll_refExtended Rollextended_pitch_refExtended Pitchextended_angles_refExtended Anglesbody_freestanding_refBody Freestandingdisable_yaw_modifiers_refDisable Yaw Modifiersfreestanding_refbody_yaw_freestanding_refFreestandingbody_yaw_options_refOptionsright_limit_refRight Limitleft_limit_refLeft Limitinverter_refInverterbody_yaw_refBody Yawmodifier_degree_refyaw_modifier_refYaw Modifieravoid_backstab_refAvoid Backstabyaw_offset_refOffsetyaw_base_ref	Baseyaw_refYawpitch_ref  
PitchAnglesAimbot	finduiAnti Aim Settings
group	Mainsub_tabAnti Aimtab  -  9  = K   fov-   -   9     9  D   getenabled_ref!    9  B.  K   �get\  -     9   B    X �-     9   B .  X �-     9  - B K  ��setget&   -     9   B K  	�override&   -     9   B K  	�override�  	�-   9 B   X�K  -  9B -  9B -  9B - 9- - !" . - - !" . - - !" . 6 9B	  9 B  X	�K  
 9	B	-
  
 9
 
' B
9
  
 X	�6	 9
) -  B. X�6	 9)  - !B. -	  9B 9B 
 X	�-
 9- )  ) ) B  X�-
 9- )  ) ) B- - 6	 99- "B6	 99- "- " B6	 99- "B6	 99- "- " B-  9B X1�-  9B X� 9B  X�9 9B  X �  X�6	 9 6	 96	 9- 9  X�)Z B  X�) B-  #B       6    - "B6    )  B-  9) B  X�6 96 9 9B6 9 9B    B-  9) B  X�6 96 99 B6 99 B    B-  9) B  X�6 96 9!9B6 9!9B    B-  9) B  X�6 96 99!B6 99!B    BK  	����  ����� � ��vectorgradient
colorfovradtanget_spreadm_fAccuracyPenaltyget_inaccuracyInaccuracyDisabledxy	ceilcirc_incirc_outunpackmaxmin	mathm_bIsScopedRemove Allget_classidget_player_weaponscreen_sizerenderframetimegetoverride����������-   -   9     9  D   getenabled_ref!    9  B.  K  �get!    9  B.  K  �get!    9  B.  K  �get!    9  B.  K  	�get    -   L  �!    9  B.  K  
�get   -     9   D  �get� j6  9B  X�K  6  99 + B6  99 + B X� X�K  9 )  X�9 )  X�9   X�) = 6 9.  -  9B  X�-   X;�6 9	+  6
 - 9 8BH	� 9
 B6 - BX	�9 9 B X�  ER�F	R	�  X� 9B  X� 9B 9 =- -  5 =-	  =	9	 =	9	 =	<4  . K  ������dmgdmg_health	time  zget_originis_dormant	distoriginipairsget_hitbox_position
pairs	huge	mathrealtimeglobalshitgroupattackeruseridgetget_local_playerentityP� 	(-   9 B  X�-   X�K  6 9B  X�K  6 9 9 + B X�K  - -   5 6 9=6 9 9	 9
 B=<K  ���originzyxvector  realtimeglobalsuseridget_local_playerentityget�   -   9 B  X�K  6 9B  X�K  6 9 9 + B6 9 9 + B X� X�K  6 9. K  ��realtimeglobalsattackeruseridget_local_playerentityget�  �6  )  9 B6 96 9 !9 !B6 9 	!	9	 
!	
	B B6 96 9 !9  B6 9 	!	9	 
 	
	B B6 96 9  9 !B6 9 	 	9	 
!	
	B B6 96 9  9  B6 9 	 	9	 
 	
	B B6 96 9 !9 !B6 9 !9	 !		B B6 96 9 !9  B6 9 !9	  		B B6 96 9  9 !B6 9  9	 !		B B6 96 9  9  B6 9  9	  		B BK  yxvector	linerendera
color����� �   X�K    9  B  X�K  6 9-   9B  X&�- !*   X!�-  9B6 9)  6 9) B A- 9 )  ) )	 B9"=6	 9
B-  )	 
 B-   X�-   X~�-  9B-  9B6 -	 BXp�9	
	 9		B	 	 X
�X	i�9
!

!
 )   X�6 9-	  BX	\�6 9)  6 9) !
B A- 9 )  ) ) B 9B9"=-   X�- 	 )  B9 9B9
 =-
  9B9	 X
�6 - 9- 9- 99B 96 9)  6 9)d 9 9 B AB"= 9B  X�X	�-   X�6	 9)   ' 9BER�K  ��� ������	�
�dmgc	text	distbgr
colorhitgroupz
cloneremove
table	timeto_screenoriginipairsscreen_sizerenderacubic_outminmax	mathgetrealtimeglobalsis_alive��̙������������x��������&   0   4   .  4   .  K  ��� -   -   9     9  D   getenabled_ref+    9  B.  -  . K  ��get3   	-   B    X�-    9   B L  ��get?   
-   B    X�-    9   ' B L  �	�Chimeraget8      X�' L '   &L C5CAD0FFFFFF*   9  9   X�+ X�+ L id�^  9  ' 3 B X�X	�6 '  &B X�2  �K  -   9' B  X-�-  . -  X�-  X�  9	 B  X�- 
 X�  9 B  X	�  9  ' ' B 9	B  - -   5 = - =<6 9- 3 B-  9B-   9' B  X�-  94  B  9  ' ' B6  BK  	������print_dev%x%x%x%x%x%x%x%xConsole Paneloverride 	sort
tableid	text offset����	time����pct    
lower
Lower
upper
Upper
SmallChimeraget%BC8383chimera 888888· C5CAD0print_raw (%x%x%x%x%x%x)%x%x	gsub� �-   9 ' B  X�K  6 9B  X�K  9 9  X�K  6 9  + B6 9  + B X�K  - 9 8  X�' - 9 8  X�'	 4 -	 >	-	 >	-	 >	-	 >	-	 >	9	 8		 	 X
�-	 
	 9	
	- *  B	6
 9

9 )  )d B


6 99 )  )d B-  9
- 
 B-  9
-  B6 9'  -  9B 9B 9) )  B	 X�' 	 9	B &  X�'  9B9  9B9 B
- 9 + BK  �����  log FFFFFFFFin the subget_nameto_hex]FFFFFFFF%s %s%s%s FFFFFFFFfor %s%d damage FFFFFFFF(%s%d health remainingFFFFFFFF)formatstringhealthdmg_health
clamp	math	lerpHitweaponGENERIChitgroupattackeruseridget_local_playerentityDamage Dealtget������������� y-  9  9B  X�K  -  9B  X�K  -  9' B  X�K  -  9B9   X0�- 9 8  X�9 6 9'  9  9	B - 9	
 8		 9
    9  9 B- 9 + B- 96 9'  - 9	 8	  X	�9 B+ BX*�6 99 )  )d B 6 9'  9  9	B 9) )	  B - 9	 8		 9
  9  - 9
 8 9  9 B- 9 + BK   �����  hitgroupsub�Hit %s%sFFFFFFFF's %s%sFFFFFFFF for %s%dFFFFFFFF(%s%dFFFFFFFF) FFFFFFFFaimed=%s%sFFFFFFFF(%s%d%%FFFFFFFF) (%s%d FFFFFFFFticks)damage
clamp	mathMissed shot due to %s%slogbacktrackwanted_damagehitchancewanted_hitgroupget_nametarget�Missed shot at %s%sFFFFFFFF's %s%sFFFFFFFF(%s%d%%FFFFFFFF) due to %s%s FFFFFFFF(dmg: %s%dFFFFFFFF | history: %s%dFFFFFFFF)formatstring
stateto_hexAimbotgetenabled_ref��������� 
 L   X�K     X�K  -    X�K  -    X�K  -   9 ' B  X�K  6 9 9 + B  X�K    X�K   9B  X�K  9  X�K  6 9'	 -  9
B 9B 9) )  B-  9
B6 99 '	 B  X�9 B- 9 BK  ���  log^.+_(.*)$
matchsubget_nameto_hex %s%s FFFFFFFFbought %s%sformatstringunknownweaponis_enemyuseridentityPurchasesget�   �-   9   6 9- 6 9B6 9- "9- "B-  9'	 B  X	�- - 86 9
-  '	 B9 6 96 )	  9
B6	 9
9- " B	 A  	 )
  6  BX�9	 X�=
9
 X	�6 99 	+  
 B=X
�9
 X�6 99!	
 B=+ 9	 X �8  X�99!*  X�6 99 )  ) B=X�6 99 )  ) B=9	 X�=X�9!-	  X	�6 99!)  ) B=+ 9	 X�6 9  BX��9-  X�6 9  BX��6 9
-  9B  X	�-
 99)  ) ) B  X�-
 99)  ) ) B9"=6 999" B-  X	�6 99!9B X
�-  X�6 99!9B -  9B  X1�-  96 B* B9"9=6 96 )  9B 6 99B  )2 )  B9	=6 96 )  9B 6 99B  B6 9  + B6 9-  6 )� 
B 9B6 9B

ER6 9BK    ���	������ �
��pop_clip_rect	rectshadowa
color	lerpRight-AlignedCenteredquart_outquart_in	textremove
tablepct	time
clamp	mathoffsetipairspush_clip_rectSample textmeasure_textChimeragetyxvectorscreen_sizerenderrealtimeglobalsframetime�������
�������� ��̙������̙�����-   -   9     9  D   getenabled_refK   -   9     9  B    X�-    9  B L   �getenabled_ref�  )"6  96 )	  )
  B6	 )
  B	6
 )  )  )  )x B
 A6  96 )	 
 

B6	 )
   !B	6
     )x B
 AK  
colorvector	rectrender N -  -    5  = = X�)��=<K  �pct	textclr  �  9  -   X�- . - . - . -  . 6 9' -  - - - - B. 9  .  K  
������%d-%d-%d-%d-%dformatstringchoked_commands� .6  9B  X�K  996  99 B  X�K  99 9	 *
  B	 9	
 B
 9		 B		 X
�'

 X�'
 . 
 6
 9

.
 6
  9

9 + B
.
 K  ���useridcurtimeglobalsBAdistsqr	lerpm_vecMaxsm_vecMins	sitegetm_bombsiteCenterBm_bombsiteCenterAget_player_resourceentity����    1   1  K  ��J   *  *  )   X	�" ! " X�"!   L  ����� 9    X�9   X
�9   X�9   X�-   .  X�-  . K  !�"�player deathunregistered shot
death
state   0   0  K  !�"� � e9    X�K  9 9 	  X�' X�' -  !)   XT�- 96 )� )� )� )	� B6 9'	  -	  !		B A-  9
B 9  9 B A)�6 9"	


"

#	
			 B"6 9	 )
  B - 	 -
 B -   X	�)  X�-  X�- 96	 )
� )� )i )� B	6
 9

'  B
 AX
�- 96	 )
� )  )2 )� B	'
 BK  � � ���
FATAL-%d HPmaxexp	mathget_origin	distget_eye_position%s - %.1fsformatstring
colorindicatorBAm_nBombSitem_flC4Blowm_bBombDefused ����� H�6   9  B 6 96 9B  X�2 ΂-   9B )   X 9B-   9' B  X�  X
�- 9	6
 )� )� )� )	� B- B-   9' B  X�-  9B  X
�- 9	6
 )� )� )� )	� B' B-   9' B  X�  X�6 6 9B A X�9		 X	�9	 	 X
�-	 9			6

 )� )� )� )� B
' B	X�ER�-   9' B  X�  X�- - -  # X�)  - 9	6
 )� )� )	� )
� B6 9' -	 -
  B A- - B  X�-  9B-   9' B  XZ�)   XW�  XU�- B
  XQ�-	  )  B-	  )	 B -
  )	  B-
 	 )
 B6	 9		6
 9

! * B
* B	#		6
 9

	 )  ) B
	
 +
  * 	 X�6
 )� )� )T )� B 96
 ){ )� ) )� B	B
 X�6
 )� )� )� )� B 96
 )� )� )T )� B	B
 - 9	
 ' B-   9'  B  X�- - B  X�-  9B  X
�  X�- 9	6
 )� )� B'! B-   9'" B  X �- - B  X�-  9B  X�  X�- - B  X�-  9B  X�- 9	6
 )� )� B'# B-   9'$ B  X�- - B  X�-  9B% X
�  X�- 9	6
 )� )� B'& B-   9'' B  X�- - B  X�-  9B% X
�  X�- 9	6
 )� )� B'( B-   9') B  X�- - B  X�-  9B  X
�  X�- 9	6
 )� )� B'* B-   9'+ B  X3�6 9,)� B:  X,�9-
  X)�9.6 9!)   X�)  X�)  )� )	  9
.6 9!

9/6 9!
 X
�)
� )  )	   
 -
   	 6  9B90B
-   9'1 B  X*�-   X�- !- #)   X �)  X�6 92B93 X�- 9	6
 )	� )
� )i )� B'	4 -
 &	
	
 BX	�95966 9,'7 +	 3
8 B2 �-   9'9 B  X&�- - B  X�-  9B  X�  X�6
 )� )  )2 )	� B6: 9; 9B	 X�6
 )� )� )	� )
� B - 9	 '< B6= )
 90 	B)  6 - BX
��6  9>- '? 9@B90
90=06 9A9BB6  9C6= 9B90 B6= 9B 90 90 B6
 )  )  )  )  B6
 )  )  )  )3 B6
 )  )  )  )  B6
 )  )  )  )3 B A6  9C6= 9B 90 B6= 9B 90 90 B6
 )  )  )  )3 B6
 )  )  )  )  B6
 )  )  )  )3 B6
 )  )  )  )  B A6  9@- 6= 9B90  B9D'E 9@B9F X3�)
 6  9G6= 9B9B  90 90 B6
 )  )� B )  ) ) B6  9G6= 9B9B  90 90 B6
 )� )� B)  9F) B90!E
R
R2 �4  . 2  �K  K  �  �#�"�!� �����$������������	�circle_outlinepctdclrgradientx
floor	textmeasure_textvectorDTexploit	rageDouble Tap CPlantedC4m_iHealthm_ArmorValueBombsite m_bBombPlantedget_game_rulesBomb Infoym_flC4Blowm_flDefuseCountDownm_hBombDefuserget_entitiesDefusingFSFreestanding	BODYBody Aim	SAFE
ForceSafe Points	OSAAHide Shots	DUCKFake Duck	PING	lerp
clampmaxmin	mathFake Latency%d / %d (%d%%)formatstringAimbot StatsMDactiveMin. Damage	nameget_bindsuiipairsMinimum DamageDADormant Aimbot
colorindicatorFake Lagis_alivegetget_local_playerentitycurtimeglobalsscreen_sizerender�������������������̙����������̙���������«��ܞ���������K   -   9     9  B    X�-    9  B L   �getenabled_ref!    9  B.  K  �get�  6  9B	   X�' L X�	  X�' L 6 9' 9 "D y	%dpxformatstring	Max.	Min.screen_sizerender�������������/   9  B .  K  �get���������  6  9B6 9' 9 6 9  )  )d *	 *
 B"D map	mathy	%dpxformatstringscreen_sizerender������̙�����̙�����h 6  9  9 B )  ) * * B.  K  	�getmap	math����������̙�����̙�����!    9  B.  K  �get!    9  B.  K  �get!    9  B.  K  �get�  26   9  	   X -�4   .   6  9  B    X�K    9 B-  5	 6 9 9B=
4 - >- >- >=6 96 9 9B9!B)    X�+ X�+ ==K  ����	sideeye_yawnormalize_yaw	mathclryaw  get_rotationantiaim	ragereal_rotationget_anim_stateget_local_playerentitychoked_commandsglobals � #�   X�K    9  B  X�K  6 9B96 9B 6 -  BHo�6
 9

9	B
6	 B 9
)  6 9!
B A 96	 )  )  ) B A9- "6 9 9- " !B" "!"  " " " " "!) 9	: 9B9	: 9B9	: 9B6 99	  X� X�     B6 99	  X� X�     B6 9       ! " B	FR�K  �	��poly_line	side	poly
cloneclrmax
crossanglesvectoryawnormalize_yaw	math
pairsscreen_sizeycamera_anglesrenderis_alive������̙�����͙������������������K   -   9     9  B    X�-    9  B L   �getenabled_ref�  -  5  == X�)��= X�) == < K  �
indexanimation_pct	time	textprev_text cur_size_x����pct size_x����pos����Y   9  B.  -   9B. - -  9 =K  ��a
cloneget����!    9  B.  K  �get�  
>�-   9   6 96 9 B)  ) ) B -  9B9" =- 9' 6	 9
'  9B A) ) B- 9  XN�6 9B 9B6 9)� B:  X�9  X�  X�- 9' ' 6 99	6
 9

!	
	)
  9)  ) B)	 BX*�  X� 9B	 X�9  X�- 9' ' 6 99	6
 9

!	
	)
  ) )  ) B )	 BX�- 9' - - 98  X�' ) )	 B6 9 9 B)  - 9!6" B  X�9#9$ 9%B6 9 )	  
 )  ) B  X�)  )   X� -  9& )  ) )	 B'' )   X�'( 	  X�') 6* )� )	@ )
@ )� B 9+6	* )
� )� )� )� B	
 B 9B- 	 9 B  X	�- 9'	, 6
	 9


'-   B
 ) B- 	 9 B  X	�- 9'	, 6
	 9


'.   B
 ) B- 9/	 9 B  X	�- 9'	, 6
	 9


'0   B
6 9 9 B) B)   X'�'1 6* )	 )
� )� B	 9B - 	 9 B  X	�- 9'	, 6
	 9


'2  B
) ) BX�- 9'	, 6
	 9


'3  B
) ) B64 6	5 9	6	B	 A X�978 X�99  X�- 9': '; ) ) BX�ER�-	 	 9 B  X	�- 9'	< '
= ) ) BK   �   � �� �FFFFFF88DORMANTdormantDMGdmgactiveMin. Damage	nameget_bindsuiipairsHIDE %sACTIVEDT %sACTIVEACTIVEIDEAL TICK %s%sideal_tick_refDT %s%sHIDE %s%sexploits	lerp
color
READYCHARGINGWAITINGcubic_outunpackno_entrycommandlocal_playerget_snapshotgetexploit	rage- DEFAULT -m_fArmedTime- PLANTING -m_bStartedArmingget_classidm_flDefuseLengthcurtimem_flDefuseCountDownmap- DEFUSING -
statem_bIsDefusingget_entitiesget_player_weaponget_local_playerentitylast_state_idto_hexCHIMERA %sYAWformatstringwatermarkindicator2a
clonerealtimeglobalsabs	mathlinear����D,   9  9   X�+ X�+ L 	time� #2�6   9  B    X�2 ��  9 B  X�2 ��-  B6 9B6 9 6 99=9	=	-  9
B  X�- - B  X�-  9
B	 X�' 6 9)  6	 B	'
  B6  9B  X�9  X�+ -  9
B X�  X�6 9)	  6
 9

) - !B
 A. X%�6 9)	  6
 9

) -  B
 A. X� X�6 9)	  6
 9

) - !B
 A. X�6 9)	  6
 9

) -  B
 A. - 9-	 )
  ) ) B6	 -
 B	H�- 8  X�9	 X�6 9=- <FR�6	 -
 B	H*�- 8  X�9=9=6 9)  6 9) 9 B A=X�6 9)  6 9) 9!B A=9	 X�+  <X�-	 -	  <FR�6	 9		-
	 3 B		9




9		*
 6 -	 BXՀ9	 X�=96 9 6 9 9!B A =6 99B- 9 9)  ) ) B - 9!9)  ) ) B9 9"B6 9#-
 '$  B9%	 X�9=%9=& '' 9'' 9&'' 9%&6 9)  6 999&99%!" B A=&9&9 X�9=%9&	 X�9=&9=%9&"=9""
 9	""!6( 9	 9		  B 9)B99"=6 9*6( 9)  B  B6 9-
  - ' $ ! B6 9+B9,- X8�-  9
B  X2�-  9.- * B9/=/6 906( 99 	  B 6( 9   9!	!!B   )!( )"  B9/=/6 916( 99 	  B 6( 9   9!	!!B   B6 9*  B6 9-
  - ' $ ! B6 9+BER)4  4  .	 . K  K  K  �� ��� �	�
������	rectshadowa	lerpwatermark
indexpop_clip_rectpush_clip_rect
clonevector, cur_size_xsize_xdmeasure_text
uppercubic_outcubic_in
floorposipairs 	sort
tablepctanimation_pct	time
pairscubic_in_outNormalminmax	math	Autom_bIsScoped
color	text	AUTOgetyxrealtimeframetimeglobalsscreen_sizerenderis_aliveget_local_playerentity
����( ���������ā�����������̙����������̙�����̙���������̙��͙���̙���̙����-   -   9     9  D   getenabled_ref!  	   X�'  L K  Off��   9  B	  X�6 9 9-  + D 6 9 9  9  B+ BK  �
floatr_aspectratio	cvarget����������    9  B  X�-   9 B)O  X�6 9 9-   9 B + BX�6 9 9- + BK  	��
floatr_aspectratio	cvarget��������B   6   9    9  -  + B K  �
floatr_aspectratio	cvar� 	 K-    9  B8  X�K  6  B-  X"� X�' -  9B' 6 9 B' &L !-  X�K  ' -  9B' 6 9 B' &L X�- 	 X� X�'
 -  9B' &L !-  X�K  '
 -  9B' &L K  �����DMG	DMG+DMG/DMG+ hp
floor	math-to_hex
R8: Chimeraunpackget_index!    9  B.  K  �get!    9  B.  K  �get!    9  B.  K  �get!    9  B.  K  �get!    9  B.  K  �get!    9  B.  K  �get;  
  9  B-   X�+ X�+ L �get_index� %�4  .  6  9B  X�K   9B  X�K   9B 9B  X�K   9B  X�K   9B  X�K  999	6
 9B9			=	6	 B	
	 9		6
 9B A	6
 9

, 6 6  9+ + B A X7� 9B  X�X1�9 9) B 9B. 6 9  - * ) B9 99B%"9)   X�"-  - 4 >>< 9 	 B
 X� 
    ER�  X�K  -   X�K  !-  X�K   9B  X�K  -  9B9 6 9!6 9"- !6 9#  B A- ! )  ) B"= 6
 9$  9B BK  ������	lineminmaxmapa
cloneto_screendist_to_raym_ArmorValueend_pos	diststart_postrace_line
utilsget_indexget_hitbox_positionm_iHealthget_playersipairs	huge	mathcamera_anglesanglesvectorxscreen_sizerenderrange_modifierarmor_ratiodamageget_weapon_infoget_weapon_indexget_player_weaponget_eye_positionis_aliveget_local_playerentity������������������ā�-   -   9     9  D   getenabled_ref!    9  B.  K  	�get!    9  B.  K  �get� �   X�K    9  B  X�K    9 B6 96 9 B-   9B-  9B9"=9"=6 6	 9
+ + B A X^�	 9
 	B
 
 X
�X
X�	 9
	B
 
 X�X
R�
 9
B X�X
L�6 96 9* 6 9*  9	 9	B A A A* * ) )  B 9B 9B9"=9"=	 9	B99
  X$�  X�X
!�9 9 *  B=6 9  ) )  ) B6 9  ) )  ) ) B6 9-   ' ' BER�K  ��
�!c	textcircle_outlinecirclerender	lerpy	pos2	pos1get_bboxdistsqrminmaxmapget_weapon_indexget_player_weaponget_playersentityipairsa
clonerealtimeglobalsabs	mathget_originis_alive��������>���� P�   Q-      X�6   9    9  - + B 6   9    9  - + B 6   9    9  - + B 6   9    9  - + B X 0�6   9    9  6 6  9 9B A  A 6   9    9  6 6  9 9B A  A 6   9    9  6 6  9 9B A  A 6   9    9  6 6  9 9B A  A K  
�����stringtonumberviewmodel_offset_zviewmodel_offset_yviewmodel_offset_x
floatviewmodel_fov	cvar    1  -  B K  
��-   -   9     9  D   getenabled_ref+    9  B.  - BK  
��getM    9  B  X�1  X�-  9 B.  - BK  
���get-   -   9     9  D   getenabled_ref9   9  B .  - BK  ��get��̙����-   -   9     9  D   getenabled_ref9   9  B .  - BK  ��get��̙����-   -   9     9  D   getenabled_ref9   9  B .  - BK  ��get��̙����-   -   9     9  D   getenabled_ref9   9  B .  - BK  ��get��̙����-   -   9     9  D   getenabled_ref�  ?6   6 9 9B A  6 9 9  + B-   9B
 X�-  9B
 X�- 9 9B X�K  6 9B  X�K   9	B  X�K   9
B	  X�6 9 9	  X�)  X�) + BK  �� get_classidget_player_weaponget_local_playerentityenabled_refgetintstringcl_righthand	cvartonumber�e    6   9    9  6 6  9 9B A + B K  stringtonumberintcl_righthand	cvar-   -   9     9  D   getenabled_ref�  3-     9   6 6 9 9B A  B -    9   6 6 9 9B A  B -    9   6 6 9 9B A  B -    9   6 6 9 9B A  B -  B K  �����viewmodel_offset_zviewmodel_offset_yviewmodel_offset_xstringviewmodel_fov	cvartonumberset-   -   9     9  D   getenabled_ref!    9  B.  K  �get'    9  B.  1 K  ��get�  	6-      X	�-  B    X�-  9     9  B -  9B.    X�-   X�6 - BX
� 9- B 9- 9 BER�1 X�-   X	�6 - BX� 9BER�1 K  �� ����
resetaalpha_modulatecolor_modulateipairsgetenabled_ref�>   
6   -  B X� 9BER�K  �
resetipairs� 		 K-    X�- 9   B-   X
�-  9B  X�- 9  B-   X�- 9  B-   X�- 9  B-  9B  X�- 9B-  9B  X�- 9B-  9B  X�- 9B-  9B  X�- 9  B   X�K  K   � ���	����revolverhandle_indicatorsindicators_on_renderlogs_on_renderzeus_warninghitmarker_on_renderanti_aim_arrows_on_rendergetbetter_scope_overlay�  -    X�- 9   B-  9B  X�- 9  BK  � �logs_on_player_hurtgethitmarker_on_player_hurtF  -    X�- 9   BK  � hitmarker_on_bullet_impactE  -    X�- 9   BK  � hitmarker_on_player_blind1   -   9   B K   hitmarker_on_level_initQ  -   9 B  X�- 9  BK  � logs_on_item_purchaseget�E )�
�
-   9   ' B -   9  ' ' B -   9  ' ' ' B -   9  ' ' ' B -   9  ' ' ' B 5  -  9' '	 '	 '
 B 9+ B= .  6  9    9  3 B +   -  9' '	 '	 ' 3 B 93 + B-  9' '	 '	 ' ' +  )	  )
d ) ) B-  9' '	 '	 ' ' +	  )
  )d ) ) B-  9' '	 '	 ' '	 +
  )  )d B	-  9' '	 '	 '	 '
 +  5 B-  9' '	 '		 '
 ' +  5 B-  9' '		 '
	 ' '  6! )d )d )n )� B A)  6	" 9	#	'
 '$ '	 '% '& B	3
'  93( B- 9 93) B 9
 B
 B 9*'+ B)  *  )  )  )  - 3- =,2 �+  -  9' '	 '	 '. 3/ B 930 + B 9*'1 B-  92' '	 '	 '. '3 B 9+ B-  94' '	 '	 '. '	3 '
5 B 96! )� )	� B A-  92' '	 '	 '	. '
6 B 9+ B-  94' '	 '		 '
. '6 '7 B 96	! )
� )� B	 A+ 	 93
8 + B+ -	  9	2	'
 '	 '	 '. '9 B	
	 9		+ B	
	 9		3: + B	+	  -
  9
4
' '	 '	 '. '9 B

 9

3; + B
+
  -  9' '	 '	 '. '< 3= B 93> + B-  9' '	 '	 '. '? 3@ ) )
 ) ) B)  4  4  4 5A >5B >5C >5D >5E >5F >5G >- 3I =H- 3K =J- 3M =L3N - 3P =O- 3R =Q2 �, 3S -  9' '	 'T '	U 
 B 9+ B , -  9' '		 '
T 'V 'W 6! 'X B A 93	Y +
 B3Z -  9['	 '
	 'T '\  5] B-	  9	[	'
 '	 'T '^  5_ B	-
  9

' '	 'T '`  B
3a ) 5b 4  4  +  'c 'd * * ) ) )  6" 9#'e ' 'f 'g B-  3i =h-  9h6j 9k'l  9mB6n 9oB A A 5p 5q - 3s =r5t 5u 5v 6 9w 93 x B- 3z =y- 3| ={2 �+  -  9' '	 '} '	~ 3
 B 3� -  -  9[' '		 '
} '�  5� B=�-  9�4  3� -	  3
� =
�	6	� 9	�	'
� 6� * * ) B'� B	)
  )  )  )  )  '� 6 9� 93� B) , * 6 9� 93� B3� 6 9� 9 B6 9� 9 B6 9� 9 B3� 6" 9#'� '	 '� '� B6" 9#'� '� '� '� B6" 9#'� '� '� '� B6" 9#'� '� '� '� B6" 9#'� '� ' '� B6" 9#'� '� '� ' � B6� 9�'� '� ) N '!� B6� 9�)	 ' � B6� 9�) 
 '!� B+   )!  )"  6# 9#w#$# 9##3%� B#6# 9#�#$# 9##3%� B#6#" 9###'$� '%� '& ''� '(� B#6$" 9$#$'%� '&� '' '(� B$-% 3&� =&�%2 �+  -  9' '	 '	} '
� 3� B 93� +	 B+  -  9'	 '
	 '} '� '� +  )
 )P ) * 3� B	 93
� + B+	  -
  9

' '	 '} '� '� +  )  )d ) * 3� B

 9

3� + B
+  -  9' '	 '} '� '� 6! )� )� )� )� B A 93� + B+  -  9' '	 '} '� '� 6! )W )v )� )� B A 93� + B+  -  9' '	 '} '� '� 6! )  )  )  )q B A 93� + B4  6 9� 93� B- 3� =�2 �+  -  9' '		 '
} '� 3� B -  92' '		 '
} '� '� B4  4	  4
  -  3� =�) -  9' '	 '} '� '� +  5� B 9'� B, -  9' '	 '} '� '� B 93� + B+  -  9' '	 '} '� '� 6! '� B A 93� + B-  92' '	 '} '� '` B)  6" 9#'� '� ' '� B6" 9#'� '� ' '� B6" 9#'� '� '� '� B5� 6" 9#'� '� '� '� B6" 9#'� '� ' '� '� B3� - 3� =�2 �+  6� 9�	 9�B-	  9	�	'
 ' ' ' 3� )O )�  * 3� B	
	 9		3� + B	-
 9


 9

3� B
6
 9
�

 9

3� B
2 �+  *	 6
� 9
�
'� ) '� B
4  6! )� )  )  )� B6! ){ )� ) )� B, 6� 9� 9�'� '� 3� B  9�B7� 6�  9�'^ 5� B 93� + B6�  9�'� ) )
 ) B 93� + B6�  9�'�  B 93� + B6�  9�'�  B 93� + B, 6�  9'� B 93� + B 9�B 93� + B+  3� - 3 =�2	 �+	  -
  9

' ' ' '3B

 9

3+ B

 9
*
'B
6
� 9
�
'� ) 'B
6! )� )  )  )� B-  9' ' ' 'B 93+ B6! )� )� )� )� B- '3<2
 �+
  6	6� '
8 9jB A 6	6� '8 9jB A 6	6� '8 9jB A 6	6� '8 9jB A 36 9� 93B-  9' ' ' '3B 93+ B- 9 93+ B-  9' '	 '	 ''3)  )�*	 B 93+ B-  9' '	 '	 ''3)��)d *	 B 93+ B-  9' '	 '	 ''3)��)d *	 B 93+ B-  9' '	 '	 ''3)��)d *	 B 93 + B-  92' '	 '	 ''!3"B6 9� 93#B6 9� 93$B-  '%8' '	 '	 ''&3'3(B2 �5)6* BX�6+',8 B:<ER�6� 9�'� '-) '.B, -  9' '	 '	 '/30B 931+ B+ -  9' '	 '	 '/B 932+ B6 9� 933B6 9� 934B2 �- '536<- '738<- '93:<- ';3<<- '=3><- '?3@<2  �K  ����
��� on_item_purchase on_level_init on_player_blind on_bullet_impact on_player_hurt on_render     Console Colorbool(__thiscall*)(void*)VEngineVGui001get_materialsmaterialsipairs  vgui_whitevgui/hud/800corner1vgui/hud/800corner2vgui/hud/800corner3vgui/hud/800corner4  
Resetsub_button   Opposite Knife Hand  Offset Z  Offset Y  Offset X  Field of Viewviewmodel changer   Viewmodel Changer  viewmodel_offset_zviewmodel_offset_yviewmodel_offset_xviewmodel_fovtonumber zeus_warning aUDraws a little exclamation mark above enemy's head if they're likely to zeus you  Zeus Warning revolver   Snap Lines Not Lethal Lethalcolor_picker Range (HP)   ChimeraDMG/DMG+
combor8_groupcreate 	DMG+Chimera R8 Helpernew_text
enemyespabdVerdana shutdown    slider
floatr_aspectratio	cvar handle_indicators fake duck	miscanti aimaimbot	   - STANDING -- MOVING -- SLOWWALK -- CROUCH -- AIR -- AIR -- LEGIT AA -Min. DamageSelection #FFD990FFWatermark Color Main Color	Auto  NormalCentered	AutoPositioning indicator2Minimum Damagecrosshair indicators Crosshair Indicators anti_aim_arrows_on_render net_update_end Outline B A  	Size  Radius  Anti Aim Arrow indicators_on_renderHide ShotsDormant AimbotEnabled level_init #float(__thiscall*)(void*, int)void*(__thiscall*)(void*)VEngineClient014engine.dllget_vfunc
utilsFreestandingAnglesDouble TapBody AimSafe PointsSafetyRagebotFake Duck	MiscAnti AimAimbotfake latency
othermiscellaneous round_startbomb_plantedbomb_abortplant  bomb_beginplant createmove0-0-0-0-0dbavectorCalibriload_fontrender indicator   Fake LagDefusingDormant AimbotMinimum DamageAimbot StatsBomb InfoSafe PointsBody AimFake LatencyHide ShotsDouble TapFake DuckFreestanding500$ Indicatorsfeatures_ref  Enable Indicatorsindicators logs_on_render logs_on_item_purchase aim_ack correctionresolver generic	head
cheststomachleft armright armleft legright leg	neck 	gear  ��҂ ��Ղ ��т ��ق ��ȁ ��ׂ ���� ��ւ ��ӂ ���� ��Ђ ��Ԃ ��؂ logs_on_player_hurt hegrenade
NadedinfernoMollied
taser
Tased
knifeKnifed generic	head
cheststomachleft armright armleft legright leg	neck 	gearget_usernamecommonto_hexWelcome, %s%sFFFFFFFF!formatstring logLog Events
OtherMiscellaneousCenteredDefault 
SmalloMonospacedNormald 	Glow  ChimeraConsole Panel
Style  Damage DealtPurchasesAimbotEventsselectable  #FFBC80FF	testenable logsEnable Logs	logs  hitmarker_on_level_init hitmarker_on_render  hitmarker_on_player_blind hitmarker_on_bullet_impact hitmarker_on_player_hurt  
  	            Duration  Headshot  Damage Marker World Marker ColorWorld MarkerScreen Marker Colorsub_sub_color_pickerScreen Markersub_switchj· Draws a visual clue indicating that you have either hit the target or blinded it with a flashbang.  Hit Marker better_scope_overlay>· Appends the radius of the spread to both gap and size.tooltip   scope overlayoverride zoom
world	findui
color
Colorsub_color_picker  	LeftTop
RightBottomExclude Linessub_selectable  DisabledInaccuracyAccuracy PenaltySpread Basedsub_comboAspect RatioGap	Linesub_slider set_callback Better Scope Overlay override_vieweventsenabled_ref  setEnable Visuals	mainvisualsswitchIndicators	Logs
group	Mainsub_tabVisualstab�ӗ����������̙��������̙ف��ށ������������������̙����-   -   9     9  D   getenabled_ref�  -  9   B  X�K  -  9  B  X
�-  9  B  X�-  9  BK  �ToggleMuteIsSelectedPlayerMutedHasCommunicationAbuseMuteIsXuidValid�   )  6  9) M �-  9 B-  9 B  X�X�-  BO �K  ��IsXuidValid$GetPlayerXuidStringFromEntIndexmax_playersglobals-    9  B  X�-  BK  �get�  6  9B6  99 + B X�-  BX�- 99 B-  BK  ���GetPlayerXuidFromUserIDuseridgetget_local_playerentity-   -   9     9  D   getenabled_ref   /   K  �I  6  96 9#  D tickintervalglobals
floor	math�����  .-     9   B   	  X�-  - . 4  . )   ) M�6 9B X�) ) ) M�-
 -  <
O�X�- -  <O�'   ' &. K  
�����                                     
floor	mathget �����  	}6   9  B    X�K  -   9+ B+  9 )   X�6 9-  B6 96 9	- B A K  - B  X�K  6
 9- -  )  B A  - * B#6 9-  $B - 86 9	- B-  X5�-  9B  X+�' )  ) M!�6	 9		)
  ) B		 X	�+	 X
�+	 
  	 X
� 9	  B 9B  X� 9	  B 9B&
O�6 9 BX�6 9 B. K  ���������
lower
upperrandom_int
utilsgettickcountglobalssubstringset_clan_tagcommon
floor	mathm_timeUntilNextPhaseStartsoverrideget_game_rulesentity���� �̙������   -   9     9  B    X �-    9  B    X �-    9  B 6  9    9  6 9 9B A K   ��string	callcl_clanid	cvaroverridegetenabled_refN    6   9    9  6  9 9B A K  string	callcl_clanid	cvar� 
 6  96 99 5 =6 9*  	 B=	B=
 K  last_sent_time
delaymax	math	text  
queueinsert
tablecurtimeglobals͙���̙��  9   	  X�K  6 99 !9  :9 X�6 9' 9  :9&B6	 9
9  ) B= K  remove
table	textsay 󠃐console_exec
utils
delaylast_sent_timecurtimeglobals
queue D   6  99 B)  = K  last_sent_time
queue
clear
table#   -     9   B K    
reset�  5   4  = .   -   3 = -   3 = -   3 = 6  9 	   9 
 3 B K  � setlevel_initevents 
reset handle add_to_queue
queue last_sent_time -   -   9     9  D   getenabled_refg   -   9     9  B    X�-    9  B    )     X �+  X�+  L   �getenabled_ref$   -     9   B K  �handle#   -     9   B K  �
reset    1   K  �� 
�6  9B6  99 + B6  99 + B  X�  X�  X�K  -   9B  X�6  9B9  X�K   9B  X�K   X7� X5�-  9' B  X.�- . - -   X�6	 9
- B0 -  9B* - - 8 9' BX�-	 
	 9		 6 9)  9' ' B  B A	* ER� X4� X2�. -  9' B  X*�- . - -   X�6	 9
- B0 -  9B* - - 8 9' BX�-	 
	 9		  9' ' B  B	* ER�-  X7�-  X4� X2�-  9' B  X+�- . - -	   X�6	 9
-	 B0 -  9B* -	 - 8 9' BX�-	 
	 9		  9' ' B  B	* ER�1  K  ������	��
��RevengeOn Death
[�-�]	gsubmin	mathadd_to_queue([^;]+)gmatch
resetshuffle
tableOn Killget_classidm_bWarmupPeriodget_game_rulesattackeruseridgetget_local_playerentityP��̙�����ժ�
ժ����̙����͙���̙�-   -   9     9  D   getenabled_refj   9  B  X�X �-    X�X �- -     9 B<K  � �get_nameis_enemy� 	64   6  9B  X�2 .�6  9+ + 3 B  	  X�2  �K  +  )  X�6 9)  B8 -   X
�U�6 9)  B8 X�X�: -   X�6 9 ' &B.  2  �K  K  �ㅤset_namecommonrandom_int
utils get_playersget_local_playerentity -   -   9     9  D   getenabled_ref!    9  B.  K  �get�  H6  9B 9B96  9B 9B96  9B 9B9)  6 9 6 9 M(�6 9	6	
 6
 9

 B


 

6 9 B  B	6

 6 9 B 6 9 B ! B
6 B9 X�+ L O�+ L fraction	selfsincosvectortrace_line
utilspi	mathzyxget_originget_local_playerentity�  6  9B  X�K  99)� X�1  X�- ) B  X�1  X�- )K B  X�1  K  ��zm_vecVelocityget_local_playerentity�  6  9B  X�K  99)� X�-    X�) = X�)  = K  �in_duckzm_vecVelocityget_local_playerentity-   -   9     9  D   getenabled_refK   -   9     9  B    X�-    9  B L   �getenabled_ref9  6  9'   D 
%.1fmformatstring��̙����/   9  B .  K  �get��̙����� $
�6  9B  X�K  9  X�K  6 99-  B-   X�K  9   X�9   X�K  99	9
6 B 9)  9 9B 9B)  )  9	 		 X	�)�-	 
	 9		B	 	 X
�9	 		 X	�9	 		 X	�)	�X
�9	 9 	 6	 9
"

9" 

9"9" B		 9
	B
 9
B
9
)$ )  ===
 9B 9	 B)   X�K  - "	 
6 9
     * B99 9B  X/�6 99B*  X(�6 99 * B X!� 999B*  X�	  9B 9 B)   X�	6 9"6 9#99B A =! )�= )  = K  
�	��
atan2degmove_yawcontentsabs	mathdid_hit_worldnormal
planetrace_hull
utilsdotnormalizedzget_originnormalizexforwardmovegetsidemovevectorsyview_anglesanglesvectorm_vecMaxsm_vecMinsm_vecVelocityin_speedin_duckm_fFlags	bandbitm_MoveTypeget_local_playerentity (�����ގ� ��� ��̙���������̙��������-   -   9     9  D   getenabled_ref�  j6  9B  X�K  9	  X`�9 6 99 9B=9 )   X+�9 9)-  XO�9 )Y =) =	 )  =
 )  = ) = 9 	 X�9 9 9=9 )   X�9 9 9=9 )   X/�9 9 9=X)�9 )   X%�9 )Y =) =
 )  =	 ) = )  = 9 	 X�9 9 9=9 )   X�9 9 9=9 )   X�9 9 9=K  sidemovein_backin_forwardin_moveleftin_moverightxforwardmove
floor	mathyview_anglesm_MoveTypeget_local_playerentity���� ��<-   -   9     9  D   getenabled_ref    -   :   L  
�w   -   B 6  99B  X�6  99  ) B+ L + L �FlashWindowGetForegroundWindowCffie   -     9   B    X	�-  B    X�6  9  ) - B K  ���execute_after
utilsget�  -   9 B  X�- 9  B-  9 B  X�- 9  B-   X�- 9  BK  � ��no_fall_damagefast_ladder_on_createmove#avoid_collisions_on_createmovegetZ   
-     9   B    X�-  9  B K  � 'clan_tag_spammer_on_net_update_endgetW -   9 B   X�- 9  BK  � talk_shit_player_deathget g  -   9 B  X�- 9  BK   � 0unmute_muted_players_on_player_connect_fullget� ��-   9   ' B -   9  ' ' B -   9  ' ' ' B -   9  ' ' ' B 5  -  9' '	 '
 ' B= .  +   -  9' '	 '
 ' 3 B 9' B  6 93 3   9 3 + B- 3 =2 �+  ' -  9' '	 '
 ' 3 B 93 B 9' B 6 9 ' '	 '
 '! B3" 6# 9$'% '& )N '	' B6# 9$)
 '( B')  -	  9	*	'
 '	 '
 ' '+ +  5, B	-
  9
-
' '	 '
 ' '. +   B
-  9/' '	 '
 ' '0 B'1  '2 &53 )  
 9
34 + B- 36 =537  B- 9 9 B 9 B68 99 9:3; B2 �+  3< B+  -  9=' '	 '
 '> 3	? 5
@ B 9'A B -  9' '	 '
 'B 3	C B68 9D 9:3E B68 9F 9:3G B4  4  4  - 	 9H'
I BX�  <ER�- 	 9H'
I BX�  <ER�- 	 9H'
I BX�  <ER�6J 9K	 B6J 9K	 B6J 9K	 B)  )	  )
  +  68 9L 9:3M B- 3O =N2 �, -  9P' '	 '	
 '
Q 3R 3S B 9'T B 2 �+  -  9' '	 '	U '
V 3W B 93X +	 B 9'Y B+ 3Z 68 9[	 9:3
\ B- 3	^ =	]2 �+  -  9' '		 '
U '_ 3` B 9'	a B +  -  9b'	 '
	 'U 'c 3d )  ) ) ) 3e B	 93
f + B	 9'
g B6	 9	 	'
 '	 'U 'h 'i B	)
 - 3k =j2 �+  -  9'	 '
	 'U 'l 3m B	 9'
n B - 3	p =	o+  -	  9		'
 '	 ' 'q 3r B	
	 9		's B		 6	t 9	u	'
v B	6	# 9	w	'
% 'x ) B	 	 X
�6	y '
z B	6
t 9
{
'| 6t 9{'} 6t 9{'~ 	 B: : BB
3 3� 3� 68 9L 9: B2	 �-	 3
� =
�	-	 3
� =
�	-	 3
� =
�	-	 3
� =
�	2  �K  �� ��� on_player_connect_full on_player_death on_net_update_end on_createmove   void***
char*void**	castinvalid signature
error'8B 0D ? ? ? ? 85 C9 74 16 8B 01 8Bopcode_scanG			void* GetForegroundWindow();
			int FlashWindow(void*, int);
			cdefffifIf you're tabbed out, the game icon will flash if the new round started so that you don't miss it Icon Notifications fast_ladder_on_createmoveKAbuses the ladder movement mechanic and makes you move a little faster Fast Ladder #avoid_collisions_on_createmovewasd strafeair strafeG· Use higher values for servers with low sv_airaccelerate values.   DistancesliderK· Overrides the "Air Strafe" direction to bunny hop around obstacles. Avoid Collisions no_fall_damage createmove_run 0Attempts to perform a jumpbug when possible  No Fall Damagemovement9· Steals a randomly chosen teammate's in-game name.  Steal Player Namebutton talk_shit_player_death round_startshuffle
table
[^
]+gmatch level_init net_update_end Disable during Warmup�· Sends a random annoying message from the most neatly picked list of phrases on kill or death.

· The phrases are Russian for the most part.  On KillOn DeathRevenge Talk Shitselectable  setshutdownevents  'clan_tag_spammer_on_net_update_end !   	
                                     Random Casesub_switch	Textsub_input  500$ for inviteAnimationsub_combochimera.lua#float(__thiscall*)(void*, int)void*(__thiscall*)(void*)VEngineClient014engine.dllget_vfunc
utils clan tag	findui1· Animated & synchronized clan tag changer.  Clan Tag Spammer 0unmute_muted_players_on_player_connect_full set_callback  GameStateAPIpanoramaM· Automatically unmutes players that have an abuse communications mute.tooltip Unmute Muted Playersenabled_ref  Enable Miscellaneousin-game	mainmiscellaneousswitchMovementIn-Game
group	Mainsub_tabMiscellaneoustab�  +  6  -  9  B   6  ' B6  6 9  B   6  ' B- 9  BK     importcouldn't parse the config
parse	jsoncouldn't decode the configassertdecode
pcall�   -   - 9 B 9) - 9 B 9' B A A  -  9  ' B K   �   Imported from clipboardlog_chimera	findsubget�   +  -  9 B6 6 9 B   6   ' B6 - 9 B   6   ' BL    "couldn't export the config #2encode"couldn't export the config #1assertstringify	json
pcallexportd   -   9   - B' &B -  9  ' B K   �  Exported to clipboardlog_chimeraset�h   -   '  B -  9  ' B K   �  Loaded defaultslog�geyJBbnRpIEFpbSI6eyJNYWluIjp7IkFudGkgQWltIFNldHRpbmdzIjp7IkJvbWJzaXRlIEZpeCI6eyJ2YWx1ZSI6dHJ1ZX0sIkN1cnJlbnQgU3RhdGUiOnsidmFsdWUiOiJTdGFuZGluZyJ9LCJNYW51YWwgWWF3Ijp7InN1Yl9pdGVtcyI6eyJEaXNhYmxlIFlhdyBNb2RpZmlmZXJzIjp7InZhbHVlIjp0cnVlfX0sInZhbHVlIjoiRGlzYWJsZWQifSwiTW9kZSI6eyJ2YWx1ZSI6IkFnZ3Jlc3NpdmUgSml0dGVyIn0sIk92ZXJyaWRlIENyb3VjaGluZyI6eyJ2YWx1ZSI6dHJ1ZX0sIk92ZXJyaWRlIEluIEFpciI6eyJ2YWx1ZSI6dHJ1ZX0sIk92ZXJyaWRlIEluIEFpciAmIENyb3VjaGluZyI6eyJ2YWx1ZSI6dHJ1ZX0sIk92ZXJyaWRlIEluIFVzZSI6eyJ2YWx1ZSI6dHJ1ZX0sIk92ZXJyaWRlIE1vdmluZyI6eyJ2YWx1ZSI6dHJ1ZX0sIk92ZXJyaWRlIE5vIEV4cGxvaXRzIjp7InZhbHVlIjpmYWxzZX0sIk92ZXJyaWRlIFNsb3cgV2Fsa2luZyI6eyJ2YWx1ZSI6dHJ1ZX0sIk92ZXJyaWRlIFN0YW5kaW5nIjp7InZhbHVlIjp0cnVlfX0sIkNyb3VjaGluZyBBbmdsZXMiOnsiQm9keSBZYXciOnsic3ViX2l0ZW1zIjp7IkZyZWVzdGFuZGluZyI6eyJ2YWx1ZSI6Ik9mZiJ9LCJJbnZlcnRlciI6eyJ2YWx1ZSI6ZmFsc2V9LCJMZWZ0IExpbWl0Ijp7InZhbHVlIjo2MC4wfSwiT3B0aW9ucyI6eyJ2YWx1ZSI6WyJKaXR0ZXIiXX0sIlJpZ2h0IExpbWl0Ijp7InZhbHVlIjo2MC4wfX0sInZhbHVlIjp0cnVlfSwiUGl0Y2giOnsidmFsdWUiOiJEb3duIn0sIllhdyI6eyJzdWJfaXRlbXMiOnsiQmFzZSI6eyJ2YWx1ZSI6IkF0IFRhcmdldCJ9LCJPZmZzZXQgTGVmdCI6eyJ2YWx1ZSI6LTE1LjB9LCJPZmZzZXQgUmlnaHQiOnsidmFsdWUiOjIyLjB9fSwidmFsdWUiOiJCYWNrd2FyZCJ9LCJZYXcgTW9kaWZpZXIiOnsic3ViX2l0ZW1zIjp7Ik1hbnVhbCBNb2RlIjp7InZhbHVlIjpmYWxzZX0sIk9mZnNldCI6eyJ2YWx1ZSI6LTMwLjB9LCJPZmZzZXQgIzEiOnsidmFsdWUiOjAuMH0sIk9mZnNldCAjMiI6eyJ2YWx1ZSI6MC4wfSwiT2Zmc2V0ICMzIjp7InZhbHVlIjowLjB9LCJPZmZzZXQgIzQiOnsidmFsdWUiOjAuMH0sIk9mZnNldCAjNSI6eyJ2YWx1ZSI6MC4wfSwiUmFuZG9taXplIjp7InZhbHVlIjoxMC4wfX0sInZhbHVlIjoiQ2VudGVyIn19LCJEZWZhdWx0IEFuZ2xlcyI6eyJCb2R5IFlhdyI6eyJzdWJfaXRlbXMiOnsiRnJlZXN0YW5kaW5nIjp7InZhbHVlIjoiT2ZmIn0sIkludmVydGVyIjp7InZhbHVlIjpmYWxzZX0sIkxlZnQgTGltaXQiOnsidmFsdWUiOjYwLjB9LCJPcHRpb25zIjp7InZhbHVlIjpbXX0sIlJpZ2h0IExpbWl0Ijp7InZhbHVlIjo2MC4wfX0sInZhbHVlIjp0cnVlfSwiUGl0Y2giOnsidmFsdWUiOiJEb3duIn0sIllhdyI6eyJzdWJfaXRlbXMiOnsiQmFzZSI6eyJ2YWx1ZSI6IkF0IFRhcmdldCJ9LCJPZmZzZXQgTGVmdCI6eyJ2YWx1ZSI6LTE1LjB9LCJPZmZzZXQgUmlnaHQiOnsidmFsdWUiOjUuMH19LCJ2YWx1ZSI6IkJhY2t3YXJkIn0sIllhdyBNb2RpZmllciI6eyJzdWJfaXRlbXMiOnsiTWFudWFsIE1vZGUiOnsidmFsdWUiOmZhbHNlfSwiT2Zmc2V0Ijp7InZhbHVlIjowLjB9LCJPZmZzZXQgIzEiOnsidmFsdWUiOjAuMH0sIk9mZnNldCAjMiI6eyJ2YWx1ZSI6MC4wfSwiT2Zmc2V0ICMzIjp7InZhbHVlIjowLjB9LCJPZmZzZXQgIzQiOnsidmFsdWUiOjAuMH0sIk9mZnNldCAjNSI6eyJ2YWx1ZSI6MC4wfSwiUmFuZG9taXplIjp7InZhbHVlIjowLjB9fSwidmFsdWUiOiJEaXNhYmxlZCJ9fSwiSW4gQWlyICYgQ3JvdWNoaW5nIEFuZ2xlcyI6eyJCb2R5IFlhdyI6eyJzdWJfaXRlbXMiOnsiRnJlZXN0YW5kaW5nIjp7InZhbHVlIjoiT2ZmIn0sIkludmVydGVyIjp7InZhbHVlIjpmYWxzZX0sIkxlZnQgTGltaXQiOnsidmFsdWUiOjYwLjB9LCJPcHRpb25zIjp7InZhbHVlIjpbXX0sIlJpZ2h0IExpbWl0Ijp7InZhbHVlIjo2MC4wfX0sInZhbHVlIjp0cnVlfSwiUGl0Y2giOnsidmFsdWUiOiJEb3duIn0sIllhdyI6eyJzdWJfaXRlbXMiOnsiQmFzZSI6eyJ2YWx1ZSI6IkF0IFRhcmdldCJ9LCJPZmZzZXQgTGVmdCI6eyJ2YWx1ZSI6MC4wfSwiT2Zmc2V0IFJpZ2h0Ijp7InZhbHVlIjowLjB9fSwidmFsdWUiOiJCYWNrd2FyZCJ9LCJZYXcgTW9kaWZpZXIiOnsic3ViX2l0ZW1zIjp7Ik1hbnVhbCBNb2RlIjp7InZhbHVlIjp0cnVlfSwiT2Zmc2V0Ijp7InZhbHVlIjotNTUuMH0sIk9mZnNldCAjMSI6eyJ2YWx1ZSI6NDkuMH0sIk9mZnNldCAjMiI6eyJ2YWx1ZSI6NDkuMH0sIk9mZnNldCAjMyI6eyJ2YWx1ZSI6MC4wfSwiT2Zmc2V0ICM0Ijp7InZhbHVlIjowLjB9LCJPZmZzZXQgIzUiOnsidmFsdWUiOjAuMH0sIlJhbmRvbWl6ZSI6eyJ2YWx1ZSI6MC4wfX0sInZhbHVlIjoiMy1XYXkgQ2hpbWVyYSJ9fSwiSW4gQWlyIEFuZ2xlcyI6eyJCb2R5IFlhdyI6eyJzdWJfaXRlbXMiOnsiRnJlZXN0YW5kaW5nIjp7InZhbHVlIjoiT2ZmIn0sIkludmVydGVyIjp7InZhbHVlIjpmYWxzZX0sIkxlZnQgTGltaXQiOnsidmFsdWUiOjYwLjB9LCJPcHRpb25zIjp7InZhbHVlIjpbXX0sIlJpZ2h0IExpbWl0Ijp7InZhbHVlIjo2MC4wfX0sInZhbHVlIjp0cnVlfSwiUGl0Y2giOnsidmFsdWUiOiJEb3duIn0sIllhdyI6eyJzdWJfaXRlbXMiOnsiQmFzZSI6eyJ2YWx1ZSI6IkF0IFRhcmdldCJ9LCJPZmZzZXQgTGVmdCI6eyJ2YWx1ZSI6MC4wfSwiT2Zmc2V0IFJpZ2h0Ijp7InZhbHVlIjowLjB9fSwidmFsdWUiOiJCYWNrd2FyZCJ9LCJZYXcgTW9kaWZpZXIiOnsic3ViX2l0ZW1zIjp7Ik1hbnVhbCBNb2RlIjp7InZhbHVlIjp0cnVlfSwiT2Zmc2V0Ijp7InZhbHVlIjowLjB9LCJPZmZzZXQgIzEiOnsidmFsdWUiOjQyLjB9LCJPZmZzZXQgIzIiOnsidmFsdWUiOjQyLjB9LCJPZmZzZXQgIzMiOnsidmFsdWUiOi02LjB9LCJPZmZzZXQgIzQiOnsidmFsdWUiOjAuMH0sIk9mZnNldCAjNSI6eyJ2YWx1ZSI6MC4wfSwiUmFuZG9taXplIjp7InZhbHVlIjowLjB9fSwidmFsdWUiOiIzLVdheSBDaGltZXJhIn19LCJJbiBVc2UgQW5nbGVzIjp7IkJvZHkgWWF3Ijp7InN1Yl9pdGVtcyI6eyJGcmVlc3RhbmRpbmciOnsidmFsdWUiOiJQZWVrIEZha2UifSwiSW52ZXJ0ZXIiOnsidmFsdWUiOmZhbHNlfSwiTGVmdCBMaW1pdCI6eyJ2YWx1ZSI6NjAuMH0sIk9wdGlvbnMiOnsidmFsdWUiOlsiQXZvaWQgT3ZlcmxhcCJdfSwiUmlnaHQgTGltaXQiOnsidmFsdWUiOjYwLjB9fSwidmFsdWUiOnRydWV9LCJQaXRjaCI6eyJ2YWx1ZSI6IkRpc2FibGVkIn0sIllhdyI6eyJzdWJfaXRlbXMiOnsiQmFzZSI6eyJ2YWx1ZSI6IkxvY2FsIFZpZXcifSwiT2Zmc2V0IExlZnQiOnsidmFsdWUiOjAuMH0sIk9mZnNldCBSaWdodCI6eyJ2YWx1ZSI6MC4wfX0sInZhbHVlIjoiRGlzYWJsZWQifSwiWWF3IE1vZGlmaWVyIjp7InN1Yl9pdGVtcyI6eyJNYW51YWwgTW9kZSI6eyJ2YWx1ZSI6ZmFsc2V9LCJPZmZzZXQiOnsidmFsdWUiOjAuMH0sIk9mZnNldCAjMSI6eyJ2YWx1ZSI6MC4wfSwiT2Zmc2V0ICMyIjp7InZhbHVlIjowLjB9LCJPZmZzZXQgIzMiOnsidmFsdWUiOjAuMH0sIk9mZnNldCAjNCI6eyJ2YWx1ZSI6MC4wfSwiT2Zmc2V0ICM1Ijp7InZhbHVlIjowLjB9LCJSYW5kb21pemUiOnsidmFsdWUiOjAuMH19LCJ2YWx1ZSI6IkRpc2FibGVkIn19LCJNaXNjIjp7IlBsZWFzZSBub3RlIHRoYXQgdGhpcyBwcmVzZXQgaXMgYWxyZWFkeSBzZXQgdXAuIjp7InZhbHVlIjo0MTAwMjIwMTQyLjB9fSwiTW92aW5nIEFuZ2xlcyI6eyJCb2R5IFlhdyI6eyJzdWJfaXRlbXMiOnsiRnJlZXN0YW5kaW5nIjp7InZhbHVlIjoiT2ZmIn0sIkludmVydGVyIjp7InZhbHVlIjpmYWxzZX0sIkxlZnQgTGltaXQiOnsidmFsdWUiOjYwLjB9LCJPcHRpb25zIjp7InZhbHVlIjpbXX0sIlJpZ2h0IExpbWl0Ijp7InZhbHVlIjo2MC4wfX0sInZhbHVlIjp0cnVlfSwiUGl0Y2giOnsidmFsdWUiOiJEb3duIn0sIllhdyI6eyJzdWJfaXRlbXMiOnsiQmFzZSI6eyJ2YWx1ZSI6IkF0IFRhcmdldCJ9LCJPZmZzZXQgTGVmdCI6eyJ2YWx1ZSI6MC4wfSwiT2Zmc2V0IFJpZ2h0Ijp7InZhbHVlIjowLjB9fSwidmFsdWUiOiJCYWNrd2FyZCJ9LCJZYXcgTW9kaWZpZXIiOnsic3ViX2l0ZW1zIjp7Ik1hbnVhbCBNb2RlIjp7InZhbHVlIjp0cnVlfSwiT2Zmc2V0Ijp7InZhbHVlIjotODIuMH0sIk9mZnNldCAjMSI6eyJ2YWx1ZSI6NDAuMH0sIk9mZnNldCAjMiI6eyJ2YWx1ZSI6NTEuMH0sIk9mZnNldCAjMyI6eyJ2YWx1ZSI6LTcuMH0sIk9mZnNldCAjNCI6eyJ2YWx1ZSI6MC4wfSwiT2Zmc2V0ICM1Ijp7InZhbHVlIjowLjB9LCJSYW5kb21pemUiOnsidmFsdWUiOjAuMH19LCJ2YWx1ZSI6IjMtV2F5IENoaW1lcmEifX0sIk5vIEV4cGxvaXRzIEFuZ2xlcyI6eyJCb2R5IFlhdyI6eyJzdWJfaXRlbXMiOnsiRnJlZXN0YW5kaW5nIjp7InZhbHVlIjoiT2ZmIn0sIkludmVydGVyIjp7InZhbHVlIjpmYWxzZX0sIkxlZnQgTGltaXQiOnsidmFsdWUiOjYwLjB9LCJPcHRpb25zIjp7InZhbHVlIjpbIkppdHRlciJdfSwiUmlnaHQgTGltaXQiOnsidmFsdWUiOjYwLjB9fSwidmFsdWUiOnRydWV9LCJQaXRjaCI6eyJ2YWx1ZSI6IkRvd24ifSwiWWF3Ijp7InN1Yl9pdGVtcyI6eyJCYXNlIjp7InZhbHVlIjoiQXQgVGFyZ2V0In0sIk9mZnNldCBMZWZ0Ijp7InZhbHVlIjotMTUuMH0sIk9mZnNldCBSaWdodCI6eyJ2YWx1ZSI6MjIuMH19LCJ2YWx1ZSI6IkJhY2t3YXJkIn0sIllhdyBNb2RpZmllciI6eyJzdWJfaXRlbXMiOnsiTWFudWFsIE1vZGUiOnsidmFsdWUiOmZhbHNlfSwiT2Zmc2V0Ijp7InZhbHVlIjotNDUuMH0sIk9mZnNldCAjMSI6eyJ2YWx1ZSI6MC4wfSwiT2Zmc2V0ICMyIjp7InZhbHVlIjowLjB9LCJPZmZzZXQgIzMiOnsidmFsdWUiOjAuMH0sIk9mZnNldCAjNCI6eyJ2YWx1ZSI6MC4wfSwiT2Zmc2V0ICM1Ijp7InZhbHVlIjowLjB9LCJSYW5kb21pemUiOnsidmFsdWUiOjAuMH19LCJ2YWx1ZSI6IkNlbnRlciJ9fSwiT3RoZXIiOnsiQXV0b21hdGljIFRlbGVwb3J0Ijp7InN1Yl9pdGVtcyI6eyJBdXRvIERlbGF5Ijp7InZhbHVlIjp0cnVlfSwiRGVsYXkiOnsidmFsdWUiOjAuMH0sIkluIEFpciBPbmx5Ijp7InZhbHVlIjp0cnVlfSwiV2VhcG9ucyI6eyJ2YWx1ZSI6WyJOYWRlcyIsIk90aGVyIl19fSwidmFsdWUiOmZhbHNlfSwiQXZvaWQgQmFja3N0YWIiOnsidmFsdWUiOnRydWV9LCJEaXNhYmxlIEZha2UgTGFnIjp7InZhbHVlIjpbIkhpZGUgU2hvdHMiLCJTdGFuZGluZyIsIkRUIEhlYXZ5IFBpc3RvbHMiLCJEVCBIaWdoIEZpcmVyYXRlIl19LCJEaXNhYmxlIGR1cmluZyBXYXJtdXAiOnsidmFsdWUiOmZhbHNlfSwiRXh0ZW5kZWQgQW5nbGVzIjp7InN1Yl9pdGVtcyI6eyJFeHRlbmRlZCBQaXRjaCI6eyJ2YWx1ZSI6LTE4MC4wfSwiRXh0ZW5kZWQgUm9sbCI6eyJ2YWx1ZSI6MC4wfX0sInZhbHVlIjpmYWxzZX0sIkZvcmNlIEJyZWFrIExDIGluIEFpciI6eyJzdWJfaXRlbXMiOnsiRGlzYWJsZSBpZiBQaW4gUHVsbGVkIjp7InZhbHVlIjp0cnVlfX0sInZhbHVlIjp0cnVlfSwiRnJlZXN0YW5kaW5nIjp7InN1Yl9pdGVtcyI6eyJCZXR0ZXIgRnJlZXN0YW5kaW5nIjp7InZhbHVlIjp0cnVlfSwiQm9keSBGcmVlc3RhbmRpbmciOnsidmFsdWUiOnRydWV9LCJEaXNhYmxlIFlhdyBNb2RpZmllcnMiOnsidmFsdWUiOnRydWV9fSwidmFsdWUiOmZhbHNlfSwiSGlkZGVuIEN1c3RvbWl6YXRpb24iOnsic3ViX2l0ZW1zIjp7IlBpdGNoIjp7InZhbHVlIjoiUEFLRVRBIn0sIllhdyI6eyJ2YWx1ZSI6Ik9wcG9zaXRlIn19LCJ2YWx1ZSI6dHJ1ZX0sIlN0YXRpYyBCb2R5IFlhdyBPbiI6eyJ2YWx1ZSI6W119fSwiU2xvdyBXYWxraW5nIEFuZ2xlcyI6eyJCb2R5IFlhdyI6eyJzdWJfaXRlbXMiOnsiRnJlZXN0YW5kaW5nIjp7InZhbHVlIjoiT2ZmIn0sIkludmVydGVyIjp7InZhbHVlIjpmYWxzZX0sIkxlZnQgTGltaXQiOnsidmFsdWUiOjYwLjB9LCJPcHRpb25zIjp7InZhbHVlIjpbIkppdHRlciJdfSwiUmlnaHQgTGltaXQiOnsidmFsdWUiOjYwLjB9fSwidmFsdWUiOnRydWV9LCJQaXRjaCI6eyJ2YWx1ZSI6IkRvd24ifSwiWWF3Ijp7InN1Yl9pdGVtcyI6eyJCYXNlIjp7InZhbHVlIjoiQXQgVGFyZ2V0In0sIk9mZnNldCBMZWZ0Ijp7InZhbHVlIjotMjMuMH0sIk9mZnNldCBSaWdodCI6eyJ2YWx1ZSI6MzUuMH19LCJ2YWx1ZSI6IkJhY2t3YXJkIn0sIllhdyBNb2RpZmllciI6eyJzdWJfaXRlbXMiOnsiTWFudWFsIE1vZGUiOnsidmFsdWUiOmZhbHNlfSwiT2Zmc2V0Ijp7InZhbHVlIjo1MS4wfSwiT2Zmc2V0ICMxIjp7InZhbHVlIjowLjB9LCJPZmZzZXQgIzIiOnsidmFsdWUiOjAuMH0sIk9mZnNldCAjMyI6eyJ2YWx1ZSI6MC4wfSwiT2Zmc2V0ICM0Ijp7InZhbHVlIjowLjB9LCJPZmZzZXQgIzUiOnsidmFsdWUiOjAuMH0sIlJhbmRvbWl6ZSI6eyJ2YWx1ZSI6MTAuMH19LCJ2YWx1ZSI6IkRpc2FibGVkIn19LCJTdGFuZGluZyBBbmdsZXMiOnsiQm9keSBZYXciOnsic3ViX2l0ZW1zIjp7IkZyZWVzdGFuZGluZyI6eyJ2YWx1ZSI6Ik9mZiJ9LCJJbnZlcnRlciI6eyJ2YWx1ZSI6ZmFsc2V9LCJMZWZ0IExpbWl0Ijp7InZhbHVlIjo2MC4wfSwiT3B0aW9ucyI6eyJ2YWx1ZSI6W119LCJSaWdodCBMaW1pdCI6eyJ2YWx1ZSI6NjAuMH19LCJ2YWx1ZSI6dHJ1ZX0sIlBpdGNoIjp7InZhbHVlIjoiRG93biJ9LCJZYXciOnsic3ViX2l0ZW1zIjp7IkJhc2UiOnsidmFsdWUiOiJBdCBUYXJnZXQifSwiT2Zmc2V0IExlZnQiOnsidmFsdWUiOjAuMH0sIk9mZnNldCBSaWdodCI6eyJ2YWx1ZSI6MC4wfX0sInZhbHVlIjoiQmFja3dhcmQifSwiWWF3IE1vZGlmaWVyIjp7InN1Yl9pdGVtcyI6eyJNYW51YWwgTW9kZSI6eyJ2YWx1ZSI6dHJ1ZX0sIk9mZnNldCI6eyJ2YWx1ZSI6LTIyLjB9LCJPZmZzZXQgIzEiOnsidmFsdWUiOi0yOS4wfSwiT2Zmc2V0ICMyIjp7InZhbHVlIjo0OS4wfSwiT2Zmc2V0ICMzIjp7InZhbHVlIjoyMy4wfSwiT2Zmc2V0ICM0Ijp7InZhbHVlIjowLjB9LCJPZmZzZXQgIzUiOnsidmFsdWUiOjAuMH0sIlJhbmRvbWl6ZSI6eyJ2YWx1ZSI6MC4wfX0sInZhbHVlIjoiMy1XYXkgQ2hpbWVyYSJ9fX19LCJDb25maWciOnsiTWFpbiI6eyJNYW5hZ2VyIjpbXX19LCJHZW5lcmFsIjp7Ik1haW4iOnsiR2VuZXJhbCI6eyJcdTAwMDdCNkI2NjVGRkFuaW1hdGlvbiBGaXggQnJlYWtlciI6eyJ2YWx1ZSI6WyJTbGlkaW5nIG9uIFNsb3cgV2FsayJdfSwiRW5hYmxlIEdlbmVyYWwiOnsidmFsdWUiOnRydWV9LCJJZGVhbCBUaWNrIjp7InZhbHVlIjpmYWxzZX0sIkluIEFpciBNb2RlIjp7InN1Yl9pdGVtcyI6eyJEaXNhYmxlIEFpciBTdHJhZmUiOnsidmFsdWUiOnRydWV9LCJIaXQgQ2hhbmNlIjp7InZhbHVlIjozNS4wfSwiV2VhcG9ucyI6eyJ2YWx1ZSI6WyJTU0cgMDgiLCJQaXN0b2wiXX19LCJ2YWx1ZSI6dHJ1ZX0sIkxlZ2FjeSBGYWxsaW5nIE1vZGUiOnsidmFsdWUiOnRydWV9LCJNYWdpYyBLZXkiOnsidmFsdWUiOmZhbHNlfSwiTW9vbndhbGsgSW4gQWlyIE1vZGUiOnsidmFsdWUiOnRydWV9LCJNb29ud2FsayBNb2RlIjp7InZhbHVlIjp0cnVlfSwiTW92ZSBMZWFuIEZvcmNlIjp7InZhbHVlIjoxMDAuMH0sIk5vc2NvcGUgTW9kZSI6eyJzdWJfaXRlbXMiOnsiRGlzdGFuY2UiOnsidmFsdWUiOjEzNS4wfSwiSGl0IENoYW5jZSI6eyJ2YWx1ZSI6NDAuMH0sIldlYXBvbnMiOnsidmFsdWUiOlsiQXV0b3NuaXBlciIsIlNTRyAwOCIsIkFXUCJdfX0sInZhbHVlIjp0cnVlfSwiT24gR3JvdW5kIEZvcmNlIjp7InZhbHVlIjpmYWxzZX0sIk9wdGlvbnMiOnsidmFsdWUiOlsiQXV0byBQZWVrIiwiSnVtcCBTY291dCJdfX19fSwiTWlzY2VsbGFuZW91cyI6eyJNYWluIjp7IkluLUdhbWUiOnsiQ2xhbiBUYWcgU3BhbW1lciI6eyJzdWJfaXRlbXMiOnsiQW5pbWF0aW9uIjp7InZhbHVlIjoiNTAwJCBmb3IgaW52aXRlIn0sIlJhbmRvbSBDYXNlIjp7InZhbHVlIjpmYWxzZX0sIlRleHQiOnsidmFsdWUiOiJjSGltRXJBQUEifX0sInZhbHVlIjpmYWxzZX0sIkRpc2FibGUgZHVyaW5nIFdhcm11cCI6eyJ2YWx1ZSI6dHJ1ZX0sIkVuYWJsZSBNaXNjZWxsYW5lb3VzIjp7InZhbHVlIjp0cnVlfSwiSWNvbiBOb3RpZmljYXRpb25zIjp7InZhbHVlIjp0cnVlfSwiVGFsayBTaGl0Ijp7InZhbHVlIjpbXX0sIlVubXV0ZSBNdXRlZCBQbGF5ZXJzIjp7InZhbHVlIjp0cnVlfX0sIk1vdmVtZW50Ijp7IkF2b2lkIENvbGxpc2lvbnMiOnsidmFsdWUiOmZhbHNlfSwiRGlzdGFuY2UiOnsidmFsdWUiOjUuMH0sIkZhc3QgTGFkZGVyIjp7InZhbHVlIjp0cnVlfSwiTm8gRmFsbCBEYW1hZ2UiOnsidmFsdWUiOmZhbHNlfX19fSwiVmlzdWFscyI6eyJNYWluIjp7IkluZGljYXRvcnMiOnsiNTAwJCBJbmRpY2F0b3JzIjp7InZhbHVlIjpbIkZha2UgTGFnIiwiRGVmdXNpbmciLCJEb3JtYW50IEFpbWJvdCIsIk1pbmltdW0gRGFtYWdlIiwiQWltYm90IFN0YXRzIiwiQm9tYiBJbmZvIiwiU2FmZSBQb2ludHMiLCJCb2R5IEFpbSIsIkZha2UgTGF0ZW5jeSIsIkhpZGUgU2hvdHMiLCJEb3VibGUgVGFwIiwiRmFrZSBEdWNrIiwiRnJlZXN0YW5kaW5nIl19LCJBbnRpIEFpbSBBcnJvdyI6eyJzdWJfaXRlbXMiOnsiQSI6eyJ2YWx1ZSI6IkZGRkZGRkZGIn0sIkIiOnsidmFsdWUiOiJGRjcyM0NGRiJ9LCJPdXRsaW5lIjp7InZhbHVlIjoiMDAwMDAwNDYifSwiUmFkaXVzIjp7InZhbHVlIjoxNS4wfSwiU2l6ZSI6eyJ2YWx1ZSI6MTIuMH19LCJ2YWx1ZSI6ZmFsc2V9LCJDcm9zc2hhaXIgSW5kaWNhdG9ycyI6eyJzdWJfaXRlbXMiOnsiR2xvdyI6eyJ2YWx1ZSI6ZmFsc2V9LCJNYWluIENvbG9yIjp7InZhbHVlIjoiRkZGRkZGRkYifSwiTWluaW11bSBEYW1hZ2UiOnsidmFsdWUiOnRydWV9LCJQb3NpdGlvbmluZyI6eyJ2YWx1ZSI6IkF1dG8ifSwiV2F0ZXJtYXJrIENvbG9yIjp7InZhbHVlIjoiRkY3MjNDRkYifX0sInZhbHVlIjp0cnVlfSwiRW5hYmxlIEluZGljYXRvcnMiOnsidmFsdWUiOnRydWV9fSwiTG9ncyI6eyJFbmFibGUgTG9ncyI6eyJjb2xvciI6IkZGODU1REZGIiwidmFsdWUiOnRydWV9LCJFdmVudHMiOnsidmFsdWUiOlsiRGFtYWdlIERlYWx0IiwiQWltYm90Il19LCJHbG93Ijp7InZhbHVlIjpmYWxzZX0sIlN0eWxlIjp7InZhbHVlIjpbIkNoaW1lcmEiLCJDb25zb2xlIFBhbmVsIl19fSwiTWFpbiI6eyJBc3BlY3QgUmF0aW8iOnsidmFsdWUiOjc5LjB9LCJCZXR0ZXIgU2NvcGUgT3ZlcmxheSI6eyJzdWJfaXRlbXMiOnsiQXNwZWN0IFJhdGlvIjp7InZhbHVlIjowLjB9LCJDb2xvciI6eyJ2YWx1ZSI6IkZGRkZGRkZGIn0sIkV4Y2x1ZGUgTGluZXMiOnsidmFsdWUiOltdfSwiR2FwIjp7InZhbHVlIjoxMC4wfSwiTGluZSI6eyJ2YWx1ZSI6MS4wfSwiU3ByZWFkIEJhc2VkIjp7InZhbHVlIjoiRGlzYWJsZWQifX0sInZhbHVlIjpmYWxzZX0sIkNvbnNvbGUgQ29sb3IiOnsiY29sb3IiOiIzRjNGM0Y5QiIsInZhbHVlIjp0cnVlfSwiRW5hYmxlIFZpc3VhbHMiOnsidmFsdWUiOnRydWV9LCJIaXQgTWFya2VyIjp7InN1Yl9pdGVtcyI6eyJEYW1hZ2UgTWFya2VyIjp7ImNvbG9yIjoiRkZGRkZGRkYiLCJ2YWx1ZSI6dHJ1ZX0sIkR1cmF0aW9uIjp7InZhbHVlIjo0LjB9LCJIZWFkc2hvdCI6eyJ2YWx1ZSI6IkNGRkYwMEZGIn0sIlNjcmVlbiBNYXJrZXIiOnsiY29sb3IiOiJGRkZGRkZFNiIsInZhbHVlIjp0cnVlfSwiV29ybGQgTWFya2VyIjp7ImNvbG9yIjoiRkZGRkZGRTYiLCJ2YWx1ZSI6dHJ1ZX19LCJ2YWx1ZSI6dHJ1ZX0sIlZpZXdtb2RlbCBDaGFuZ2VyIjp7InN1Yl9pdGVtcyI6eyJGaWVsZCBvZiBWaWV3Ijp7InZhbHVlIjo1MzAuMH0sIk9mZnNldCBYIjp7InZhbHVlIjoxMC4wfSwiT2Zmc2V0IFkiOnsidmFsdWUiOi01MC4wfSwiT2Zmc2V0IFoiOnsidmFsdWUiOi02LjB9LCJPcHBvc2l0ZSBLbmlmZSBIYW5kIjp7InZhbHVlIjp0cnVlfX0sInZhbHVlIjpmYWxzZX0sIlpldXMgV2FybmluZyI6eyJjb2xvciI6IkZGQjQ4REZGIiwidmFsdWUiOnRydWV9fX19fQ==U     X�-  B+ L X�  X�- B+ L K  ��//export//import�  :-   9   ' B -   9  ' ' B -   9  ' ' ' B 4   .  3  3 3 3	 , -  9
' ' '	 '
 +   B -  9
' ' '	 '
 +  3 B +  -  9
' '	 '
 ' +   B - 3 =2  �K  ���� on_console_inputExport to Clipboard Load Default SettingsImport from Clipboardmanager	mainconfigbutton    Manager
group	Mainsub_tabConfigtabR   
6      B6 ' ) BK  FF3E3Ecreated global
errorrawsetX   	6   ' B 6  9  ) -  B K  �execute_after
utilscollectcollectgarbage�   *-   6 9 - B#=  6  9  B - 9 9B  X�- 9B- 9 9B  X�- 9  B6 9- !)  X�6 9. K    �  �realtimeon_rendergetenabled_refget_local_playerentityglobalsframetime� 
v6  9B  X�K  9	  XJ�-   9B  XD�9 9  X�9 . 9 9  X�9 . 9  X�9  X�-  X�-  X�1 -   X�)�X�)>�= 9  X�9  X�-  X�-  X�1 -   X�)�X�)>�=	 9 9 9 9 . . . . + + + + = = = = - 9
 9B  X�- 9  B 9B  X�K  - 9    B-	 9
 9B  X�-	 9  BK  �	�
�����   get_player_weaponon_createmoveenabled_refsidemoveforwardmovein_moveleftin_moverightin_backin_forwardgetm_MoveTypeget_local_playerentity    K  '   -   9   B K   on_level_initZ  -  9  9B  X�-  9  BK   on_bullet_impactgetenabled_refX  -  9  9B  X�-  9  BK   on_player_hurtgetenabled_ref    K  Y  -  9  9B  X�-  9  BK   on_player_deathgetenabled_refW   -   9     9  B    X�-   9  B K   on_net_update_endgetenabled_ref`  -  9  9B  X�-  9  BK   on_player_connect_fullgetenabled_ref.  -  9   BK   on_console_inputZ  -  9  9B  X�-  9  BK   on_item_purchasegetenabled_ref|   6  9 X�) "6 9$6 9  X�)   B6 9 BL abssinpi	mathrealtimeglobals<   )   X�U�   X�)    X�U�   X�L  �  M6   9  B )    X �K  '  6  9' B 9B6 B 9-   B 	 B' ) - )	 M!�-  9	
 
 B
- #- * B 9
  B 9B	
 X�   6 9'   B& O�6  9  6	 9		'
  6  9- B A	 AK  �����get_iconsidebar
%s%sformatstringto_hex	lerpsub00000000as_hsv
colorto_hsvLink Activeget_styleget_alphaui�̙���������� 6�4   3 =  6 6   B3 +  6 9' ' )[ '	 B6
 93 6 9' B 9' B 9+ B6 9 9 B2 �+  6 9' ' ' ' B+ + + + +	 +
 3 6 9 9 B2 �+  3 6 9 9 B+  3 6 9 9 B+  3  6 9! 9	 B+  3" 6 9#	 9
 B+  3$ 6	 9	%	
	 9		 B	+	  3	& 6
 9
'

 9

	 B
+
  3
( 6 9) 9
 B+  3* 6 9+ 9 B+  3, 6 9- 9 B+  3. 6 9/ 9 B-  90B'1 '2   33 34 6 9 935 B2 �2  �K  ����
��   
checkChimera Release	inititem_purchase console_input player_connect_full net_update_end player_death player_spawn player_hurt bullet_impact level_init createmove_run createmove strafe assistmovement	mainmiscellaneous	findsetrendereventsvisibilityswitch	testcreateui realtimeglobalsfloat(__thiscall*)(void*)VEngineClient014engine.dllget_vfunc
utils _Gsetmetatable __newindex�Y  % I6   3 = 6   3 = 3  B '  ' ' +  6	 '
 B 9%93 B6	 ' B6	 ' B6 6 9' '	 '
 ' ' B A 93 =+  3	 B	+	  3
 B
,
 3 B+  3 B+  3 B+  3 B3  B+  3! B+  3" B+  3# B3$ B2  �K              get_overrideOffsetYawAnglesAnti AimAimbot	finduigetmetatableneverlose/memoryneverlose/base64 set_update_callbackSIGNEDneverlose/lagrecordrequire�1
1;вредитель
1;позорник;норм играешь
1;ну почему такие убивают меня
1;старайся;сильнее
е1;красава;и ты меня убил
1;затупок
1;наигрался
1;лови патрон
е1
1;куда ты шлюха
1;спи
1;допрыгался
1;закончилась мана
1
1
1
1
1
1;ливай позор
1;рычи
�#я стрельнул?
ты в бекшут меня забрал?
фу
высер;зачем ты пытаешься?
опять лаки высер убивает
ну фу;что ты делаешь
напишешь 1 - мамка в канаве
ты сам то понял как убил меня?
отмена;сын шлюхи;просто убил как даун
ну тимейт же рядом был
челики;у вас сервак не откидывает?
не ливай;щас я тебя оттарабаню мусор
тут роллы пашут не?
ну где тимейт опять
челики;вас откидывает сервак?
боже;опять команда даунов
ну да;тебе повезло;щас я тебя настигну мразота
щас поиграем клоун;ливнешь мамка сдохнет
беги туда же;новый раунд будет;я тебя раскидаю мразь
не повезло
блять;ну ты тупая;животина
ну;что ты делаешь
отмена;оно же тупое
ебаный сприд;я рядом стрельнул?
тупорылыму же повезёт
удача в этом раунде на твоей стороне
миндмг;ебаный;слетел
я мисанул?
без пота слабо слитая хуйня?
да сука
ммм
мразота потеет
как всегда;я на позиции;а тимммейты в хуй не дуют
я вообще бедолага;зашел с никсом
ты дт отжал?
нет;хуесос тупой
тупой;куда ты летишь идиот
что ты сделал;тупой даун;безмозглый
опять;меня убивает;тупорылый;фу блять
csy;сын шлюхи;тупой
не;этот сочник пикнет
этот хуесос;без скита;убивает меня как то
убил меня?;теперь радуйся сиди две минуты;хуесос нищий
НЕТ;только не это;тупорылый еблан
ye ljk,f`, cerf;ну долбоеб сука;что ты делаешь мразь
gbljhfc;пидорас тупой;куда ты пикнуло
cerf;да блять вы шлюхи;я что один в тиме играю
,kznm;куда вся тима отлетае на раз два
не радуйся, щас мой чит прогреется и пиздец тебе
пиздец;что с читом
lf cerf;я в десинк сру;ебаный в рот
ytn;сын шлюхи;1х1 2х2 прямо щас?
ну уебище;куда я не стреляю
ну как оно меня убивает;ну что это такое
изи мапа
у вас тоже после обновы часто в сприд срет?
что это;серв?;у всех лосс скаканул щас?
норм;похлопаю
,kznm;оно меня бесит
сидит на одном споте;автопик+миндмг прожало;животное потное
подловила мразь
я сука один в тиме потею;а эти дуры все умирают
потная мразота;отожми подпик
csy ik.[b;сын шлюхи;потеет же сидит
я в муте?
ik.[f;2х2 пошли;пидор дс кидай
на подпике;хуесосина
ddddd;,kznm;заебала клавиша залипать
не радуйся пидорас
,kznm;тупой даун;реально;уебище
ну конечно;я просто похлопаю тебе
ахахах;что ты нахуй делаешь
блядина;ты серьезно сидишь потеешь;выйди в кд чмошница
hdf bot
ahahaajajfsa;look at ur playstyle;retarded russian
idc
нене;как оно убивает;это пздц
хуя;че за бектрек
gbljhfc;пошли 1х1 сын блядоты;дс опрокинь свой
ебаная чепушня;2х2 прямо щас кидай дс свой нищий
красава;лучший просто
ишак;куда ты так
kk
kys
нихуя ты меня шлепнул
м;забавно
осел;тебе повезло что мне не повезло
в глазах потемнело чуть
а хуль
уебище;сидит потеет на одном споте
фу;ну он же байтится;и както убивает меня
�/игрок?
парашыч ебаный
обоссан
by st1vaha hvh boss
але уебище химера яв гетни потом вырыгивай что то
1;hs bot;nice iq
1;*DEAD*;ахахах
в сон нахуй
трахнут;by me
поспи;хуйсоска ебаная
лови в харю;припиздок немощный
слишком сочный для Chimera.technologies
sleep
изи упал нищий
ahaha;what you do dog??
1;owned nn
l2p bot
AHAH;why you dead dog?
лови тапыча;мусор нищий
1 мусор учись играть
че, пососал глупый даун?
улетаешь со своего ванвея;хуесос
0 iq
сразу видно кфг иссуе мб конфиг у витмы прикупишь ?
ez;baited nn
*DEAD* пофикси додик
сука не позорься и ливни лол
ёк макарек египетская сила как я зарядил тебе
устал улетать с первой пули?;не переживай, все получится
owned by chimera kid
EZ for chimera dog
sit kid, by chimera
chimera > all
,kznm;пиздец;я тебя не видел даже
не будь терпилой, переходи на темную сторону *CHIMERA.lua vs all dogs*
натренированный ротик, сразу видно без чимеры гамаеш)
1;спать чюрка
норм луа у тя в следующем раудне туда же прибегай в рот брать
видно ты без Chimera.lua сидишь, пора бы обновляться сосик)
1;x.hrf t,fyfz;чюрбек ебаный куда летим
1;будет раунд где ты не улетишь одним патроном?
1;как на этот раз оправдаешься?
забайтилось тупое
1;грязная хуйня;сиди семечки грызи дальше
молчи если скит хуйня говори если мать шлюха
гвоздь мне в кеды;вот это хедшотик залетел
спи;моча ебаная
chimera.lua > all world
депортирован в ад к матери шлюхе
yt bot
спи вечным сном
я играю на лайфхакерском конфиге by vitma (◣_◢)
ты ебаный сочник;нахуй ты вообще на хвх зашел
упал;хуета ебаная
1;мать твою ебал
1 сын шлюхи
улетаеш в копилку мертвых сочников
иди приклей подорожник к ебальнику клоп ахаха
ну какой же ты нищий
единицей свалился фуфлыжник
Best and cheap configurations for gamesense, otc, and neverlose waiting for your order  at ---> t.me/nibbaslayerr
1 байтнутый;дальше скарься меня тварь ебаная
AHHAHAHHAHAHH;1 ДЕРЕВО ЕБАНОЕ
THIS IS CHIMEEEEERAAA (◣_◢)
Loading cfg by vitma… ███████[][][] 77% #pizdavam
мне показалось или чо;у тебя форвард на пике был?
куда ты пикаешь то;скряга ебаная
зарядил по кипятильнику
сочнейший котелок взъебан
башка кибит уже убивать вас нищих)
отлетаешь ослиный высер
а нл сегодня пенит
поймал в шляпу?
а читик сегодня бодро раздает
лови в пиздак мразота
опять забайтился мусор
что ты делаешь?
опять умер?
четко в жбан крякеру залетело
оправдайся;почему ты опять умер
опять умер?))
1;в следующий раз повезет дурочка
1 мразота
ХАХАХ ОТСОСАЛ ДАУН
1;iq? nn
1 сочник
что ты щас сделал?;ты опять упал?
ты просто нулячий дядь
1;пора ливать;чмошница
раунд за раундом падаешь чепушила;хех
понадеялся на удачу?
ботяра, ты про chimera.lua слыхала?
1 лапша ебаная
1;что ты делаешь тупой
что ты сделал?;опять умер?))
1;ахаха;спать шлюшка
1;куда ты пикаешь?;тупорылый
1;лучше выйди;ты рял глупый
ахаха;опять умер
hs bot;nice iq
1;*DEAD*;ахахах
1;идиот пиши дисконект в консоль;хватит позориться
1;я даже не знаю как тебя обозвать уже;тупее тебя реально надо поискать
ты без Chimera.lua чтоли?;не завидую
1;легитная пробка
1;дрянь без чимеры;тебе максимум клинов хуярить
1;наивный ботик;куда пикаем
впенен ботик by Chimera.lua >_<
лови по чепчику мудло
куда поехала сопля
1;ты че там уснул;червячок
а куда мы бежим то
u mad
nice try
пора ливать чмоня
1;тебе на сегодня не хватит сопля?
ахаха;ну почему ты такой глупый
пикнул?;сиди и наблюдай теперь чмо
зря ты так летишь;у тебя ноль шансов убить меня
zero chance to kill chimera.lua user *_*
Chimera.lua will always be ahead *all dogs owned*
dont even try to kill me next time
whatever you do, Chimera.lua do it better ^_^
1;скули
спать узкий
думал убежишь?;а вот и я тут как тут
е1
ой
бульк
ебать кого я шлепнул
шляпку поймал
1;отзовись в чате;оправдайся почему забайтился
гори в аду
рычи
куда ты пикаешь;славик
  shuffle 
clear
table LJN 	 4    <6    BH�
  X�  <FR�L 
pairs� 	 "6  6   B X�+ X�+ ' B+ 6 -  BH�  X�+ X�FR�  X�6 ' ) B6 9-    BK   �insert
table0the function callback is already registered
error
pairs"callback has to be a functionfunction	typeassert� 	 6  6   B X�+ X�+ ' B6 -  BH	�  X�6 9-   B+ L FR�+ L  �remove
table
pairs"callback has to be a functionfunction	typeassert    -   L   �^ 	 +  6  -  BX
�6  G  A X� X�+  X�ER�L   �
pcallipairso 	 4   3  3 3 3 5 ====.  2  �K  �get_listfire_callbackunregisterregister           X�)  =  )  = 4  = K  9  9B4  <K  get_index	datalocal_player_tickbaseestimated_tickbase�  6 9 =  9	  X�6 9B9= K  m_nTickBaseget_local_playerentitylocal_player_tickbasechoked_commandsglobalsestimated_tickbase � &6  96  9 -  
  X�- 
  X�-  : - : !6 96  9 B)   X� X� 
 X�6  B  X� L ��to_timetickinterval
floor	mathclock_offsetclient_tickglobals�  	 (6  
  X�9  X�+ X�+ ' B6 9B X
�9 
 X�6  B  X� L  9B9 X�  9  B  X� L to_tickscurrentto_timelocal_player_tickbaseget_local_playerentityinvalid playerget_simulation_timeassert�  -   9 B6 9B9: 6 9 B!! X�6  B  X� L  �to_ticksestimated_tickbaseto_timelatencynet_channel
utils
float�  	H
  X�9 
  X�9  X�K  9 9:  X�:996  BX
0�	
  X�+ X�+  X�+ 6  X�6  
 +  BX� X�  X�9 X�6  
 +  BX� 99B)  X�)  ) M�6   +  BO�X�E
R
�K  distsqrsimulation_timerawsetis_aliveipairsallow_updatesoriginlocaldatarecords� 3�6  
  X�9  X�+ X�+ ' B 9B 9B 9B9 9 8  X	�6 B	 9'
	 B4	  B	 9'

 B5	 6
 B
=
	B<9 89	9	
  9
  B
-  9 B=	+ =	9	
 X��
 X�� 9B X�X��:  X�6 9)  6 :9!
B A  X�)  )   X�9	9	  X�9	=X�)   X�9	)  =:  X
�6 9)  :9!B  X�)  =	9	==
	:  X�:9
 X�X^�+ =	6  '	 -  5 =6 
 B!=6 9:  X�:9!  X�)  )  )H B= 6 9:  X�6 :9!
B  X�)  )  )H B=!=":  X�:9"  X� =#=
:  X�:9  X�
 =$ 9%B=& 9'B=(4 9)>9*>=+B A6, 9- 9.5/ ==0=1B  92   BK  ��verify_recordsentity
index  	callentity_updateeventsvolumem_vecMaxsm_vecMinseye_positionget_eye_positionanglesget_anglessimulation_time_oldorigin_oldoriginchokedelapsed
clampshifting  rawsetlast_animated_simulation	tick
cycleyxsimulation_timeto_ticksmax	mathis_dormantupdated_this_framefire_callbackallow_updatesget_player_timeno_entryvector allow_updates
cycle last_animated_simulation updated_this_framelocaldatarecordsstructnew_class	datais_aliveget_originget_indexinvalid playerget_simulation_timeassert � 	24 G ?   	 X	�6  9B  X�K   9D :6  B
  X� X�K   X�9  X� 9D  X� X� X
�6  9 B  X�K   9D +  L getnumber
cdatauserdatanil	typeget_indexget_local_playerentity���� �    9  G A  X�K  9 98
  X�9
  X�9  X�K  L recordslocaldata	datalagrecordget_player_idxC  	  9  G A  X�K  9L recordsget_player_datai   9  G A  X�K  94 G ?  :  X�) 8L recordsget_player_data�����	 G  9  G A  X�K  4 G ?  :  X�) 98  X�K  5 =9=99=5 9=9	=	9
=9=9
 99B==
5 99=9=9=99!==5 9=9=99=9=99== J commandno_entryshifting
cycle
chokechoked  elapsedsimulation_time_oldsimulation_timeanimated  last_animated_simulationchangedistsqrpreviousorigin_oldcurrentoriginvolume  anglesupdated_this_framelocaldata	tickid  recordsget_player_data����5  9   9G C get_server_timelagrecord1   -   9     9  B K  �
purgelagrecord:  -  9  9  BK  �track_timelagrecord;  -   9   - - BK   ���on_net_update�  +-   9   6 9B  9 + B  9 + B
  X�6 9 X�  9 B2 � 9B X�6 9
6 9 =	 6 9+ + 3 B2  �K  K  � get_playersclock_offsetclient_tickestimated_tickbaseis_alive
purgeis_in_gameglobalsget_dead_timeget_server_timeget_local_playerentitylagrecord"  -   9   G  C   �register$  -   9   G  C   �unregister8  -   9     9  G  C  �get_player_dataoutput0  -   9     9  G  C  �get_alloutput3  -   9     9  G  C  �get_recordoutput5  -   9     9  G  C  �get_snapshotoutput8  -   9     9  G  C  �get_server_timeoutputX   
6   9  6 9*  6 9B)@ D  	huge	mathrandom_int
utilslshiftbit��    -  B .   K  ��j  -   X�- X�+ X�+  X�6  ' ) BL ��!security measurement failure
errork    X�-  X�+ X�+  X�6 ' ) BL �!security measurement failure
errorSIGNED�  G w6   9  6 9' 6 9' ' ) B A6 9' 6 9' '	 ) B A3
 +  3 B6 B 9' B5 4  =3 =3 =3 =3 =3 =3 =3 =B 9' B5! 3  ="3# =$3% =&3' =(3) =*3+ =B6, 9- 9.3/ B6, 90 9.31 B6, 92 9.33 B55 34 =637 =839 =$3: =&3; =(3< =*3= =3> +   6	, 9	?	
	 9	.	3@ B	6	A 4
  5B 3C =D3E =F2  �D	 __index 
__pow  __metatablesetmetatable render      unset_update_callback set_update_callback    net_update_end createmove setlevel_initevents get_snapshot get_record get_all get_player_data get_player_idx   outputon_net_update verify_records get_dead_time get_player_time get_server_time track_time 
purge 	data local_player_tickbase estimated_tickbase lagrecordstructnew_class  )2B 05 ? ? ? ? 03 05 ? ? ? ? 83 CF 1003 05 ? ? ? ? 83 CF 10engine.dllopcode_scan
utilsuint32_t*	castffisv_maxunlag	cvar local shl, shr, band = bit.lshift, bit.rshift, bit.band
local char, byte, gsub, sub, format, concat, tostring, error, pairs = string.char, string.byte, string.gsub, string.sub, string.format, table.concat, tostring, error, pairs

local extract = function(v, from, width)
	return band(shr(v, from), shl(1, width) - 1)
end

local function makeencoder(alphabet)
	local encoder, decoder = {}, {}
	for i=1, 65 do
		local chr = byte(sub(alphabet, i, i)) or 32 -- or ' '
		if decoder[chr] ~= nil then
			error('invalid alphabet: duplicate character ' .. tostring(chr), 3)
		end
		encoder[i-1] = chr
		decoder[chr] = i-1
	end
	return encoder, decoder
end

local encoders, decoders = {}, {}

encoders['base64'], decoders['base64'] = makeencoder('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=')
encoders['base64url'], decoders['base64url'] = makeencoder('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_')

local alphabet_mt = {
	__index = function(tbl, key)
		if type(key) == 'string' and key:len() == 64 or key:len() == 65 then
			-- if key is a valid looking base64 alphabet, try to make an encoder/decoder pair from it
			encoders[key], decoders[key] = makeencoder(key)
			return tbl[key]
		end
	end
}

setmetatable(encoders, alphabet_mt)
setmetatable(decoders, alphabet_mt)

local function encode(str, encoder)
	encoder = encoders[encoder or 'base64'] or error('invalid alphabet specified', 2)

	str = tostring(str)

	local t, k, n = {}, 1, #str
	local lastn = n % 3
	local cache = {}

	for i = 1, n-lastn, 3 do
		local a, b, c = byte(str, i, i+2)
		local v = a*0x10000 + b*0x100 + c
		local s = cache[v]

		if not s then
			s = char(encoder[extract(v,18,6)], encoder[extract(v,12,6)], encoder[extract(v,6,6)], encoder[extract(v,0,6)])
			cache[v] = s
		end

		t[k] = s
		k = k + 1
	end

	if lastn == 2 then
		local a, b = byte(str, n-1, n)
		local v = a*0x10000 + b*0x100
		t[k] = char(encoder[extract(v,18,6)], encoder[extract(v,12,6)], encoder[extract(v,6,6)], encoder[64])
	elseif lastn == 1 then
		local v = byte(str, n)*0x10000
		t[k] = char(encoder[extract(v,18,6)], encoder[extract(v,12,6)], encoder[64], encoder[64])
	end

	return concat(t)
end

local function decode(b64, decoder)
	decoder = decoders[decoder or 'base64'] or error('invalid alphabet specified', 2)

	local pattern = '[^%w%+%/%=]'
	if decoder then
		local s62, s63
		for charcode, b64code in pairs(decoder) do
			if b64code == 62 then s62 = charcode
			elseif b64code == 63 then s63 = charcode
			end
		end
		pattern = format('[^%%w%%%s%%%s%%=]', char(s62), char(s63))
	end

	b64 = gsub(tostring(b64), pattern, '')

	local cache = {}
	local t, k = {}, 1
	local n = #b64
	local padding = sub(b64, -2) == '==' and 2 or sub(b64, -1) == '=' and 1 or 0

	for i = 1, padding > 0 and n-4 or n, 4 do
		local a, b, c, d = byte(b64, i, i+3)

		local v0 = a*0x1000000 + b*0x10000 + c*0x100 + d
		local s = cache[v0]
		if not s then
			local v = decoder[a]*0x40000 + decoder[b]*0x1000 + decoder[c]*0x40 + decoder[d]
			s = char(extract(v,16,8), extract(v,8,8), extract(v,0,8))
			cache[v0] = s
		end

		t[k] = s
		k = k + 1
	end

	if padding == 1 then
		local a, b, c = byte(b64, n-3, n-1)
		local v = decoder[a]*0x40000 + decoder[b]*0x1000 + decoder[c]*0x40
		t[k] = char(extract(v,16,8), extract(v,8,8))
	elseif padding == 2 then
		local a, b = byte(b64, n-3, n-2)
		local v = decoder[a]*0x40000 + decoder[b]*0x1000
		t[k] = char(extract(v,16,8))
	end
	return concat(t)
end

return {
	encode = encode,
	decode = decode
}LJ;  	6  9'   B:   L 	int*	castffi
� 	 16     X�+ X�+ ' B6 6 9G A  X�6 6 9  B  6   6 9'  B A6 6 9   B   6   6 9'   B A   J 	castinvalid C type (%s)formatstringtypeofffi
pcalltarget address is nullassert�   6  6 9'   B6  6 9'  B A D invalid C type (%s)formatstringassert	$[1]typeofffi
pcallw 4  6  -  - G  A ?  :  X�6 ) 6   B C - : G  C  ���unpackselect
pcall����    -   - + D   �  -  : G C  �'    X�-    X�- L ��C  	-  B6  9 9-  BL  �
unsetshutdownevents�  -  - - - + B  X�6    X�6 ' ) D 6 9 9- BL   ����setshutdowneventsan unknown error occured
errorlast_log� <6  
  X�6  B X�+ X�+ ' B+  -  9  G A-  9 B6 6 9 3		 B6  	 6

 9

'  B
 A+  4	  4
  3 3 =
3 =
3 =
3 =
6 	 5 =
B 2	 �
 9	2  �D	  ���__index __metatablesetmetatable attach detach get_address get_original invalid C type (%s)formatstring 	castffi
pcallmake_pointerget_ctypeinvalid target functionfunction	typeassert�	 6  9' 6 9   B  X�6 ' ) BB-  9: 8 G C  �hook_funcinvalid interface
errorcreate_interface
utilsvoid***	castffi�   D+   4   3 =  3 = 3 = , 6 9' B6 9'	 B6 9
' 6 9' '	 B  X�6 ' )	 BB9  6 9
' 6	 9		'
 ' B	 	 X
�6	 '
 ) B	B A 6 9
 	 B 6 9
 	 B 3 = 3 = 2 �2  �L   hook_vfunc hook_funcinvalid signature #2&E8 ? ? ? ? 83 C4 08 FF 15 ? ? ? ?invalid signature #1
error55 8B EC 51 8B 45 10 C7gameoverlayrenderer.dllopcode_scan
utilsuintptr_t	cast void(__cdecl*)(void*, bool).bool(__cdecl*)(void*, void*, void*, bool)typeofffi make_pointer get_ctype follow_relative_jump 
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				
					return function(type, f, ...)
						return ffi.cast(type, f)(...)
					end
				