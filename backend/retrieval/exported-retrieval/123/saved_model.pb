№─
щ╕
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceИ
б
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeИ
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
TouttypeИ
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
TouttypeИ
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
е
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758ен
Ф?
ConstConst*
_output_shapes	
:ш*
dtype0	*┘>
value╧>B╠>	ш"└>                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              А       Б       В       Г       Д       Е       Ж       З       И       Й       К       Л       М       Н       О       П       Р       С       Т       У       Ф       Х       Ц       Ч       Ш       Щ       Ъ       Ы       Ь       Э       Ю       Я       а       б       в       г       д       е       ж       з       и       й       к       л       м       н       о       п       ░       ▒       ▓       │       ┤       ╡       ╢       ╖       ╕       ╣       ║       ╗       ╝       ╜       ╛       ┐       └       ┴       ┬       ├       ─       ┼       ╞       ╟       ╚       ╔       ╩       ╦       ╠       ═       ╬       ╧       ╨       ╤       ╥       ╙       ╘       ╒       ╓       ╫       ╪       ┘       ┌       █       ▄       ▌       ▐       ▀       р       с       т       у       ф       х       ц       ч       ш       щ       ъ       ы       ь       э       ю       я       Ё       ё       Є       є       Ї       ї       Ў       ў       °       ∙       ·       √       №       ¤       ■                                                                      	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            А      Б      В      Г      Д      Е      Ж      З      И      Й      К      Л      М      Н      О      П      Р      С      Т      У      Ф      Х      Ц      Ч      Ш      Щ      Ъ      Ы      Ь      Э      Ю      Я      а      б      в      г      д      е      ж      з      и      й      к      л      м      н      о      п      ░      ▒      ▓      │      ┤      ╡      ╢      ╖      ╕      ╣      ║      ╗      ╝      ╜      ╛      ┐      └      ┴      ┬      ├      ─      ┼      ╞      ╟      ╚      ╔      ╩      ╦      ╠      ═      ╬      ╧      ╨      ╤      ╥      ╙      ╘      ╒      ╓      ╫      ╪      ┘      ┌      █      ▄      ▌      ▐      ▀      р      с      т      у      ф      х      ц      ч      ш      щ      ъ      ы      ь      э      ю      я      Ё      ё      Є      є      Ї      ї      Ў      ў      °      ∙      ·      √      №      ¤      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            А      Б      В      Г      Д      Е      Ж      З      И      Й      К      Л      М      Н      О      П      Р      С      Т      У      Ф      Х      Ц      Ч      Ш      Щ      Ъ      Ы      Ь      Э      Ю      Я      а      б      в      г      д      е      ж      з      и      й      к      л      м      н      о      п      ░      ▒      ▓      │      ┤      ╡      ╢      ╖      ╕      ╣      ║      ╗      ╝      ╜      ╛      ┐      └      ┴      ┬      ├      ─      ┼      ╞      ╟      ╚      ╔      ╩      ╦      ╠      ═      ╬      ╧      ╨      ╤      ╥      ╙      ╘      ╒      ╓      ╫      ╪      ┘      ┌      █      ▄      ▌      ▐      ▀      р      с      т      у      ф      х      ц      ч      ш      щ      ъ      ы      ь      э      ю      я      Ё      ё      Є      є      Ї      ї      Ў      ў      °      ∙      ·      √      №      ¤      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            А      Б      В      Г      Д      Е      Ж      З      И      Й      К      Л      М      Н      О      П      Р      С      Т      У      Ф      Х      Ц      Ч      Ш      Щ      Ъ      Ы      Ь      Э      Ю      Я      а      б      в      г      д      е      ж      з      и      й      к      л      м      н      о      п      ░      ▒      ▓      │      ┤      ╡      ╢      ╖      ╕      ╣      ║      ╗      ╝      ╜      ╛      ┐      └      ┴      ┬      ├      ─      ┼      ╞      ╟      ╚      ╔      ╩      ╦      ╠      ═      ╬      ╧      ╨      ╤      ╥      ╙      ╘      ╒      ╓      ╫      ╪      ┘      ┌      █      ▄      ▌      ▐      ▀      р      с      т      у      ф      х      ц      ч      ш      
э&
Const_1Const*
_output_shapes	
:ш*
dtype0*░&
valueж&Bг&шB0B1B10B100B101B102B103B104B105B106B107B108B109B11B110B111B112B113B114B115B116B117B118B119B12B120B121B122B123B124B125B126B127B128B129B13B130B131B132B133B134B135B136B137B138B139B14B140B141B142B143B144B145B146B147B148B149B15B150B151B152B153B154B155B156B157B158B159B16B160B161B162B163B164B165B166B167B168B169B17B170B171B172B173B174B175B176B177B178B179B18B180B181B182B183B184B185B186B187B188B189B19B190B191B192B193B194B195B196B197B198B199B2B20B200B201B202B203B204B205B206B207B208B209B21B210B211B212B213B214B215B216B217B218B219B22B220B221B222B223B224B225B226B227B228B229B23B230B231B232B233B234B235B236B237B238B239B24B240B241B242B243B244B245B246B247B248B249B25B250B251B252B253B254B255B256B257B258B259B26B260B261B262B263B264B265B266B267B268B269B27B270B271B272B273B274B275B276B277B278B279B28B280B281B282B283B284B285B286B287B288B289B29B290B291B292B293B294B295B296B297B298B299B3B30B300B301B302B303B304B305B306B307B308B309B31B310B311B312B313B314B315B316B317B318B319B32B320B321B322B323B324B325B326B327B328B329B33B330B331B332B333B334B335B336B337B338B339B34B340B341B342B343B344B345B346B347B348B349B35B350B351B352B353B354B355B356B357B358B359B36B360B361B362B363B364B365B366B367B368B369B37B370B371B372B373B374B375B376B377B378B379B38B380B381B382B383B384B385B386B387B388B389B39B390B391B392B393B394B395B396B397B398B399B4B40B400B401B402B403B404B405B406B407B408B409B41B410B411B412B413B414B415B416B417B418B419B42B420B421B422B423B424B425B426B427B428B429B43B430B431B432B433B434B435B436B437B438B439B44B440B441B442B443B444B445B446B447B448B449B45B450B451B452B453B454B455B456B457B458B459B46B460B461B462B463B464B465B466B467B468B469B47B470B471B472B473B474B475B476B477B478B479B48B480B481B482B483B484B485B486B487B488B489B49B490B491B492B493B494B495B496B497B498B499B5B50B500B501B502B503B504B505B506B507B508B509B51B510B511B512B513B514B515B516B517B518B519B52B520B521B522B523B524B525B526B527B528B529B53B530B531B532B533B534B535B536B537B538B539B54B540B541B542B543B544B545B546B547B548B549B55B550B551B552B553B554B555B556B557B558B559B56B560B561B562B563B564B565B566B567B568B569B57B570B571B572B573B574B575B576B577B578B579B58B580B581B582B583B584B585B586B587B588B589B59B590B591B592B593B594B595B596B597B598B599B6B60B600B601B602B603B604B605B606B607B608B609B61B610B611B612B613B614B615B616B617B618B619B62B620B621B622B623B624B625B626B627B628B629B63B630B631B632B633B634B635B636B637B638B639B64B640B641B642B643B644B645B646B647B648B649B65B650B651B652B653B654B655B656B657B658B659B66B660B661B662B663B664B665B666B667B668B669B67B670B671B672B673B674B675B676B677B678B679B68B680B681B682B683B684B685B686B687B688B689B69B690B691B692B693B694B695B696B697B698B699B7B70B700B701B702B703B704B705B706B707B708B709B71B710B711B712B713B714B715B716B717B718B719B72B720B721B722B723B724B725B726B727B728B729B73B730B731B732B733B734B735B736B737B738B739B74B740B741B742B743B744B745B746B747B748B749B75B750B751B752B753B754B755B756B757B758B759B76B760B761B762B763B764B765B766B767B768B769B77B770B771B772B773B774B775B776B777B778B779B78B780B781B782B783B784B785B786B787B788B789B79B790B791B792B793B794B795B796B797B798B799B8B80B800B801B802B803B804B805B806B807B808B809B81B810B811B812B813B814B815B816B817B818B819B82B820B821B822B823B824B825B826B827B828B829B83B830B831B832B833B834B835B836B837B838B839B84B840B841B842B843B844B845B846B847B848B849B85B850B851B852B853B854B855B856B857B858B859B86B860B861B862B863B864B865B866B867B868B869B87B870B871B872B873B874B875B876B877B878B879B88B880B881B882B883B884B885B886B887B888B889B89B890B891B892B893B894B895B896B897B898B899B9B90B900B901B902B903B904B905B906B907B908B909B91B910B911B912B913B914B915B916B917B918B919B92B920B921B922B923B924B925B926B927B928B929B93B930B931B932B933B934B935B936B937B938B939B94B940B941B942B943B944B945B946B947B948B949B95B950B951B952B953B954B955B956B957B958B959B96B960B961B962B963B964B965B966B967B968B969B97B970B971B972B973B974B975B976B977B978B979B98B980B981B982B983B984B985B986B987B988B989B99B990B991B992B993B994B995B996B997B998B999
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
j

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name74*
value_dtype0	
Е
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	щ *%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	щ *
dtype0
p

candidatesVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d *
shared_name
candidates
i
candidates/Read/ReadVariableOpReadVariableOp
candidates*
_output_shapes

:d *
dtype0
n
identifiersVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_nameidentifiers
g
identifiers/Read/ReadVariableOpReadVariableOpidentifiers*
_output_shapes
:d*
dtype0
r
serving_default_input_1Placeholder*#
_output_shapes
:         *
dtype0*
shape:         
Р
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1
hash_tableConst_2embedding/embeddings
candidatesidentifiers*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference_signature_wrapper_2850
╟
StatefulPartitionedCall_1StatefulPartitionedCall
hash_tableConst_1Const*
Tin
2	*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *&
f!R
__inference__initializer_3007
(
NoOpNoOp^StatefulPartitionedCall_1
Ў
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*п
valueеBв BЫ
н
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
query_model
	identifiers
	_identifiers


candidates

_candidates
query_with_exclusions

signatures*

0
	1

2*

0*
* 
░
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
trace_3* 
6
trace_0
trace_1
trace_2
trace_3* 

	capture_1* 
─
layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*
KE
VARIABLE_VALUEidentifiers&identifiers/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUE
candidates%candidates/.ATTRIBUTES/VARIABLE_VALUE*
* 

$serving_default* 
TN
VARIABLE_VALUEembedding/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*

	0

1*

0*
* 
* 
* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 
* 
#
%	keras_api
&lookup_table* 
а
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 
У
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
6
2trace_0
3trace_1
4trace_2
5trace_3* 
6
6trace_0
7trace_1
8trace_2
9trace_3* 

	capture_1* 
* 
R
:_initializer
;_create_resource
<_initialize
=_destroy_resource* 

0*

0*
* 
У
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

Ctrace_0* 

Dtrace_0* 
* 

0
1*
* 
* 
* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 
* 

Etrace_0* 

Ftrace_0* 

Gtrace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
 
H	capture_1
I	capture_2* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
═
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameidentifiers
candidatesembedding/embeddingsConst_3*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *&
f!R
__inference__traced_save_3059
╞
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameidentifiers
candidatesembedding/embeddings*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__traced_restore_3078└Ь
я
ю
__inference__initializer_30075
1key_value_init73_lookuptableimportv2_table_handle-
)key_value_init73_lookuptableimportv2_keys/
+key_value_init73_lookuptableimportv2_values	
identityИв$key_value_init73/LookupTableImportV2є
$key_value_init73/LookupTableImportV2LookupTableImportV21key_value_init73_lookuptableimportv2_table_handle)key_value_init73_lookuptableimportv2_keys+key_value_init73_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: m
NoOpNoOp%^key_value_init73/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :ш:ш2L
$key_value_init73/LookupTableImportV2$key_value_init73/LookupTableImportV2:!

_output_shapes	
:ш:!

_output_shapes	
:ш
к
▀
D__inference_sequential_layer_call_and_return_conditional_losses_2978

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	2
embedding_embedding_lookup_2972:	щ 
identityИвembedding/embedding_lookupв+string_lookup/None_Lookup/LookupTableFindV2∙
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         Ж
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         ш
embedding/embedding_lookupResourceGatherembedding_embedding_lookup_2972string_lookup/Identity:output:0*
Tindices0	*2
_class(
&$loc:@embedding/embedding_lookup/2972*'
_output_shapes
:          *
dtype0║
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*2
_class(
&$loc:@embedding/embedding_lookup/2972*'
_output_shapes
:          С
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:          }
IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:          С
NoOpNoOp^embedding/embedding_lookup,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : : : 28
embedding/embedding_lookupembedding/embedding_lookup2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:

_output_shapes
: :K G
#
_output_shapes
:         
 
_user_specified_nameinputs
э
Ь
 __inference__traced_restore_3078
file_prefix*
assignvariableop_identifiers:d/
assignvariableop_1_candidates:d :
'assignvariableop_2_embedding_embeddings:	щ 

identity_4ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_2Д
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*к
valueаBЭB&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHx
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B ▓
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*$
_output_shapes
::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:п
AssignVariableOpAssignVariableOpassignvariableop_identifiersIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_1AssignVariableOpassignvariableop_1_candidatesIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_2AssignVariableOp'assignvariableop_2_embedding_embeddingsIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Ч

Identity_3Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_4IdentityIdentity_3:output:0^NoOp_1*
T0*
_output_shapes
: Е
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*
_input_shapes

: : : : 2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ф
т
D__inference_sequential_layer_call_and_return_conditional_losses_2591
string_lookup_input<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	!
embedding_2587:	щ 
identityИв!embedding/StatefulPartitionedCallв+string_lookup/None_Lookup/LookupTableFindV2Ж
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handlestring_lookup_input9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         Ж
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         ї
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_2587*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_2586y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          Ш
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:

_output_shapes
: :X T
#
_output_shapes
:         
-
_user_specified_namestring_lookup_input
Т
й
)__inference_sequential_layer_call_fn_2647
string_lookup_input
unknown
	unknown_0	
	unknown_1:	щ 
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_2638o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:

_output_shapes
: :X T
#
_output_shapes
:         
-
_user_specified_namestring_lookup_input
╦
9
__inference__creator_2999
identityИв
hash_tablej

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name74*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
Р
▄
E__inference_brute_force_layer_call_and_return_conditional_losses_2782
queries
sequential_2764
sequential_2766	"
sequential_2768:	щ 0
matmul_readvariableop_resource:d 
gather_resource:d

identity_1

identity_2ИвGatherвMatMul/ReadVariableOpв"sequential/StatefulPartitionedCallД
"sequential/StatefulPartitionedCallStatefulPartitionedCallqueriessequential_2764sequential_2766sequential_2768*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_2638t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0б
MatMulMatMul+sequential/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:         
:         
Б
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:         
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:         
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:         
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:         
М
NoOpNoOp^Gather^MatMul/ReadVariableOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:

_output_shapes
: :L H
#
_output_shapes
:         
!
_user_specified_name	queries
Р
▄
E__inference_brute_force_layer_call_and_return_conditional_losses_2699
input_1
sequential_2681
sequential_2683	"
sequential_2685:	щ 0
matmul_readvariableop_resource:d 
gather_resource:d

identity_1

identity_2ИвGatherвMatMul/ReadVariableOpв"sequential/StatefulPartitionedCallД
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_2681sequential_2683sequential_2685*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_2616t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0б
MatMulMatMul+sequential/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:         
:         
Б
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:         
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:         
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:         
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:         
М
NoOpNoOp^Gather^MatMul/ReadVariableOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:

_output_shapes
: :L H
#
_output_shapes
:         
!
_user_specified_name	input_1
■	
ф
*__inference_brute_force_layer_call_fn_2884
queries
unknown
	unknown_0	
	unknown_1:	щ 
	unknown_2:d 
	unknown_3:d
identity

identity_1ИвStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallqueriesunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_brute_force_layer_call_and_return_conditional_losses_2782o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:

_output_shapes
: :L H
#
_output_shapes
:         
!
_user_specified_name	queries
Р
▄
E__inference_brute_force_layer_call_and_return_conditional_losses_2744
queries
sequential_2726
sequential_2728	"
sequential_2730:	щ 0
matmul_readvariableop_resource:d 
gather_resource:d

identity_1

identity_2ИвGatherвMatMul/ReadVariableOpв"sequential/StatefulPartitionedCallД
"sequential/StatefulPartitionedCallStatefulPartitionedCallqueriessequential_2726sequential_2728sequential_2730*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_2616t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0б
MatMulMatMul+sequential/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:         
:         
Б
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:         
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:         
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:         
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:         
М
NoOpNoOp^Gather^MatMul/ReadVariableOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:

_output_shapes
: :L H
#
_output_shapes
:         
!
_user_specified_name	queries
ж
Я
C__inference_embedding_layer_call_and_return_conditional_losses_2994

inputs	(
embedding_lookup_2988:	щ 
identityИвembedding_lookup▒
embedding_lookupResourceGatherembedding_lookup_2988inputs*
Tindices0	*(
_class
loc:@embedding_lookup/2988*'
_output_shapes
:          *
dtype0Ь
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/2988*'
_output_shapes
:          }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:          s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:          Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:         : 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:         
 
_user_specified_nameinputs
■	
ф
*__inference_brute_force_layer_call_fn_2867
queries
unknown
	unknown_0	
	unknown_1:	щ 
	unknown_2:d 
	unknown_3:d
identity

identity_1ИвStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallqueriesunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_brute_force_layer_call_and_return_conditional_losses_2744o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:

_output_shapes
: :L H
#
_output_shapes
:         
!
_user_specified_name	queries
Т
й
)__inference_sequential_layer_call_fn_2625
string_lookup_input
unknown
	unknown_0	
	unknown_1:	щ 
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_2616o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:

_output_shapes
: :X T
#
_output_shapes
:         
-
_user_specified_namestring_lookup_input
Ф
т
D__inference_sequential_layer_call_and_return_conditional_losses_2602
string_lookup_input<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	!
embedding_2598:	щ 
identityИв!embedding/StatefulPartitionedCallв+string_lookup/None_Lookup/LookupTableFindV2Ж
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handlestring_lookup_input9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         Ж
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         ї
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_2598*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_2586y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          Ш
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:

_output_shapes
: :X T
#
_output_shapes
:         
-
_user_specified_namestring_lookup_input
ж
Я
C__inference_embedding_layer_call_and_return_conditional_losses_2586

inputs	(
embedding_lookup_2580:	щ 
identityИвembedding_lookup▒
embedding_lookupResourceGatherembedding_lookup_2580inputs*
Tindices0	*(
_class
loc:@embedding_lookup/2580*'
_output_shapes
:          *
dtype0Ь
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/2580*'
_output_shapes
:          }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:          s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:          Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:         : 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:         
 
_user_specified_nameinputs
э
╒
D__inference_sequential_layer_call_and_return_conditional_losses_2616

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	!
embedding_2612:	щ 
identityИв!embedding/StatefulPartitionedCallв+string_lookup/None_Lookup/LookupTableFindV2∙
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         Ж
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         ї
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_2612*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_2586y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          Ш
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:

_output_shapes
: :K G
#
_output_shapes
:         
 
_user_specified_nameinputs
╨	
▄
"__inference_signature_wrapper_2850
input_1
unknown
	unknown_0	
	unknown_1:	щ 
	unknown_2:d 
	unknown_3:d
identity

identity_1ИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__wrapped_model_2569o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:

_output_shapes
: :L H
#
_output_shapes
:         
!
_user_specified_name	input_1
а
р
__inference__wrapped_model_2569
input_1S
Obrute_force_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleT
Pbrute_force_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	I
6brute_force_sequential_embedding_embedding_lookup_2553:	щ <
*brute_force_matmul_readvariableop_resource:d )
brute_force_gather_resource:d
identity

identity_1Ивbrute_force/Gatherв!brute_force/MatMul/ReadVariableOpв1brute_force/sequential/embedding/embedding_lookupвBbrute_force/sequential/string_lookup/None_Lookup/LookupTableFindV2┐
Bbrute_force/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Obrute_force_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleinput_1Pbrute_force_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         ┤
-brute_force/sequential/string_lookup/IdentityIdentityKbrute_force/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         ─
1brute_force/sequential/embedding/embedding_lookupResourceGather6brute_force_sequential_embedding_embedding_lookup_25536brute_force/sequential/string_lookup/Identity:output:0*
Tindices0	*I
_class?
=;loc:@brute_force/sequential/embedding/embedding_lookup/2553*'
_output_shapes
:          *
dtype0 
:brute_force/sequential/embedding/embedding_lookup/IdentityIdentity:brute_force/sequential/embedding/embedding_lookup:output:0*
T0*I
_class?
=;loc:@brute_force/sequential/embedding/embedding_lookup/2553*'
_output_shapes
:          ┐
<brute_force/sequential/embedding/embedding_lookup/Identity_1IdentityCbrute_force/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:          М
!brute_force/MatMul/ReadVariableOpReadVariableOp*brute_force_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0╙
brute_force/MatMulMatMulEbrute_force/sequential/embedding/embedding_lookup/Identity_1:output:0)brute_force/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d*
transpose_b(V
brute_force/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
Ю
brute_force/TopKV2TopKV2brute_force/MatMul:product:0brute_force/TopKV2/k:output:0*
T0*:
_output_shapes(
&:         
:         
е
brute_force/GatherResourceGatherbrute_force_gather_resourcebrute_force/TopKV2:indices:0*
Tindices0*'
_output_shapes
:         
*
dtype0o
brute_force/IdentityIdentitybrute_force/Gather:output:0*
T0*'
_output_shapes
:         
j
IdentityIdentitybrute_force/TopKV2:values:0^NoOp*
T0*'
_output_shapes
:         
n

Identity_1Identitybrute_force/Identity:output:0^NoOp*
T0*'
_output_shapes
:         
°
NoOpNoOp^brute_force/Gather"^brute_force/MatMul/ReadVariableOp2^brute_force/sequential/embedding/embedding_lookupC^brute_force/sequential/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         : : : : : 2(
brute_force/Gatherbrute_force/Gather2F
!brute_force/MatMul/ReadVariableOp!brute_force/MatMul/ReadVariableOp2f
1brute_force/sequential/embedding/embedding_lookup1brute_force/sequential/embedding/embedding_lookup2И
Bbrute_force/sequential/string_lookup/None_Lookup/LookupTableFindV2Bbrute_force/sequential/string_lookup/None_Lookup/LookupTableFindV2:

_output_shapes
: :L H
#
_output_shapes
:         
!
_user_specified_name	input_1
э
╒
D__inference_sequential_layer_call_and_return_conditional_losses_2638

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	!
embedding_2634:	щ 
identityИв!embedding/StatefulPartitionedCallв+string_lookup/None_Lookup/LookupTableFindV2∙
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         Ж
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         ї
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_2634*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_2586y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          Ш
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:

_output_shapes
: :K G
#
_output_shapes
:         
 
_user_specified_nameinputs
■	
ф
*__inference_brute_force_layer_call_fn_2797
input_1
unknown
	unknown_0	
	unknown_1:	щ 
	unknown_2:d 
	unknown_3:d
identity

identity_1ИвStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_brute_force_layer_call_and_return_conditional_losses_2782o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:

_output_shapes
: :L H
#
_output_shapes
:         
!
_user_specified_name	input_1
Д%
м
__inference__traced_save_3059
file_prefix0
"read_disablecopyonread_identifiers:d5
#read_1_disablecopyonread_candidates:d @
-read_2_disablecopyonread_embedding_embeddings:	щ 
savev2_const_3

identity_7ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: t
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_identifiers"/device:CPU:0*
_output_shapes
 Ъ
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_identifiers^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0e
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:d]

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:dw
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_candidates"/device:CPU:0*
_output_shapes
 г
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_candidates^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d *
dtype0m

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:d c

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes

:d Б
Read_2/DisableCopyOnReadDisableCopyOnRead-read_2_disablecopyonread_embedding_embeddings"/device:CPU:0*
_output_shapes
 о
Read_2/ReadVariableOpReadVariableOp-read_2_disablecopyonread_embedding_embeddings^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	щ *
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	щ d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	щ Б
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*к
valueаBЭB&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHu
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B Ь
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0savev2_const_3"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 h

Identity_6Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: S

Identity_7IdentityIdentity_6:output:0^NoOp*
T0*
_output_shapes
: Ё
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_7Identity_7:output:0*
_input_shapes

: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Щ
+
__inference__destroyer_3012
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
Р
}
(__inference_embedding_layer_call_fn_2985

inputs	
unknown:	щ 
identityИвStatefulPartitionedCall╦
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_2586o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:         : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:         
 
_user_specified_nameinputs
ы
Ь
)__inference_sequential_layer_call_fn_2952

inputs
unknown
	unknown_0	
	unknown_1:	щ 
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_2638o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:

_output_shapes
: :K G
#
_output_shapes
:         
 
_user_specified_nameinputs
■	
ф
*__inference_brute_force_layer_call_fn_2759
input_1
unknown
	unknown_0	
	unknown_1:	щ 
	unknown_2:d 
	unknown_3:d
identity

identity_1ИвStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_brute_force_layer_call_and_return_conditional_losses_2744o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:

_output_shapes
: :L H
#
_output_shapes
:         
!
_user_specified_name	input_1
к
▀
D__inference_sequential_layer_call_and_return_conditional_losses_2965

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	2
embedding_embedding_lookup_2959:	щ 
identityИвembedding/embedding_lookupв+string_lookup/None_Lookup/LookupTableFindV2∙
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         Ж
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         ш
embedding/embedding_lookupResourceGatherembedding_embedding_lookup_2959string_lookup/Identity:output:0*
Tindices0	*2
_class(
&$loc:@embedding/embedding_lookup/2959*'
_output_shapes
:          *
dtype0║
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*2
_class(
&$loc:@embedding/embedding_lookup/2959*'
_output_shapes
:          С
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:          }
IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:          С
NoOpNoOp^embedding/embedding_lookup,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : : : 28
embedding/embedding_lookupembedding/embedding_lookup2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:

_output_shapes
: :K G
#
_output_shapes
:         
 
_user_specified_nameinputs
ч
Ь
E__inference_brute_force_layer_call_and_return_conditional_losses_2930
queriesG
Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleH
Dsequential_string_lookup_none_lookup_lookuptablefindv2_default_value	=
*sequential_embedding_embedding_lookup_2914:	щ 0
matmul_readvariableop_resource:d 
gather_resource:d

identity_1

identity_2ИвGatherвMatMul/ReadVariableOpв%sequential/embedding/embedding_lookupв6sequential/string_lookup/None_Lookup/LookupTableFindV2Ы
6sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handlequeriesDsequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         Ь
!sequential/string_lookup/IdentityIdentity?sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         Ф
%sequential/embedding/embedding_lookupResourceGather*sequential_embedding_embedding_lookup_2914*sequential/string_lookup/Identity:output:0*
Tindices0	*=
_class3
1/loc:@sequential/embedding/embedding_lookup/2914*'
_output_shapes
:          *
dtype0█
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*=
_class3
1/loc:@sequential/embedding/embedding_lookup/2914*'
_output_shapes
:          з
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:          t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0п
MatMulMatMul9sequential/embedding/embedding_lookup/Identity_1:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:         
:         
Б
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:         
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:         
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:         
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:         
╚
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup7^sequential/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2p
6sequential/string_lookup/None_Lookup/LookupTableFindV26sequential/string_lookup/None_Lookup/LookupTableFindV2:

_output_shapes
: :L H
#
_output_shapes
:         
!
_user_specified_name	queries
ч
Ь
E__inference_brute_force_layer_call_and_return_conditional_losses_2907
queriesG
Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleH
Dsequential_string_lookup_none_lookup_lookuptablefindv2_default_value	=
*sequential_embedding_embedding_lookup_2891:	щ 0
matmul_readvariableop_resource:d 
gather_resource:d

identity_1

identity_2ИвGatherвMatMul/ReadVariableOpв%sequential/embedding/embedding_lookupв6sequential/string_lookup/None_Lookup/LookupTableFindV2Ы
6sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handlequeriesDsequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         Ь
!sequential/string_lookup/IdentityIdentity?sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         Ф
%sequential/embedding/embedding_lookupResourceGather*sequential_embedding_embedding_lookup_2891*sequential/string_lookup/Identity:output:0*
Tindices0	*=
_class3
1/loc:@sequential/embedding/embedding_lookup/2891*'
_output_shapes
:          *
dtype0█
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*=
_class3
1/loc:@sequential/embedding/embedding_lookup/2891*'
_output_shapes
:          з
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:          t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0п
MatMulMatMul9sequential/embedding/embedding_lookup/Identity_1:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:         
:         
Б
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:         
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:         
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:         
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:         
╚
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup7^sequential/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2p
6sequential/string_lookup/None_Lookup/LookupTableFindV26sequential/string_lookup/None_Lookup/LookupTableFindV2:

_output_shapes
: :L H
#
_output_shapes
:         
!
_user_specified_name	queries
ы
Ь
)__inference_sequential_layer_call_fn_2941

inputs
unknown
	unknown_0	
	unknown_1:	щ 
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_2616o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:

_output_shapes
: :K G
#
_output_shapes
:         
 
_user_specified_nameinputs
Р
▄
E__inference_brute_force_layer_call_and_return_conditional_losses_2720
input_1
sequential_2702
sequential_2704	"
sequential_2706:	щ 0
matmul_readvariableop_resource:d 
gather_resource:d

identity_1

identity_2ИвGatherвMatMul/ReadVariableOpв"sequential/StatefulPartitionedCallД
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_2702sequential_2704sequential_2706*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_2638t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0б
MatMulMatMul+sequential/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:         
:         
Б
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:         
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:         
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:         
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:         
М
NoOpNoOp^Gather^MatMul/ReadVariableOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:

_output_shapes
: :L H
#
_output_shapes
:         
!
_user_specified_name	input_1"є
L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*х
serving_default╤
7
input_1,
serving_default_input_1:0         <
output_10
StatefulPartitionedCall:0         
<
output_20
StatefulPartitionedCall:1         
tensorflow/serving/predict:╠В
┬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
query_model
	identifiers
	_identifiers


candidates

_candidates
query_with_exclusions

signatures"
_tf_keras_model
5
0
	1

2"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
▐
trace_0
trace_1
trace_2
trace_32є
*__inference_brute_force_layer_call_fn_2759
*__inference_brute_force_layer_call_fn_2797
*__inference_brute_force_layer_call_fn_2867
*__inference_brute_force_layer_call_fn_2884└
╣▓╡
FullArgSpec
argsЪ
	jqueries
jk
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 ztrace_0ztrace_1ztrace_2ztrace_3
╩
trace_0
trace_1
trace_2
trace_32▀
E__inference_brute_force_layer_call_and_return_conditional_losses_2699
E__inference_brute_force_layer_call_and_return_conditional_losses_2720
E__inference_brute_force_layer_call_and_return_conditional_losses_2907
E__inference_brute_force_layer_call_and_return_conditional_losses_2930└
╣▓╡
FullArgSpec
argsЪ
	jqueries
jk
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 ztrace_0ztrace_1ztrace_2ztrace_3
ш
	capture_1B╟
__inference__wrapped_model_2569input_1"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z	capture_1
▐
layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_sequential
:d2identifiers
:d 2
candidates
╖2┤▒
к▓ж
FullArgSpec)
args!Ъ
	jqueries
j
exclusions
jk
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
,
$serving_default"
signature_map
':%	щ 2embedding/embeddings
.
	0

1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Ы
	capture_1B·
*__inference_brute_force_layer_call_fn_2759input_1"└
╣▓╡
FullArgSpec
argsЪ
	jqueries
jk
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 z	capture_1
Ы
	capture_1B·
*__inference_brute_force_layer_call_fn_2797input_1"└
╣▓╡
FullArgSpec
argsЪ
	jqueries
jk
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 z	capture_1
Ы
	capture_1B·
*__inference_brute_force_layer_call_fn_2867queries"└
╣▓╡
FullArgSpec
argsЪ
	jqueries
jk
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 z	capture_1
Ы
	capture_1B·
*__inference_brute_force_layer_call_fn_2884queries"└
╣▓╡
FullArgSpec
argsЪ
	jqueries
jk
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 z	capture_1
╢
	capture_1BХ
E__inference_brute_force_layer_call_and_return_conditional_losses_2699input_1"└
╣▓╡
FullArgSpec
argsЪ
	jqueries
jk
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 z	capture_1
╢
	capture_1BХ
E__inference_brute_force_layer_call_and_return_conditional_losses_2720input_1"└
╣▓╡
FullArgSpec
argsЪ
	jqueries
jk
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 z	capture_1
╢
	capture_1BХ
E__inference_brute_force_layer_call_and_return_conditional_losses_2907queries"└
╣▓╡
FullArgSpec
argsЪ
	jqueries
jk
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 z	capture_1
╢
	capture_1BХ
E__inference_brute_force_layer_call_and_return_conditional_losses_2930queries"└
╣▓╡
FullArgSpec
argsЪ
	jqueries
jk
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 z	capture_1
!J	
Const_2jtf.TrackableConstant
:
%	keras_api
&lookup_table"
_tf_keras_layer
╡
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
н
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
╧
2trace_0
3trace_1
4trace_2
5trace_32ф
)__inference_sequential_layer_call_fn_2625
)__inference_sequential_layer_call_fn_2647
)__inference_sequential_layer_call_fn_2941
)__inference_sequential_layer_call_fn_2952╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z2trace_0z3trace_1z4trace_2z5trace_3
╗
6trace_0
7trace_1
8trace_2
9trace_32╨
D__inference_sequential_layer_call_and_return_conditional_losses_2591
D__inference_sequential_layer_call_and_return_conditional_losses_2602
D__inference_sequential_layer_call_and_return_conditional_losses_2965
D__inference_sequential_layer_call_and_return_conditional_losses_2978╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z6trace_0z7trace_1z8trace_2z9trace_3
ч
	capture_1B╞
"__inference_signature_wrapper_2850input_1"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z	capture_1
"
_generic_user_object
f
:_initializer
;_create_resource
<_initialize
=_destroy_resourceR jtf.StaticHashTable
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
н
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
т
Ctrace_02┼
(__inference_embedding_layer_call_fn_2985Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zCtrace_0
¤
Dtrace_02р
C__inference_embedding_layer_call_and_return_conditional_losses_2994Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zDtrace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Ы
	capture_1B·
)__inference_sequential_layer_call_fn_2625string_lookup_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z	capture_1
Ы
	capture_1B·
)__inference_sequential_layer_call_fn_2647string_lookup_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z	capture_1
О
	capture_1Bэ
)__inference_sequential_layer_call_fn_2941inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z	capture_1
О
	capture_1Bэ
)__inference_sequential_layer_call_fn_2952inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z	capture_1
╢
	capture_1BХ
D__inference_sequential_layer_call_and_return_conditional_losses_2591string_lookup_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z	capture_1
╢
	capture_1BХ
D__inference_sequential_layer_call_and_return_conditional_losses_2602string_lookup_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z	capture_1
й
	capture_1BИ
D__inference_sequential_layer_call_and_return_conditional_losses_2965inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z	capture_1
й
	capture_1BИ
D__inference_sequential_layer_call_and_return_conditional_losses_2978inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z	capture_1
"
_generic_user_object
╩
Etrace_02н
__inference__creator_2999П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в zEtrace_0
╬
Ftrace_02▒
__inference__initializer_3007П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в zFtrace_0
╠
Gtrace_02п
__inference__destroyer_3012П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в zGtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╥B╧
(__inference_embedding_layer_call_fn_2985inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_embedding_layer_call_and_return_conditional_losses_2994inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
░Bн
__inference__creator_2999"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
Ё
H	capture_1
I	capture_2B▒
__inference__initializer_3007"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в zH	capture_1zI	capture_2
▓Bп
__inference__destroyer_3012"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant>
__inference__creator_2999!в

в 
к "К
unknown @
__inference__destroyer_3012!в

в 
к "К
unknown G
__inference__initializer_3007&&HIв

в 
к "К
unknown ╛
__inference__wrapped_model_2569Ъ&
	,в)
"в
К
input_1         
к "cк`
.
output_1"К
output_1         

.
output_2"К
output_2         
ю
E__inference_brute_force_layer_call_and_return_conditional_losses_2699д&
	@в=
&в#
К
input_1         

 
к

trainingp"YвV
OвL
$К!

tensor_0_0         

$К!

tensor_0_1         

Ъ ю
E__inference_brute_force_layer_call_and_return_conditional_losses_2720д&
	@в=
&в#
К
input_1         

 
к

trainingp "YвV
OвL
$К!

tensor_0_0         

$К!

tensor_0_1         

Ъ ю
E__inference_brute_force_layer_call_and_return_conditional_losses_2907д&
	@в=
&в#
К
queries         

 
к

trainingp"YвV
OвL
$К!

tensor_0_0         

$К!

tensor_0_1         

Ъ ю
E__inference_brute_force_layer_call_and_return_conditional_losses_2930д&
	@в=
&в#
К
queries         

 
к

trainingp "YвV
OвL
$К!

tensor_0_0         

$К!

tensor_0_1         

Ъ ┼
*__inference_brute_force_layer_call_fn_2759Ц&
	@в=
&в#
К
input_1         

 
к

trainingp"KвH
"К
tensor_0         

"К
tensor_1         
┼
*__inference_brute_force_layer_call_fn_2797Ц&
	@в=
&в#
К
input_1         

 
к

trainingp "KвH
"К
tensor_0         

"К
tensor_1         
┼
*__inference_brute_force_layer_call_fn_2867Ц&
	@в=
&в#
К
queries         

 
к

trainingp"KвH
"К
tensor_0         

"К
tensor_1         
┼
*__inference_brute_force_layer_call_fn_2884Ц&
	@в=
&в#
К
queries         

 
к

trainingp "KвH
"К
tensor_0         

"К
tensor_1         
е
C__inference_embedding_layer_call_and_return_conditional_losses_2994^+в(
!в
К
inputs         	
к ",в)
"К
tensor_0          
Ъ 
(__inference_embedding_layer_call_fn_2985S+в(
!в
К
inputs         	
к "!К
unknown          ╜
D__inference_sequential_layer_call_and_return_conditional_losses_2591u&@в=
6в3
)К&
string_lookup_input         
p

 
к ",в)
"К
tensor_0          
Ъ ╜
D__inference_sequential_layer_call_and_return_conditional_losses_2602u&@в=
6в3
)К&
string_lookup_input         
p 

 
к ",в)
"К
tensor_0          
Ъ ░
D__inference_sequential_layer_call_and_return_conditional_losses_2965h&3в0
)в&
К
inputs         
p

 
к ",в)
"К
tensor_0          
Ъ ░
D__inference_sequential_layer_call_and_return_conditional_losses_2978h&3в0
)в&
К
inputs         
p 

 
к ",в)
"К
tensor_0          
Ъ Ч
)__inference_sequential_layer_call_fn_2625j&@в=
6в3
)К&
string_lookup_input         
p

 
к "!К
unknown          Ч
)__inference_sequential_layer_call_fn_2647j&@в=
6в3
)К&
string_lookup_input         
p 

 
к "!К
unknown          К
)__inference_sequential_layer_call_fn_2941]&3в0
)в&
К
inputs         
p

 
к "!К
unknown          К
)__inference_sequential_layer_call_fn_2952]&3в0
)в&
К
inputs         
p 

 
к "!К
unknown          ╠
"__inference_signature_wrapper_2850е&
	7в4
в 
-к*
(
input_1К
input_1         "cк`
.
output_1"К
output_1         

.
output_2"К
output_2         
