ēś
üŚ
:
Add
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignSubVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
ģ
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
”
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
.
Identity

input"T
output"T"	
Ttype
b
InitializeTableV2
table_handle
keys"Tkey
values"Tval"
Tkeytype"
Tvaltype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
=
Mul
x"T
y"T
z"T"
Ttype:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
k

ReduceJoin

inputs
reduction_indices

output"
	keep_dimsbool( "
	separatorstring 
D
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
.
Rsqrt
x"T
y"T"
Ttype:

2
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
2
StopGradient

input"T
output"T"	
Ttype
:
Sub
x"T
y"T
z"T"
Ttype:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
*1.8.02v1.8.0-0-g93bc2e20728ół
æ
index_to_string/ConstConst*ō
valueźBēŠB
BGBĀB2BjBlBĀB}BĀB0B.B:BĆŗB~BĀµBĆBPBĆBvBNBZBĀBĀBĆ±BĀBĀ£B(BĆBeBĆ°BĆ£BwBrBABĀBXBIBĀBĆBĆ©BĀBĀBĀBfBJBQBĀBĆŖBĆB^B\B/BĆBcBDBĆBĆBuBĆ¶BzBĀBĆ¬BĀBsBFB_BĆ§BĆ¤BĀ©BoBĀ½B%BĀ±B`B{B9BĀ¾BĀ°BĀŗBĀ BLBHBĆ³B"BĀ²BĆB7BmBtB-BB;BĆØBBĀB3BĆ½BĆB=BĀBaBĆB1BWB*B)BĀ«BĀBĀ§BĆB8BOBĀBnB]BĆBĀ¢BĀBĀBĀBRB#BĀ®BhB[B&BĀBĆBĆBĀ¦BĆ”B'BSB BĆ®B?BĀ¹BĀBĆ¼B@B<BĀBxBĀøBYBUBĆB$BqBTBĀ³BĀ­BĀŖBĀÆBpBĆBKBĆøBĀ¬BĀBĀ·BMBĀ¼BVB!B5BĀØBĀ„BĀBĆ¹BĀæBĀBĆBiB6BĀ”BĆ·BEBĀ»BĆBĀ¶BĆ„B+B4BkB|B,B>BĀBĆ¢BĀBĆByBĀ“BĀBbBĀBBBĆ¦BgBĆ BĀBdBĆÆBCBĀ¤BĆ­BĆ*
dtype0*
_output_shapes	
:Š
W
index_to_string/SizeConst*
value
B :Š*
dtype0*
_output_shapes
: 
]
index_to_string/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
]
index_to_string/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :

index_to_string/rangeRangeindex_to_string/range/startindex_to_string/Sizeindex_to_string/range/delta*
_output_shapes	
:Š
k
index_to_string/ToInt64Castindex_to_string/range*

SrcT0*

DstT0	*
_output_shapes	
:Š
Z
index_to_stringHashTableV2*
value_dtype0*
	key_dtype0	*
_output_shapes
: 
[
index_to_string/Const_1Const*
dtype0*
_output_shapes
: *
valueB	 BUNK

index_to_string/table_initInitializeTableV2index_to_stringindex_to_string/ToInt64index_to_string/Const*

Tkey0	*

Tval0
n
PlaceholderPlaceholder*
shape:’’’’’’’’’@*
dtype0*'
_output_shapes
:’’’’’’’’’@
^
PlaceholderWithDefault/inputConst*
dtype0
*
_output_shapes
: *
value	B
 Z 

PlaceholderWithDefaultPlaceholderWithDefaultPlaceholderWithDefault/input*
dtype0
*
_output_shapes
: *
shape: 
£
/G/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"@      *!
_class
loc:@G/dense/kernel*
dtype0*
_output_shapes
:

-G/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *wÖ½*!
_class
loc:@G/dense/kernel*
dtype0*
_output_shapes
: 

-G/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *wÖ=*!
_class
loc:@G/dense/kernel
Ó
7G/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/G/dense/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@G/dense/kernel*
dtype0*
_output_shapes
:	@

Ö
-G/dense/kernel/Initializer/random_uniform/subSub-G/dense/kernel/Initializer/random_uniform/max-G/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@G/dense/kernel
é
-G/dense/kernel/Initializer/random_uniform/mulMul7G/dense/kernel/Initializer/random_uniform/RandomUniform-G/dense/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@G/dense/kernel*
_output_shapes
:	@

Ū
)G/dense/kernel/Initializer/random_uniformAdd-G/dense/kernel/Initializer/random_uniform/mul-G/dense/kernel/Initializer/random_uniform/min*
_output_shapes
:	@
*
T0*!
_class
loc:@G/dense/kernel

G/dense/kernelVarHandleOp*!
_class
loc:@G/dense/kernel*
dtype0*
_output_shapes
: *
shape:	@
*
shared_nameG/dense/kernel
m
/G/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/dense/kernel*
_output_shapes
: 

G/dense/kernel/AssignAssignVariableOpG/dense/kernel)G/dense/kernel/Initializer/random_uniform*!
_class
loc:@G/dense/kernel*
dtype0

"G/dense/kernel/Read/ReadVariableOpReadVariableOpG/dense/kernel*!
_class
loc:@G/dense/kernel*
dtype0*
_output_shapes
:	@


.G/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:
*
_class
loc:@G/dense/bias*
dtype0*
_output_shapes
:

$G/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@G/dense/bias*
dtype0*
_output_shapes
: 
Ć
G/dense/bias/Initializer/zerosFill.G/dense/bias/Initializer/zeros/shape_as_tensor$G/dense/bias/Initializer/zeros/Const*
T0*
_class
loc:@G/dense/bias*
_output_shapes	
:


G/dense/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:
*
shared_nameG/dense/bias*
_class
loc:@G/dense/bias
i
-G/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/dense/bias*
_output_shapes
: 

G/dense/bias/AssignAssignVariableOpG/dense/biasG/dense/bias/Initializer/zeros*
dtype0*
_class
loc:@G/dense/bias

 G/dense/bias/Read/ReadVariableOpReadVariableOpG/dense/bias*
_class
loc:@G/dense/bias*
dtype0*
_output_shapes	
:

m
G/dense/MatMul/ReadVariableOpReadVariableOpG/dense/kernel*
dtype0*
_output_shapes
:	@

w
G/dense/MatMulMatMulPlaceholderG/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’

h
G/dense/BiasAdd/ReadVariableOpReadVariableOpG/dense/bias*
dtype0*
_output_shapes	
:

}
G/dense/BiasAddBiasAddG/dense/MatMulG/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’

d
G/Reshape/shapeConst*!
valueB"’’’’
      *
dtype0*
_output_shapes
:
m
	G/ReshapeReshapeG/dense/BiasAddG/Reshape/shape*,
_output_shapes
:’’’’’’’’’
*
T0
«
,G/batch_normalization/gamma/Initializer/onesConst*
valueB*  ?*.
_class$
" loc:@G/batch_normalization/gamma*
dtype0*
_output_shapes	
:
æ
G/batch_normalization/gammaVarHandleOp*
shape:*,
shared_nameG/batch_normalization/gamma*.
_class$
" loc:@G/batch_normalization/gamma*
dtype0*
_output_shapes
: 

<G/batch_normalization/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization/gamma*
_output_shapes
: 
¾
"G/batch_normalization/gamma/AssignAssignVariableOpG/batch_normalization/gamma,G/batch_normalization/gamma/Initializer/ones*.
_class$
" loc:@G/batch_normalization/gamma*
dtype0
ø
/G/batch_normalization/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization/gamma*
dtype0*
_output_shapes	
:*.
_class$
" loc:@G/batch_normalization/gamma
Ŗ
,G/batch_normalization/beta/Initializer/zerosConst*
valueB*    *-
_class#
!loc:@G/batch_normalization/beta*
dtype0*
_output_shapes	
:
¼
G/batch_normalization/betaVarHandleOp*+
shared_nameG/batch_normalization/beta*-
_class#
!loc:@G/batch_normalization/beta*
dtype0*
_output_shapes
: *
shape:

;G/batch_normalization/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization/beta*
_output_shapes
: 
»
!G/batch_normalization/beta/AssignAssignVariableOpG/batch_normalization/beta,G/batch_normalization/beta/Initializer/zeros*-
_class#
!loc:@G/batch_normalization/beta*
dtype0
µ
.G/batch_normalization/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization/beta*-
_class#
!loc:@G/batch_normalization/beta*
dtype0*
_output_shapes	
:
ø
3G/batch_normalization/moving_mean/Initializer/zerosConst*
valueB*    *4
_class*
(&loc:@G/batch_normalization/moving_mean*
dtype0*
_output_shapes	
:
Ń
!G/batch_normalization/moving_meanVarHandleOp*4
_class*
(&loc:@G/batch_normalization/moving_mean*
dtype0*
_output_shapes
: *
shape:*2
shared_name#!G/batch_normalization/moving_mean

BG/batch_normalization/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!G/batch_normalization/moving_mean*
_output_shapes
: 
×
(G/batch_normalization/moving_mean/AssignAssignVariableOp!G/batch_normalization/moving_mean3G/batch_normalization/moving_mean/Initializer/zeros*4
_class*
(&loc:@G/batch_normalization/moving_mean*
dtype0
Ź
5G/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp!G/batch_normalization/moving_mean*
dtype0*
_output_shapes	
:*4
_class*
(&loc:@G/batch_normalization/moving_mean
æ
6G/batch_normalization/moving_variance/Initializer/onesConst*
valueB*  ?*8
_class.
,*loc:@G/batch_normalization/moving_variance*
dtype0*
_output_shapes	
:
Ż
%G/batch_normalization/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *
shape:*6
shared_name'%G/batch_normalization/moving_variance*8
_class.
,*loc:@G/batch_normalization/moving_variance

FG/batch_normalization/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%G/batch_normalization/moving_variance*
_output_shapes
: 
ę
,G/batch_normalization/moving_variance/AssignAssignVariableOp%G/batch_normalization/moving_variance6G/batch_normalization/moving_variance/Initializer/ones*
dtype0*8
_class.
,*loc:@G/batch_normalization/moving_variance
Ö
9G/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp%G/batch_normalization/moving_variance*8
_class.
,*loc:@G/batch_normalization/moving_variance*
dtype0*
_output_shapes	
:

4G/batch_normalization/moments/mean/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
Ŗ
"G/batch_normalization/moments/meanMean	G/Reshape4G/batch_normalization/moments/mean/reduction_indices*
T0*#
_output_shapes
:*
	keep_dims(

*G/batch_normalization/moments/StopGradientStopGradient"G/batch_normalization/moments/mean*
T0*#
_output_shapes
:
²
/G/batch_normalization/moments/SquaredDifferenceSquaredDifference	G/Reshape*G/batch_normalization/moments/StopGradient*
T0*,
_output_shapes
:’’’’’’’’’


8G/batch_normalization/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB"       
Ų
&G/batch_normalization/moments/varianceMean/G/batch_normalization/moments/SquaredDifference8G/batch_normalization/moments/variance/reduction_indices*
	keep_dims(*
T0*#
_output_shapes
:

%G/batch_normalization/moments/SqueezeSqueeze"G/batch_normalization/moments/mean*
squeeze_dims
 *
T0*
_output_shapes	
:

'G/batch_normalization/moments/Squeeze_1Squeeze&G/batch_normalization/moments/variance*
_output_shapes	
:*
squeeze_dims
 *
T0
~
!G/batch_normalization/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
u
#G/batch_normalization/cond/switch_tIdentity#G/batch_normalization/cond/Switch:1*
T0
*
_output_shapes
: 
s
#G/batch_normalization/cond/switch_fIdentity!G/batch_normalization/cond/Switch*
T0
*
_output_shapes
: 
g
"G/batch_normalization/cond/pred_idIdentityPlaceholderWithDefault*
_output_shapes
: *
T0

ß
#G/batch_normalization/cond/Switch_1Switch%G/batch_normalization/moments/Squeeze"G/batch_normalization/cond/pred_id*
T0*8
_class.
,*loc:@G/batch_normalization/moments/Squeeze*"
_output_shapes
::

)G/batch_normalization/cond/ReadVariableOpReadVariableOp0G/batch_normalization/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:
Ś
0G/batch_normalization/cond/ReadVariableOp/SwitchSwitch!G/batch_normalization/moving_mean"G/batch_normalization/cond/pred_id*
_output_shapes
: : *
T0*4
_class*
(&loc:@G/batch_normalization/moving_mean
¬
 G/batch_normalization/cond/MergeMerge)G/batch_normalization/cond/ReadVariableOp%G/batch_normalization/cond/Switch_1:1*
N*
_output_shapes
	:: *
T0

#G/batch_normalization/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0

y
%G/batch_normalization/cond_1/switch_tIdentity%G/batch_normalization/cond_1/Switch:1*
T0
*
_output_shapes
: 
w
%G/batch_normalization/cond_1/switch_fIdentity#G/batch_normalization/cond_1/Switch*
T0
*
_output_shapes
: 
i
$G/batch_normalization/cond_1/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
ē
%G/batch_normalization/cond_1/Switch_1Switch'G/batch_normalization/moments/Squeeze_1$G/batch_normalization/cond_1/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization/moments/Squeeze_1*"
_output_shapes
::

+G/batch_normalization/cond_1/ReadVariableOpReadVariableOp2G/batch_normalization/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:
ę
2G/batch_normalization/cond_1/ReadVariableOp/SwitchSwitch%G/batch_normalization/moving_variance$G/batch_normalization/cond_1/pred_id*
T0*8
_class.
,*loc:@G/batch_normalization/moving_variance*
_output_shapes
: : 
²
"G/batch_normalization/cond_1/MergeMerge+G/batch_normalization/cond_1/ReadVariableOp'G/batch_normalization/cond_1/Switch_1:1*
N*
_output_shapes
	:: *
T0

#G/batch_normalization/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
y
%G/batch_normalization/cond_2/switch_tIdentity%G/batch_normalization/cond_2/Switch:1*
T0
*
_output_shapes
: 
w
%G/batch_normalization/cond_2/switch_fIdentity#G/batch_normalization/cond_2/Switch*
T0
*
_output_shapes
: 
i
$G/batch_normalization/cond_2/pred_idIdentityPlaceholderWithDefault*
_output_shapes
: *
T0


2G/batch_normalization/cond_2/AssignMovingAvg/decayConst&^G/batch_normalization/cond_2/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
½
;G/batch_normalization/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpDG/batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:
ī
BG/batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch!G/batch_normalization/moving_mean$G/batch_normalization/cond_2/pred_id*
T0*4
_class*
(&loc:@G/batch_normalization/moving_mean*
_output_shapes
: : 
Õ
0G/batch_normalization/cond_2/AssignMovingAvg/subSub;G/batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp9G/batch_normalization/cond_2/AssignMovingAvg/sub/Switch:1*
_output_shapes	
:*
T0
ė
7G/batch_normalization/cond_2/AssignMovingAvg/sub/SwitchSwitch G/batch_normalization/cond/Merge$G/batch_normalization/cond_2/pred_id*
T0*3
_class)
'%loc:@G/batch_normalization/cond/Merge*"
_output_shapes
::
Ć
0G/batch_normalization/cond_2/AssignMovingAvg/mulMul0G/batch_normalization/cond_2/AssignMovingAvg/sub2G/batch_normalization/cond_2/AssignMovingAvg/decay*
_output_shapes	
:*
T0
Ü
@G/batch_normalization/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpDG/batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp/Switch:10G/batch_normalization/cond_2/AssignMovingAvg/mul*
dtype0

=G/batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpDG/batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1A^G/batch_normalization/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
š
+G/batch_normalization/cond_2/ReadVariableOpReadVariableOpDG/batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1A^G/batch_normalization/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:

-G/batch_normalization/cond_2/ReadVariableOp_1ReadVariableOp4G/batch_normalization/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:
ą
4G/batch_normalization/cond_2/ReadVariableOp_1/SwitchSwitch!G/batch_normalization/moving_mean$G/batch_normalization/cond_2/pred_id*
T0*4
_class*
(&loc:@G/batch_normalization/moving_mean*
_output_shapes
: : 
ø
"G/batch_normalization/cond_2/MergeMerge-G/batch_normalization/cond_2/ReadVariableOp_1+G/batch_normalization/cond_2/ReadVariableOp*
T0*
N*
_output_shapes
	:: 

#G/batch_normalization/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
y
%G/batch_normalization/cond_3/switch_tIdentity%G/batch_normalization/cond_3/Switch:1*
T0
*
_output_shapes
: 
w
%G/batch_normalization/cond_3/switch_fIdentity#G/batch_normalization/cond_3/Switch*
T0
*
_output_shapes
: 
i
$G/batch_normalization/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 

2G/batch_normalization/cond_3/AssignMovingAvg/decayConst&^G/batch_normalization/cond_3/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
½
;G/batch_normalization/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpDG/batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:
ö
BG/batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch%G/batch_normalization/moving_variance$G/batch_normalization/cond_3/pred_id*
T0*8
_class.
,*loc:@G/batch_normalization/moving_variance*
_output_shapes
: : 
Õ
0G/batch_normalization/cond_3/AssignMovingAvg/subSub;G/batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp9G/batch_normalization/cond_3/AssignMovingAvg/sub/Switch:1*
_output_shapes	
:*
T0
ļ
7G/batch_normalization/cond_3/AssignMovingAvg/sub/SwitchSwitch"G/batch_normalization/cond_1/Merge$G/batch_normalization/cond_3/pred_id*
T0*5
_class+
)'loc:@G/batch_normalization/cond_1/Merge*"
_output_shapes
::
Ć
0G/batch_normalization/cond_3/AssignMovingAvg/mulMul0G/batch_normalization/cond_3/AssignMovingAvg/sub2G/batch_normalization/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes	
:
Ü
@G/batch_normalization/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpDG/batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp/Switch:10G/batch_normalization/cond_3/AssignMovingAvg/mul*
dtype0

=G/batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpDG/batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1A^G/batch_normalization/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
š
+G/batch_normalization/cond_3/ReadVariableOpReadVariableOpDG/batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1A^G/batch_normalization/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:

-G/batch_normalization/cond_3/ReadVariableOp_1ReadVariableOp4G/batch_normalization/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:
č
4G/batch_normalization/cond_3/ReadVariableOp_1/SwitchSwitch%G/batch_normalization/moving_variance$G/batch_normalization/cond_3/pred_id*
T0*8
_class.
,*loc:@G/batch_normalization/moving_variance*
_output_shapes
: : 
ø
"G/batch_normalization/cond_3/MergeMerge-G/batch_normalization/cond_3/ReadVariableOp_1+G/batch_normalization/cond_3/ReadVariableOp*
T0*
N*
_output_shapes
	:: 
j
%G/batch_normalization/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o:

#G/batch_normalization/batchnorm/addAdd"G/batch_normalization/cond_1/Merge%G/batch_normalization/batchnorm/add/y*
T0*
_output_shapes	
:
y
%G/batch_normalization/batchnorm/RsqrtRsqrt#G/batch_normalization/batchnorm/add*
T0*
_output_shapes	
:

2G/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization/gamma*
dtype0*
_output_shapes	
:
«
#G/batch_normalization/batchnorm/mulMul%G/batch_normalization/batchnorm/Rsqrt2G/batch_normalization/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes	
:

%G/batch_normalization/batchnorm/mul_1Mul	G/Reshape#G/batch_normalization/batchnorm/mul*
T0*,
_output_shapes
:’’’’’’’’’


%G/batch_normalization/batchnorm/mul_2Mul G/batch_normalization/cond/Merge#G/batch_normalization/batchnorm/mul*
T0*
_output_shapes	
:

.G/batch_normalization/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization/beta*
dtype0*
_output_shapes	
:
§
#G/batch_normalization/batchnorm/subSub.G/batch_normalization/batchnorm/ReadVariableOp%G/batch_normalization/batchnorm/mul_2*
_output_shapes	
:*
T0
Æ
%G/batch_normalization/batchnorm/add_1Add%G/batch_normalization/batchnorm/mul_1#G/batch_normalization/batchnorm/sub*,
_output_shapes
:’’’’’’’’’
*
T0
l
G/ReluRelu%G/batch_normalization/batchnorm/add_1*
T0*,
_output_shapes
:’’’’’’’’’

©
0G/conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"      @   *"
_class
loc:@G/conv1d/kernel*
dtype0*
_output_shapes
:

.G/conv1d/kernel/Initializer/random_uniform/minConst*
valueB
 *ó5¾*"
_class
loc:@G/conv1d/kernel*
dtype0*
_output_shapes
: 

.G/conv1d/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ó5>*"
_class
loc:@G/conv1d/kernel
Ś
8G/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform0G/conv1d/kernel/Initializer/random_uniform/shape*
dtype0*#
_output_shapes
:@*
T0*"
_class
loc:@G/conv1d/kernel
Ś
.G/conv1d/kernel/Initializer/random_uniform/subSub.G/conv1d/kernel/Initializer/random_uniform/max.G/conv1d/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@G/conv1d/kernel*
_output_shapes
: 
ń
.G/conv1d/kernel/Initializer/random_uniform/mulMul8G/conv1d/kernel/Initializer/random_uniform/RandomUniform.G/conv1d/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@G/conv1d/kernel*#
_output_shapes
:@
ć
*G/conv1d/kernel/Initializer/random_uniformAdd.G/conv1d/kernel/Initializer/random_uniform/mul.G/conv1d/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@G/conv1d/kernel*#
_output_shapes
:@
£
G/conv1d/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape:@* 
shared_nameG/conv1d/kernel*"
_class
loc:@G/conv1d/kernel
o
0G/conv1d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d/kernel*
_output_shapes
: 

G/conv1d/kernel/AssignAssignVariableOpG/conv1d/kernel*G/conv1d/kernel/Initializer/random_uniform*"
_class
loc:@G/conv1d/kernel*
dtype0

#G/conv1d/kernel/Read/ReadVariableOpReadVariableOpG/conv1d/kernel*"
_class
loc:@G/conv1d/kernel*
dtype0*#
_output_shapes
:@

G/conv1d/bias/Initializer/zerosConst*
valueB@*    * 
_class
loc:@G/conv1d/bias*
dtype0*
_output_shapes
:@

G/conv1d/biasVarHandleOp*
shared_nameG/conv1d/bias* 
_class
loc:@G/conv1d/bias*
dtype0*
_output_shapes
: *
shape:@
k
.G/conv1d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d/bias*
_output_shapes
: 

G/conv1d/bias/AssignAssignVariableOpG/conv1d/biasG/conv1d/bias/Initializer/zeros*
dtype0* 
_class
loc:@G/conv1d/bias

!G/conv1d/bias/Read/ReadVariableOpReadVariableOpG/conv1d/bias*
dtype0*
_output_shapes
:@* 
_class
loc:@G/conv1d/bias
`
G/conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
`
G/conv1d/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv1d/conv1d/ExpandDims
ExpandDimsG/ReluG/conv1d/conv1d/ExpandDims/dim*
T0*0
_output_shapes
:’’’’’’’’’


+G/conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d/kernel*
dtype0*#
_output_shapes
:@
b
 G/conv1d/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
«
G/conv1d/conv1d/ExpandDims_1
ExpandDims+G/conv1d/conv1d/ExpandDims_1/ReadVariableOp G/conv1d/conv1d/ExpandDims_1/dim*
T0*'
_output_shapes
:@
¼
G/conv1d/conv1d/Conv2DConv2DG/conv1d/conv1d/ExpandDimsG/conv1d/conv1d/ExpandDims_1*
strides
*/
_output_shapes
:’’’’’’’’’
@*
paddingSAME*
T0

G/conv1d/conv1d/SqueezeSqueezeG/conv1d/conv1d/Conv2D*+
_output_shapes
:’’’’’’’’’
@*
squeeze_dims
*
T0
i
G/conv1d/BiasAdd/ReadVariableOpReadVariableOpG/conv1d/bias*
dtype0*
_output_shapes
:@

G/conv1d/BiasAddBiasAddG/conv1d/conv1d/SqueezeG/conv1d/BiasAdd/ReadVariableOp*
T0*+
_output_shapes
:’’’’’’’’’
@
­
.G/batch_normalization_1/gamma/Initializer/onesConst*
valueB@*  ?*0
_class&
$"loc:@G/batch_normalization_1/gamma*
dtype0*
_output_shapes
:@
Ä
G/batch_normalization_1/gammaVarHandleOp*
shape:@*.
shared_nameG/batch_normalization_1/gamma*0
_class&
$"loc:@G/batch_normalization_1/gamma*
dtype0*
_output_shapes
: 

>G/batch_normalization_1/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_1/gamma*
_output_shapes
: 
Ę
$G/batch_normalization_1/gamma/AssignAssignVariableOpG/batch_normalization_1/gamma.G/batch_normalization_1/gamma/Initializer/ones*
dtype0*0
_class&
$"loc:@G/batch_normalization_1/gamma
½
1G/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_1/gamma*0
_class&
$"loc:@G/batch_normalization_1/gamma*
dtype0*
_output_shapes
:@
¬
.G/batch_normalization_1/beta/Initializer/zerosConst*
valueB@*    */
_class%
#!loc:@G/batch_normalization_1/beta*
dtype0*
_output_shapes
:@
Į
G/batch_normalization_1/betaVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*-
shared_nameG/batch_normalization_1/beta*/
_class%
#!loc:@G/batch_normalization_1/beta

=G/batch_normalization_1/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_1/beta*
_output_shapes
: 
Ć
#G/batch_normalization_1/beta/AssignAssignVariableOpG/batch_normalization_1/beta.G/batch_normalization_1/beta/Initializer/zeros*/
_class%
#!loc:@G/batch_normalization_1/beta*
dtype0
ŗ
0G/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_1/beta*/
_class%
#!loc:@G/batch_normalization_1/beta*
dtype0*
_output_shapes
:@
ŗ
5G/batch_normalization_1/moving_mean/Initializer/zerosConst*
valueB@*    *6
_class,
*(loc:@G/batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:@
Ö
#G/batch_normalization_1/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*4
shared_name%#G/batch_normalization_1/moving_mean*6
_class,
*(loc:@G/batch_normalization_1/moving_mean

DG/batch_normalization_1/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp#G/batch_normalization_1/moving_mean*
_output_shapes
: 
ß
*G/batch_normalization_1/moving_mean/AssignAssignVariableOp#G/batch_normalization_1/moving_mean5G/batch_normalization_1/moving_mean/Initializer/zeros*6
_class,
*(loc:@G/batch_normalization_1/moving_mean*
dtype0
Ļ
7G/batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp#G/batch_normalization_1/moving_mean*6
_class,
*(loc:@G/batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:@
Į
8G/batch_normalization_1/moving_variance/Initializer/onesConst*
valueB@*  ?*:
_class0
.,loc:@G/batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:@
ā
'G/batch_normalization_1/moving_varianceVarHandleOp*8
shared_name)'G/batch_normalization_1/moving_variance*:
_class0
.,loc:@G/batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: *
shape:@

HG/batch_normalization_1/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp'G/batch_normalization_1/moving_variance*
_output_shapes
: 
ī
.G/batch_normalization_1/moving_variance/AssignAssignVariableOp'G/batch_normalization_1/moving_variance8G/batch_normalization_1/moving_variance/Initializer/ones*:
_class0
.,loc:@G/batch_normalization_1/moving_variance*
dtype0
Ū
;G/batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp'G/batch_normalization_1/moving_variance*:
_class0
.,loc:@G/batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:@

6G/batch_normalization_1/moments/mean/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
“
$G/batch_normalization_1/moments/meanMeanG/conv1d/BiasAdd6G/batch_normalization_1/moments/mean/reduction_indices*"
_output_shapes
:@*
	keep_dims(*
T0

,G/batch_normalization_1/moments/StopGradientStopGradient$G/batch_normalization_1/moments/mean*"
_output_shapes
:@*
T0
¼
1G/batch_normalization_1/moments/SquaredDifferenceSquaredDifferenceG/conv1d/BiasAdd,G/batch_normalization_1/moments/StopGradient*
T0*+
_output_shapes
:’’’’’’’’’
@

:G/batch_normalization_1/moments/variance/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
Ż
(G/batch_normalization_1/moments/varianceMean1G/batch_normalization_1/moments/SquaredDifference:G/batch_normalization_1/moments/variance/reduction_indices*
T0*"
_output_shapes
:@*
	keep_dims(

'G/batch_normalization_1/moments/SqueezeSqueeze$G/batch_normalization_1/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:@

)G/batch_normalization_1/moments/Squeeze_1Squeeze(G/batch_normalization_1/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:@

#G/batch_normalization_1/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
y
%G/batch_normalization_1/cond/switch_tIdentity%G/batch_normalization_1/cond/Switch:1*
T0
*
_output_shapes
: 
w
%G/batch_normalization_1/cond/switch_fIdentity#G/batch_normalization_1/cond/Switch*
T0
*
_output_shapes
: 
i
$G/batch_normalization_1/cond/pred_idIdentityPlaceholderWithDefault*
_output_shapes
: *
T0

å
%G/batch_normalization_1/cond/Switch_1Switch'G/batch_normalization_1/moments/Squeeze$G/batch_normalization_1/cond/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_1/moments/Squeeze* 
_output_shapes
:@:@

+G/batch_normalization_1/cond/ReadVariableOpReadVariableOp2G/batch_normalization_1/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ā
2G/batch_normalization_1/cond/ReadVariableOp/SwitchSwitch#G/batch_normalization_1/moving_mean$G/batch_normalization_1/cond/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_1/moving_mean*
_output_shapes
: : 
±
"G/batch_normalization_1/cond/MergeMerge+G/batch_normalization_1/cond/ReadVariableOp'G/batch_normalization_1/cond/Switch_1:1*
T0*
N*
_output_shapes

:@: 

%G/batch_normalization_1/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_1/cond_1/switch_tIdentity'G/batch_normalization_1/cond_1/Switch:1*
_output_shapes
: *
T0

{
'G/batch_normalization_1/cond_1/switch_fIdentity%G/batch_normalization_1/cond_1/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_1/cond_1/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
ķ
'G/batch_normalization_1/cond_1/Switch_1Switch)G/batch_normalization_1/moments/Squeeze_1&G/batch_normalization_1/cond_1/pred_id* 
_output_shapes
:@:@*
T0*<
_class2
0.loc:@G/batch_normalization_1/moments/Squeeze_1

-G/batch_normalization_1/cond_1/ReadVariableOpReadVariableOp4G/batch_normalization_1/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ī
4G/batch_normalization_1/cond_1/ReadVariableOp/SwitchSwitch'G/batch_normalization_1/moving_variance&G/batch_normalization_1/cond_1/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_1/moving_variance*
_output_shapes
: : 
·
$G/batch_normalization_1/cond_1/MergeMerge-G/batch_normalization_1/cond_1/ReadVariableOp)G/batch_normalization_1/cond_1/Switch_1:1*
N*
_output_shapes

:@: *
T0

%G/batch_normalization_1/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_1/cond_2/switch_tIdentity'G/batch_normalization_1/cond_2/Switch:1*
_output_shapes
: *
T0

{
'G/batch_normalization_1/cond_2/switch_fIdentity%G/batch_normalization_1/cond_2/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_1/cond_2/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_1/cond_2/AssignMovingAvg/decayConst(^G/batch_normalization_1/cond_2/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ą
=G/batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ö
DG/batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch#G/batch_normalization_1/moving_mean&G/batch_normalization_1/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_1/moving_mean*
_output_shapes
: : 
Ś
2G/batch_normalization_1/cond_2/AssignMovingAvg/subSub=G/batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp;G/batch_normalization_1/cond_2/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
ń
9G/batch_normalization_1/cond_2/AssignMovingAvg/sub/SwitchSwitch"G/batch_normalization_1/cond/Merge&G/batch_normalization_1/cond_2/pred_id*
T0*5
_class+
)'loc:@G/batch_normalization_1/cond/Merge* 
_output_shapes
:@:@
Č
2G/batch_normalization_1/cond_2/AssignMovingAvg/mulMul2G/batch_normalization_1/cond_2/AssignMovingAvg/sub4G/batch_normalization_1/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes
:@
ā
BG/batch_normalization_1/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_1/cond_2/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_1/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
õ
-G/batch_normalization_1/cond_2/ReadVariableOpReadVariableOpFG/batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_1/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¢
/G/batch_normalization_1/cond_2/ReadVariableOp_1ReadVariableOp6G/batch_normalization_1/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
č
6G/batch_normalization_1/cond_2/ReadVariableOp_1/SwitchSwitch#G/batch_normalization_1/moving_mean&G/batch_normalization_1/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_1/moving_mean*
_output_shapes
: : 
½
$G/batch_normalization_1/cond_2/MergeMerge/G/batch_normalization_1/cond_2/ReadVariableOp_1-G/batch_normalization_1/cond_2/ReadVariableOp*
T0*
N*
_output_shapes

:@: 

%G/batch_normalization_1/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0

}
'G/batch_normalization_1/cond_3/switch_tIdentity'G/batch_normalization_1/cond_3/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_1/cond_3/switch_fIdentity%G/batch_normalization_1/cond_3/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_1/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_1/cond_3/AssignMovingAvg/decayConst(^G/batch_normalization_1/cond_3/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ą
=G/batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ž
DG/batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch'G/batch_normalization_1/moving_variance&G/batch_normalization_1/cond_3/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_1/moving_variance*
_output_shapes
: : 
Ś
2G/batch_normalization_1/cond_3/AssignMovingAvg/subSub=G/batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp;G/batch_normalization_1/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
õ
9G/batch_normalization_1/cond_3/AssignMovingAvg/sub/SwitchSwitch$G/batch_normalization_1/cond_1/Merge&G/batch_normalization_1/cond_3/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_1/cond_1/Merge* 
_output_shapes
:@:@
Č
2G/batch_normalization_1/cond_3/AssignMovingAvg/mulMul2G/batch_normalization_1/cond_3/AssignMovingAvg/sub4G/batch_normalization_1/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes
:@
ā
BG/batch_normalization_1/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_1/cond_3/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_1/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
õ
-G/batch_normalization_1/cond_3/ReadVariableOpReadVariableOpFG/batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_1/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¢
/G/batch_normalization_1/cond_3/ReadVariableOp_1ReadVariableOp6G/batch_normalization_1/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
š
6G/batch_normalization_1/cond_3/ReadVariableOp_1/SwitchSwitch'G/batch_normalization_1/moving_variance&G/batch_normalization_1/cond_3/pred_id*
_output_shapes
: : *
T0*:
_class0
.,loc:@G/batch_normalization_1/moving_variance
½
$G/batch_normalization_1/cond_3/MergeMerge/G/batch_normalization_1/cond_3/ReadVariableOp_1-G/batch_normalization_1/cond_3/ReadVariableOp*
T0*
N*
_output_shapes

:@: 
l
'G/batch_normalization_1/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
 
%G/batch_normalization_1/batchnorm/addAdd$G/batch_normalization_1/cond_1/Merge'G/batch_normalization_1/batchnorm/add/y*
T0*
_output_shapes
:@
|
'G/batch_normalization_1/batchnorm/RsqrtRsqrt%G/batch_normalization_1/batchnorm/add*
_output_shapes
:@*
T0

4G/batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization_1/gamma*
dtype0*
_output_shapes
:@
°
%G/batch_normalization_1/batchnorm/mulMul'G/batch_normalization_1/batchnorm/Rsqrt4G/batch_normalization_1/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:@

'G/batch_normalization_1/batchnorm/mul_1MulG/conv1d/BiasAdd%G/batch_normalization_1/batchnorm/mul*
T0*+
_output_shapes
:’’’’’’’’’
@

'G/batch_normalization_1/batchnorm/mul_2Mul"G/batch_normalization_1/cond/Merge%G/batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:@

0G/batch_normalization_1/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization_1/beta*
dtype0*
_output_shapes
:@
¬
%G/batch_normalization_1/batchnorm/subSub0G/batch_normalization_1/batchnorm/ReadVariableOp'G/batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:@
“
'G/batch_normalization_1/batchnorm/add_1Add'G/batch_normalization_1/batchnorm/mul_1%G/batch_normalization_1/batchnorm/sub*+
_output_shapes
:’’’’’’’’’
@*
T0
o
G/Relu_1Relu'G/batch_normalization_1/batchnorm/add_1*+
_output_shapes
:’’’’’’’’’
@*
T0
­
2G/conv1d_1/kernel/Initializer/random_uniform/shapeConst*!
valueB"   @   @   *$
_class
loc:@G/conv1d_1/kernel*
dtype0*
_output_shapes
:

0G/conv1d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *ųKĘ½*$
_class
loc:@G/conv1d_1/kernel*
dtype0*
_output_shapes
: 

0G/conv1d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *ųKĘ=*$
_class
loc:@G/conv1d_1/kernel*
dtype0*
_output_shapes
: 
ß
:G/conv1d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2G/conv1d_1/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@G/conv1d_1/kernel*
dtype0*"
_output_shapes
:@@
ā
0G/conv1d_1/kernel/Initializer/random_uniform/subSub0G/conv1d_1/kernel/Initializer/random_uniform/max0G/conv1d_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@G/conv1d_1/kernel
ų
0G/conv1d_1/kernel/Initializer/random_uniform/mulMul:G/conv1d_1/kernel/Initializer/random_uniform/RandomUniform0G/conv1d_1/kernel/Initializer/random_uniform/sub*"
_output_shapes
:@@*
T0*$
_class
loc:@G/conv1d_1/kernel
ź
,G/conv1d_1/kernel/Initializer/random_uniformAdd0G/conv1d_1/kernel/Initializer/random_uniform/mul0G/conv1d_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@G/conv1d_1/kernel*"
_output_shapes
:@@
Ø
G/conv1d_1/kernelVarHandleOp*
shape:@@*"
shared_nameG/conv1d_1/kernel*$
_class
loc:@G/conv1d_1/kernel*
dtype0*
_output_shapes
: 
s
2G/conv1d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_1/kernel*
_output_shapes
: 
 
G/conv1d_1/kernel/AssignAssignVariableOpG/conv1d_1/kernel,G/conv1d_1/kernel/Initializer/random_uniform*$
_class
loc:@G/conv1d_1/kernel*
dtype0
”
%G/conv1d_1/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_1/kernel*$
_class
loc:@G/conv1d_1/kernel*
dtype0*"
_output_shapes
:@@

!G/conv1d_1/bias/Initializer/zerosConst*
valueB@*    *"
_class
loc:@G/conv1d_1/bias*
dtype0*
_output_shapes
:@

G/conv1d_1/biasVarHandleOp*"
_class
loc:@G/conv1d_1/bias*
dtype0*
_output_shapes
: *
shape:@* 
shared_nameG/conv1d_1/bias
o
0G/conv1d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_1/bias*
_output_shapes
: 

G/conv1d_1/bias/AssignAssignVariableOpG/conv1d_1/bias!G/conv1d_1/bias/Initializer/zeros*"
_class
loc:@G/conv1d_1/bias*
dtype0

#G/conv1d_1/bias/Read/ReadVariableOpReadVariableOpG/conv1d_1/bias*"
_class
loc:@G/conv1d_1/bias*
dtype0*
_output_shapes
:@
b
G/conv1d_1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB:
b
 G/conv1d_1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv1d_1/conv1d/ExpandDims
ExpandDimsG/Relu_1 G/conv1d_1/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’
@

-G/conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_1/kernel*
dtype0*"
_output_shapes
:@@
d
"G/conv1d_1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
°
G/conv1d_1/conv1d/ExpandDims_1
ExpandDims-G/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp"G/conv1d_1/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:@@
Ā
G/conv1d_1/conv1d/Conv2DConv2DG/conv1d_1/conv1d/ExpandDimsG/conv1d_1/conv1d/ExpandDims_1*
paddingSAME*
T0*
strides
*/
_output_shapes
:’’’’’’’’’
@

G/conv1d_1/conv1d/SqueezeSqueezeG/conv1d_1/conv1d/Conv2D*
T0*+
_output_shapes
:’’’’’’’’’
@*
squeeze_dims

m
!G/conv1d_1/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_1/bias*
dtype0*
_output_shapes
:@

G/conv1d_1/BiasAddBiasAddG/conv1d_1/conv1d/Squeeze!G/conv1d_1/BiasAdd/ReadVariableOp*
T0*+
_output_shapes
:’’’’’’’’’
@
­
.G/batch_normalization_2/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:@*
valueB@*  ?*0
_class&
$"loc:@G/batch_normalization_2/gamma
Ä
G/batch_normalization_2/gammaVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*.
shared_nameG/batch_normalization_2/gamma*0
_class&
$"loc:@G/batch_normalization_2/gamma

>G/batch_normalization_2/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_2/gamma*
_output_shapes
: 
Ę
$G/batch_normalization_2/gamma/AssignAssignVariableOpG/batch_normalization_2/gamma.G/batch_normalization_2/gamma/Initializer/ones*0
_class&
$"loc:@G/batch_normalization_2/gamma*
dtype0
½
1G/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_2/gamma*0
_class&
$"loc:@G/batch_normalization_2/gamma*
dtype0*
_output_shapes
:@
¬
.G/batch_normalization_2/beta/Initializer/zerosConst*
valueB@*    */
_class%
#!loc:@G/batch_normalization_2/beta*
dtype0*
_output_shapes
:@
Į
G/batch_normalization_2/betaVarHandleOp*-
shared_nameG/batch_normalization_2/beta*/
_class%
#!loc:@G/batch_normalization_2/beta*
dtype0*
_output_shapes
: *
shape:@

=G/batch_normalization_2/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_2/beta*
_output_shapes
: 
Ć
#G/batch_normalization_2/beta/AssignAssignVariableOpG/batch_normalization_2/beta.G/batch_normalization_2/beta/Initializer/zeros*/
_class%
#!loc:@G/batch_normalization_2/beta*
dtype0
ŗ
0G/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_2/beta*
dtype0*
_output_shapes
:@*/
_class%
#!loc:@G/batch_normalization_2/beta
ŗ
5G/batch_normalization_2/moving_mean/Initializer/zerosConst*
valueB@*    *6
_class,
*(loc:@G/batch_normalization_2/moving_mean*
dtype0*
_output_shapes
:@
Ö
#G/batch_normalization_2/moving_meanVarHandleOp*
shape:@*4
shared_name%#G/batch_normalization_2/moving_mean*6
_class,
*(loc:@G/batch_normalization_2/moving_mean*
dtype0*
_output_shapes
: 

DG/batch_normalization_2/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp#G/batch_normalization_2/moving_mean*
_output_shapes
: 
ß
*G/batch_normalization_2/moving_mean/AssignAssignVariableOp#G/batch_normalization_2/moving_mean5G/batch_normalization_2/moving_mean/Initializer/zeros*
dtype0*6
_class,
*(loc:@G/batch_normalization_2/moving_mean
Ļ
7G/batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp#G/batch_normalization_2/moving_mean*6
_class,
*(loc:@G/batch_normalization_2/moving_mean*
dtype0*
_output_shapes
:@
Į
8G/batch_normalization_2/moving_variance/Initializer/onesConst*
valueB@*  ?*:
_class0
.,loc:@G/batch_normalization_2/moving_variance*
dtype0*
_output_shapes
:@
ā
'G/batch_normalization_2/moving_varianceVarHandleOp*:
_class0
.,loc:@G/batch_normalization_2/moving_variance*
dtype0*
_output_shapes
: *
shape:@*8
shared_name)'G/batch_normalization_2/moving_variance

HG/batch_normalization_2/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp'G/batch_normalization_2/moving_variance*
_output_shapes
: 
ī
.G/batch_normalization_2/moving_variance/AssignAssignVariableOp'G/batch_normalization_2/moving_variance8G/batch_normalization_2/moving_variance/Initializer/ones*
dtype0*:
_class0
.,loc:@G/batch_normalization_2/moving_variance
Ū
;G/batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp'G/batch_normalization_2/moving_variance*:
_class0
.,loc:@G/batch_normalization_2/moving_variance*
dtype0*
_output_shapes
:@

6G/batch_normalization_2/moments/mean/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
¶
$G/batch_normalization_2/moments/meanMeanG/conv1d_1/BiasAdd6G/batch_normalization_2/moments/mean/reduction_indices*
T0*"
_output_shapes
:@*
	keep_dims(

,G/batch_normalization_2/moments/StopGradientStopGradient$G/batch_normalization_2/moments/mean*
T0*"
_output_shapes
:@
¾
1G/batch_normalization_2/moments/SquaredDifferenceSquaredDifferenceG/conv1d_1/BiasAdd,G/batch_normalization_2/moments/StopGradient*
T0*+
_output_shapes
:’’’’’’’’’
@

:G/batch_normalization_2/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB"       
Ż
(G/batch_normalization_2/moments/varianceMean1G/batch_normalization_2/moments/SquaredDifference:G/batch_normalization_2/moments/variance/reduction_indices*
T0*"
_output_shapes
:@*
	keep_dims(

'G/batch_normalization_2/moments/SqueezeSqueeze$G/batch_normalization_2/moments/mean*
_output_shapes
:@*
squeeze_dims
 *
T0

)G/batch_normalization_2/moments/Squeeze_1Squeeze(G/batch_normalization_2/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:@

#G/batch_normalization_2/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
y
%G/batch_normalization_2/cond/switch_tIdentity%G/batch_normalization_2/cond/Switch:1*
T0
*
_output_shapes
: 
w
%G/batch_normalization_2/cond/switch_fIdentity#G/batch_normalization_2/cond/Switch*
_output_shapes
: *
T0

i
$G/batch_normalization_2/cond/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
å
%G/batch_normalization_2/cond/Switch_1Switch'G/batch_normalization_2/moments/Squeeze$G/batch_normalization_2/cond/pred_id* 
_output_shapes
:@:@*
T0*:
_class0
.,loc:@G/batch_normalization_2/moments/Squeeze

+G/batch_normalization_2/cond/ReadVariableOpReadVariableOp2G/batch_normalization_2/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ā
2G/batch_normalization_2/cond/ReadVariableOp/SwitchSwitch#G/batch_normalization_2/moving_mean$G/batch_normalization_2/cond/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_2/moving_mean*
_output_shapes
: : 
±
"G/batch_normalization_2/cond/MergeMerge+G/batch_normalization_2/cond/ReadVariableOp'G/batch_normalization_2/cond/Switch_1:1*
T0*
N*
_output_shapes

:@: 

%G/batch_normalization_2/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0

}
'G/batch_normalization_2/cond_1/switch_tIdentity'G/batch_normalization_2/cond_1/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_2/cond_1/switch_fIdentity%G/batch_normalization_2/cond_1/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_2/cond_1/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
ķ
'G/batch_normalization_2/cond_1/Switch_1Switch)G/batch_normalization_2/moments/Squeeze_1&G/batch_normalization_2/cond_1/pred_id* 
_output_shapes
:@:@*
T0*<
_class2
0.loc:@G/batch_normalization_2/moments/Squeeze_1

-G/batch_normalization_2/cond_1/ReadVariableOpReadVariableOp4G/batch_normalization_2/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ī
4G/batch_normalization_2/cond_1/ReadVariableOp/SwitchSwitch'G/batch_normalization_2/moving_variance&G/batch_normalization_2/cond_1/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_2/moving_variance*
_output_shapes
: : 
·
$G/batch_normalization_2/cond_1/MergeMerge-G/batch_normalization_2/cond_1/ReadVariableOp)G/batch_normalization_2/cond_1/Switch_1:1*
N*
_output_shapes

:@: *
T0

%G/batch_normalization_2/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0

}
'G/batch_normalization_2/cond_2/switch_tIdentity'G/batch_normalization_2/cond_2/Switch:1*
_output_shapes
: *
T0

{
'G/batch_normalization_2/cond_2/switch_fIdentity%G/batch_normalization_2/cond_2/Switch*
_output_shapes
: *
T0

k
&G/batch_normalization_2/cond_2/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_2/cond_2/AssignMovingAvg/decayConst(^G/batch_normalization_2/cond_2/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ą
=G/batch_normalization_2/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_2/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ö
DG/batch_normalization_2/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch#G/batch_normalization_2/moving_mean&G/batch_normalization_2/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_2/moving_mean*
_output_shapes
: : 
Ś
2G/batch_normalization_2/cond_2/AssignMovingAvg/subSub=G/batch_normalization_2/cond_2/AssignMovingAvg/ReadVariableOp;G/batch_normalization_2/cond_2/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
ń
9G/batch_normalization_2/cond_2/AssignMovingAvg/sub/SwitchSwitch"G/batch_normalization_2/cond/Merge&G/batch_normalization_2/cond_2/pred_id*
T0*5
_class+
)'loc:@G/batch_normalization_2/cond/Merge* 
_output_shapes
:@:@
Č
2G/batch_normalization_2/cond_2/AssignMovingAvg/mulMul2G/batch_normalization_2/cond_2/AssignMovingAvg/sub4G/batch_normalization_2/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes
:@
ā
BG/batch_normalization_2/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_2/cond_2/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_2/cond_2/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_2/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_2/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_2/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
õ
-G/batch_normalization_2/cond_2/ReadVariableOpReadVariableOpFG/batch_normalization_2/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_2/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¢
/G/batch_normalization_2/cond_2/ReadVariableOp_1ReadVariableOp6G/batch_normalization_2/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
č
6G/batch_normalization_2/cond_2/ReadVariableOp_1/SwitchSwitch#G/batch_normalization_2/moving_mean&G/batch_normalization_2/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_2/moving_mean*
_output_shapes
: : 
½
$G/batch_normalization_2/cond_2/MergeMerge/G/batch_normalization_2/cond_2/ReadVariableOp_1-G/batch_normalization_2/cond_2/ReadVariableOp*
T0*
N*
_output_shapes

:@: 

%G/batch_normalization_2/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_2/cond_3/switch_tIdentity'G/batch_normalization_2/cond_3/Switch:1*
_output_shapes
: *
T0

{
'G/batch_normalization_2/cond_3/switch_fIdentity%G/batch_normalization_2/cond_3/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_2/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_2/cond_3/AssignMovingAvg/decayConst(^G/batch_normalization_2/cond_3/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ą
=G/batch_normalization_2/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_2/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ž
DG/batch_normalization_2/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch'G/batch_normalization_2/moving_variance&G/batch_normalization_2/cond_3/pred_id*
_output_shapes
: : *
T0*:
_class0
.,loc:@G/batch_normalization_2/moving_variance
Ś
2G/batch_normalization_2/cond_3/AssignMovingAvg/subSub=G/batch_normalization_2/cond_3/AssignMovingAvg/ReadVariableOp;G/batch_normalization_2/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
õ
9G/batch_normalization_2/cond_3/AssignMovingAvg/sub/SwitchSwitch$G/batch_normalization_2/cond_1/Merge&G/batch_normalization_2/cond_3/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_2/cond_1/Merge* 
_output_shapes
:@:@
Č
2G/batch_normalization_2/cond_3/AssignMovingAvg/mulMul2G/batch_normalization_2/cond_3/AssignMovingAvg/sub4G/batch_normalization_2/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes
:@
ā
BG/batch_normalization_2/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_2/cond_3/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_2/cond_3/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_2/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_2/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_2/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
õ
-G/batch_normalization_2/cond_3/ReadVariableOpReadVariableOpFG/batch_normalization_2/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_2/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¢
/G/batch_normalization_2/cond_3/ReadVariableOp_1ReadVariableOp6G/batch_normalization_2/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
š
6G/batch_normalization_2/cond_3/ReadVariableOp_1/SwitchSwitch'G/batch_normalization_2/moving_variance&G/batch_normalization_2/cond_3/pred_id*
_output_shapes
: : *
T0*:
_class0
.,loc:@G/batch_normalization_2/moving_variance
½
$G/batch_normalization_2/cond_3/MergeMerge/G/batch_normalization_2/cond_3/ReadVariableOp_1-G/batch_normalization_2/cond_3/ReadVariableOp*
T0*
N*
_output_shapes

:@: 
l
'G/batch_normalization_2/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
 
%G/batch_normalization_2/batchnorm/addAdd$G/batch_normalization_2/cond_1/Merge'G/batch_normalization_2/batchnorm/add/y*
T0*
_output_shapes
:@
|
'G/batch_normalization_2/batchnorm/RsqrtRsqrt%G/batch_normalization_2/batchnorm/add*
_output_shapes
:@*
T0

4G/batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization_2/gamma*
dtype0*
_output_shapes
:@
°
%G/batch_normalization_2/batchnorm/mulMul'G/batch_normalization_2/batchnorm/Rsqrt4G/batch_normalization_2/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:@

'G/batch_normalization_2/batchnorm/mul_1MulG/conv1d_1/BiasAdd%G/batch_normalization_2/batchnorm/mul*
T0*+
_output_shapes
:’’’’’’’’’
@

'G/batch_normalization_2/batchnorm/mul_2Mul"G/batch_normalization_2/cond/Merge%G/batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:@

0G/batch_normalization_2/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization_2/beta*
dtype0*
_output_shapes
:@
¬
%G/batch_normalization_2/batchnorm/subSub0G/batch_normalization_2/batchnorm/ReadVariableOp'G/batch_normalization_2/batchnorm/mul_2*
T0*
_output_shapes
:@
“
'G/batch_normalization_2/batchnorm/add_1Add'G/batch_normalization_2/batchnorm/mul_1%G/batch_normalization_2/batchnorm/sub*+
_output_shapes
:’’’’’’’’’
@*
T0
o
G/Relu_2Relu'G/batch_normalization_2/batchnorm/add_1*+
_output_shapes
:’’’’’’’’’
@*
T0
­
2G/conv1d_2/kernel/Initializer/random_uniform/shapeConst*!
valueB"   @      *$
_class
loc:@G/conv1d_2/kernel*
dtype0*
_output_shapes
:

0G/conv1d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *ó5¾*$
_class
loc:@G/conv1d_2/kernel*
dtype0*
_output_shapes
: 

0G/conv1d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *ó5>*$
_class
loc:@G/conv1d_2/kernel*
dtype0*
_output_shapes
: 
ą
:G/conv1d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2G/conv1d_2/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@G/conv1d_2/kernel*
dtype0*#
_output_shapes
:@
ā
0G/conv1d_2/kernel/Initializer/random_uniform/subSub0G/conv1d_2/kernel/Initializer/random_uniform/max0G/conv1d_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@G/conv1d_2/kernel
ł
0G/conv1d_2/kernel/Initializer/random_uniform/mulMul:G/conv1d_2/kernel/Initializer/random_uniform/RandomUniform0G/conv1d_2/kernel/Initializer/random_uniform/sub*#
_output_shapes
:@*
T0*$
_class
loc:@G/conv1d_2/kernel
ė
,G/conv1d_2/kernel/Initializer/random_uniformAdd0G/conv1d_2/kernel/Initializer/random_uniform/mul0G/conv1d_2/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@G/conv1d_2/kernel*#
_output_shapes
:@
©
G/conv1d_2/kernelVarHandleOp*$
_class
loc:@G/conv1d_2/kernel*
dtype0*
_output_shapes
: *
shape:@*"
shared_nameG/conv1d_2/kernel
s
2G/conv1d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_2/kernel*
_output_shapes
: 
 
G/conv1d_2/kernel/AssignAssignVariableOpG/conv1d_2/kernel,G/conv1d_2/kernel/Initializer/random_uniform*$
_class
loc:@G/conv1d_2/kernel*
dtype0
¢
%G/conv1d_2/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_2/kernel*$
_class
loc:@G/conv1d_2/kernel*
dtype0*#
_output_shapes
:@

!G/conv1d_2/bias/Initializer/zerosConst*
valueB*    *"
_class
loc:@G/conv1d_2/bias*
dtype0*
_output_shapes	
:

G/conv1d_2/biasVarHandleOp*"
_class
loc:@G/conv1d_2/bias*
dtype0*
_output_shapes
: *
shape:* 
shared_nameG/conv1d_2/bias
o
0G/conv1d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_2/bias*
_output_shapes
: 

G/conv1d_2/bias/AssignAssignVariableOpG/conv1d_2/bias!G/conv1d_2/bias/Initializer/zeros*"
_class
loc:@G/conv1d_2/bias*
dtype0

#G/conv1d_2/bias/Read/ReadVariableOpReadVariableOpG/conv1d_2/bias*
dtype0*
_output_shapes	
:*"
_class
loc:@G/conv1d_2/bias
b
G/conv1d_2/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
b
 G/conv1d_2/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv1d_2/conv1d/ExpandDims
ExpandDimsG/Relu_2 G/conv1d_2/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’
@

-G/conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_2/kernel*
dtype0*#
_output_shapes
:@
d
"G/conv1d_2/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
±
G/conv1d_2/conv1d/ExpandDims_1
ExpandDims-G/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp"G/conv1d_2/conv1d/ExpandDims_1/dim*
T0*'
_output_shapes
:@
Ć
G/conv1d_2/conv1d/Conv2DConv2DG/conv1d_2/conv1d/ExpandDimsG/conv1d_2/conv1d/ExpandDims_1*
paddingSAME*
T0*
strides
*0
_output_shapes
:’’’’’’’’’


G/conv1d_2/conv1d/SqueezeSqueezeG/conv1d_2/conv1d/Conv2D*
T0*,
_output_shapes
:’’’’’’’’’
*
squeeze_dims

n
!G/conv1d_2/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_2/bias*
dtype0*
_output_shapes	
:

G/conv1d_2/BiasAddBiasAddG/conv1d_2/conv1d/Squeeze!G/conv1d_2/BiasAdd/ReadVariableOp*,
_output_shapes
:’’’’’’’’’
*
T0
L
G/mul/xConst*
valueB
 *>*
dtype0*
_output_shapes
: 
`
G/mulMulG/mul/xG/conv1d_2/BiasAdd*
T0*,
_output_shapes
:’’’’’’’’’

U
G/addAdd	G/ReshapeG/mul*
T0*,
_output_shapes
:’’’’’’’’’

Æ
.G/batch_normalization_3/gamma/Initializer/onesConst*
valueB*  ?*0
_class&
$"loc:@G/batch_normalization_3/gamma*
dtype0*
_output_shapes	
:
Å
G/batch_normalization_3/gammaVarHandleOp*.
shared_nameG/batch_normalization_3/gamma*0
_class&
$"loc:@G/batch_normalization_3/gamma*
dtype0*
_output_shapes
: *
shape:

>G/batch_normalization_3/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_3/gamma*
_output_shapes
: 
Ę
$G/batch_normalization_3/gamma/AssignAssignVariableOpG/batch_normalization_3/gamma.G/batch_normalization_3/gamma/Initializer/ones*0
_class&
$"loc:@G/batch_normalization_3/gamma*
dtype0
¾
1G/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_3/gamma*
dtype0*
_output_shapes	
:*0
_class&
$"loc:@G/batch_normalization_3/gamma
®
.G/batch_normalization_3/beta/Initializer/zerosConst*
valueB*    */
_class%
#!loc:@G/batch_normalization_3/beta*
dtype0*
_output_shapes	
:
Ā
G/batch_normalization_3/betaVarHandleOp*
shape:*-
shared_nameG/batch_normalization_3/beta*/
_class%
#!loc:@G/batch_normalization_3/beta*
dtype0*
_output_shapes
: 

=G/batch_normalization_3/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_3/beta*
_output_shapes
: 
Ć
#G/batch_normalization_3/beta/AssignAssignVariableOpG/batch_normalization_3/beta.G/batch_normalization_3/beta/Initializer/zeros*/
_class%
#!loc:@G/batch_normalization_3/beta*
dtype0
»
0G/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_3/beta*
dtype0*
_output_shapes	
:*/
_class%
#!loc:@G/batch_normalization_3/beta
¼
5G/batch_normalization_3/moving_mean/Initializer/zerosConst*
valueB*    *6
_class,
*(loc:@G/batch_normalization_3/moving_mean*
dtype0*
_output_shapes	
:
×
#G/batch_normalization_3/moving_meanVarHandleOp*
shape:*4
shared_name%#G/batch_normalization_3/moving_mean*6
_class,
*(loc:@G/batch_normalization_3/moving_mean*
dtype0*
_output_shapes
: 

DG/batch_normalization_3/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp#G/batch_normalization_3/moving_mean*
_output_shapes
: 
ß
*G/batch_normalization_3/moving_mean/AssignAssignVariableOp#G/batch_normalization_3/moving_mean5G/batch_normalization_3/moving_mean/Initializer/zeros*
dtype0*6
_class,
*(loc:@G/batch_normalization_3/moving_mean
Š
7G/batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp#G/batch_normalization_3/moving_mean*6
_class,
*(loc:@G/batch_normalization_3/moving_mean*
dtype0*
_output_shapes	
:
Ć
8G/batch_normalization_3/moving_variance/Initializer/onesConst*
valueB*  ?*:
_class0
.,loc:@G/batch_normalization_3/moving_variance*
dtype0*
_output_shapes	
:
ć
'G/batch_normalization_3/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *
shape:*8
shared_name)'G/batch_normalization_3/moving_variance*:
_class0
.,loc:@G/batch_normalization_3/moving_variance

HG/batch_normalization_3/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp'G/batch_normalization_3/moving_variance*
_output_shapes
: 
ī
.G/batch_normalization_3/moving_variance/AssignAssignVariableOp'G/batch_normalization_3/moving_variance8G/batch_normalization_3/moving_variance/Initializer/ones*:
_class0
.,loc:@G/batch_normalization_3/moving_variance*
dtype0
Ü
;G/batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp'G/batch_normalization_3/moving_variance*:
_class0
.,loc:@G/batch_normalization_3/moving_variance*
dtype0*
_output_shapes	
:

6G/batch_normalization_3/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB"       
Ŗ
$G/batch_normalization_3/moments/meanMeanG/add6G/batch_normalization_3/moments/mean/reduction_indices*
T0*#
_output_shapes
:*
	keep_dims(

,G/batch_normalization_3/moments/StopGradientStopGradient$G/batch_normalization_3/moments/mean*
T0*#
_output_shapes
:
²
1G/batch_normalization_3/moments/SquaredDifferenceSquaredDifferenceG/add,G/batch_normalization_3/moments/StopGradient*
T0*,
_output_shapes
:’’’’’’’’’


:G/batch_normalization_3/moments/variance/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
Ž
(G/batch_normalization_3/moments/varianceMean1G/batch_normalization_3/moments/SquaredDifference:G/batch_normalization_3/moments/variance/reduction_indices*
	keep_dims(*
T0*#
_output_shapes
:

'G/batch_normalization_3/moments/SqueezeSqueeze$G/batch_normalization_3/moments/mean*
squeeze_dims
 *
T0*
_output_shapes	
:

)G/batch_normalization_3/moments/Squeeze_1Squeeze(G/batch_normalization_3/moments/variance*
_output_shapes	
:*
squeeze_dims
 *
T0

#G/batch_normalization_3/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0

y
%G/batch_normalization_3/cond/switch_tIdentity%G/batch_normalization_3/cond/Switch:1*
T0
*
_output_shapes
: 
w
%G/batch_normalization_3/cond/switch_fIdentity#G/batch_normalization_3/cond/Switch*
T0
*
_output_shapes
: 
i
$G/batch_normalization_3/cond/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
ē
%G/batch_normalization_3/cond/Switch_1Switch'G/batch_normalization_3/moments/Squeeze$G/batch_normalization_3/cond/pred_id*"
_output_shapes
::*
T0*:
_class0
.,loc:@G/batch_normalization_3/moments/Squeeze

+G/batch_normalization_3/cond/ReadVariableOpReadVariableOp2G/batch_normalization_3/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:
ā
2G/batch_normalization_3/cond/ReadVariableOp/SwitchSwitch#G/batch_normalization_3/moving_mean$G/batch_normalization_3/cond/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_3/moving_mean*
_output_shapes
: : 
²
"G/batch_normalization_3/cond/MergeMerge+G/batch_normalization_3/cond/ReadVariableOp'G/batch_normalization_3/cond/Switch_1:1*
T0*
N*
_output_shapes
	:: 

%G/batch_normalization_3/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_3/cond_1/switch_tIdentity'G/batch_normalization_3/cond_1/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_3/cond_1/switch_fIdentity%G/batch_normalization_3/cond_1/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_3/cond_1/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
ļ
'G/batch_normalization_3/cond_1/Switch_1Switch)G/batch_normalization_3/moments/Squeeze_1&G/batch_normalization_3/cond_1/pred_id*
T0*<
_class2
0.loc:@G/batch_normalization_3/moments/Squeeze_1*"
_output_shapes
::

-G/batch_normalization_3/cond_1/ReadVariableOpReadVariableOp4G/batch_normalization_3/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:
ī
4G/batch_normalization_3/cond_1/ReadVariableOp/SwitchSwitch'G/batch_normalization_3/moving_variance&G/batch_normalization_3/cond_1/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_3/moving_variance*
_output_shapes
: : 
ø
$G/batch_normalization_3/cond_1/MergeMerge-G/batch_normalization_3/cond_1/ReadVariableOp)G/batch_normalization_3/cond_1/Switch_1:1*
T0*
N*
_output_shapes
	:: 

%G/batch_normalization_3/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_3/cond_2/switch_tIdentity'G/batch_normalization_3/cond_2/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_3/cond_2/switch_fIdentity%G/batch_normalization_3/cond_2/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_3/cond_2/pred_idIdentityPlaceholderWithDefault*
_output_shapes
: *
T0

£
4G/batch_normalization_3/cond_2/AssignMovingAvg/decayConst(^G/batch_normalization_3/cond_2/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Į
=G/batch_normalization_3/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_3/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:
ö
DG/batch_normalization_3/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch#G/batch_normalization_3/moving_mean&G/batch_normalization_3/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_3/moving_mean*
_output_shapes
: : 
Ū
2G/batch_normalization_3/cond_2/AssignMovingAvg/subSub=G/batch_normalization_3/cond_2/AssignMovingAvg/ReadVariableOp;G/batch_normalization_3/cond_2/AssignMovingAvg/sub/Switch:1*
_output_shapes	
:*
T0
ó
9G/batch_normalization_3/cond_2/AssignMovingAvg/sub/SwitchSwitch"G/batch_normalization_3/cond/Merge&G/batch_normalization_3/cond_2/pred_id*"
_output_shapes
::*
T0*5
_class+
)'loc:@G/batch_normalization_3/cond/Merge
É
2G/batch_normalization_3/cond_2/AssignMovingAvg/mulMul2G/batch_normalization_3/cond_2/AssignMovingAvg/sub4G/batch_normalization_3/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes	
:
ā
BG/batch_normalization_3/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_3/cond_2/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_3/cond_2/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_3/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_3/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_3/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
ö
-G/batch_normalization_3/cond_2/ReadVariableOpReadVariableOpFG/batch_normalization_3/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_3/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
£
/G/batch_normalization_3/cond_2/ReadVariableOp_1ReadVariableOp6G/batch_normalization_3/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:
č
6G/batch_normalization_3/cond_2/ReadVariableOp_1/SwitchSwitch#G/batch_normalization_3/moving_mean&G/batch_normalization_3/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_3/moving_mean*
_output_shapes
: : 
¾
$G/batch_normalization_3/cond_2/MergeMerge/G/batch_normalization_3/cond_2/ReadVariableOp_1-G/batch_normalization_3/cond_2/ReadVariableOp*
T0*
N*
_output_shapes
	:: 

%G/batch_normalization_3/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_3/cond_3/switch_tIdentity'G/batch_normalization_3/cond_3/Switch:1*
_output_shapes
: *
T0

{
'G/batch_normalization_3/cond_3/switch_fIdentity%G/batch_normalization_3/cond_3/Switch*
_output_shapes
: *
T0

k
&G/batch_normalization_3/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_3/cond_3/AssignMovingAvg/decayConst(^G/batch_normalization_3/cond_3/switch_t*
dtype0*
_output_shapes
: *
valueB
 *
×#<
Į
=G/batch_normalization_3/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_3/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:
ž
DG/batch_normalization_3/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch'G/batch_normalization_3/moving_variance&G/batch_normalization_3/cond_3/pred_id*
_output_shapes
: : *
T0*:
_class0
.,loc:@G/batch_normalization_3/moving_variance
Ū
2G/batch_normalization_3/cond_3/AssignMovingAvg/subSub=G/batch_normalization_3/cond_3/AssignMovingAvg/ReadVariableOp;G/batch_normalization_3/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes	
:
÷
9G/batch_normalization_3/cond_3/AssignMovingAvg/sub/SwitchSwitch$G/batch_normalization_3/cond_1/Merge&G/batch_normalization_3/cond_3/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_3/cond_1/Merge*"
_output_shapes
::
É
2G/batch_normalization_3/cond_3/AssignMovingAvg/mulMul2G/batch_normalization_3/cond_3/AssignMovingAvg/sub4G/batch_normalization_3/cond_3/AssignMovingAvg/decay*
_output_shapes	
:*
T0
ā
BG/batch_normalization_3/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_3/cond_3/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_3/cond_3/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_3/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_3/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_3/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
ö
-G/batch_normalization_3/cond_3/ReadVariableOpReadVariableOpFG/batch_normalization_3/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_3/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
£
/G/batch_normalization_3/cond_3/ReadVariableOp_1ReadVariableOp6G/batch_normalization_3/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:
š
6G/batch_normalization_3/cond_3/ReadVariableOp_1/SwitchSwitch'G/batch_normalization_3/moving_variance&G/batch_normalization_3/cond_3/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_3/moving_variance*
_output_shapes
: : 
¾
$G/batch_normalization_3/cond_3/MergeMerge/G/batch_normalization_3/cond_3/ReadVariableOp_1-G/batch_normalization_3/cond_3/ReadVariableOp*
N*
_output_shapes
	:: *
T0
l
'G/batch_normalization_3/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
”
%G/batch_normalization_3/batchnorm/addAdd$G/batch_normalization_3/cond_1/Merge'G/batch_normalization_3/batchnorm/add/y*
T0*
_output_shapes	
:
}
'G/batch_normalization_3/batchnorm/RsqrtRsqrt%G/batch_normalization_3/batchnorm/add*
T0*
_output_shapes	
:

4G/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization_3/gamma*
dtype0*
_output_shapes	
:
±
%G/batch_normalization_3/batchnorm/mulMul'G/batch_normalization_3/batchnorm/Rsqrt4G/batch_normalization_3/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes	
:

'G/batch_normalization_3/batchnorm/mul_1MulG/add%G/batch_normalization_3/batchnorm/mul*
T0*,
_output_shapes
:’’’’’’’’’


'G/batch_normalization_3/batchnorm/mul_2Mul"G/batch_normalization_3/cond/Merge%G/batch_normalization_3/batchnorm/mul*
_output_shapes	
:*
T0

0G/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization_3/beta*
dtype0*
_output_shapes	
:
­
%G/batch_normalization_3/batchnorm/subSub0G/batch_normalization_3/batchnorm/ReadVariableOp'G/batch_normalization_3/batchnorm/mul_2*
T0*
_output_shapes	
:
µ
'G/batch_normalization_3/batchnorm/add_1Add'G/batch_normalization_3/batchnorm/mul_1%G/batch_normalization_3/batchnorm/sub*
T0*,
_output_shapes
:’’’’’’’’’

p
G/Relu_3Relu'G/batch_normalization_3/batchnorm/add_1*
T0*,
_output_shapes
:’’’’’’’’’

­
2G/conv1d_3/kernel/Initializer/random_uniform/shapeConst*!
valueB"      @   *$
_class
loc:@G/conv1d_3/kernel*
dtype0*
_output_shapes
:

0G/conv1d_3/kernel/Initializer/random_uniform/minConst*
valueB
 *ó5¾*$
_class
loc:@G/conv1d_3/kernel*
dtype0*
_output_shapes
: 

0G/conv1d_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *ó5>*$
_class
loc:@G/conv1d_3/kernel*
dtype0*
_output_shapes
: 
ą
:G/conv1d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform2G/conv1d_3/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@G/conv1d_3/kernel*
dtype0*#
_output_shapes
:@
ā
0G/conv1d_3/kernel/Initializer/random_uniform/subSub0G/conv1d_3/kernel/Initializer/random_uniform/max0G/conv1d_3/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@G/conv1d_3/kernel*
_output_shapes
: 
ł
0G/conv1d_3/kernel/Initializer/random_uniform/mulMul:G/conv1d_3/kernel/Initializer/random_uniform/RandomUniform0G/conv1d_3/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@G/conv1d_3/kernel*#
_output_shapes
:@
ė
,G/conv1d_3/kernel/Initializer/random_uniformAdd0G/conv1d_3/kernel/Initializer/random_uniform/mul0G/conv1d_3/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@G/conv1d_3/kernel*#
_output_shapes
:@
©
G/conv1d_3/kernelVarHandleOp*
shape:@*"
shared_nameG/conv1d_3/kernel*$
_class
loc:@G/conv1d_3/kernel*
dtype0*
_output_shapes
: 
s
2G/conv1d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_3/kernel*
_output_shapes
: 
 
G/conv1d_3/kernel/AssignAssignVariableOpG/conv1d_3/kernel,G/conv1d_3/kernel/Initializer/random_uniform*$
_class
loc:@G/conv1d_3/kernel*
dtype0
¢
%G/conv1d_3/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_3/kernel*$
_class
loc:@G/conv1d_3/kernel*
dtype0*#
_output_shapes
:@

!G/conv1d_3/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *"
_class
loc:@G/conv1d_3/bias

G/conv1d_3/biasVarHandleOp* 
shared_nameG/conv1d_3/bias*"
_class
loc:@G/conv1d_3/bias*
dtype0*
_output_shapes
: *
shape:@
o
0G/conv1d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_3/bias*
_output_shapes
: 

G/conv1d_3/bias/AssignAssignVariableOpG/conv1d_3/bias!G/conv1d_3/bias/Initializer/zeros*"
_class
loc:@G/conv1d_3/bias*
dtype0

#G/conv1d_3/bias/Read/ReadVariableOpReadVariableOpG/conv1d_3/bias*"
_class
loc:@G/conv1d_3/bias*
dtype0*
_output_shapes
:@
b
G/conv1d_3/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB:
b
 G/conv1d_3/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv1d_3/conv1d/ExpandDims
ExpandDimsG/Relu_3 G/conv1d_3/conv1d/ExpandDims/dim*
T0*0
_output_shapes
:’’’’’’’’’


-G/conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_3/kernel*
dtype0*#
_output_shapes
:@
d
"G/conv1d_3/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
±
G/conv1d_3/conv1d/ExpandDims_1
ExpandDims-G/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp"G/conv1d_3/conv1d/ExpandDims_1/dim*
T0*'
_output_shapes
:@
Ā
G/conv1d_3/conv1d/Conv2DConv2DG/conv1d_3/conv1d/ExpandDimsG/conv1d_3/conv1d/ExpandDims_1*
paddingSAME*
T0*
strides
*/
_output_shapes
:’’’’’’’’’
@

G/conv1d_3/conv1d/SqueezeSqueezeG/conv1d_3/conv1d/Conv2D*
squeeze_dims
*
T0*+
_output_shapes
:’’’’’’’’’
@
m
!G/conv1d_3/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_3/bias*
dtype0*
_output_shapes
:@

G/conv1d_3/BiasAddBiasAddG/conv1d_3/conv1d/Squeeze!G/conv1d_3/BiasAdd/ReadVariableOp*
T0*+
_output_shapes
:’’’’’’’’’
@
­
.G/batch_normalization_4/gamma/Initializer/onesConst*
valueB@*  ?*0
_class&
$"loc:@G/batch_normalization_4/gamma*
dtype0*
_output_shapes
:@
Ä
G/batch_normalization_4/gammaVarHandleOp*0
_class&
$"loc:@G/batch_normalization_4/gamma*
dtype0*
_output_shapes
: *
shape:@*.
shared_nameG/batch_normalization_4/gamma

>G/batch_normalization_4/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_4/gamma*
_output_shapes
: 
Ę
$G/batch_normalization_4/gamma/AssignAssignVariableOpG/batch_normalization_4/gamma.G/batch_normalization_4/gamma/Initializer/ones*0
_class&
$"loc:@G/batch_normalization_4/gamma*
dtype0
½
1G/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_4/gamma*0
_class&
$"loc:@G/batch_normalization_4/gamma*
dtype0*
_output_shapes
:@
¬
.G/batch_normalization_4/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    */
_class%
#!loc:@G/batch_normalization_4/beta
Į
G/batch_normalization_4/betaVarHandleOp*/
_class%
#!loc:@G/batch_normalization_4/beta*
dtype0*
_output_shapes
: *
shape:@*-
shared_nameG/batch_normalization_4/beta

=G/batch_normalization_4/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_4/beta*
_output_shapes
: 
Ć
#G/batch_normalization_4/beta/AssignAssignVariableOpG/batch_normalization_4/beta.G/batch_normalization_4/beta/Initializer/zeros*/
_class%
#!loc:@G/batch_normalization_4/beta*
dtype0
ŗ
0G/batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_4/beta*/
_class%
#!loc:@G/batch_normalization_4/beta*
dtype0*
_output_shapes
:@
ŗ
5G/batch_normalization_4/moving_mean/Initializer/zerosConst*
valueB@*    *6
_class,
*(loc:@G/batch_normalization_4/moving_mean*
dtype0*
_output_shapes
:@
Ö
#G/batch_normalization_4/moving_meanVarHandleOp*6
_class,
*(loc:@G/batch_normalization_4/moving_mean*
dtype0*
_output_shapes
: *
shape:@*4
shared_name%#G/batch_normalization_4/moving_mean

DG/batch_normalization_4/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp#G/batch_normalization_4/moving_mean*
_output_shapes
: 
ß
*G/batch_normalization_4/moving_mean/AssignAssignVariableOp#G/batch_normalization_4/moving_mean5G/batch_normalization_4/moving_mean/Initializer/zeros*6
_class,
*(loc:@G/batch_normalization_4/moving_mean*
dtype0
Ļ
7G/batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp#G/batch_normalization_4/moving_mean*6
_class,
*(loc:@G/batch_normalization_4/moving_mean*
dtype0*
_output_shapes
:@
Į
8G/batch_normalization_4/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:@*
valueB@*  ?*:
_class0
.,loc:@G/batch_normalization_4/moving_variance
ā
'G/batch_normalization_4/moving_varianceVarHandleOp*:
_class0
.,loc:@G/batch_normalization_4/moving_variance*
dtype0*
_output_shapes
: *
shape:@*8
shared_name)'G/batch_normalization_4/moving_variance

HG/batch_normalization_4/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp'G/batch_normalization_4/moving_variance*
_output_shapes
: 
ī
.G/batch_normalization_4/moving_variance/AssignAssignVariableOp'G/batch_normalization_4/moving_variance8G/batch_normalization_4/moving_variance/Initializer/ones*:
_class0
.,loc:@G/batch_normalization_4/moving_variance*
dtype0
Ū
;G/batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp'G/batch_normalization_4/moving_variance*:
_class0
.,loc:@G/batch_normalization_4/moving_variance*
dtype0*
_output_shapes
:@

6G/batch_normalization_4/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB"       
¶
$G/batch_normalization_4/moments/meanMeanG/conv1d_3/BiasAdd6G/batch_normalization_4/moments/mean/reduction_indices*
	keep_dims(*
T0*"
_output_shapes
:@

,G/batch_normalization_4/moments/StopGradientStopGradient$G/batch_normalization_4/moments/mean*
T0*"
_output_shapes
:@
¾
1G/batch_normalization_4/moments/SquaredDifferenceSquaredDifferenceG/conv1d_3/BiasAdd,G/batch_normalization_4/moments/StopGradient*
T0*+
_output_shapes
:’’’’’’’’’
@

:G/batch_normalization_4/moments/variance/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
Ż
(G/batch_normalization_4/moments/varianceMean1G/batch_normalization_4/moments/SquaredDifference:G/batch_normalization_4/moments/variance/reduction_indices*
T0*"
_output_shapes
:@*
	keep_dims(

'G/batch_normalization_4/moments/SqueezeSqueeze$G/batch_normalization_4/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:@

)G/batch_normalization_4/moments/Squeeze_1Squeeze(G/batch_normalization_4/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:@

#G/batch_normalization_4/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
y
%G/batch_normalization_4/cond/switch_tIdentity%G/batch_normalization_4/cond/Switch:1*
T0
*
_output_shapes
: 
w
%G/batch_normalization_4/cond/switch_fIdentity#G/batch_normalization_4/cond/Switch*
T0
*
_output_shapes
: 
i
$G/batch_normalization_4/cond/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
å
%G/batch_normalization_4/cond/Switch_1Switch'G/batch_normalization_4/moments/Squeeze$G/batch_normalization_4/cond/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_4/moments/Squeeze* 
_output_shapes
:@:@

+G/batch_normalization_4/cond/ReadVariableOpReadVariableOp2G/batch_normalization_4/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ā
2G/batch_normalization_4/cond/ReadVariableOp/SwitchSwitch#G/batch_normalization_4/moving_mean$G/batch_normalization_4/cond/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_4/moving_mean*
_output_shapes
: : 
±
"G/batch_normalization_4/cond/MergeMerge+G/batch_normalization_4/cond/ReadVariableOp'G/batch_normalization_4/cond/Switch_1:1*
N*
_output_shapes

:@: *
T0

%G/batch_normalization_4/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0

}
'G/batch_normalization_4/cond_1/switch_tIdentity'G/batch_normalization_4/cond_1/Switch:1*
_output_shapes
: *
T0

{
'G/batch_normalization_4/cond_1/switch_fIdentity%G/batch_normalization_4/cond_1/Switch*
_output_shapes
: *
T0

k
&G/batch_normalization_4/cond_1/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
ķ
'G/batch_normalization_4/cond_1/Switch_1Switch)G/batch_normalization_4/moments/Squeeze_1&G/batch_normalization_4/cond_1/pred_id*
T0*<
_class2
0.loc:@G/batch_normalization_4/moments/Squeeze_1* 
_output_shapes
:@:@

-G/batch_normalization_4/cond_1/ReadVariableOpReadVariableOp4G/batch_normalization_4/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ī
4G/batch_normalization_4/cond_1/ReadVariableOp/SwitchSwitch'G/batch_normalization_4/moving_variance&G/batch_normalization_4/cond_1/pred_id*
_output_shapes
: : *
T0*:
_class0
.,loc:@G/batch_normalization_4/moving_variance
·
$G/batch_normalization_4/cond_1/MergeMerge-G/batch_normalization_4/cond_1/ReadVariableOp)G/batch_normalization_4/cond_1/Switch_1:1*
N*
_output_shapes

:@: *
T0

%G/batch_normalization_4/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0

}
'G/batch_normalization_4/cond_2/switch_tIdentity'G/batch_normalization_4/cond_2/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_4/cond_2/switch_fIdentity%G/batch_normalization_4/cond_2/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_4/cond_2/pred_idIdentityPlaceholderWithDefault*
_output_shapes
: *
T0

£
4G/batch_normalization_4/cond_2/AssignMovingAvg/decayConst(^G/batch_normalization_4/cond_2/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ą
=G/batch_normalization_4/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_4/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ö
DG/batch_normalization_4/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch#G/batch_normalization_4/moving_mean&G/batch_normalization_4/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_4/moving_mean*
_output_shapes
: : 
Ś
2G/batch_normalization_4/cond_2/AssignMovingAvg/subSub=G/batch_normalization_4/cond_2/AssignMovingAvg/ReadVariableOp;G/batch_normalization_4/cond_2/AssignMovingAvg/sub/Switch:1*
_output_shapes
:@*
T0
ń
9G/batch_normalization_4/cond_2/AssignMovingAvg/sub/SwitchSwitch"G/batch_normalization_4/cond/Merge&G/batch_normalization_4/cond_2/pred_id*
T0*5
_class+
)'loc:@G/batch_normalization_4/cond/Merge* 
_output_shapes
:@:@
Č
2G/batch_normalization_4/cond_2/AssignMovingAvg/mulMul2G/batch_normalization_4/cond_2/AssignMovingAvg/sub4G/batch_normalization_4/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes
:@
ā
BG/batch_normalization_4/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_4/cond_2/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_4/cond_2/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_4/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_4/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_4/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
õ
-G/batch_normalization_4/cond_2/ReadVariableOpReadVariableOpFG/batch_normalization_4/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_4/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¢
/G/batch_normalization_4/cond_2/ReadVariableOp_1ReadVariableOp6G/batch_normalization_4/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
č
6G/batch_normalization_4/cond_2/ReadVariableOp_1/SwitchSwitch#G/batch_normalization_4/moving_mean&G/batch_normalization_4/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_4/moving_mean*
_output_shapes
: : 
½
$G/batch_normalization_4/cond_2/MergeMerge/G/batch_normalization_4/cond_2/ReadVariableOp_1-G/batch_normalization_4/cond_2/ReadVariableOp*
N*
_output_shapes

:@: *
T0

%G/batch_normalization_4/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_4/cond_3/switch_tIdentity'G/batch_normalization_4/cond_3/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_4/cond_3/switch_fIdentity%G/batch_normalization_4/cond_3/Switch*
_output_shapes
: *
T0

k
&G/batch_normalization_4/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_4/cond_3/AssignMovingAvg/decayConst(^G/batch_normalization_4/cond_3/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ą
=G/batch_normalization_4/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_4/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ž
DG/batch_normalization_4/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch'G/batch_normalization_4/moving_variance&G/batch_normalization_4/cond_3/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_4/moving_variance*
_output_shapes
: : 
Ś
2G/batch_normalization_4/cond_3/AssignMovingAvg/subSub=G/batch_normalization_4/cond_3/AssignMovingAvg/ReadVariableOp;G/batch_normalization_4/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
õ
9G/batch_normalization_4/cond_3/AssignMovingAvg/sub/SwitchSwitch$G/batch_normalization_4/cond_1/Merge&G/batch_normalization_4/cond_3/pred_id* 
_output_shapes
:@:@*
T0*7
_class-
+)loc:@G/batch_normalization_4/cond_1/Merge
Č
2G/batch_normalization_4/cond_3/AssignMovingAvg/mulMul2G/batch_normalization_4/cond_3/AssignMovingAvg/sub4G/batch_normalization_4/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes
:@
ā
BG/batch_normalization_4/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_4/cond_3/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_4/cond_3/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_4/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_4/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_4/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
õ
-G/batch_normalization_4/cond_3/ReadVariableOpReadVariableOpFG/batch_normalization_4/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_4/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¢
/G/batch_normalization_4/cond_3/ReadVariableOp_1ReadVariableOp6G/batch_normalization_4/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
š
6G/batch_normalization_4/cond_3/ReadVariableOp_1/SwitchSwitch'G/batch_normalization_4/moving_variance&G/batch_normalization_4/cond_3/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_4/moving_variance*
_output_shapes
: : 
½
$G/batch_normalization_4/cond_3/MergeMerge/G/batch_normalization_4/cond_3/ReadVariableOp_1-G/batch_normalization_4/cond_3/ReadVariableOp*
T0*
N*
_output_shapes

:@: 
l
'G/batch_normalization_4/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
 
%G/batch_normalization_4/batchnorm/addAdd$G/batch_normalization_4/cond_1/Merge'G/batch_normalization_4/batchnorm/add/y*
T0*
_output_shapes
:@
|
'G/batch_normalization_4/batchnorm/RsqrtRsqrt%G/batch_normalization_4/batchnorm/add*
_output_shapes
:@*
T0

4G/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization_4/gamma*
dtype0*
_output_shapes
:@
°
%G/batch_normalization_4/batchnorm/mulMul'G/batch_normalization_4/batchnorm/Rsqrt4G/batch_normalization_4/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:@

'G/batch_normalization_4/batchnorm/mul_1MulG/conv1d_3/BiasAdd%G/batch_normalization_4/batchnorm/mul*
T0*+
_output_shapes
:’’’’’’’’’
@

'G/batch_normalization_4/batchnorm/mul_2Mul"G/batch_normalization_4/cond/Merge%G/batch_normalization_4/batchnorm/mul*
T0*
_output_shapes
:@

0G/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization_4/beta*
dtype0*
_output_shapes
:@
¬
%G/batch_normalization_4/batchnorm/subSub0G/batch_normalization_4/batchnorm/ReadVariableOp'G/batch_normalization_4/batchnorm/mul_2*
T0*
_output_shapes
:@
“
'G/batch_normalization_4/batchnorm/add_1Add'G/batch_normalization_4/batchnorm/mul_1%G/batch_normalization_4/batchnorm/sub*
T0*+
_output_shapes
:’’’’’’’’’
@
o
G/Relu_4Relu'G/batch_normalization_4/batchnorm/add_1*+
_output_shapes
:’’’’’’’’’
@*
T0
­
2G/conv1d_4/kernel/Initializer/random_uniform/shapeConst*!
valueB"   @   @   *$
_class
loc:@G/conv1d_4/kernel*
dtype0*
_output_shapes
:

0G/conv1d_4/kernel/Initializer/random_uniform/minConst*
valueB
 *ųKĘ½*$
_class
loc:@G/conv1d_4/kernel*
dtype0*
_output_shapes
: 

0G/conv1d_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *ųKĘ=*$
_class
loc:@G/conv1d_4/kernel*
dtype0*
_output_shapes
: 
ß
:G/conv1d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform2G/conv1d_4/kernel/Initializer/random_uniform/shape*
dtype0*"
_output_shapes
:@@*
T0*$
_class
loc:@G/conv1d_4/kernel
ā
0G/conv1d_4/kernel/Initializer/random_uniform/subSub0G/conv1d_4/kernel/Initializer/random_uniform/max0G/conv1d_4/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@G/conv1d_4/kernel
ų
0G/conv1d_4/kernel/Initializer/random_uniform/mulMul:G/conv1d_4/kernel/Initializer/random_uniform/RandomUniform0G/conv1d_4/kernel/Initializer/random_uniform/sub*"
_output_shapes
:@@*
T0*$
_class
loc:@G/conv1d_4/kernel
ź
,G/conv1d_4/kernel/Initializer/random_uniformAdd0G/conv1d_4/kernel/Initializer/random_uniform/mul0G/conv1d_4/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@G/conv1d_4/kernel*"
_output_shapes
:@@
Ø
G/conv1d_4/kernelVarHandleOp*$
_class
loc:@G/conv1d_4/kernel*
dtype0*
_output_shapes
: *
shape:@@*"
shared_nameG/conv1d_4/kernel
s
2G/conv1d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_4/kernel*
_output_shapes
: 
 
G/conv1d_4/kernel/AssignAssignVariableOpG/conv1d_4/kernel,G/conv1d_4/kernel/Initializer/random_uniform*$
_class
loc:@G/conv1d_4/kernel*
dtype0
”
%G/conv1d_4/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_4/kernel*$
_class
loc:@G/conv1d_4/kernel*
dtype0*"
_output_shapes
:@@

!G/conv1d_4/bias/Initializer/zerosConst*
valueB@*    *"
_class
loc:@G/conv1d_4/bias*
dtype0*
_output_shapes
:@

G/conv1d_4/biasVarHandleOp* 
shared_nameG/conv1d_4/bias*"
_class
loc:@G/conv1d_4/bias*
dtype0*
_output_shapes
: *
shape:@
o
0G/conv1d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_4/bias*
_output_shapes
: 

G/conv1d_4/bias/AssignAssignVariableOpG/conv1d_4/bias!G/conv1d_4/bias/Initializer/zeros*"
_class
loc:@G/conv1d_4/bias*
dtype0

#G/conv1d_4/bias/Read/ReadVariableOpReadVariableOpG/conv1d_4/bias*"
_class
loc:@G/conv1d_4/bias*
dtype0*
_output_shapes
:@
b
G/conv1d_4/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
b
 G/conv1d_4/conv1d/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :

G/conv1d_4/conv1d/ExpandDims
ExpandDimsG/Relu_4 G/conv1d_4/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’
@

-G/conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_4/kernel*
dtype0*"
_output_shapes
:@@
d
"G/conv1d_4/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
°
G/conv1d_4/conv1d/ExpandDims_1
ExpandDims-G/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp"G/conv1d_4/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:@@
Ā
G/conv1d_4/conv1d/Conv2DConv2DG/conv1d_4/conv1d/ExpandDimsG/conv1d_4/conv1d/ExpandDims_1*
paddingSAME*
T0*
strides
*/
_output_shapes
:’’’’’’’’’
@

G/conv1d_4/conv1d/SqueezeSqueezeG/conv1d_4/conv1d/Conv2D*+
_output_shapes
:’’’’’’’’’
@*
squeeze_dims
*
T0
m
!G/conv1d_4/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_4/bias*
dtype0*
_output_shapes
:@

G/conv1d_4/BiasAddBiasAddG/conv1d_4/conv1d/Squeeze!G/conv1d_4/BiasAdd/ReadVariableOp*+
_output_shapes
:’’’’’’’’’
@*
T0
­
.G/batch_normalization_5/gamma/Initializer/onesConst*
valueB@*  ?*0
_class&
$"loc:@G/batch_normalization_5/gamma*
dtype0*
_output_shapes
:@
Ä
G/batch_normalization_5/gammaVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*.
shared_nameG/batch_normalization_5/gamma*0
_class&
$"loc:@G/batch_normalization_5/gamma

>G/batch_normalization_5/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_5/gamma*
_output_shapes
: 
Ę
$G/batch_normalization_5/gamma/AssignAssignVariableOpG/batch_normalization_5/gamma.G/batch_normalization_5/gamma/Initializer/ones*0
_class&
$"loc:@G/batch_normalization_5/gamma*
dtype0
½
1G/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_5/gamma*0
_class&
$"loc:@G/batch_normalization_5/gamma*
dtype0*
_output_shapes
:@
¬
.G/batch_normalization_5/beta/Initializer/zerosConst*
valueB@*    */
_class%
#!loc:@G/batch_normalization_5/beta*
dtype0*
_output_shapes
:@
Į
G/batch_normalization_5/betaVarHandleOp*-
shared_nameG/batch_normalization_5/beta*/
_class%
#!loc:@G/batch_normalization_5/beta*
dtype0*
_output_shapes
: *
shape:@

=G/batch_normalization_5/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_5/beta*
_output_shapes
: 
Ć
#G/batch_normalization_5/beta/AssignAssignVariableOpG/batch_normalization_5/beta.G/batch_normalization_5/beta/Initializer/zeros*
dtype0*/
_class%
#!loc:@G/batch_normalization_5/beta
ŗ
0G/batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_5/beta*
dtype0*
_output_shapes
:@*/
_class%
#!loc:@G/batch_normalization_5/beta
ŗ
5G/batch_normalization_5/moving_mean/Initializer/zerosConst*
valueB@*    *6
_class,
*(loc:@G/batch_normalization_5/moving_mean*
dtype0*
_output_shapes
:@
Ö
#G/batch_normalization_5/moving_meanVarHandleOp*
shape:@*4
shared_name%#G/batch_normalization_5/moving_mean*6
_class,
*(loc:@G/batch_normalization_5/moving_mean*
dtype0*
_output_shapes
: 

DG/batch_normalization_5/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp#G/batch_normalization_5/moving_mean*
_output_shapes
: 
ß
*G/batch_normalization_5/moving_mean/AssignAssignVariableOp#G/batch_normalization_5/moving_mean5G/batch_normalization_5/moving_mean/Initializer/zeros*6
_class,
*(loc:@G/batch_normalization_5/moving_mean*
dtype0
Ļ
7G/batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp#G/batch_normalization_5/moving_mean*6
_class,
*(loc:@G/batch_normalization_5/moving_mean*
dtype0*
_output_shapes
:@
Į
8G/batch_normalization_5/moving_variance/Initializer/onesConst*
valueB@*  ?*:
_class0
.,loc:@G/batch_normalization_5/moving_variance*
dtype0*
_output_shapes
:@
ā
'G/batch_normalization_5/moving_varianceVarHandleOp*8
shared_name)'G/batch_normalization_5/moving_variance*:
_class0
.,loc:@G/batch_normalization_5/moving_variance*
dtype0*
_output_shapes
: *
shape:@

HG/batch_normalization_5/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp'G/batch_normalization_5/moving_variance*
_output_shapes
: 
ī
.G/batch_normalization_5/moving_variance/AssignAssignVariableOp'G/batch_normalization_5/moving_variance8G/batch_normalization_5/moving_variance/Initializer/ones*
dtype0*:
_class0
.,loc:@G/batch_normalization_5/moving_variance
Ū
;G/batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp'G/batch_normalization_5/moving_variance*:
_class0
.,loc:@G/batch_normalization_5/moving_variance*
dtype0*
_output_shapes
:@

6G/batch_normalization_5/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB"       
¶
$G/batch_normalization_5/moments/meanMeanG/conv1d_4/BiasAdd6G/batch_normalization_5/moments/mean/reduction_indices*
T0*"
_output_shapes
:@*
	keep_dims(

,G/batch_normalization_5/moments/StopGradientStopGradient$G/batch_normalization_5/moments/mean*
T0*"
_output_shapes
:@
¾
1G/batch_normalization_5/moments/SquaredDifferenceSquaredDifferenceG/conv1d_4/BiasAdd,G/batch_normalization_5/moments/StopGradient*+
_output_shapes
:’’’’’’’’’
@*
T0

:G/batch_normalization_5/moments/variance/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
Ż
(G/batch_normalization_5/moments/varianceMean1G/batch_normalization_5/moments/SquaredDifference:G/batch_normalization_5/moments/variance/reduction_indices*
T0*"
_output_shapes
:@*
	keep_dims(

'G/batch_normalization_5/moments/SqueezeSqueeze$G/batch_normalization_5/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:@

)G/batch_normalization_5/moments/Squeeze_1Squeeze(G/batch_normalization_5/moments/variance*
_output_shapes
:@*
squeeze_dims
 *
T0

#G/batch_normalization_5/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
y
%G/batch_normalization_5/cond/switch_tIdentity%G/batch_normalization_5/cond/Switch:1*
T0
*
_output_shapes
: 
w
%G/batch_normalization_5/cond/switch_fIdentity#G/batch_normalization_5/cond/Switch*
T0
*
_output_shapes
: 
i
$G/batch_normalization_5/cond/pred_idIdentityPlaceholderWithDefault*
_output_shapes
: *
T0

å
%G/batch_normalization_5/cond/Switch_1Switch'G/batch_normalization_5/moments/Squeeze$G/batch_normalization_5/cond/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_5/moments/Squeeze* 
_output_shapes
:@:@

+G/batch_normalization_5/cond/ReadVariableOpReadVariableOp2G/batch_normalization_5/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ā
2G/batch_normalization_5/cond/ReadVariableOp/SwitchSwitch#G/batch_normalization_5/moving_mean$G/batch_normalization_5/cond/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_5/moving_mean*
_output_shapes
: : 
±
"G/batch_normalization_5/cond/MergeMerge+G/batch_normalization_5/cond/ReadVariableOp'G/batch_normalization_5/cond/Switch_1:1*
N*
_output_shapes

:@: *
T0

%G/batch_normalization_5/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_5/cond_1/switch_tIdentity'G/batch_normalization_5/cond_1/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_5/cond_1/switch_fIdentity%G/batch_normalization_5/cond_1/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_5/cond_1/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
ķ
'G/batch_normalization_5/cond_1/Switch_1Switch)G/batch_normalization_5/moments/Squeeze_1&G/batch_normalization_5/cond_1/pred_id* 
_output_shapes
:@:@*
T0*<
_class2
0.loc:@G/batch_normalization_5/moments/Squeeze_1

-G/batch_normalization_5/cond_1/ReadVariableOpReadVariableOp4G/batch_normalization_5/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ī
4G/batch_normalization_5/cond_1/ReadVariableOp/SwitchSwitch'G/batch_normalization_5/moving_variance&G/batch_normalization_5/cond_1/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_5/moving_variance*
_output_shapes
: : 
·
$G/batch_normalization_5/cond_1/MergeMerge-G/batch_normalization_5/cond_1/ReadVariableOp)G/batch_normalization_5/cond_1/Switch_1:1*
T0*
N*
_output_shapes

:@: 

%G/batch_normalization_5/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_5/cond_2/switch_tIdentity'G/batch_normalization_5/cond_2/Switch:1*
_output_shapes
: *
T0

{
'G/batch_normalization_5/cond_2/switch_fIdentity%G/batch_normalization_5/cond_2/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_5/cond_2/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_5/cond_2/AssignMovingAvg/decayConst(^G/batch_normalization_5/cond_2/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ą
=G/batch_normalization_5/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_5/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ö
DG/batch_normalization_5/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch#G/batch_normalization_5/moving_mean&G/batch_normalization_5/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_5/moving_mean*
_output_shapes
: : 
Ś
2G/batch_normalization_5/cond_2/AssignMovingAvg/subSub=G/batch_normalization_5/cond_2/AssignMovingAvg/ReadVariableOp;G/batch_normalization_5/cond_2/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
ń
9G/batch_normalization_5/cond_2/AssignMovingAvg/sub/SwitchSwitch"G/batch_normalization_5/cond/Merge&G/batch_normalization_5/cond_2/pred_id* 
_output_shapes
:@:@*
T0*5
_class+
)'loc:@G/batch_normalization_5/cond/Merge
Č
2G/batch_normalization_5/cond_2/AssignMovingAvg/mulMul2G/batch_normalization_5/cond_2/AssignMovingAvg/sub4G/batch_normalization_5/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes
:@
ā
BG/batch_normalization_5/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_5/cond_2/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_5/cond_2/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_5/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_5/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_5/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
õ
-G/batch_normalization_5/cond_2/ReadVariableOpReadVariableOpFG/batch_normalization_5/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_5/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¢
/G/batch_normalization_5/cond_2/ReadVariableOp_1ReadVariableOp6G/batch_normalization_5/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
č
6G/batch_normalization_5/cond_2/ReadVariableOp_1/SwitchSwitch#G/batch_normalization_5/moving_mean&G/batch_normalization_5/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_5/moving_mean*
_output_shapes
: : 
½
$G/batch_normalization_5/cond_2/MergeMerge/G/batch_normalization_5/cond_2/ReadVariableOp_1-G/batch_normalization_5/cond_2/ReadVariableOp*
T0*
N*
_output_shapes

:@: 

%G/batch_normalization_5/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_5/cond_3/switch_tIdentity'G/batch_normalization_5/cond_3/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_5/cond_3/switch_fIdentity%G/batch_normalization_5/cond_3/Switch*
_output_shapes
: *
T0

k
&G/batch_normalization_5/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_5/cond_3/AssignMovingAvg/decayConst(^G/batch_normalization_5/cond_3/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ą
=G/batch_normalization_5/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_5/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ž
DG/batch_normalization_5/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch'G/batch_normalization_5/moving_variance&G/batch_normalization_5/cond_3/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_5/moving_variance*
_output_shapes
: : 
Ś
2G/batch_normalization_5/cond_3/AssignMovingAvg/subSub=G/batch_normalization_5/cond_3/AssignMovingAvg/ReadVariableOp;G/batch_normalization_5/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
õ
9G/batch_normalization_5/cond_3/AssignMovingAvg/sub/SwitchSwitch$G/batch_normalization_5/cond_1/Merge&G/batch_normalization_5/cond_3/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_5/cond_1/Merge* 
_output_shapes
:@:@
Č
2G/batch_normalization_5/cond_3/AssignMovingAvg/mulMul2G/batch_normalization_5/cond_3/AssignMovingAvg/sub4G/batch_normalization_5/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes
:@
ā
BG/batch_normalization_5/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_5/cond_3/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_5/cond_3/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_5/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_5/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_5/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
õ
-G/batch_normalization_5/cond_3/ReadVariableOpReadVariableOpFG/batch_normalization_5/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_5/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¢
/G/batch_normalization_5/cond_3/ReadVariableOp_1ReadVariableOp6G/batch_normalization_5/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
š
6G/batch_normalization_5/cond_3/ReadVariableOp_1/SwitchSwitch'G/batch_normalization_5/moving_variance&G/batch_normalization_5/cond_3/pred_id*
_output_shapes
: : *
T0*:
_class0
.,loc:@G/batch_normalization_5/moving_variance
½
$G/batch_normalization_5/cond_3/MergeMerge/G/batch_normalization_5/cond_3/ReadVariableOp_1-G/batch_normalization_5/cond_3/ReadVariableOp*
T0*
N*
_output_shapes

:@: 
l
'G/batch_normalization_5/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
 
%G/batch_normalization_5/batchnorm/addAdd$G/batch_normalization_5/cond_1/Merge'G/batch_normalization_5/batchnorm/add/y*
T0*
_output_shapes
:@
|
'G/batch_normalization_5/batchnorm/RsqrtRsqrt%G/batch_normalization_5/batchnorm/add*
T0*
_output_shapes
:@

4G/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization_5/gamma*
dtype0*
_output_shapes
:@
°
%G/batch_normalization_5/batchnorm/mulMul'G/batch_normalization_5/batchnorm/Rsqrt4G/batch_normalization_5/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:@

'G/batch_normalization_5/batchnorm/mul_1MulG/conv1d_4/BiasAdd%G/batch_normalization_5/batchnorm/mul*
T0*+
_output_shapes
:’’’’’’’’’
@

'G/batch_normalization_5/batchnorm/mul_2Mul"G/batch_normalization_5/cond/Merge%G/batch_normalization_5/batchnorm/mul*
T0*
_output_shapes
:@

0G/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization_5/beta*
dtype0*
_output_shapes
:@
¬
%G/batch_normalization_5/batchnorm/subSub0G/batch_normalization_5/batchnorm/ReadVariableOp'G/batch_normalization_5/batchnorm/mul_2*
T0*
_output_shapes
:@
“
'G/batch_normalization_5/batchnorm/add_1Add'G/batch_normalization_5/batchnorm/mul_1%G/batch_normalization_5/batchnorm/sub*+
_output_shapes
:’’’’’’’’’
@*
T0
o
G/Relu_5Relu'G/batch_normalization_5/batchnorm/add_1*
T0*+
_output_shapes
:’’’’’’’’’
@
­
2G/conv1d_5/kernel/Initializer/random_uniform/shapeConst*!
valueB"   @      *$
_class
loc:@G/conv1d_5/kernel*
dtype0*
_output_shapes
:

0G/conv1d_5/kernel/Initializer/random_uniform/minConst*
valueB
 *ó5¾*$
_class
loc:@G/conv1d_5/kernel*
dtype0*
_output_shapes
: 

0G/conv1d_5/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ó5>*$
_class
loc:@G/conv1d_5/kernel
ą
:G/conv1d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform2G/conv1d_5/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@G/conv1d_5/kernel*
dtype0*#
_output_shapes
:@
ā
0G/conv1d_5/kernel/Initializer/random_uniform/subSub0G/conv1d_5/kernel/Initializer/random_uniform/max0G/conv1d_5/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@G/conv1d_5/kernel*
_output_shapes
: 
ł
0G/conv1d_5/kernel/Initializer/random_uniform/mulMul:G/conv1d_5/kernel/Initializer/random_uniform/RandomUniform0G/conv1d_5/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@G/conv1d_5/kernel*#
_output_shapes
:@
ė
,G/conv1d_5/kernel/Initializer/random_uniformAdd0G/conv1d_5/kernel/Initializer/random_uniform/mul0G/conv1d_5/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@G/conv1d_5/kernel*#
_output_shapes
:@
©
G/conv1d_5/kernelVarHandleOp*$
_class
loc:@G/conv1d_5/kernel*
dtype0*
_output_shapes
: *
shape:@*"
shared_nameG/conv1d_5/kernel
s
2G/conv1d_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_5/kernel*
_output_shapes
: 
 
G/conv1d_5/kernel/AssignAssignVariableOpG/conv1d_5/kernel,G/conv1d_5/kernel/Initializer/random_uniform*$
_class
loc:@G/conv1d_5/kernel*
dtype0
¢
%G/conv1d_5/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_5/kernel*$
_class
loc:@G/conv1d_5/kernel*
dtype0*#
_output_shapes
:@

!G/conv1d_5/bias/Initializer/zerosConst*
valueB*    *"
_class
loc:@G/conv1d_5/bias*
dtype0*
_output_shapes	
:

G/conv1d_5/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:* 
shared_nameG/conv1d_5/bias*"
_class
loc:@G/conv1d_5/bias
o
0G/conv1d_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_5/bias*
_output_shapes
: 

G/conv1d_5/bias/AssignAssignVariableOpG/conv1d_5/bias!G/conv1d_5/bias/Initializer/zeros*"
_class
loc:@G/conv1d_5/bias*
dtype0

#G/conv1d_5/bias/Read/ReadVariableOpReadVariableOpG/conv1d_5/bias*"
_class
loc:@G/conv1d_5/bias*
dtype0*
_output_shapes	
:
b
G/conv1d_5/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
b
 G/conv1d_5/conv1d/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :

G/conv1d_5/conv1d/ExpandDims
ExpandDimsG/Relu_5 G/conv1d_5/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’
@

-G/conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_5/kernel*
dtype0*#
_output_shapes
:@
d
"G/conv1d_5/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
±
G/conv1d_5/conv1d/ExpandDims_1
ExpandDims-G/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp"G/conv1d_5/conv1d/ExpandDims_1/dim*
T0*'
_output_shapes
:@
Ć
G/conv1d_5/conv1d/Conv2DConv2DG/conv1d_5/conv1d/ExpandDimsG/conv1d_5/conv1d/ExpandDims_1*
paddingSAME*
T0*
strides
*0
_output_shapes
:’’’’’’’’’


G/conv1d_5/conv1d/SqueezeSqueezeG/conv1d_5/conv1d/Conv2D*
squeeze_dims
*
T0*,
_output_shapes
:’’’’’’’’’

n
!G/conv1d_5/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_5/bias*
dtype0*
_output_shapes	
:

G/conv1d_5/BiasAddBiasAddG/conv1d_5/conv1d/Squeeze!G/conv1d_5/BiasAdd/ReadVariableOp*,
_output_shapes
:’’’’’’’’’
*
T0
N
	G/mul_1/xConst*
valueB
 *>*
dtype0*
_output_shapes
: 
d
G/mul_1Mul	G/mul_1/xG/conv1d_5/BiasAdd*
T0*,
_output_shapes
:’’’’’’’’’

U
G/add_1AddG/addG/mul_1*,
_output_shapes
:’’’’’’’’’
*
T0
Æ
.G/batch_normalization_6/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*0
_class&
$"loc:@G/batch_normalization_6/gamma
Å
G/batch_normalization_6/gammaVarHandleOp*.
shared_nameG/batch_normalization_6/gamma*0
_class&
$"loc:@G/batch_normalization_6/gamma*
dtype0*
_output_shapes
: *
shape:

>G/batch_normalization_6/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_6/gamma*
_output_shapes
: 
Ę
$G/batch_normalization_6/gamma/AssignAssignVariableOpG/batch_normalization_6/gamma.G/batch_normalization_6/gamma/Initializer/ones*0
_class&
$"loc:@G/batch_normalization_6/gamma*
dtype0
¾
1G/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_6/gamma*0
_class&
$"loc:@G/batch_normalization_6/gamma*
dtype0*
_output_shapes	
:
®
.G/batch_normalization_6/beta/Initializer/zerosConst*
valueB*    */
_class%
#!loc:@G/batch_normalization_6/beta*
dtype0*
_output_shapes	
:
Ā
G/batch_normalization_6/betaVarHandleOp*-
shared_nameG/batch_normalization_6/beta*/
_class%
#!loc:@G/batch_normalization_6/beta*
dtype0*
_output_shapes
: *
shape:

=G/batch_normalization_6/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_6/beta*
_output_shapes
: 
Ć
#G/batch_normalization_6/beta/AssignAssignVariableOpG/batch_normalization_6/beta.G/batch_normalization_6/beta/Initializer/zeros*
dtype0*/
_class%
#!loc:@G/batch_normalization_6/beta
»
0G/batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_6/beta*/
_class%
#!loc:@G/batch_normalization_6/beta*
dtype0*
_output_shapes	
:
¼
5G/batch_normalization_6/moving_mean/Initializer/zerosConst*
valueB*    *6
_class,
*(loc:@G/batch_normalization_6/moving_mean*
dtype0*
_output_shapes	
:
×
#G/batch_normalization_6/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *
shape:*4
shared_name%#G/batch_normalization_6/moving_mean*6
_class,
*(loc:@G/batch_normalization_6/moving_mean

DG/batch_normalization_6/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp#G/batch_normalization_6/moving_mean*
_output_shapes
: 
ß
*G/batch_normalization_6/moving_mean/AssignAssignVariableOp#G/batch_normalization_6/moving_mean5G/batch_normalization_6/moving_mean/Initializer/zeros*6
_class,
*(loc:@G/batch_normalization_6/moving_mean*
dtype0
Š
7G/batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp#G/batch_normalization_6/moving_mean*
dtype0*
_output_shapes	
:*6
_class,
*(loc:@G/batch_normalization_6/moving_mean
Ć
8G/batch_normalization_6/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*:
_class0
.,loc:@G/batch_normalization_6/moving_variance
ć
'G/batch_normalization_6/moving_varianceVarHandleOp*8
shared_name)'G/batch_normalization_6/moving_variance*:
_class0
.,loc:@G/batch_normalization_6/moving_variance*
dtype0*
_output_shapes
: *
shape:

HG/batch_normalization_6/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp'G/batch_normalization_6/moving_variance*
_output_shapes
: 
ī
.G/batch_normalization_6/moving_variance/AssignAssignVariableOp'G/batch_normalization_6/moving_variance8G/batch_normalization_6/moving_variance/Initializer/ones*:
_class0
.,loc:@G/batch_normalization_6/moving_variance*
dtype0
Ü
;G/batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp'G/batch_normalization_6/moving_variance*:
_class0
.,loc:@G/batch_normalization_6/moving_variance*
dtype0*
_output_shapes	
:

6G/batch_normalization_6/moments/mean/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
¬
$G/batch_normalization_6/moments/meanMeanG/add_16G/batch_normalization_6/moments/mean/reduction_indices*
T0*#
_output_shapes
:*
	keep_dims(

,G/batch_normalization_6/moments/StopGradientStopGradient$G/batch_normalization_6/moments/mean*
T0*#
_output_shapes
:
“
1G/batch_normalization_6/moments/SquaredDifferenceSquaredDifferenceG/add_1,G/batch_normalization_6/moments/StopGradient*,
_output_shapes
:’’’’’’’’’
*
T0

:G/batch_normalization_6/moments/variance/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
Ž
(G/batch_normalization_6/moments/varianceMean1G/batch_normalization_6/moments/SquaredDifference:G/batch_normalization_6/moments/variance/reduction_indices*#
_output_shapes
:*
	keep_dims(*
T0

'G/batch_normalization_6/moments/SqueezeSqueeze$G/batch_normalization_6/moments/mean*
T0*
_output_shapes	
:*
squeeze_dims
 

)G/batch_normalization_6/moments/Squeeze_1Squeeze(G/batch_normalization_6/moments/variance*
T0*
_output_shapes	
:*
squeeze_dims
 

#G/batch_normalization_6/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
y
%G/batch_normalization_6/cond/switch_tIdentity%G/batch_normalization_6/cond/Switch:1*
T0
*
_output_shapes
: 
w
%G/batch_normalization_6/cond/switch_fIdentity#G/batch_normalization_6/cond/Switch*
_output_shapes
: *
T0

i
$G/batch_normalization_6/cond/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
ē
%G/batch_normalization_6/cond/Switch_1Switch'G/batch_normalization_6/moments/Squeeze$G/batch_normalization_6/cond/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_6/moments/Squeeze*"
_output_shapes
::

+G/batch_normalization_6/cond/ReadVariableOpReadVariableOp2G/batch_normalization_6/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:
ā
2G/batch_normalization_6/cond/ReadVariableOp/SwitchSwitch#G/batch_normalization_6/moving_mean$G/batch_normalization_6/cond/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_6/moving_mean*
_output_shapes
: : 
²
"G/batch_normalization_6/cond/MergeMerge+G/batch_normalization_6/cond/ReadVariableOp'G/batch_normalization_6/cond/Switch_1:1*
T0*
N*
_output_shapes
	:: 

%G/batch_normalization_6/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_6/cond_1/switch_tIdentity'G/batch_normalization_6/cond_1/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_6/cond_1/switch_fIdentity%G/batch_normalization_6/cond_1/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_6/cond_1/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
ļ
'G/batch_normalization_6/cond_1/Switch_1Switch)G/batch_normalization_6/moments/Squeeze_1&G/batch_normalization_6/cond_1/pred_id*"
_output_shapes
::*
T0*<
_class2
0.loc:@G/batch_normalization_6/moments/Squeeze_1

-G/batch_normalization_6/cond_1/ReadVariableOpReadVariableOp4G/batch_normalization_6/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:
ī
4G/batch_normalization_6/cond_1/ReadVariableOp/SwitchSwitch'G/batch_normalization_6/moving_variance&G/batch_normalization_6/cond_1/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_6/moving_variance*
_output_shapes
: : 
ø
$G/batch_normalization_6/cond_1/MergeMerge-G/batch_normalization_6/cond_1/ReadVariableOp)G/batch_normalization_6/cond_1/Switch_1:1*
N*
_output_shapes
	:: *
T0

%G/batch_normalization_6/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0

}
'G/batch_normalization_6/cond_2/switch_tIdentity'G/batch_normalization_6/cond_2/Switch:1*
_output_shapes
: *
T0

{
'G/batch_normalization_6/cond_2/switch_fIdentity%G/batch_normalization_6/cond_2/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_6/cond_2/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_6/cond_2/AssignMovingAvg/decayConst(^G/batch_normalization_6/cond_2/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Į
=G/batch_normalization_6/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_6/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:
ö
DG/batch_normalization_6/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch#G/batch_normalization_6/moving_mean&G/batch_normalization_6/cond_2/pred_id*
_output_shapes
: : *
T0*6
_class,
*(loc:@G/batch_normalization_6/moving_mean
Ū
2G/batch_normalization_6/cond_2/AssignMovingAvg/subSub=G/batch_normalization_6/cond_2/AssignMovingAvg/ReadVariableOp;G/batch_normalization_6/cond_2/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes	
:
ó
9G/batch_normalization_6/cond_2/AssignMovingAvg/sub/SwitchSwitch"G/batch_normalization_6/cond/Merge&G/batch_normalization_6/cond_2/pred_id*
T0*5
_class+
)'loc:@G/batch_normalization_6/cond/Merge*"
_output_shapes
::
É
2G/batch_normalization_6/cond_2/AssignMovingAvg/mulMul2G/batch_normalization_6/cond_2/AssignMovingAvg/sub4G/batch_normalization_6/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes	
:
ā
BG/batch_normalization_6/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_6/cond_2/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_6/cond_2/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_6/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_6/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_6/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
ö
-G/batch_normalization_6/cond_2/ReadVariableOpReadVariableOpFG/batch_normalization_6/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_6/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
£
/G/batch_normalization_6/cond_2/ReadVariableOp_1ReadVariableOp6G/batch_normalization_6/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:
č
6G/batch_normalization_6/cond_2/ReadVariableOp_1/SwitchSwitch#G/batch_normalization_6/moving_mean&G/batch_normalization_6/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_6/moving_mean*
_output_shapes
: : 
¾
$G/batch_normalization_6/cond_2/MergeMerge/G/batch_normalization_6/cond_2/ReadVariableOp_1-G/batch_normalization_6/cond_2/ReadVariableOp*
N*
_output_shapes
	:: *
T0

%G/batch_normalization_6/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0

}
'G/batch_normalization_6/cond_3/switch_tIdentity'G/batch_normalization_6/cond_3/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_6/cond_3/switch_fIdentity%G/batch_normalization_6/cond_3/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_6/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_6/cond_3/AssignMovingAvg/decayConst(^G/batch_normalization_6/cond_3/switch_t*
dtype0*
_output_shapes
: *
valueB
 *
×#<
Į
=G/batch_normalization_6/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_6/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:
ž
DG/batch_normalization_6/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch'G/batch_normalization_6/moving_variance&G/batch_normalization_6/cond_3/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_6/moving_variance*
_output_shapes
: : 
Ū
2G/batch_normalization_6/cond_3/AssignMovingAvg/subSub=G/batch_normalization_6/cond_3/AssignMovingAvg/ReadVariableOp;G/batch_normalization_6/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes	
:
÷
9G/batch_normalization_6/cond_3/AssignMovingAvg/sub/SwitchSwitch$G/batch_normalization_6/cond_1/Merge&G/batch_normalization_6/cond_3/pred_id*"
_output_shapes
::*
T0*7
_class-
+)loc:@G/batch_normalization_6/cond_1/Merge
É
2G/batch_normalization_6/cond_3/AssignMovingAvg/mulMul2G/batch_normalization_6/cond_3/AssignMovingAvg/sub4G/batch_normalization_6/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes	
:
ā
BG/batch_normalization_6/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_6/cond_3/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_6/cond_3/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_6/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_6/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_6/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
ö
-G/batch_normalization_6/cond_3/ReadVariableOpReadVariableOpFG/batch_normalization_6/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_6/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
£
/G/batch_normalization_6/cond_3/ReadVariableOp_1ReadVariableOp6G/batch_normalization_6/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:
š
6G/batch_normalization_6/cond_3/ReadVariableOp_1/SwitchSwitch'G/batch_normalization_6/moving_variance&G/batch_normalization_6/cond_3/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_6/moving_variance*
_output_shapes
: : 
¾
$G/batch_normalization_6/cond_3/MergeMerge/G/batch_normalization_6/cond_3/ReadVariableOp_1-G/batch_normalization_6/cond_3/ReadVariableOp*
T0*
N*
_output_shapes
	:: 
l
'G/batch_normalization_6/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
”
%G/batch_normalization_6/batchnorm/addAdd$G/batch_normalization_6/cond_1/Merge'G/batch_normalization_6/batchnorm/add/y*
T0*
_output_shapes	
:
}
'G/batch_normalization_6/batchnorm/RsqrtRsqrt%G/batch_normalization_6/batchnorm/add*
T0*
_output_shapes	
:

4G/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization_6/gamma*
dtype0*
_output_shapes	
:
±
%G/batch_normalization_6/batchnorm/mulMul'G/batch_normalization_6/batchnorm/Rsqrt4G/batch_normalization_6/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes	
:

'G/batch_normalization_6/batchnorm/mul_1MulG/add_1%G/batch_normalization_6/batchnorm/mul*
T0*,
_output_shapes
:’’’’’’’’’


'G/batch_normalization_6/batchnorm/mul_2Mul"G/batch_normalization_6/cond/Merge%G/batch_normalization_6/batchnorm/mul*
T0*
_output_shapes	
:

0G/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization_6/beta*
dtype0*
_output_shapes	
:
­
%G/batch_normalization_6/batchnorm/subSub0G/batch_normalization_6/batchnorm/ReadVariableOp'G/batch_normalization_6/batchnorm/mul_2*
_output_shapes	
:*
T0
µ
'G/batch_normalization_6/batchnorm/add_1Add'G/batch_normalization_6/batchnorm/mul_1%G/batch_normalization_6/batchnorm/sub*
T0*,
_output_shapes
:’’’’’’’’’

p
G/Relu_6Relu'G/batch_normalization_6/batchnorm/add_1*
T0*,
_output_shapes
:’’’’’’’’’

­
2G/conv1d_6/kernel/Initializer/random_uniform/shapeConst*!
valueB"      @   *$
_class
loc:@G/conv1d_6/kernel*
dtype0*
_output_shapes
:

0G/conv1d_6/kernel/Initializer/random_uniform/minConst*
valueB
 *ó5¾*$
_class
loc:@G/conv1d_6/kernel*
dtype0*
_output_shapes
: 

0G/conv1d_6/kernel/Initializer/random_uniform/maxConst*
valueB
 *ó5>*$
_class
loc:@G/conv1d_6/kernel*
dtype0*
_output_shapes
: 
ą
:G/conv1d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform2G/conv1d_6/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@G/conv1d_6/kernel*
dtype0*#
_output_shapes
:@
ā
0G/conv1d_6/kernel/Initializer/random_uniform/subSub0G/conv1d_6/kernel/Initializer/random_uniform/max0G/conv1d_6/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@G/conv1d_6/kernel*
_output_shapes
: 
ł
0G/conv1d_6/kernel/Initializer/random_uniform/mulMul:G/conv1d_6/kernel/Initializer/random_uniform/RandomUniform0G/conv1d_6/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@G/conv1d_6/kernel*#
_output_shapes
:@
ė
,G/conv1d_6/kernel/Initializer/random_uniformAdd0G/conv1d_6/kernel/Initializer/random_uniform/mul0G/conv1d_6/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@G/conv1d_6/kernel*#
_output_shapes
:@
©
G/conv1d_6/kernelVarHandleOp*
shape:@*"
shared_nameG/conv1d_6/kernel*$
_class
loc:@G/conv1d_6/kernel*
dtype0*
_output_shapes
: 
s
2G/conv1d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_6/kernel*
_output_shapes
: 
 
G/conv1d_6/kernel/AssignAssignVariableOpG/conv1d_6/kernel,G/conv1d_6/kernel/Initializer/random_uniform*$
_class
loc:@G/conv1d_6/kernel*
dtype0
¢
%G/conv1d_6/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_6/kernel*$
_class
loc:@G/conv1d_6/kernel*
dtype0*#
_output_shapes
:@

!G/conv1d_6/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *"
_class
loc:@G/conv1d_6/bias

G/conv1d_6/biasVarHandleOp*"
_class
loc:@G/conv1d_6/bias*
dtype0*
_output_shapes
: *
shape:@* 
shared_nameG/conv1d_6/bias
o
0G/conv1d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_6/bias*
_output_shapes
: 

G/conv1d_6/bias/AssignAssignVariableOpG/conv1d_6/bias!G/conv1d_6/bias/Initializer/zeros*
dtype0*"
_class
loc:@G/conv1d_6/bias

#G/conv1d_6/bias/Read/ReadVariableOpReadVariableOpG/conv1d_6/bias*"
_class
loc:@G/conv1d_6/bias*
dtype0*
_output_shapes
:@
b
G/conv1d_6/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
b
 G/conv1d_6/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv1d_6/conv1d/ExpandDims
ExpandDimsG/Relu_6 G/conv1d_6/conv1d/ExpandDims/dim*0
_output_shapes
:’’’’’’’’’
*
T0

-G/conv1d_6/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_6/kernel*
dtype0*#
_output_shapes
:@
d
"G/conv1d_6/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
±
G/conv1d_6/conv1d/ExpandDims_1
ExpandDims-G/conv1d_6/conv1d/ExpandDims_1/ReadVariableOp"G/conv1d_6/conv1d/ExpandDims_1/dim*
T0*'
_output_shapes
:@
Ā
G/conv1d_6/conv1d/Conv2DConv2DG/conv1d_6/conv1d/ExpandDimsG/conv1d_6/conv1d/ExpandDims_1*
paddingSAME*
T0*
strides
*/
_output_shapes
:’’’’’’’’’
@

G/conv1d_6/conv1d/SqueezeSqueezeG/conv1d_6/conv1d/Conv2D*
T0*+
_output_shapes
:’’’’’’’’’
@*
squeeze_dims

m
!G/conv1d_6/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_6/bias*
dtype0*
_output_shapes
:@

G/conv1d_6/BiasAddBiasAddG/conv1d_6/conv1d/Squeeze!G/conv1d_6/BiasAdd/ReadVariableOp*
T0*+
_output_shapes
:’’’’’’’’’
@
­
.G/batch_normalization_7/gamma/Initializer/onesConst*
valueB@*  ?*0
_class&
$"loc:@G/batch_normalization_7/gamma*
dtype0*
_output_shapes
:@
Ä
G/batch_normalization_7/gammaVarHandleOp*0
_class&
$"loc:@G/batch_normalization_7/gamma*
dtype0*
_output_shapes
: *
shape:@*.
shared_nameG/batch_normalization_7/gamma

>G/batch_normalization_7/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_7/gamma*
_output_shapes
: 
Ę
$G/batch_normalization_7/gamma/AssignAssignVariableOpG/batch_normalization_7/gamma.G/batch_normalization_7/gamma/Initializer/ones*0
_class&
$"loc:@G/batch_normalization_7/gamma*
dtype0
½
1G/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_7/gamma*0
_class&
$"loc:@G/batch_normalization_7/gamma*
dtype0*
_output_shapes
:@
¬
.G/batch_normalization_7/beta/Initializer/zerosConst*
valueB@*    */
_class%
#!loc:@G/batch_normalization_7/beta*
dtype0*
_output_shapes
:@
Į
G/batch_normalization_7/betaVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*-
shared_nameG/batch_normalization_7/beta*/
_class%
#!loc:@G/batch_normalization_7/beta

=G/batch_normalization_7/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_7/beta*
_output_shapes
: 
Ć
#G/batch_normalization_7/beta/AssignAssignVariableOpG/batch_normalization_7/beta.G/batch_normalization_7/beta/Initializer/zeros*/
_class%
#!loc:@G/batch_normalization_7/beta*
dtype0
ŗ
0G/batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_7/beta*/
_class%
#!loc:@G/batch_normalization_7/beta*
dtype0*
_output_shapes
:@
ŗ
5G/batch_normalization_7/moving_mean/Initializer/zerosConst*
valueB@*    *6
_class,
*(loc:@G/batch_normalization_7/moving_mean*
dtype0*
_output_shapes
:@
Ö
#G/batch_normalization_7/moving_meanVarHandleOp*
shape:@*4
shared_name%#G/batch_normalization_7/moving_mean*6
_class,
*(loc:@G/batch_normalization_7/moving_mean*
dtype0*
_output_shapes
: 

DG/batch_normalization_7/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp#G/batch_normalization_7/moving_mean*
_output_shapes
: 
ß
*G/batch_normalization_7/moving_mean/AssignAssignVariableOp#G/batch_normalization_7/moving_mean5G/batch_normalization_7/moving_mean/Initializer/zeros*
dtype0*6
_class,
*(loc:@G/batch_normalization_7/moving_mean
Ļ
7G/batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp#G/batch_normalization_7/moving_mean*6
_class,
*(loc:@G/batch_normalization_7/moving_mean*
dtype0*
_output_shapes
:@
Į
8G/batch_normalization_7/moving_variance/Initializer/onesConst*
valueB@*  ?*:
_class0
.,loc:@G/batch_normalization_7/moving_variance*
dtype0*
_output_shapes
:@
ā
'G/batch_normalization_7/moving_varianceVarHandleOp*:
_class0
.,loc:@G/batch_normalization_7/moving_variance*
dtype0*
_output_shapes
: *
shape:@*8
shared_name)'G/batch_normalization_7/moving_variance

HG/batch_normalization_7/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp'G/batch_normalization_7/moving_variance*
_output_shapes
: 
ī
.G/batch_normalization_7/moving_variance/AssignAssignVariableOp'G/batch_normalization_7/moving_variance8G/batch_normalization_7/moving_variance/Initializer/ones*:
_class0
.,loc:@G/batch_normalization_7/moving_variance*
dtype0
Ū
;G/batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp'G/batch_normalization_7/moving_variance*
dtype0*
_output_shapes
:@*:
_class0
.,loc:@G/batch_normalization_7/moving_variance

6G/batch_normalization_7/moments/mean/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
¶
$G/batch_normalization_7/moments/meanMeanG/conv1d_6/BiasAdd6G/batch_normalization_7/moments/mean/reduction_indices*"
_output_shapes
:@*
	keep_dims(*
T0

,G/batch_normalization_7/moments/StopGradientStopGradient$G/batch_normalization_7/moments/mean*"
_output_shapes
:@*
T0
¾
1G/batch_normalization_7/moments/SquaredDifferenceSquaredDifferenceG/conv1d_6/BiasAdd,G/batch_normalization_7/moments/StopGradient*+
_output_shapes
:’’’’’’’’’
@*
T0

:G/batch_normalization_7/moments/variance/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
Ż
(G/batch_normalization_7/moments/varianceMean1G/batch_normalization_7/moments/SquaredDifference:G/batch_normalization_7/moments/variance/reduction_indices*
T0*"
_output_shapes
:@*
	keep_dims(

'G/batch_normalization_7/moments/SqueezeSqueeze$G/batch_normalization_7/moments/mean*
_output_shapes
:@*
squeeze_dims
 *
T0

)G/batch_normalization_7/moments/Squeeze_1Squeeze(G/batch_normalization_7/moments/variance*
T0*
_output_shapes
:@*
squeeze_dims
 

#G/batch_normalization_7/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0

y
%G/batch_normalization_7/cond/switch_tIdentity%G/batch_normalization_7/cond/Switch:1*
T0
*
_output_shapes
: 
w
%G/batch_normalization_7/cond/switch_fIdentity#G/batch_normalization_7/cond/Switch*
_output_shapes
: *
T0

i
$G/batch_normalization_7/cond/pred_idIdentityPlaceholderWithDefault*
_output_shapes
: *
T0

å
%G/batch_normalization_7/cond/Switch_1Switch'G/batch_normalization_7/moments/Squeeze$G/batch_normalization_7/cond/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_7/moments/Squeeze* 
_output_shapes
:@:@

+G/batch_normalization_7/cond/ReadVariableOpReadVariableOp2G/batch_normalization_7/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ā
2G/batch_normalization_7/cond/ReadVariableOp/SwitchSwitch#G/batch_normalization_7/moving_mean$G/batch_normalization_7/cond/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_7/moving_mean*
_output_shapes
: : 
±
"G/batch_normalization_7/cond/MergeMerge+G/batch_normalization_7/cond/ReadVariableOp'G/batch_normalization_7/cond/Switch_1:1*
N*
_output_shapes

:@: *
T0

%G/batch_normalization_7/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_7/cond_1/switch_tIdentity'G/batch_normalization_7/cond_1/Switch:1*
_output_shapes
: *
T0

{
'G/batch_normalization_7/cond_1/switch_fIdentity%G/batch_normalization_7/cond_1/Switch*
_output_shapes
: *
T0

k
&G/batch_normalization_7/cond_1/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
ķ
'G/batch_normalization_7/cond_1/Switch_1Switch)G/batch_normalization_7/moments/Squeeze_1&G/batch_normalization_7/cond_1/pred_id* 
_output_shapes
:@:@*
T0*<
_class2
0.loc:@G/batch_normalization_7/moments/Squeeze_1

-G/batch_normalization_7/cond_1/ReadVariableOpReadVariableOp4G/batch_normalization_7/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ī
4G/batch_normalization_7/cond_1/ReadVariableOp/SwitchSwitch'G/batch_normalization_7/moving_variance&G/batch_normalization_7/cond_1/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_7/moving_variance*
_output_shapes
: : 
·
$G/batch_normalization_7/cond_1/MergeMerge-G/batch_normalization_7/cond_1/ReadVariableOp)G/batch_normalization_7/cond_1/Switch_1:1*
T0*
N*
_output_shapes

:@: 

%G/batch_normalization_7/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_7/cond_2/switch_tIdentity'G/batch_normalization_7/cond_2/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_7/cond_2/switch_fIdentity%G/batch_normalization_7/cond_2/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_7/cond_2/pred_idIdentityPlaceholderWithDefault*
_output_shapes
: *
T0

£
4G/batch_normalization_7/cond_2/AssignMovingAvg/decayConst(^G/batch_normalization_7/cond_2/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ą
=G/batch_normalization_7/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_7/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ö
DG/batch_normalization_7/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch#G/batch_normalization_7/moving_mean&G/batch_normalization_7/cond_2/pred_id*
_output_shapes
: : *
T0*6
_class,
*(loc:@G/batch_normalization_7/moving_mean
Ś
2G/batch_normalization_7/cond_2/AssignMovingAvg/subSub=G/batch_normalization_7/cond_2/AssignMovingAvg/ReadVariableOp;G/batch_normalization_7/cond_2/AssignMovingAvg/sub/Switch:1*
_output_shapes
:@*
T0
ń
9G/batch_normalization_7/cond_2/AssignMovingAvg/sub/SwitchSwitch"G/batch_normalization_7/cond/Merge&G/batch_normalization_7/cond_2/pred_id*
T0*5
_class+
)'loc:@G/batch_normalization_7/cond/Merge* 
_output_shapes
:@:@
Č
2G/batch_normalization_7/cond_2/AssignMovingAvg/mulMul2G/batch_normalization_7/cond_2/AssignMovingAvg/sub4G/batch_normalization_7/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes
:@
ā
BG/batch_normalization_7/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_7/cond_2/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_7/cond_2/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_7/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_7/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_7/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
õ
-G/batch_normalization_7/cond_2/ReadVariableOpReadVariableOpFG/batch_normalization_7/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_7/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¢
/G/batch_normalization_7/cond_2/ReadVariableOp_1ReadVariableOp6G/batch_normalization_7/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
č
6G/batch_normalization_7/cond_2/ReadVariableOp_1/SwitchSwitch#G/batch_normalization_7/moving_mean&G/batch_normalization_7/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_7/moving_mean*
_output_shapes
: : 
½
$G/batch_normalization_7/cond_2/MergeMerge/G/batch_normalization_7/cond_2/ReadVariableOp_1-G/batch_normalization_7/cond_2/ReadVariableOp*
T0*
N*
_output_shapes

:@: 

%G/batch_normalization_7/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_7/cond_3/switch_tIdentity'G/batch_normalization_7/cond_3/Switch:1*
_output_shapes
: *
T0

{
'G/batch_normalization_7/cond_3/switch_fIdentity%G/batch_normalization_7/cond_3/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_7/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_7/cond_3/AssignMovingAvg/decayConst(^G/batch_normalization_7/cond_3/switch_t*
dtype0*
_output_shapes
: *
valueB
 *
×#<
Ą
=G/batch_normalization_7/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_7/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ž
DG/batch_normalization_7/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch'G/batch_normalization_7/moving_variance&G/batch_normalization_7/cond_3/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_7/moving_variance*
_output_shapes
: : 
Ś
2G/batch_normalization_7/cond_3/AssignMovingAvg/subSub=G/batch_normalization_7/cond_3/AssignMovingAvg/ReadVariableOp;G/batch_normalization_7/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
õ
9G/batch_normalization_7/cond_3/AssignMovingAvg/sub/SwitchSwitch$G/batch_normalization_7/cond_1/Merge&G/batch_normalization_7/cond_3/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_7/cond_1/Merge* 
_output_shapes
:@:@
Č
2G/batch_normalization_7/cond_3/AssignMovingAvg/mulMul2G/batch_normalization_7/cond_3/AssignMovingAvg/sub4G/batch_normalization_7/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes
:@
ā
BG/batch_normalization_7/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_7/cond_3/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_7/cond_3/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_7/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_7/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_7/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
õ
-G/batch_normalization_7/cond_3/ReadVariableOpReadVariableOpFG/batch_normalization_7/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_7/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¢
/G/batch_normalization_7/cond_3/ReadVariableOp_1ReadVariableOp6G/batch_normalization_7/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
š
6G/batch_normalization_7/cond_3/ReadVariableOp_1/SwitchSwitch'G/batch_normalization_7/moving_variance&G/batch_normalization_7/cond_3/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_7/moving_variance*
_output_shapes
: : 
½
$G/batch_normalization_7/cond_3/MergeMerge/G/batch_normalization_7/cond_3/ReadVariableOp_1-G/batch_normalization_7/cond_3/ReadVariableOp*
T0*
N*
_output_shapes

:@: 
l
'G/batch_normalization_7/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
 
%G/batch_normalization_7/batchnorm/addAdd$G/batch_normalization_7/cond_1/Merge'G/batch_normalization_7/batchnorm/add/y*
T0*
_output_shapes
:@
|
'G/batch_normalization_7/batchnorm/RsqrtRsqrt%G/batch_normalization_7/batchnorm/add*
T0*
_output_shapes
:@

4G/batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization_7/gamma*
dtype0*
_output_shapes
:@
°
%G/batch_normalization_7/batchnorm/mulMul'G/batch_normalization_7/batchnorm/Rsqrt4G/batch_normalization_7/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:@

'G/batch_normalization_7/batchnorm/mul_1MulG/conv1d_6/BiasAdd%G/batch_normalization_7/batchnorm/mul*
T0*+
_output_shapes
:’’’’’’’’’
@

'G/batch_normalization_7/batchnorm/mul_2Mul"G/batch_normalization_7/cond/Merge%G/batch_normalization_7/batchnorm/mul*
_output_shapes
:@*
T0

0G/batch_normalization_7/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization_7/beta*
dtype0*
_output_shapes
:@
¬
%G/batch_normalization_7/batchnorm/subSub0G/batch_normalization_7/batchnorm/ReadVariableOp'G/batch_normalization_7/batchnorm/mul_2*
T0*
_output_shapes
:@
“
'G/batch_normalization_7/batchnorm/add_1Add'G/batch_normalization_7/batchnorm/mul_1%G/batch_normalization_7/batchnorm/sub*
T0*+
_output_shapes
:’’’’’’’’’
@
o
G/Relu_7Relu'G/batch_normalization_7/batchnorm/add_1*+
_output_shapes
:’’’’’’’’’
@*
T0
­
2G/conv1d_7/kernel/Initializer/random_uniform/shapeConst*!
valueB"   @   @   *$
_class
loc:@G/conv1d_7/kernel*
dtype0*
_output_shapes
:

0G/conv1d_7/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ųKĘ½*$
_class
loc:@G/conv1d_7/kernel

0G/conv1d_7/kernel/Initializer/random_uniform/maxConst*
valueB
 *ųKĘ=*$
_class
loc:@G/conv1d_7/kernel*
dtype0*
_output_shapes
: 
ß
:G/conv1d_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform2G/conv1d_7/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@G/conv1d_7/kernel*
dtype0*"
_output_shapes
:@@
ā
0G/conv1d_7/kernel/Initializer/random_uniform/subSub0G/conv1d_7/kernel/Initializer/random_uniform/max0G/conv1d_7/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@G/conv1d_7/kernel*
_output_shapes
: 
ų
0G/conv1d_7/kernel/Initializer/random_uniform/mulMul:G/conv1d_7/kernel/Initializer/random_uniform/RandomUniform0G/conv1d_7/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@G/conv1d_7/kernel*"
_output_shapes
:@@
ź
,G/conv1d_7/kernel/Initializer/random_uniformAdd0G/conv1d_7/kernel/Initializer/random_uniform/mul0G/conv1d_7/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@G/conv1d_7/kernel*"
_output_shapes
:@@
Ø
G/conv1d_7/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape:@@*"
shared_nameG/conv1d_7/kernel*$
_class
loc:@G/conv1d_7/kernel
s
2G/conv1d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_7/kernel*
_output_shapes
: 
 
G/conv1d_7/kernel/AssignAssignVariableOpG/conv1d_7/kernel,G/conv1d_7/kernel/Initializer/random_uniform*$
_class
loc:@G/conv1d_7/kernel*
dtype0
”
%G/conv1d_7/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_7/kernel*$
_class
loc:@G/conv1d_7/kernel*
dtype0*"
_output_shapes
:@@

!G/conv1d_7/bias/Initializer/zerosConst*
valueB@*    *"
_class
loc:@G/conv1d_7/bias*
dtype0*
_output_shapes
:@

G/conv1d_7/biasVarHandleOp*
shape:@* 
shared_nameG/conv1d_7/bias*"
_class
loc:@G/conv1d_7/bias*
dtype0*
_output_shapes
: 
o
0G/conv1d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_7/bias*
_output_shapes
: 

G/conv1d_7/bias/AssignAssignVariableOpG/conv1d_7/bias!G/conv1d_7/bias/Initializer/zeros*"
_class
loc:@G/conv1d_7/bias*
dtype0

#G/conv1d_7/bias/Read/ReadVariableOpReadVariableOpG/conv1d_7/bias*"
_class
loc:@G/conv1d_7/bias*
dtype0*
_output_shapes
:@
b
G/conv1d_7/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
b
 G/conv1d_7/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv1d_7/conv1d/ExpandDims
ExpandDimsG/Relu_7 G/conv1d_7/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’
@

-G/conv1d_7/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_7/kernel*
dtype0*"
_output_shapes
:@@
d
"G/conv1d_7/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
°
G/conv1d_7/conv1d/ExpandDims_1
ExpandDims-G/conv1d_7/conv1d/ExpandDims_1/ReadVariableOp"G/conv1d_7/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:@@
Ā
G/conv1d_7/conv1d/Conv2DConv2DG/conv1d_7/conv1d/ExpandDimsG/conv1d_7/conv1d/ExpandDims_1*
strides
*/
_output_shapes
:’’’’’’’’’
@*
paddingSAME*
T0

G/conv1d_7/conv1d/SqueezeSqueezeG/conv1d_7/conv1d/Conv2D*+
_output_shapes
:’’’’’’’’’
@*
squeeze_dims
*
T0
m
!G/conv1d_7/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_7/bias*
dtype0*
_output_shapes
:@

G/conv1d_7/BiasAddBiasAddG/conv1d_7/conv1d/Squeeze!G/conv1d_7/BiasAdd/ReadVariableOp*
T0*+
_output_shapes
:’’’’’’’’’
@
­
.G/batch_normalization_8/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:@*
valueB@*  ?*0
_class&
$"loc:@G/batch_normalization_8/gamma
Ä
G/batch_normalization_8/gammaVarHandleOp*0
_class&
$"loc:@G/batch_normalization_8/gamma*
dtype0*
_output_shapes
: *
shape:@*.
shared_nameG/batch_normalization_8/gamma

>G/batch_normalization_8/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_8/gamma*
_output_shapes
: 
Ę
$G/batch_normalization_8/gamma/AssignAssignVariableOpG/batch_normalization_8/gamma.G/batch_normalization_8/gamma/Initializer/ones*0
_class&
$"loc:@G/batch_normalization_8/gamma*
dtype0
½
1G/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_8/gamma*0
_class&
$"loc:@G/batch_normalization_8/gamma*
dtype0*
_output_shapes
:@
¬
.G/batch_normalization_8/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    */
_class%
#!loc:@G/batch_normalization_8/beta
Į
G/batch_normalization_8/betaVarHandleOp*/
_class%
#!loc:@G/batch_normalization_8/beta*
dtype0*
_output_shapes
: *
shape:@*-
shared_nameG/batch_normalization_8/beta

=G/batch_normalization_8/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_8/beta*
_output_shapes
: 
Ć
#G/batch_normalization_8/beta/AssignAssignVariableOpG/batch_normalization_8/beta.G/batch_normalization_8/beta/Initializer/zeros*/
_class%
#!loc:@G/batch_normalization_8/beta*
dtype0
ŗ
0G/batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_8/beta*/
_class%
#!loc:@G/batch_normalization_8/beta*
dtype0*
_output_shapes
:@
ŗ
5G/batch_normalization_8/moving_mean/Initializer/zerosConst*
valueB@*    *6
_class,
*(loc:@G/batch_normalization_8/moving_mean*
dtype0*
_output_shapes
:@
Ö
#G/batch_normalization_8/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*4
shared_name%#G/batch_normalization_8/moving_mean*6
_class,
*(loc:@G/batch_normalization_8/moving_mean

DG/batch_normalization_8/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp#G/batch_normalization_8/moving_mean*
_output_shapes
: 
ß
*G/batch_normalization_8/moving_mean/AssignAssignVariableOp#G/batch_normalization_8/moving_mean5G/batch_normalization_8/moving_mean/Initializer/zeros*6
_class,
*(loc:@G/batch_normalization_8/moving_mean*
dtype0
Ļ
7G/batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp#G/batch_normalization_8/moving_mean*6
_class,
*(loc:@G/batch_normalization_8/moving_mean*
dtype0*
_output_shapes
:@
Į
8G/batch_normalization_8/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:@*
valueB@*  ?*:
_class0
.,loc:@G/batch_normalization_8/moving_variance
ā
'G/batch_normalization_8/moving_varianceVarHandleOp*:
_class0
.,loc:@G/batch_normalization_8/moving_variance*
dtype0*
_output_shapes
: *
shape:@*8
shared_name)'G/batch_normalization_8/moving_variance

HG/batch_normalization_8/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp'G/batch_normalization_8/moving_variance*
_output_shapes
: 
ī
.G/batch_normalization_8/moving_variance/AssignAssignVariableOp'G/batch_normalization_8/moving_variance8G/batch_normalization_8/moving_variance/Initializer/ones*:
_class0
.,loc:@G/batch_normalization_8/moving_variance*
dtype0
Ū
;G/batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp'G/batch_normalization_8/moving_variance*
dtype0*
_output_shapes
:@*:
_class0
.,loc:@G/batch_normalization_8/moving_variance

6G/batch_normalization_8/moments/mean/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
¶
$G/batch_normalization_8/moments/meanMeanG/conv1d_7/BiasAdd6G/batch_normalization_8/moments/mean/reduction_indices*
T0*"
_output_shapes
:@*
	keep_dims(

,G/batch_normalization_8/moments/StopGradientStopGradient$G/batch_normalization_8/moments/mean*
T0*"
_output_shapes
:@
¾
1G/batch_normalization_8/moments/SquaredDifferenceSquaredDifferenceG/conv1d_7/BiasAdd,G/batch_normalization_8/moments/StopGradient*+
_output_shapes
:’’’’’’’’’
@*
T0

:G/batch_normalization_8/moments/variance/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
Ż
(G/batch_normalization_8/moments/varianceMean1G/batch_normalization_8/moments/SquaredDifference:G/batch_normalization_8/moments/variance/reduction_indices*
T0*"
_output_shapes
:@*
	keep_dims(

'G/batch_normalization_8/moments/SqueezeSqueeze$G/batch_normalization_8/moments/mean*
_output_shapes
:@*
squeeze_dims
 *
T0

)G/batch_normalization_8/moments/Squeeze_1Squeeze(G/batch_normalization_8/moments/variance*
T0*
_output_shapes
:@*
squeeze_dims
 

#G/batch_normalization_8/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
y
%G/batch_normalization_8/cond/switch_tIdentity%G/batch_normalization_8/cond/Switch:1*
T0
*
_output_shapes
: 
w
%G/batch_normalization_8/cond/switch_fIdentity#G/batch_normalization_8/cond/Switch*
T0
*
_output_shapes
: 
i
$G/batch_normalization_8/cond/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
å
%G/batch_normalization_8/cond/Switch_1Switch'G/batch_normalization_8/moments/Squeeze$G/batch_normalization_8/cond/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_8/moments/Squeeze* 
_output_shapes
:@:@

+G/batch_normalization_8/cond/ReadVariableOpReadVariableOp2G/batch_normalization_8/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ā
2G/batch_normalization_8/cond/ReadVariableOp/SwitchSwitch#G/batch_normalization_8/moving_mean$G/batch_normalization_8/cond/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_8/moving_mean*
_output_shapes
: : 
±
"G/batch_normalization_8/cond/MergeMerge+G/batch_normalization_8/cond/ReadVariableOp'G/batch_normalization_8/cond/Switch_1:1*
T0*
N*
_output_shapes

:@: 

%G/batch_normalization_8/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_8/cond_1/switch_tIdentity'G/batch_normalization_8/cond_1/Switch:1*
_output_shapes
: *
T0

{
'G/batch_normalization_8/cond_1/switch_fIdentity%G/batch_normalization_8/cond_1/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_8/cond_1/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
ķ
'G/batch_normalization_8/cond_1/Switch_1Switch)G/batch_normalization_8/moments/Squeeze_1&G/batch_normalization_8/cond_1/pred_id*
T0*<
_class2
0.loc:@G/batch_normalization_8/moments/Squeeze_1* 
_output_shapes
:@:@

-G/batch_normalization_8/cond_1/ReadVariableOpReadVariableOp4G/batch_normalization_8/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ī
4G/batch_normalization_8/cond_1/ReadVariableOp/SwitchSwitch'G/batch_normalization_8/moving_variance&G/batch_normalization_8/cond_1/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_8/moving_variance*
_output_shapes
: : 
·
$G/batch_normalization_8/cond_1/MergeMerge-G/batch_normalization_8/cond_1/ReadVariableOp)G/batch_normalization_8/cond_1/Switch_1:1*
T0*
N*
_output_shapes

:@: 

%G/batch_normalization_8/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_8/cond_2/switch_tIdentity'G/batch_normalization_8/cond_2/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_8/cond_2/switch_fIdentity%G/batch_normalization_8/cond_2/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_8/cond_2/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_8/cond_2/AssignMovingAvg/decayConst(^G/batch_normalization_8/cond_2/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ą
=G/batch_normalization_8/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_8/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ö
DG/batch_normalization_8/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch#G/batch_normalization_8/moving_mean&G/batch_normalization_8/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_8/moving_mean*
_output_shapes
: : 
Ś
2G/batch_normalization_8/cond_2/AssignMovingAvg/subSub=G/batch_normalization_8/cond_2/AssignMovingAvg/ReadVariableOp;G/batch_normalization_8/cond_2/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
ń
9G/batch_normalization_8/cond_2/AssignMovingAvg/sub/SwitchSwitch"G/batch_normalization_8/cond/Merge&G/batch_normalization_8/cond_2/pred_id* 
_output_shapes
:@:@*
T0*5
_class+
)'loc:@G/batch_normalization_8/cond/Merge
Č
2G/batch_normalization_8/cond_2/AssignMovingAvg/mulMul2G/batch_normalization_8/cond_2/AssignMovingAvg/sub4G/batch_normalization_8/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes
:@
ā
BG/batch_normalization_8/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_8/cond_2/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_8/cond_2/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_8/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_8/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_8/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
õ
-G/batch_normalization_8/cond_2/ReadVariableOpReadVariableOpFG/batch_normalization_8/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_8/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¢
/G/batch_normalization_8/cond_2/ReadVariableOp_1ReadVariableOp6G/batch_normalization_8/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
č
6G/batch_normalization_8/cond_2/ReadVariableOp_1/SwitchSwitch#G/batch_normalization_8/moving_mean&G/batch_normalization_8/cond_2/pred_id*
_output_shapes
: : *
T0*6
_class,
*(loc:@G/batch_normalization_8/moving_mean
½
$G/batch_normalization_8/cond_2/MergeMerge/G/batch_normalization_8/cond_2/ReadVariableOp_1-G/batch_normalization_8/cond_2/ReadVariableOp*
N*
_output_shapes

:@: *
T0

%G/batch_normalization_8/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_8/cond_3/switch_tIdentity'G/batch_normalization_8/cond_3/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_8/cond_3/switch_fIdentity%G/batch_normalization_8/cond_3/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_8/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_8/cond_3/AssignMovingAvg/decayConst(^G/batch_normalization_8/cond_3/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ą
=G/batch_normalization_8/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_8/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ž
DG/batch_normalization_8/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch'G/batch_normalization_8/moving_variance&G/batch_normalization_8/cond_3/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_8/moving_variance*
_output_shapes
: : 
Ś
2G/batch_normalization_8/cond_3/AssignMovingAvg/subSub=G/batch_normalization_8/cond_3/AssignMovingAvg/ReadVariableOp;G/batch_normalization_8/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
õ
9G/batch_normalization_8/cond_3/AssignMovingAvg/sub/SwitchSwitch$G/batch_normalization_8/cond_1/Merge&G/batch_normalization_8/cond_3/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_8/cond_1/Merge* 
_output_shapes
:@:@
Č
2G/batch_normalization_8/cond_3/AssignMovingAvg/mulMul2G/batch_normalization_8/cond_3/AssignMovingAvg/sub4G/batch_normalization_8/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes
:@
ā
BG/batch_normalization_8/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_8/cond_3/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_8/cond_3/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_8/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_8/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_8/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
õ
-G/batch_normalization_8/cond_3/ReadVariableOpReadVariableOpFG/batch_normalization_8/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_8/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¢
/G/batch_normalization_8/cond_3/ReadVariableOp_1ReadVariableOp6G/batch_normalization_8/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
š
6G/batch_normalization_8/cond_3/ReadVariableOp_1/SwitchSwitch'G/batch_normalization_8/moving_variance&G/batch_normalization_8/cond_3/pred_id*
_output_shapes
: : *
T0*:
_class0
.,loc:@G/batch_normalization_8/moving_variance
½
$G/batch_normalization_8/cond_3/MergeMerge/G/batch_normalization_8/cond_3/ReadVariableOp_1-G/batch_normalization_8/cond_3/ReadVariableOp*
T0*
N*
_output_shapes

:@: 
l
'G/batch_normalization_8/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
 
%G/batch_normalization_8/batchnorm/addAdd$G/batch_normalization_8/cond_1/Merge'G/batch_normalization_8/batchnorm/add/y*
T0*
_output_shapes
:@
|
'G/batch_normalization_8/batchnorm/RsqrtRsqrt%G/batch_normalization_8/batchnorm/add*
T0*
_output_shapes
:@

4G/batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization_8/gamma*
dtype0*
_output_shapes
:@
°
%G/batch_normalization_8/batchnorm/mulMul'G/batch_normalization_8/batchnorm/Rsqrt4G/batch_normalization_8/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:@

'G/batch_normalization_8/batchnorm/mul_1MulG/conv1d_7/BiasAdd%G/batch_normalization_8/batchnorm/mul*
T0*+
_output_shapes
:’’’’’’’’’
@

'G/batch_normalization_8/batchnorm/mul_2Mul"G/batch_normalization_8/cond/Merge%G/batch_normalization_8/batchnorm/mul*
T0*
_output_shapes
:@

0G/batch_normalization_8/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization_8/beta*
dtype0*
_output_shapes
:@
¬
%G/batch_normalization_8/batchnorm/subSub0G/batch_normalization_8/batchnorm/ReadVariableOp'G/batch_normalization_8/batchnorm/mul_2*
_output_shapes
:@*
T0
“
'G/batch_normalization_8/batchnorm/add_1Add'G/batch_normalization_8/batchnorm/mul_1%G/batch_normalization_8/batchnorm/sub*
T0*+
_output_shapes
:’’’’’’’’’
@
o
G/Relu_8Relu'G/batch_normalization_8/batchnorm/add_1*+
_output_shapes
:’’’’’’’’’
@*
T0
­
2G/conv1d_8/kernel/Initializer/random_uniform/shapeConst*!
valueB"   @      *$
_class
loc:@G/conv1d_8/kernel*
dtype0*
_output_shapes
:

0G/conv1d_8/kernel/Initializer/random_uniform/minConst*
valueB
 *ó5¾*$
_class
loc:@G/conv1d_8/kernel*
dtype0*
_output_shapes
: 

0G/conv1d_8/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ó5>*$
_class
loc:@G/conv1d_8/kernel
ą
:G/conv1d_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform2G/conv1d_8/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@G/conv1d_8/kernel*
dtype0*#
_output_shapes
:@
ā
0G/conv1d_8/kernel/Initializer/random_uniform/subSub0G/conv1d_8/kernel/Initializer/random_uniform/max0G/conv1d_8/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@G/conv1d_8/kernel*
_output_shapes
: 
ł
0G/conv1d_8/kernel/Initializer/random_uniform/mulMul:G/conv1d_8/kernel/Initializer/random_uniform/RandomUniform0G/conv1d_8/kernel/Initializer/random_uniform/sub*#
_output_shapes
:@*
T0*$
_class
loc:@G/conv1d_8/kernel
ė
,G/conv1d_8/kernel/Initializer/random_uniformAdd0G/conv1d_8/kernel/Initializer/random_uniform/mul0G/conv1d_8/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@G/conv1d_8/kernel*#
_output_shapes
:@
©
G/conv1d_8/kernelVarHandleOp*$
_class
loc:@G/conv1d_8/kernel*
dtype0*
_output_shapes
: *
shape:@*"
shared_nameG/conv1d_8/kernel
s
2G/conv1d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_8/kernel*
_output_shapes
: 
 
G/conv1d_8/kernel/AssignAssignVariableOpG/conv1d_8/kernel,G/conv1d_8/kernel/Initializer/random_uniform*$
_class
loc:@G/conv1d_8/kernel*
dtype0
¢
%G/conv1d_8/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_8/kernel*
dtype0*#
_output_shapes
:@*$
_class
loc:@G/conv1d_8/kernel

!G/conv1d_8/bias/Initializer/zerosConst*
valueB*    *"
_class
loc:@G/conv1d_8/bias*
dtype0*
_output_shapes	
:

G/conv1d_8/biasVarHandleOp*
shape:* 
shared_nameG/conv1d_8/bias*"
_class
loc:@G/conv1d_8/bias*
dtype0*
_output_shapes
: 
o
0G/conv1d_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_8/bias*
_output_shapes
: 

G/conv1d_8/bias/AssignAssignVariableOpG/conv1d_8/bias!G/conv1d_8/bias/Initializer/zeros*
dtype0*"
_class
loc:@G/conv1d_8/bias

#G/conv1d_8/bias/Read/ReadVariableOpReadVariableOpG/conv1d_8/bias*
dtype0*
_output_shapes	
:*"
_class
loc:@G/conv1d_8/bias
b
G/conv1d_8/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
b
 G/conv1d_8/conv1d/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :

G/conv1d_8/conv1d/ExpandDims
ExpandDimsG/Relu_8 G/conv1d_8/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’
@

-G/conv1d_8/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_8/kernel*
dtype0*#
_output_shapes
:@
d
"G/conv1d_8/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
±
G/conv1d_8/conv1d/ExpandDims_1
ExpandDims-G/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp"G/conv1d_8/conv1d/ExpandDims_1/dim*'
_output_shapes
:@*
T0
Ć
G/conv1d_8/conv1d/Conv2DConv2DG/conv1d_8/conv1d/ExpandDimsG/conv1d_8/conv1d/ExpandDims_1*
paddingSAME*
T0*
strides
*0
_output_shapes
:’’’’’’’’’


G/conv1d_8/conv1d/SqueezeSqueezeG/conv1d_8/conv1d/Conv2D*
squeeze_dims
*
T0*,
_output_shapes
:’’’’’’’’’

n
!G/conv1d_8/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_8/bias*
dtype0*
_output_shapes	
:

G/conv1d_8/BiasAddBiasAddG/conv1d_8/conv1d/Squeeze!G/conv1d_8/BiasAdd/ReadVariableOp*
T0*,
_output_shapes
:’’’’’’’’’

N
	G/mul_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *>
d
G/mul_2Mul	G/mul_2/xG/conv1d_8/BiasAdd*
T0*,
_output_shapes
:’’’’’’’’’

W
G/add_2AddG/add_1G/mul_2*
T0*,
_output_shapes
:’’’’’’’’’

Æ
.G/batch_normalization_9/gamma/Initializer/onesConst*
valueB*  ?*0
_class&
$"loc:@G/batch_normalization_9/gamma*
dtype0*
_output_shapes	
:
Å
G/batch_normalization_9/gammaVarHandleOp*0
_class&
$"loc:@G/batch_normalization_9/gamma*
dtype0*
_output_shapes
: *
shape:*.
shared_nameG/batch_normalization_9/gamma

>G/batch_normalization_9/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_9/gamma*
_output_shapes
: 
Ę
$G/batch_normalization_9/gamma/AssignAssignVariableOpG/batch_normalization_9/gamma.G/batch_normalization_9/gamma/Initializer/ones*
dtype0*0
_class&
$"loc:@G/batch_normalization_9/gamma
¾
1G/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_9/gamma*
dtype0*
_output_shapes	
:*0
_class&
$"loc:@G/batch_normalization_9/gamma
®
.G/batch_normalization_9/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    */
_class%
#!loc:@G/batch_normalization_9/beta
Ā
G/batch_normalization_9/betaVarHandleOp*
dtype0*
_output_shapes
: *
shape:*-
shared_nameG/batch_normalization_9/beta*/
_class%
#!loc:@G/batch_normalization_9/beta

=G/batch_normalization_9/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_9/beta*
_output_shapes
: 
Ć
#G/batch_normalization_9/beta/AssignAssignVariableOpG/batch_normalization_9/beta.G/batch_normalization_9/beta/Initializer/zeros*/
_class%
#!loc:@G/batch_normalization_9/beta*
dtype0
»
0G/batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_9/beta*/
_class%
#!loc:@G/batch_normalization_9/beta*
dtype0*
_output_shapes	
:
¼
5G/batch_normalization_9/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *6
_class,
*(loc:@G/batch_normalization_9/moving_mean
×
#G/batch_normalization_9/moving_meanVarHandleOp*6
_class,
*(loc:@G/batch_normalization_9/moving_mean*
dtype0*
_output_shapes
: *
shape:*4
shared_name%#G/batch_normalization_9/moving_mean

DG/batch_normalization_9/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp#G/batch_normalization_9/moving_mean*
_output_shapes
: 
ß
*G/batch_normalization_9/moving_mean/AssignAssignVariableOp#G/batch_normalization_9/moving_mean5G/batch_normalization_9/moving_mean/Initializer/zeros*
dtype0*6
_class,
*(loc:@G/batch_normalization_9/moving_mean
Š
7G/batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp#G/batch_normalization_9/moving_mean*6
_class,
*(loc:@G/batch_normalization_9/moving_mean*
dtype0*
_output_shapes	
:
Ć
8G/batch_normalization_9/moving_variance/Initializer/onesConst*
valueB*  ?*:
_class0
.,loc:@G/batch_normalization_9/moving_variance*
dtype0*
_output_shapes	
:
ć
'G/batch_normalization_9/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *
shape:*8
shared_name)'G/batch_normalization_9/moving_variance*:
_class0
.,loc:@G/batch_normalization_9/moving_variance

HG/batch_normalization_9/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp'G/batch_normalization_9/moving_variance*
_output_shapes
: 
ī
.G/batch_normalization_9/moving_variance/AssignAssignVariableOp'G/batch_normalization_9/moving_variance8G/batch_normalization_9/moving_variance/Initializer/ones*
dtype0*:
_class0
.,loc:@G/batch_normalization_9/moving_variance
Ü
;G/batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp'G/batch_normalization_9/moving_variance*:
_class0
.,loc:@G/batch_normalization_9/moving_variance*
dtype0*
_output_shapes	
:

6G/batch_normalization_9/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB"       
¬
$G/batch_normalization_9/moments/meanMeanG/add_26G/batch_normalization_9/moments/mean/reduction_indices*#
_output_shapes
:*
	keep_dims(*
T0

,G/batch_normalization_9/moments/StopGradientStopGradient$G/batch_normalization_9/moments/mean*
T0*#
_output_shapes
:
“
1G/batch_normalization_9/moments/SquaredDifferenceSquaredDifferenceG/add_2,G/batch_normalization_9/moments/StopGradient*
T0*,
_output_shapes
:’’’’’’’’’


:G/batch_normalization_9/moments/variance/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
Ž
(G/batch_normalization_9/moments/varianceMean1G/batch_normalization_9/moments/SquaredDifference:G/batch_normalization_9/moments/variance/reduction_indices*#
_output_shapes
:*
	keep_dims(*
T0

'G/batch_normalization_9/moments/SqueezeSqueeze$G/batch_normalization_9/moments/mean*
T0*
_output_shapes	
:*
squeeze_dims
 

)G/batch_normalization_9/moments/Squeeze_1Squeeze(G/batch_normalization_9/moments/variance*
squeeze_dims
 *
T0*
_output_shapes	
:

#G/batch_normalization_9/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0

y
%G/batch_normalization_9/cond/switch_tIdentity%G/batch_normalization_9/cond/Switch:1*
T0
*
_output_shapes
: 
w
%G/batch_normalization_9/cond/switch_fIdentity#G/batch_normalization_9/cond/Switch*
_output_shapes
: *
T0

i
$G/batch_normalization_9/cond/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
ē
%G/batch_normalization_9/cond/Switch_1Switch'G/batch_normalization_9/moments/Squeeze$G/batch_normalization_9/cond/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_9/moments/Squeeze*"
_output_shapes
::

+G/batch_normalization_9/cond/ReadVariableOpReadVariableOp2G/batch_normalization_9/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:
ā
2G/batch_normalization_9/cond/ReadVariableOp/SwitchSwitch#G/batch_normalization_9/moving_mean$G/batch_normalization_9/cond/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_9/moving_mean*
_output_shapes
: : 
²
"G/batch_normalization_9/cond/MergeMerge+G/batch_normalization_9/cond/ReadVariableOp'G/batch_normalization_9/cond/Switch_1:1*
T0*
N*
_output_shapes
	:: 

%G/batch_normalization_9/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_9/cond_1/switch_tIdentity'G/batch_normalization_9/cond_1/Switch:1*
_output_shapes
: *
T0

{
'G/batch_normalization_9/cond_1/switch_fIdentity%G/batch_normalization_9/cond_1/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_9/cond_1/pred_idIdentityPlaceholderWithDefault*
_output_shapes
: *
T0

ļ
'G/batch_normalization_9/cond_1/Switch_1Switch)G/batch_normalization_9/moments/Squeeze_1&G/batch_normalization_9/cond_1/pred_id*
T0*<
_class2
0.loc:@G/batch_normalization_9/moments/Squeeze_1*"
_output_shapes
::

-G/batch_normalization_9/cond_1/ReadVariableOpReadVariableOp4G/batch_normalization_9/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:
ī
4G/batch_normalization_9/cond_1/ReadVariableOp/SwitchSwitch'G/batch_normalization_9/moving_variance&G/batch_normalization_9/cond_1/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_9/moving_variance*
_output_shapes
: : 
ø
$G/batch_normalization_9/cond_1/MergeMerge-G/batch_normalization_9/cond_1/ReadVariableOp)G/batch_normalization_9/cond_1/Switch_1:1*
T0*
N*
_output_shapes
	:: 

%G/batch_normalization_9/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
}
'G/batch_normalization_9/cond_2/switch_tIdentity'G/batch_normalization_9/cond_2/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_9/cond_2/switch_fIdentity%G/batch_normalization_9/cond_2/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_9/cond_2/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_9/cond_2/AssignMovingAvg/decayConst(^G/batch_normalization_9/cond_2/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Į
=G/batch_normalization_9/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_9/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:
ö
DG/batch_normalization_9/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch#G/batch_normalization_9/moving_mean&G/batch_normalization_9/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_9/moving_mean*
_output_shapes
: : 
Ū
2G/batch_normalization_9/cond_2/AssignMovingAvg/subSub=G/batch_normalization_9/cond_2/AssignMovingAvg/ReadVariableOp;G/batch_normalization_9/cond_2/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes	
:
ó
9G/batch_normalization_9/cond_2/AssignMovingAvg/sub/SwitchSwitch"G/batch_normalization_9/cond/Merge&G/batch_normalization_9/cond_2/pred_id*
T0*5
_class+
)'loc:@G/batch_normalization_9/cond/Merge*"
_output_shapes
::
É
2G/batch_normalization_9/cond_2/AssignMovingAvg/mulMul2G/batch_normalization_9/cond_2/AssignMovingAvg/sub4G/batch_normalization_9/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes	
:
ā
BG/batch_normalization_9/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_9/cond_2/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_9/cond_2/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_9/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_9/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_9/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
ö
-G/batch_normalization_9/cond_2/ReadVariableOpReadVariableOpFG/batch_normalization_9/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_9/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
£
/G/batch_normalization_9/cond_2/ReadVariableOp_1ReadVariableOp6G/batch_normalization_9/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:
č
6G/batch_normalization_9/cond_2/ReadVariableOp_1/SwitchSwitch#G/batch_normalization_9/moving_mean&G/batch_normalization_9/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_9/moving_mean*
_output_shapes
: : 
¾
$G/batch_normalization_9/cond_2/MergeMerge/G/batch_normalization_9/cond_2/ReadVariableOp_1-G/batch_normalization_9/cond_2/ReadVariableOp*
T0*
N*
_output_shapes
	:: 

%G/batch_normalization_9/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0

}
'G/batch_normalization_9/cond_3/switch_tIdentity'G/batch_normalization_9/cond_3/Switch:1*
T0
*
_output_shapes
: 
{
'G/batch_normalization_9/cond_3/switch_fIdentity%G/batch_normalization_9/cond_3/Switch*
T0
*
_output_shapes
: 
k
&G/batch_normalization_9/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
£
4G/batch_normalization_9/cond_3/AssignMovingAvg/decayConst(^G/batch_normalization_9/cond_3/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Į
=G/batch_normalization_9/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpFG/batch_normalization_9/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:
ž
DG/batch_normalization_9/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch'G/batch_normalization_9/moving_variance&G/batch_normalization_9/cond_3/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_9/moving_variance*
_output_shapes
: : 
Ū
2G/batch_normalization_9/cond_3/AssignMovingAvg/subSub=G/batch_normalization_9/cond_3/AssignMovingAvg/ReadVariableOp;G/batch_normalization_9/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes	
:
÷
9G/batch_normalization_9/cond_3/AssignMovingAvg/sub/SwitchSwitch$G/batch_normalization_9/cond_1/Merge&G/batch_normalization_9/cond_3/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_9/cond_1/Merge*"
_output_shapes
::
É
2G/batch_normalization_9/cond_3/AssignMovingAvg/mulMul2G/batch_normalization_9/cond_3/AssignMovingAvg/sub4G/batch_normalization_9/cond_3/AssignMovingAvg/decay*
_output_shapes	
:*
T0
ā
BG/batch_normalization_9/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpFG/batch_normalization_9/cond_3/AssignMovingAvg/ReadVariableOp/Switch:12G/batch_normalization_9/cond_3/AssignMovingAvg/mul*
dtype0

?G/batch_normalization_9/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpFG/batch_normalization_9/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_9/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
ö
-G/batch_normalization_9/cond_3/ReadVariableOpReadVariableOpFG/batch_normalization_9/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1C^G/batch_normalization_9/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
£
/G/batch_normalization_9/cond_3/ReadVariableOp_1ReadVariableOp6G/batch_normalization_9/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:
š
6G/batch_normalization_9/cond_3/ReadVariableOp_1/SwitchSwitch'G/batch_normalization_9/moving_variance&G/batch_normalization_9/cond_3/pred_id*
T0*:
_class0
.,loc:@G/batch_normalization_9/moving_variance*
_output_shapes
: : 
¾
$G/batch_normalization_9/cond_3/MergeMerge/G/batch_normalization_9/cond_3/ReadVariableOp_1-G/batch_normalization_9/cond_3/ReadVariableOp*
T0*
N*
_output_shapes
	:: 
l
'G/batch_normalization_9/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
”
%G/batch_normalization_9/batchnorm/addAdd$G/batch_normalization_9/cond_1/Merge'G/batch_normalization_9/batchnorm/add/y*
_output_shapes	
:*
T0
}
'G/batch_normalization_9/batchnorm/RsqrtRsqrt%G/batch_normalization_9/batchnorm/add*
T0*
_output_shapes	
:

4G/batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization_9/gamma*
dtype0*
_output_shapes	
:
±
%G/batch_normalization_9/batchnorm/mulMul'G/batch_normalization_9/batchnorm/Rsqrt4G/batch_normalization_9/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes	
:

'G/batch_normalization_9/batchnorm/mul_1MulG/add_2%G/batch_normalization_9/batchnorm/mul*
T0*,
_output_shapes
:’’’’’’’’’


'G/batch_normalization_9/batchnorm/mul_2Mul"G/batch_normalization_9/cond/Merge%G/batch_normalization_9/batchnorm/mul*
T0*
_output_shapes	
:

0G/batch_normalization_9/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization_9/beta*
dtype0*
_output_shapes	
:
­
%G/batch_normalization_9/batchnorm/subSub0G/batch_normalization_9/batchnorm/ReadVariableOp'G/batch_normalization_9/batchnorm/mul_2*
T0*
_output_shapes	
:
µ
'G/batch_normalization_9/batchnorm/add_1Add'G/batch_normalization_9/batchnorm/mul_1%G/batch_normalization_9/batchnorm/sub*
T0*,
_output_shapes
:’’’’’’’’’

p
G/Relu_9Relu'G/batch_normalization_9/batchnorm/add_1*
T0*,
_output_shapes
:’’’’’’’’’

­
2G/conv1d_9/kernel/Initializer/random_uniform/shapeConst*!
valueB"      @   *$
_class
loc:@G/conv1d_9/kernel*
dtype0*
_output_shapes
:

0G/conv1d_9/kernel/Initializer/random_uniform/minConst*
valueB
 *ó5¾*$
_class
loc:@G/conv1d_9/kernel*
dtype0*
_output_shapes
: 

0G/conv1d_9/kernel/Initializer/random_uniform/maxConst*
valueB
 *ó5>*$
_class
loc:@G/conv1d_9/kernel*
dtype0*
_output_shapes
: 
ą
:G/conv1d_9/kernel/Initializer/random_uniform/RandomUniformRandomUniform2G/conv1d_9/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@G/conv1d_9/kernel*
dtype0*#
_output_shapes
:@
ā
0G/conv1d_9/kernel/Initializer/random_uniform/subSub0G/conv1d_9/kernel/Initializer/random_uniform/max0G/conv1d_9/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@G/conv1d_9/kernel
ł
0G/conv1d_9/kernel/Initializer/random_uniform/mulMul:G/conv1d_9/kernel/Initializer/random_uniform/RandomUniform0G/conv1d_9/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@G/conv1d_9/kernel*#
_output_shapes
:@
ė
,G/conv1d_9/kernel/Initializer/random_uniformAdd0G/conv1d_9/kernel/Initializer/random_uniform/mul0G/conv1d_9/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@G/conv1d_9/kernel*#
_output_shapes
:@
©
G/conv1d_9/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*"
shared_nameG/conv1d_9/kernel*$
_class
loc:@G/conv1d_9/kernel
s
2G/conv1d_9/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_9/kernel*
_output_shapes
: 
 
G/conv1d_9/kernel/AssignAssignVariableOpG/conv1d_9/kernel,G/conv1d_9/kernel/Initializer/random_uniform*
dtype0*$
_class
loc:@G/conv1d_9/kernel
¢
%G/conv1d_9/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_9/kernel*$
_class
loc:@G/conv1d_9/kernel*
dtype0*#
_output_shapes
:@

!G/conv1d_9/bias/Initializer/zerosConst*
valueB@*    *"
_class
loc:@G/conv1d_9/bias*
dtype0*
_output_shapes
:@

G/conv1d_9/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:@* 
shared_nameG/conv1d_9/bias*"
_class
loc:@G/conv1d_9/bias
o
0G/conv1d_9/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_9/bias*
_output_shapes
: 

G/conv1d_9/bias/AssignAssignVariableOpG/conv1d_9/bias!G/conv1d_9/bias/Initializer/zeros*
dtype0*"
_class
loc:@G/conv1d_9/bias

#G/conv1d_9/bias/Read/ReadVariableOpReadVariableOpG/conv1d_9/bias*"
_class
loc:@G/conv1d_9/bias*
dtype0*
_output_shapes
:@
b
G/conv1d_9/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
b
 G/conv1d_9/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv1d_9/conv1d/ExpandDims
ExpandDimsG/Relu_9 G/conv1d_9/conv1d/ExpandDims/dim*
T0*0
_output_shapes
:’’’’’’’’’


-G/conv1d_9/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_9/kernel*
dtype0*#
_output_shapes
:@
d
"G/conv1d_9/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
±
G/conv1d_9/conv1d/ExpandDims_1
ExpandDims-G/conv1d_9/conv1d/ExpandDims_1/ReadVariableOp"G/conv1d_9/conv1d/ExpandDims_1/dim*
T0*'
_output_shapes
:@
Ā
G/conv1d_9/conv1d/Conv2DConv2DG/conv1d_9/conv1d/ExpandDimsG/conv1d_9/conv1d/ExpandDims_1*
strides
*/
_output_shapes
:’’’’’’’’’
@*
paddingSAME*
T0

G/conv1d_9/conv1d/SqueezeSqueezeG/conv1d_9/conv1d/Conv2D*
squeeze_dims
*
T0*+
_output_shapes
:’’’’’’’’’
@
m
!G/conv1d_9/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_9/bias*
dtype0*
_output_shapes
:@

G/conv1d_9/BiasAddBiasAddG/conv1d_9/conv1d/Squeeze!G/conv1d_9/BiasAdd/ReadVariableOp*+
_output_shapes
:’’’’’’’’’
@*
T0
Æ
/G/batch_normalization_10/gamma/Initializer/onesConst*
valueB@*  ?*1
_class'
%#loc:@G/batch_normalization_10/gamma*
dtype0*
_output_shapes
:@
Ē
G/batch_normalization_10/gammaVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*/
shared_name G/batch_normalization_10/gamma*1
_class'
%#loc:@G/batch_normalization_10/gamma

?G/batch_normalization_10/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_10/gamma*
_output_shapes
: 
Ź
%G/batch_normalization_10/gamma/AssignAssignVariableOpG/batch_normalization_10/gamma/G/batch_normalization_10/gamma/Initializer/ones*1
_class'
%#loc:@G/batch_normalization_10/gamma*
dtype0
Ą
2G/batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_10/gamma*1
_class'
%#loc:@G/batch_normalization_10/gamma*
dtype0*
_output_shapes
:@
®
/G/batch_normalization_10/beta/Initializer/zerosConst*
valueB@*    *0
_class&
$"loc:@G/batch_normalization_10/beta*
dtype0*
_output_shapes
:@
Ä
G/batch_normalization_10/betaVarHandleOp*
shape:@*.
shared_nameG/batch_normalization_10/beta*0
_class&
$"loc:@G/batch_normalization_10/beta*
dtype0*
_output_shapes
: 

>G/batch_normalization_10/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_10/beta*
_output_shapes
: 
Ē
$G/batch_normalization_10/beta/AssignAssignVariableOpG/batch_normalization_10/beta/G/batch_normalization_10/beta/Initializer/zeros*0
_class&
$"loc:@G/batch_normalization_10/beta*
dtype0
½
1G/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_10/beta*0
_class&
$"loc:@G/batch_normalization_10/beta*
dtype0*
_output_shapes
:@
¼
6G/batch_normalization_10/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *7
_class-
+)loc:@G/batch_normalization_10/moving_mean
Ł
$G/batch_normalization_10/moving_meanVarHandleOp*7
_class-
+)loc:@G/batch_normalization_10/moving_mean*
dtype0*
_output_shapes
: *
shape:@*5
shared_name&$G/batch_normalization_10/moving_mean

EG/batch_normalization_10/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp$G/batch_normalization_10/moving_mean*
_output_shapes
: 
ć
+G/batch_normalization_10/moving_mean/AssignAssignVariableOp$G/batch_normalization_10/moving_mean6G/batch_normalization_10/moving_mean/Initializer/zeros*7
_class-
+)loc:@G/batch_normalization_10/moving_mean*
dtype0
Ņ
8G/batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp$G/batch_normalization_10/moving_mean*7
_class-
+)loc:@G/batch_normalization_10/moving_mean*
dtype0*
_output_shapes
:@
Ć
9G/batch_normalization_10/moving_variance/Initializer/onesConst*
valueB@*  ?*;
_class1
/-loc:@G/batch_normalization_10/moving_variance*
dtype0*
_output_shapes
:@
å
(G/batch_normalization_10/moving_varianceVarHandleOp*
shape:@*9
shared_name*(G/batch_normalization_10/moving_variance*;
_class1
/-loc:@G/batch_normalization_10/moving_variance*
dtype0*
_output_shapes
: 
”
IG/batch_normalization_10/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp(G/batch_normalization_10/moving_variance*
_output_shapes
: 
ņ
/G/batch_normalization_10/moving_variance/AssignAssignVariableOp(G/batch_normalization_10/moving_variance9G/batch_normalization_10/moving_variance/Initializer/ones*
dtype0*;
_class1
/-loc:@G/batch_normalization_10/moving_variance
Ž
<G/batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp(G/batch_normalization_10/moving_variance*;
_class1
/-loc:@G/batch_normalization_10/moving_variance*
dtype0*
_output_shapes
:@

7G/batch_normalization_10/moments/mean/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
ø
%G/batch_normalization_10/moments/meanMeanG/conv1d_9/BiasAdd7G/batch_normalization_10/moments/mean/reduction_indices*
	keep_dims(*
T0*"
_output_shapes
:@

-G/batch_normalization_10/moments/StopGradientStopGradient%G/batch_normalization_10/moments/mean*
T0*"
_output_shapes
:@
Ą
2G/batch_normalization_10/moments/SquaredDifferenceSquaredDifferenceG/conv1d_9/BiasAdd-G/batch_normalization_10/moments/StopGradient*
T0*+
_output_shapes
:’’’’’’’’’
@

;G/batch_normalization_10/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB"       
ą
)G/batch_normalization_10/moments/varianceMean2G/batch_normalization_10/moments/SquaredDifference;G/batch_normalization_10/moments/variance/reduction_indices*"
_output_shapes
:@*
	keep_dims(*
T0

(G/batch_normalization_10/moments/SqueezeSqueeze%G/batch_normalization_10/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:@

*G/batch_normalization_10/moments/Squeeze_1Squeeze)G/batch_normalization_10/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:@

$G/batch_normalization_10/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
{
&G/batch_normalization_10/cond/switch_tIdentity&G/batch_normalization_10/cond/Switch:1*
_output_shapes
: *
T0

y
&G/batch_normalization_10/cond/switch_fIdentity$G/batch_normalization_10/cond/Switch*
T0
*
_output_shapes
: 
j
%G/batch_normalization_10/cond/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
é
&G/batch_normalization_10/cond/Switch_1Switch(G/batch_normalization_10/moments/Squeeze%G/batch_normalization_10/cond/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_10/moments/Squeeze* 
_output_shapes
:@:@

,G/batch_normalization_10/cond/ReadVariableOpReadVariableOp3G/batch_normalization_10/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ę
3G/batch_normalization_10/cond/ReadVariableOp/SwitchSwitch$G/batch_normalization_10/moving_mean%G/batch_normalization_10/cond/pred_id*
_output_shapes
: : *
T0*7
_class-
+)loc:@G/batch_normalization_10/moving_mean
“
#G/batch_normalization_10/cond/MergeMerge,G/batch_normalization_10/cond/ReadVariableOp(G/batch_normalization_10/cond/Switch_1:1*
T0*
N*
_output_shapes

:@: 

&G/batch_normalization_10/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0


(G/batch_normalization_10/cond_1/switch_tIdentity(G/batch_normalization_10/cond_1/Switch:1*
T0
*
_output_shapes
: 
}
(G/batch_normalization_10/cond_1/switch_fIdentity&G/batch_normalization_10/cond_1/Switch*
T0
*
_output_shapes
: 
l
'G/batch_normalization_10/cond_1/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
ń
(G/batch_normalization_10/cond_1/Switch_1Switch*G/batch_normalization_10/moments/Squeeze_1'G/batch_normalization_10/cond_1/pred_id*
T0*=
_class3
1/loc:@G/batch_normalization_10/moments/Squeeze_1* 
_output_shapes
:@:@
 
.G/batch_normalization_10/cond_1/ReadVariableOpReadVariableOp5G/batch_normalization_10/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ņ
5G/batch_normalization_10/cond_1/ReadVariableOp/SwitchSwitch(G/batch_normalization_10/moving_variance'G/batch_normalization_10/cond_1/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_10/moving_variance*
_output_shapes
: : 
ŗ
%G/batch_normalization_10/cond_1/MergeMerge.G/batch_normalization_10/cond_1/ReadVariableOp*G/batch_normalization_10/cond_1/Switch_1:1*
T0*
N*
_output_shapes

:@: 

&G/batch_normalization_10/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 

(G/batch_normalization_10/cond_2/switch_tIdentity(G/batch_normalization_10/cond_2/Switch:1*
T0
*
_output_shapes
: 
}
(G/batch_normalization_10/cond_2/switch_fIdentity&G/batch_normalization_10/cond_2/Switch*
T0
*
_output_shapes
: 
l
'G/batch_normalization_10/cond_2/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
„
5G/batch_normalization_10/cond_2/AssignMovingAvg/decayConst)^G/batch_normalization_10/cond_2/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ā
>G/batch_normalization_10/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpGG/batch_normalization_10/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ś
EG/batch_normalization_10/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch$G/batch_normalization_10/moving_mean'G/batch_normalization_10/cond_2/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_10/moving_mean*
_output_shapes
: : 
Ż
3G/batch_normalization_10/cond_2/AssignMovingAvg/subSub>G/batch_normalization_10/cond_2/AssignMovingAvg/ReadVariableOp<G/batch_normalization_10/cond_2/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
õ
:G/batch_normalization_10/cond_2/AssignMovingAvg/sub/SwitchSwitch#G/batch_normalization_10/cond/Merge'G/batch_normalization_10/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_10/cond/Merge* 
_output_shapes
:@:@
Ė
3G/batch_normalization_10/cond_2/AssignMovingAvg/mulMul3G/batch_normalization_10/cond_2/AssignMovingAvg/sub5G/batch_normalization_10/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes
:@
å
CG/batch_normalization_10/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGG/batch_normalization_10/cond_2/AssignMovingAvg/ReadVariableOp/Switch:13G/batch_normalization_10/cond_2/AssignMovingAvg/mul*
dtype0

@G/batch_normalization_10/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGG/batch_normalization_10/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_10/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
ų
.G/batch_normalization_10/cond_2/ReadVariableOpReadVariableOpGG/batch_normalization_10/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_10/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¤
0G/batch_normalization_10/cond_2/ReadVariableOp_1ReadVariableOp7G/batch_normalization_10/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
ģ
7G/batch_normalization_10/cond_2/ReadVariableOp_1/SwitchSwitch$G/batch_normalization_10/moving_mean'G/batch_normalization_10/cond_2/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_10/moving_mean*
_output_shapes
: : 
Ą
%G/batch_normalization_10/cond_2/MergeMerge0G/batch_normalization_10/cond_2/ReadVariableOp_1.G/batch_normalization_10/cond_2/ReadVariableOp*
T0*
N*
_output_shapes

:@: 

&G/batch_normalization_10/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0


(G/batch_normalization_10/cond_3/switch_tIdentity(G/batch_normalization_10/cond_3/Switch:1*
_output_shapes
: *
T0

}
(G/batch_normalization_10/cond_3/switch_fIdentity&G/batch_normalization_10/cond_3/Switch*
T0
*
_output_shapes
: 
l
'G/batch_normalization_10/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
„
5G/batch_normalization_10/cond_3/AssignMovingAvg/decayConst)^G/batch_normalization_10/cond_3/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ā
>G/batch_normalization_10/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpGG/batch_normalization_10/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@

EG/batch_normalization_10/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch(G/batch_normalization_10/moving_variance'G/batch_normalization_10/cond_3/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_10/moving_variance*
_output_shapes
: : 
Ż
3G/batch_normalization_10/cond_3/AssignMovingAvg/subSub>G/batch_normalization_10/cond_3/AssignMovingAvg/ReadVariableOp<G/batch_normalization_10/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
ł
:G/batch_normalization_10/cond_3/AssignMovingAvg/sub/SwitchSwitch%G/batch_normalization_10/cond_1/Merge'G/batch_normalization_10/cond_3/pred_id*
T0*8
_class.
,*loc:@G/batch_normalization_10/cond_1/Merge* 
_output_shapes
:@:@
Ė
3G/batch_normalization_10/cond_3/AssignMovingAvg/mulMul3G/batch_normalization_10/cond_3/AssignMovingAvg/sub5G/batch_normalization_10/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes
:@
å
CG/batch_normalization_10/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGG/batch_normalization_10/cond_3/AssignMovingAvg/ReadVariableOp/Switch:13G/batch_normalization_10/cond_3/AssignMovingAvg/mul*
dtype0

@G/batch_normalization_10/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGG/batch_normalization_10/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_10/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
ų
.G/batch_normalization_10/cond_3/ReadVariableOpReadVariableOpGG/batch_normalization_10/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_10/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¤
0G/batch_normalization_10/cond_3/ReadVariableOp_1ReadVariableOp7G/batch_normalization_10/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
ō
7G/batch_normalization_10/cond_3/ReadVariableOp_1/SwitchSwitch(G/batch_normalization_10/moving_variance'G/batch_normalization_10/cond_3/pred_id*
_output_shapes
: : *
T0*;
_class1
/-loc:@G/batch_normalization_10/moving_variance
Ą
%G/batch_normalization_10/cond_3/MergeMerge0G/batch_normalization_10/cond_3/ReadVariableOp_1.G/batch_normalization_10/cond_3/ReadVariableOp*
N*
_output_shapes

:@: *
T0
m
(G/batch_normalization_10/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o:
£
&G/batch_normalization_10/batchnorm/addAdd%G/batch_normalization_10/cond_1/Merge(G/batch_normalization_10/batchnorm/add/y*
T0*
_output_shapes
:@
~
(G/batch_normalization_10/batchnorm/RsqrtRsqrt&G/batch_normalization_10/batchnorm/add*
T0*
_output_shapes
:@

5G/batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization_10/gamma*
dtype0*
_output_shapes
:@
³
&G/batch_normalization_10/batchnorm/mulMul(G/batch_normalization_10/batchnorm/Rsqrt5G/batch_normalization_10/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:@
”
(G/batch_normalization_10/batchnorm/mul_1MulG/conv1d_9/BiasAdd&G/batch_normalization_10/batchnorm/mul*
T0*+
_output_shapes
:’’’’’’’’’
@
”
(G/batch_normalization_10/batchnorm/mul_2Mul#G/batch_normalization_10/cond/Merge&G/batch_normalization_10/batchnorm/mul*
_output_shapes
:@*
T0

1G/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization_10/beta*
dtype0*
_output_shapes
:@
Æ
&G/batch_normalization_10/batchnorm/subSub1G/batch_normalization_10/batchnorm/ReadVariableOp(G/batch_normalization_10/batchnorm/mul_2*
_output_shapes
:@*
T0
·
(G/batch_normalization_10/batchnorm/add_1Add(G/batch_normalization_10/batchnorm/mul_1&G/batch_normalization_10/batchnorm/sub*+
_output_shapes
:’’’’’’’’’
@*
T0
q
	G/Relu_10Relu(G/batch_normalization_10/batchnorm/add_1*+
_output_shapes
:’’’’’’’’’
@*
T0
Æ
3G/conv1d_10/kernel/Initializer/random_uniform/shapeConst*!
valueB"   @   @   *%
_class
loc:@G/conv1d_10/kernel*
dtype0*
_output_shapes
:

1G/conv1d_10/kernel/Initializer/random_uniform/minConst*
valueB
 *ųKĘ½*%
_class
loc:@G/conv1d_10/kernel*
dtype0*
_output_shapes
: 

1G/conv1d_10/kernel/Initializer/random_uniform/maxConst*
valueB
 *ųKĘ=*%
_class
loc:@G/conv1d_10/kernel*
dtype0*
_output_shapes
: 
ā
;G/conv1d_10/kernel/Initializer/random_uniform/RandomUniformRandomUniform3G/conv1d_10/kernel/Initializer/random_uniform/shape*
dtype0*"
_output_shapes
:@@*
T0*%
_class
loc:@G/conv1d_10/kernel
ę
1G/conv1d_10/kernel/Initializer/random_uniform/subSub1G/conv1d_10/kernel/Initializer/random_uniform/max1G/conv1d_10/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@G/conv1d_10/kernel
ü
1G/conv1d_10/kernel/Initializer/random_uniform/mulMul;G/conv1d_10/kernel/Initializer/random_uniform/RandomUniform1G/conv1d_10/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@G/conv1d_10/kernel*"
_output_shapes
:@@
ī
-G/conv1d_10/kernel/Initializer/random_uniformAdd1G/conv1d_10/kernel/Initializer/random_uniform/mul1G/conv1d_10/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@G/conv1d_10/kernel*"
_output_shapes
:@@
«
G/conv1d_10/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape:@@*#
shared_nameG/conv1d_10/kernel*%
_class
loc:@G/conv1d_10/kernel
u
3G/conv1d_10/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_10/kernel*
_output_shapes
: 
¤
G/conv1d_10/kernel/AssignAssignVariableOpG/conv1d_10/kernel-G/conv1d_10/kernel/Initializer/random_uniform*
dtype0*%
_class
loc:@G/conv1d_10/kernel
¤
&G/conv1d_10/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_10/kernel*
dtype0*"
_output_shapes
:@@*%
_class
loc:@G/conv1d_10/kernel

"G/conv1d_10/bias/Initializer/zerosConst*
valueB@*    *#
_class
loc:@G/conv1d_10/bias*
dtype0*
_output_shapes
:@

G/conv1d_10/biasVarHandleOp*#
_class
loc:@G/conv1d_10/bias*
dtype0*
_output_shapes
: *
shape:@*!
shared_nameG/conv1d_10/bias
q
1G/conv1d_10/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_10/bias*
_output_shapes
: 

G/conv1d_10/bias/AssignAssignVariableOpG/conv1d_10/bias"G/conv1d_10/bias/Initializer/zeros*#
_class
loc:@G/conv1d_10/bias*
dtype0

$G/conv1d_10/bias/Read/ReadVariableOpReadVariableOpG/conv1d_10/bias*
dtype0*
_output_shapes
:@*#
_class
loc:@G/conv1d_10/bias
c
G/conv1d_10/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
c
!G/conv1d_10/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv1d_10/conv1d/ExpandDims
ExpandDims	G/Relu_10!G/conv1d_10/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’
@

.G/conv1d_10/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_10/kernel*
dtype0*"
_output_shapes
:@@
e
#G/conv1d_10/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
³
G/conv1d_10/conv1d/ExpandDims_1
ExpandDims.G/conv1d_10/conv1d/ExpandDims_1/ReadVariableOp#G/conv1d_10/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:@@
Å
G/conv1d_10/conv1d/Conv2DConv2DG/conv1d_10/conv1d/ExpandDimsG/conv1d_10/conv1d/ExpandDims_1*
paddingSAME*
T0*
strides
*/
_output_shapes
:’’’’’’’’’
@

G/conv1d_10/conv1d/SqueezeSqueezeG/conv1d_10/conv1d/Conv2D*
squeeze_dims
*
T0*+
_output_shapes
:’’’’’’’’’
@
o
"G/conv1d_10/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_10/bias*
dtype0*
_output_shapes
:@

G/conv1d_10/BiasAddBiasAddG/conv1d_10/conv1d/Squeeze"G/conv1d_10/BiasAdd/ReadVariableOp*
T0*+
_output_shapes
:’’’’’’’’’
@
Æ
/G/batch_normalization_11/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:@*
valueB@*  ?*1
_class'
%#loc:@G/batch_normalization_11/gamma
Ē
G/batch_normalization_11/gammaVarHandleOp*
shape:@*/
shared_name G/batch_normalization_11/gamma*1
_class'
%#loc:@G/batch_normalization_11/gamma*
dtype0*
_output_shapes
: 

?G/batch_normalization_11/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_11/gamma*
_output_shapes
: 
Ź
%G/batch_normalization_11/gamma/AssignAssignVariableOpG/batch_normalization_11/gamma/G/batch_normalization_11/gamma/Initializer/ones*1
_class'
%#loc:@G/batch_normalization_11/gamma*
dtype0
Ą
2G/batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_11/gamma*
dtype0*
_output_shapes
:@*1
_class'
%#loc:@G/batch_normalization_11/gamma
®
/G/batch_normalization_11/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *0
_class&
$"loc:@G/batch_normalization_11/beta
Ä
G/batch_normalization_11/betaVarHandleOp*0
_class&
$"loc:@G/batch_normalization_11/beta*
dtype0*
_output_shapes
: *
shape:@*.
shared_nameG/batch_normalization_11/beta

>G/batch_normalization_11/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_11/beta*
_output_shapes
: 
Ē
$G/batch_normalization_11/beta/AssignAssignVariableOpG/batch_normalization_11/beta/G/batch_normalization_11/beta/Initializer/zeros*
dtype0*0
_class&
$"loc:@G/batch_normalization_11/beta
½
1G/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_11/beta*0
_class&
$"loc:@G/batch_normalization_11/beta*
dtype0*
_output_shapes
:@
¼
6G/batch_normalization_11/moving_mean/Initializer/zerosConst*
valueB@*    *7
_class-
+)loc:@G/batch_normalization_11/moving_mean*
dtype0*
_output_shapes
:@
Ł
$G/batch_normalization_11/moving_meanVarHandleOp*5
shared_name&$G/batch_normalization_11/moving_mean*7
_class-
+)loc:@G/batch_normalization_11/moving_mean*
dtype0*
_output_shapes
: *
shape:@

EG/batch_normalization_11/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp$G/batch_normalization_11/moving_mean*
_output_shapes
: 
ć
+G/batch_normalization_11/moving_mean/AssignAssignVariableOp$G/batch_normalization_11/moving_mean6G/batch_normalization_11/moving_mean/Initializer/zeros*
dtype0*7
_class-
+)loc:@G/batch_normalization_11/moving_mean
Ņ
8G/batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp$G/batch_normalization_11/moving_mean*7
_class-
+)loc:@G/batch_normalization_11/moving_mean*
dtype0*
_output_shapes
:@
Ć
9G/batch_normalization_11/moving_variance/Initializer/onesConst*
valueB@*  ?*;
_class1
/-loc:@G/batch_normalization_11/moving_variance*
dtype0*
_output_shapes
:@
å
(G/batch_normalization_11/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*9
shared_name*(G/batch_normalization_11/moving_variance*;
_class1
/-loc:@G/batch_normalization_11/moving_variance
”
IG/batch_normalization_11/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp(G/batch_normalization_11/moving_variance*
_output_shapes
: 
ņ
/G/batch_normalization_11/moving_variance/AssignAssignVariableOp(G/batch_normalization_11/moving_variance9G/batch_normalization_11/moving_variance/Initializer/ones*;
_class1
/-loc:@G/batch_normalization_11/moving_variance*
dtype0
Ž
<G/batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp(G/batch_normalization_11/moving_variance*;
_class1
/-loc:@G/batch_normalization_11/moving_variance*
dtype0*
_output_shapes
:@

7G/batch_normalization_11/moments/mean/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
¹
%G/batch_normalization_11/moments/meanMeanG/conv1d_10/BiasAdd7G/batch_normalization_11/moments/mean/reduction_indices*
	keep_dims(*
T0*"
_output_shapes
:@

-G/batch_normalization_11/moments/StopGradientStopGradient%G/batch_normalization_11/moments/mean*
T0*"
_output_shapes
:@
Į
2G/batch_normalization_11/moments/SquaredDifferenceSquaredDifferenceG/conv1d_10/BiasAdd-G/batch_normalization_11/moments/StopGradient*+
_output_shapes
:’’’’’’’’’
@*
T0

;G/batch_normalization_11/moments/variance/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
ą
)G/batch_normalization_11/moments/varianceMean2G/batch_normalization_11/moments/SquaredDifference;G/batch_normalization_11/moments/variance/reduction_indices*
T0*"
_output_shapes
:@*
	keep_dims(

(G/batch_normalization_11/moments/SqueezeSqueeze%G/batch_normalization_11/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:@

*G/batch_normalization_11/moments/Squeeze_1Squeeze)G/batch_normalization_11/moments/variance*
_output_shapes
:@*
squeeze_dims
 *
T0

$G/batch_normalization_11/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
{
&G/batch_normalization_11/cond/switch_tIdentity&G/batch_normalization_11/cond/Switch:1*
T0
*
_output_shapes
: 
y
&G/batch_normalization_11/cond/switch_fIdentity$G/batch_normalization_11/cond/Switch*
T0
*
_output_shapes
: 
j
%G/batch_normalization_11/cond/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
é
&G/batch_normalization_11/cond/Switch_1Switch(G/batch_normalization_11/moments/Squeeze%G/batch_normalization_11/cond/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_11/moments/Squeeze* 
_output_shapes
:@:@

,G/batch_normalization_11/cond/ReadVariableOpReadVariableOp3G/batch_normalization_11/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ę
3G/batch_normalization_11/cond/ReadVariableOp/SwitchSwitch$G/batch_normalization_11/moving_mean%G/batch_normalization_11/cond/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_11/moving_mean*
_output_shapes
: : 
“
#G/batch_normalization_11/cond/MergeMerge,G/batch_normalization_11/cond/ReadVariableOp(G/batch_normalization_11/cond/Switch_1:1*
T0*
N*
_output_shapes

:@: 

&G/batch_normalization_11/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 

(G/batch_normalization_11/cond_1/switch_tIdentity(G/batch_normalization_11/cond_1/Switch:1*
T0
*
_output_shapes
: 
}
(G/batch_normalization_11/cond_1/switch_fIdentity&G/batch_normalization_11/cond_1/Switch*
T0
*
_output_shapes
: 
l
'G/batch_normalization_11/cond_1/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
ń
(G/batch_normalization_11/cond_1/Switch_1Switch*G/batch_normalization_11/moments/Squeeze_1'G/batch_normalization_11/cond_1/pred_id*
T0*=
_class3
1/loc:@G/batch_normalization_11/moments/Squeeze_1* 
_output_shapes
:@:@
 
.G/batch_normalization_11/cond_1/ReadVariableOpReadVariableOp5G/batch_normalization_11/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ņ
5G/batch_normalization_11/cond_1/ReadVariableOp/SwitchSwitch(G/batch_normalization_11/moving_variance'G/batch_normalization_11/cond_1/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_11/moving_variance*
_output_shapes
: : 
ŗ
%G/batch_normalization_11/cond_1/MergeMerge.G/batch_normalization_11/cond_1/ReadVariableOp*G/batch_normalization_11/cond_1/Switch_1:1*
T0*
N*
_output_shapes

:@: 

&G/batch_normalization_11/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 

(G/batch_normalization_11/cond_2/switch_tIdentity(G/batch_normalization_11/cond_2/Switch:1*
T0
*
_output_shapes
: 
}
(G/batch_normalization_11/cond_2/switch_fIdentity&G/batch_normalization_11/cond_2/Switch*
T0
*
_output_shapes
: 
l
'G/batch_normalization_11/cond_2/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
„
5G/batch_normalization_11/cond_2/AssignMovingAvg/decayConst)^G/batch_normalization_11/cond_2/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ā
>G/batch_normalization_11/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpGG/batch_normalization_11/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ś
EG/batch_normalization_11/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch$G/batch_normalization_11/moving_mean'G/batch_normalization_11/cond_2/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_11/moving_mean*
_output_shapes
: : 
Ż
3G/batch_normalization_11/cond_2/AssignMovingAvg/subSub>G/batch_normalization_11/cond_2/AssignMovingAvg/ReadVariableOp<G/batch_normalization_11/cond_2/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
õ
:G/batch_normalization_11/cond_2/AssignMovingAvg/sub/SwitchSwitch#G/batch_normalization_11/cond/Merge'G/batch_normalization_11/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_11/cond/Merge* 
_output_shapes
:@:@
Ė
3G/batch_normalization_11/cond_2/AssignMovingAvg/mulMul3G/batch_normalization_11/cond_2/AssignMovingAvg/sub5G/batch_normalization_11/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes
:@
å
CG/batch_normalization_11/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGG/batch_normalization_11/cond_2/AssignMovingAvg/ReadVariableOp/Switch:13G/batch_normalization_11/cond_2/AssignMovingAvg/mul*
dtype0

@G/batch_normalization_11/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGG/batch_normalization_11/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_11/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
ų
.G/batch_normalization_11/cond_2/ReadVariableOpReadVariableOpGG/batch_normalization_11/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_11/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¤
0G/batch_normalization_11/cond_2/ReadVariableOp_1ReadVariableOp7G/batch_normalization_11/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
ģ
7G/batch_normalization_11/cond_2/ReadVariableOp_1/SwitchSwitch$G/batch_normalization_11/moving_mean'G/batch_normalization_11/cond_2/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_11/moving_mean*
_output_shapes
: : 
Ą
%G/batch_normalization_11/cond_2/MergeMerge0G/batch_normalization_11/cond_2/ReadVariableOp_1.G/batch_normalization_11/cond_2/ReadVariableOp*
T0*
N*
_output_shapes

:@: 

&G/batch_normalization_11/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0


(G/batch_normalization_11/cond_3/switch_tIdentity(G/batch_normalization_11/cond_3/Switch:1*
_output_shapes
: *
T0

}
(G/batch_normalization_11/cond_3/switch_fIdentity&G/batch_normalization_11/cond_3/Switch*
_output_shapes
: *
T0

l
'G/batch_normalization_11/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
„
5G/batch_normalization_11/cond_3/AssignMovingAvg/decayConst)^G/batch_normalization_11/cond_3/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ā
>G/batch_normalization_11/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpGG/batch_normalization_11/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@

EG/batch_normalization_11/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch(G/batch_normalization_11/moving_variance'G/batch_normalization_11/cond_3/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_11/moving_variance*
_output_shapes
: : 
Ż
3G/batch_normalization_11/cond_3/AssignMovingAvg/subSub>G/batch_normalization_11/cond_3/AssignMovingAvg/ReadVariableOp<G/batch_normalization_11/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
ł
:G/batch_normalization_11/cond_3/AssignMovingAvg/sub/SwitchSwitch%G/batch_normalization_11/cond_1/Merge'G/batch_normalization_11/cond_3/pred_id*
T0*8
_class.
,*loc:@G/batch_normalization_11/cond_1/Merge* 
_output_shapes
:@:@
Ė
3G/batch_normalization_11/cond_3/AssignMovingAvg/mulMul3G/batch_normalization_11/cond_3/AssignMovingAvg/sub5G/batch_normalization_11/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes
:@
å
CG/batch_normalization_11/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGG/batch_normalization_11/cond_3/AssignMovingAvg/ReadVariableOp/Switch:13G/batch_normalization_11/cond_3/AssignMovingAvg/mul*
dtype0

@G/batch_normalization_11/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGG/batch_normalization_11/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_11/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
ų
.G/batch_normalization_11/cond_3/ReadVariableOpReadVariableOpGG/batch_normalization_11/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_11/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¤
0G/batch_normalization_11/cond_3/ReadVariableOp_1ReadVariableOp7G/batch_normalization_11/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
ō
7G/batch_normalization_11/cond_3/ReadVariableOp_1/SwitchSwitch(G/batch_normalization_11/moving_variance'G/batch_normalization_11/cond_3/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_11/moving_variance*
_output_shapes
: : 
Ą
%G/batch_normalization_11/cond_3/MergeMerge0G/batch_normalization_11/cond_3/ReadVariableOp_1.G/batch_normalization_11/cond_3/ReadVariableOp*
T0*
N*
_output_shapes

:@: 
m
(G/batch_normalization_11/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
£
&G/batch_normalization_11/batchnorm/addAdd%G/batch_normalization_11/cond_1/Merge(G/batch_normalization_11/batchnorm/add/y*
T0*
_output_shapes
:@
~
(G/batch_normalization_11/batchnorm/RsqrtRsqrt&G/batch_normalization_11/batchnorm/add*
T0*
_output_shapes
:@

5G/batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization_11/gamma*
dtype0*
_output_shapes
:@
³
&G/batch_normalization_11/batchnorm/mulMul(G/batch_normalization_11/batchnorm/Rsqrt5G/batch_normalization_11/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:@
¢
(G/batch_normalization_11/batchnorm/mul_1MulG/conv1d_10/BiasAdd&G/batch_normalization_11/batchnorm/mul*
T0*+
_output_shapes
:’’’’’’’’’
@
”
(G/batch_normalization_11/batchnorm/mul_2Mul#G/batch_normalization_11/cond/Merge&G/batch_normalization_11/batchnorm/mul*
T0*
_output_shapes
:@

1G/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization_11/beta*
dtype0*
_output_shapes
:@
Æ
&G/batch_normalization_11/batchnorm/subSub1G/batch_normalization_11/batchnorm/ReadVariableOp(G/batch_normalization_11/batchnorm/mul_2*
T0*
_output_shapes
:@
·
(G/batch_normalization_11/batchnorm/add_1Add(G/batch_normalization_11/batchnorm/mul_1&G/batch_normalization_11/batchnorm/sub*
T0*+
_output_shapes
:’’’’’’’’’
@
q
	G/Relu_11Relu(G/batch_normalization_11/batchnorm/add_1*
T0*+
_output_shapes
:’’’’’’’’’
@
Æ
3G/conv1d_11/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*!
valueB"   @      *%
_class
loc:@G/conv1d_11/kernel

1G/conv1d_11/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ó5¾*%
_class
loc:@G/conv1d_11/kernel

1G/conv1d_11/kernel/Initializer/random_uniform/maxConst*
valueB
 *ó5>*%
_class
loc:@G/conv1d_11/kernel*
dtype0*
_output_shapes
: 
ć
;G/conv1d_11/kernel/Initializer/random_uniform/RandomUniformRandomUniform3G/conv1d_11/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@G/conv1d_11/kernel*
dtype0*#
_output_shapes
:@
ę
1G/conv1d_11/kernel/Initializer/random_uniform/subSub1G/conv1d_11/kernel/Initializer/random_uniform/max1G/conv1d_11/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@G/conv1d_11/kernel*
_output_shapes
: 
ż
1G/conv1d_11/kernel/Initializer/random_uniform/mulMul;G/conv1d_11/kernel/Initializer/random_uniform/RandomUniform1G/conv1d_11/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@G/conv1d_11/kernel*#
_output_shapes
:@
ļ
-G/conv1d_11/kernel/Initializer/random_uniformAdd1G/conv1d_11/kernel/Initializer/random_uniform/mul1G/conv1d_11/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@G/conv1d_11/kernel*#
_output_shapes
:@
¬
G/conv1d_11/kernelVarHandleOp*%
_class
loc:@G/conv1d_11/kernel*
dtype0*
_output_shapes
: *
shape:@*#
shared_nameG/conv1d_11/kernel
u
3G/conv1d_11/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_11/kernel*
_output_shapes
: 
¤
G/conv1d_11/kernel/AssignAssignVariableOpG/conv1d_11/kernel-G/conv1d_11/kernel/Initializer/random_uniform*%
_class
loc:@G/conv1d_11/kernel*
dtype0
„
&G/conv1d_11/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_11/kernel*%
_class
loc:@G/conv1d_11/kernel*
dtype0*#
_output_shapes
:@

"G/conv1d_11/bias/Initializer/zerosConst*
valueB*    *#
_class
loc:@G/conv1d_11/bias*
dtype0*
_output_shapes	
:

G/conv1d_11/biasVarHandleOp*!
shared_nameG/conv1d_11/bias*#
_class
loc:@G/conv1d_11/bias*
dtype0*
_output_shapes
: *
shape:
q
1G/conv1d_11/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_11/bias*
_output_shapes
: 

G/conv1d_11/bias/AssignAssignVariableOpG/conv1d_11/bias"G/conv1d_11/bias/Initializer/zeros*
dtype0*#
_class
loc:@G/conv1d_11/bias

$G/conv1d_11/bias/Read/ReadVariableOpReadVariableOpG/conv1d_11/bias*#
_class
loc:@G/conv1d_11/bias*
dtype0*
_output_shapes	
:
c
G/conv1d_11/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
c
!G/conv1d_11/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv1d_11/conv1d/ExpandDims
ExpandDims	G/Relu_11!G/conv1d_11/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’
@

.G/conv1d_11/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_11/kernel*
dtype0*#
_output_shapes
:@
e
#G/conv1d_11/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
“
G/conv1d_11/conv1d/ExpandDims_1
ExpandDims.G/conv1d_11/conv1d/ExpandDims_1/ReadVariableOp#G/conv1d_11/conv1d/ExpandDims_1/dim*
T0*'
_output_shapes
:@
Ę
G/conv1d_11/conv1d/Conv2DConv2DG/conv1d_11/conv1d/ExpandDimsG/conv1d_11/conv1d/ExpandDims_1*
strides
*0
_output_shapes
:’’’’’’’’’
*
paddingSAME*
T0

G/conv1d_11/conv1d/SqueezeSqueezeG/conv1d_11/conv1d/Conv2D*
squeeze_dims
*
T0*,
_output_shapes
:’’’’’’’’’

p
"G/conv1d_11/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_11/bias*
dtype0*
_output_shapes	
:

G/conv1d_11/BiasAddBiasAddG/conv1d_11/conv1d/Squeeze"G/conv1d_11/BiasAdd/ReadVariableOp*
T0*,
_output_shapes
:’’’’’’’’’

N
	G/mul_3/xConst*
valueB
 *>*
dtype0*
_output_shapes
: 
e
G/mul_3Mul	G/mul_3/xG/conv1d_11/BiasAdd*
T0*,
_output_shapes
:’’’’’’’’’

W
G/add_3AddG/add_2G/mul_3*
T0*,
_output_shapes
:’’’’’’’’’

±
/G/batch_normalization_12/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*1
_class'
%#loc:@G/batch_normalization_12/gamma
Č
G/batch_normalization_12/gammaVarHandleOp*/
shared_name G/batch_normalization_12/gamma*1
_class'
%#loc:@G/batch_normalization_12/gamma*
dtype0*
_output_shapes
: *
shape:

?G/batch_normalization_12/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_12/gamma*
_output_shapes
: 
Ź
%G/batch_normalization_12/gamma/AssignAssignVariableOpG/batch_normalization_12/gamma/G/batch_normalization_12/gamma/Initializer/ones*1
_class'
%#loc:@G/batch_normalization_12/gamma*
dtype0
Į
2G/batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_12/gamma*
dtype0*
_output_shapes	
:*1
_class'
%#loc:@G/batch_normalization_12/gamma
°
/G/batch_normalization_12/beta/Initializer/zerosConst*
valueB*    *0
_class&
$"loc:@G/batch_normalization_12/beta*
dtype0*
_output_shapes	
:
Å
G/batch_normalization_12/betaVarHandleOp*
dtype0*
_output_shapes
: *
shape:*.
shared_nameG/batch_normalization_12/beta*0
_class&
$"loc:@G/batch_normalization_12/beta

>G/batch_normalization_12/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_12/beta*
_output_shapes
: 
Ē
$G/batch_normalization_12/beta/AssignAssignVariableOpG/batch_normalization_12/beta/G/batch_normalization_12/beta/Initializer/zeros*0
_class&
$"loc:@G/batch_normalization_12/beta*
dtype0
¾
1G/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_12/beta*0
_class&
$"loc:@G/batch_normalization_12/beta*
dtype0*
_output_shapes	
:
¾
6G/batch_normalization_12/moving_mean/Initializer/zerosConst*
valueB*    *7
_class-
+)loc:@G/batch_normalization_12/moving_mean*
dtype0*
_output_shapes	
:
Ś
$G/batch_normalization_12/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *
shape:*5
shared_name&$G/batch_normalization_12/moving_mean*7
_class-
+)loc:@G/batch_normalization_12/moving_mean

EG/batch_normalization_12/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp$G/batch_normalization_12/moving_mean*
_output_shapes
: 
ć
+G/batch_normalization_12/moving_mean/AssignAssignVariableOp$G/batch_normalization_12/moving_mean6G/batch_normalization_12/moving_mean/Initializer/zeros*7
_class-
+)loc:@G/batch_normalization_12/moving_mean*
dtype0
Ó
8G/batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp$G/batch_normalization_12/moving_mean*7
_class-
+)loc:@G/batch_normalization_12/moving_mean*
dtype0*
_output_shapes	
:
Å
9G/batch_normalization_12/moving_variance/Initializer/onesConst*
valueB*  ?*;
_class1
/-loc:@G/batch_normalization_12/moving_variance*
dtype0*
_output_shapes	
:
ę
(G/batch_normalization_12/moving_varianceVarHandleOp*;
_class1
/-loc:@G/batch_normalization_12/moving_variance*
dtype0*
_output_shapes
: *
shape:*9
shared_name*(G/batch_normalization_12/moving_variance
”
IG/batch_normalization_12/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp(G/batch_normalization_12/moving_variance*
_output_shapes
: 
ņ
/G/batch_normalization_12/moving_variance/AssignAssignVariableOp(G/batch_normalization_12/moving_variance9G/batch_normalization_12/moving_variance/Initializer/ones*
dtype0*;
_class1
/-loc:@G/batch_normalization_12/moving_variance
ß
<G/batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp(G/batch_normalization_12/moving_variance*;
_class1
/-loc:@G/batch_normalization_12/moving_variance*
dtype0*
_output_shapes	
:

7G/batch_normalization_12/moments/mean/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
®
%G/batch_normalization_12/moments/meanMeanG/add_37G/batch_normalization_12/moments/mean/reduction_indices*
	keep_dims(*
T0*#
_output_shapes
:

-G/batch_normalization_12/moments/StopGradientStopGradient%G/batch_normalization_12/moments/mean*
T0*#
_output_shapes
:
¶
2G/batch_normalization_12/moments/SquaredDifferenceSquaredDifferenceG/add_3-G/batch_normalization_12/moments/StopGradient*,
_output_shapes
:’’’’’’’’’
*
T0

;G/batch_normalization_12/moments/variance/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
į
)G/batch_normalization_12/moments/varianceMean2G/batch_normalization_12/moments/SquaredDifference;G/batch_normalization_12/moments/variance/reduction_indices*
	keep_dims(*
T0*#
_output_shapes
:

(G/batch_normalization_12/moments/SqueezeSqueeze%G/batch_normalization_12/moments/mean*
squeeze_dims
 *
T0*
_output_shapes	
:

*G/batch_normalization_12/moments/Squeeze_1Squeeze)G/batch_normalization_12/moments/variance*
squeeze_dims
 *
T0*
_output_shapes	
:

$G/batch_normalization_12/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
{
&G/batch_normalization_12/cond/switch_tIdentity&G/batch_normalization_12/cond/Switch:1*
_output_shapes
: *
T0

y
&G/batch_normalization_12/cond/switch_fIdentity$G/batch_normalization_12/cond/Switch*
T0
*
_output_shapes
: 
j
%G/batch_normalization_12/cond/pred_idIdentityPlaceholderWithDefault*
_output_shapes
: *
T0

ė
&G/batch_normalization_12/cond/Switch_1Switch(G/batch_normalization_12/moments/Squeeze%G/batch_normalization_12/cond/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_12/moments/Squeeze*"
_output_shapes
::

,G/batch_normalization_12/cond/ReadVariableOpReadVariableOp3G/batch_normalization_12/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:
ę
3G/batch_normalization_12/cond/ReadVariableOp/SwitchSwitch$G/batch_normalization_12/moving_mean%G/batch_normalization_12/cond/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_12/moving_mean*
_output_shapes
: : 
µ
#G/batch_normalization_12/cond/MergeMerge,G/batch_normalization_12/cond/ReadVariableOp(G/batch_normalization_12/cond/Switch_1:1*
N*
_output_shapes
	:: *
T0

&G/batch_normalization_12/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0


(G/batch_normalization_12/cond_1/switch_tIdentity(G/batch_normalization_12/cond_1/Switch:1*
T0
*
_output_shapes
: 
}
(G/batch_normalization_12/cond_1/switch_fIdentity&G/batch_normalization_12/cond_1/Switch*
T0
*
_output_shapes
: 
l
'G/batch_normalization_12/cond_1/pred_idIdentityPlaceholderWithDefault*
_output_shapes
: *
T0

ó
(G/batch_normalization_12/cond_1/Switch_1Switch*G/batch_normalization_12/moments/Squeeze_1'G/batch_normalization_12/cond_1/pred_id*"
_output_shapes
::*
T0*=
_class3
1/loc:@G/batch_normalization_12/moments/Squeeze_1
”
.G/batch_normalization_12/cond_1/ReadVariableOpReadVariableOp5G/batch_normalization_12/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:
ņ
5G/batch_normalization_12/cond_1/ReadVariableOp/SwitchSwitch(G/batch_normalization_12/moving_variance'G/batch_normalization_12/cond_1/pred_id*
_output_shapes
: : *
T0*;
_class1
/-loc:@G/batch_normalization_12/moving_variance
»
%G/batch_normalization_12/cond_1/MergeMerge.G/batch_normalization_12/cond_1/ReadVariableOp*G/batch_normalization_12/cond_1/Switch_1:1*
T0*
N*
_output_shapes
	:: 

&G/batch_normalization_12/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 

(G/batch_normalization_12/cond_2/switch_tIdentity(G/batch_normalization_12/cond_2/Switch:1*
_output_shapes
: *
T0

}
(G/batch_normalization_12/cond_2/switch_fIdentity&G/batch_normalization_12/cond_2/Switch*
T0
*
_output_shapes
: 
l
'G/batch_normalization_12/cond_2/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
„
5G/batch_normalization_12/cond_2/AssignMovingAvg/decayConst)^G/batch_normalization_12/cond_2/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ć
>G/batch_normalization_12/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpGG/batch_normalization_12/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:
ś
EG/batch_normalization_12/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch$G/batch_normalization_12/moving_mean'G/batch_normalization_12/cond_2/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_12/moving_mean*
_output_shapes
: : 
Ž
3G/batch_normalization_12/cond_2/AssignMovingAvg/subSub>G/batch_normalization_12/cond_2/AssignMovingAvg/ReadVariableOp<G/batch_normalization_12/cond_2/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes	
:
÷
:G/batch_normalization_12/cond_2/AssignMovingAvg/sub/SwitchSwitch#G/batch_normalization_12/cond/Merge'G/batch_normalization_12/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_12/cond/Merge*"
_output_shapes
::
Ģ
3G/batch_normalization_12/cond_2/AssignMovingAvg/mulMul3G/batch_normalization_12/cond_2/AssignMovingAvg/sub5G/batch_normalization_12/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes	
:
å
CG/batch_normalization_12/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGG/batch_normalization_12/cond_2/AssignMovingAvg/ReadVariableOp/Switch:13G/batch_normalization_12/cond_2/AssignMovingAvg/mul*
dtype0

@G/batch_normalization_12/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGG/batch_normalization_12/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_12/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
ł
.G/batch_normalization_12/cond_2/ReadVariableOpReadVariableOpGG/batch_normalization_12/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_12/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
„
0G/batch_normalization_12/cond_2/ReadVariableOp_1ReadVariableOp7G/batch_normalization_12/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:
ģ
7G/batch_normalization_12/cond_2/ReadVariableOp_1/SwitchSwitch$G/batch_normalization_12/moving_mean'G/batch_normalization_12/cond_2/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_12/moving_mean*
_output_shapes
: : 
Į
%G/batch_normalization_12/cond_2/MergeMerge0G/batch_normalization_12/cond_2/ReadVariableOp_1.G/batch_normalization_12/cond_2/ReadVariableOp*
T0*
N*
_output_shapes
	:: 

&G/batch_normalization_12/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 

(G/batch_normalization_12/cond_3/switch_tIdentity(G/batch_normalization_12/cond_3/Switch:1*
T0
*
_output_shapes
: 
}
(G/batch_normalization_12/cond_3/switch_fIdentity&G/batch_normalization_12/cond_3/Switch*
T0
*
_output_shapes
: 
l
'G/batch_normalization_12/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
„
5G/batch_normalization_12/cond_3/AssignMovingAvg/decayConst)^G/batch_normalization_12/cond_3/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ć
>G/batch_normalization_12/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpGG/batch_normalization_12/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:

EG/batch_normalization_12/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch(G/batch_normalization_12/moving_variance'G/batch_normalization_12/cond_3/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_12/moving_variance*
_output_shapes
: : 
Ž
3G/batch_normalization_12/cond_3/AssignMovingAvg/subSub>G/batch_normalization_12/cond_3/AssignMovingAvg/ReadVariableOp<G/batch_normalization_12/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes	
:
ū
:G/batch_normalization_12/cond_3/AssignMovingAvg/sub/SwitchSwitch%G/batch_normalization_12/cond_1/Merge'G/batch_normalization_12/cond_3/pred_id*
T0*8
_class.
,*loc:@G/batch_normalization_12/cond_1/Merge*"
_output_shapes
::
Ģ
3G/batch_normalization_12/cond_3/AssignMovingAvg/mulMul3G/batch_normalization_12/cond_3/AssignMovingAvg/sub5G/batch_normalization_12/cond_3/AssignMovingAvg/decay*
_output_shapes	
:*
T0
å
CG/batch_normalization_12/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGG/batch_normalization_12/cond_3/AssignMovingAvg/ReadVariableOp/Switch:13G/batch_normalization_12/cond_3/AssignMovingAvg/mul*
dtype0

@G/batch_normalization_12/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGG/batch_normalization_12/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_12/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
ł
.G/batch_normalization_12/cond_3/ReadVariableOpReadVariableOpGG/batch_normalization_12/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_12/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:
„
0G/batch_normalization_12/cond_3/ReadVariableOp_1ReadVariableOp7G/batch_normalization_12/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:
ō
7G/batch_normalization_12/cond_3/ReadVariableOp_1/SwitchSwitch(G/batch_normalization_12/moving_variance'G/batch_normalization_12/cond_3/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_12/moving_variance*
_output_shapes
: : 
Į
%G/batch_normalization_12/cond_3/MergeMerge0G/batch_normalization_12/cond_3/ReadVariableOp_1.G/batch_normalization_12/cond_3/ReadVariableOp*
T0*
N*
_output_shapes
	:: 
m
(G/batch_normalization_12/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
¤
&G/batch_normalization_12/batchnorm/addAdd%G/batch_normalization_12/cond_1/Merge(G/batch_normalization_12/batchnorm/add/y*
T0*
_output_shapes	
:

(G/batch_normalization_12/batchnorm/RsqrtRsqrt&G/batch_normalization_12/batchnorm/add*
_output_shapes	
:*
T0

5G/batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization_12/gamma*
dtype0*
_output_shapes	
:
“
&G/batch_normalization_12/batchnorm/mulMul(G/batch_normalization_12/batchnorm/Rsqrt5G/batch_normalization_12/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes	
:

(G/batch_normalization_12/batchnorm/mul_1MulG/add_3&G/batch_normalization_12/batchnorm/mul*
T0*,
_output_shapes
:’’’’’’’’’

¢
(G/batch_normalization_12/batchnorm/mul_2Mul#G/batch_normalization_12/cond/Merge&G/batch_normalization_12/batchnorm/mul*
_output_shapes	
:*
T0

1G/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization_12/beta*
dtype0*
_output_shapes	
:
°
&G/batch_normalization_12/batchnorm/subSub1G/batch_normalization_12/batchnorm/ReadVariableOp(G/batch_normalization_12/batchnorm/mul_2*
T0*
_output_shapes	
:
ø
(G/batch_normalization_12/batchnorm/add_1Add(G/batch_normalization_12/batchnorm/mul_1&G/batch_normalization_12/batchnorm/sub*
T0*,
_output_shapes
:’’’’’’’’’

r
	G/Relu_12Relu(G/batch_normalization_12/batchnorm/add_1*
T0*,
_output_shapes
:’’’’’’’’’

Æ
3G/conv1d_12/kernel/Initializer/random_uniform/shapeConst*!
valueB"      @   *%
_class
loc:@G/conv1d_12/kernel*
dtype0*
_output_shapes
:

1G/conv1d_12/kernel/Initializer/random_uniform/minConst*
valueB
 *ó5¾*%
_class
loc:@G/conv1d_12/kernel*
dtype0*
_output_shapes
: 

1G/conv1d_12/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ó5>*%
_class
loc:@G/conv1d_12/kernel
ć
;G/conv1d_12/kernel/Initializer/random_uniform/RandomUniformRandomUniform3G/conv1d_12/kernel/Initializer/random_uniform/shape*
dtype0*#
_output_shapes
:@*
T0*%
_class
loc:@G/conv1d_12/kernel
ę
1G/conv1d_12/kernel/Initializer/random_uniform/subSub1G/conv1d_12/kernel/Initializer/random_uniform/max1G/conv1d_12/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@G/conv1d_12/kernel*
_output_shapes
: 
ż
1G/conv1d_12/kernel/Initializer/random_uniform/mulMul;G/conv1d_12/kernel/Initializer/random_uniform/RandomUniform1G/conv1d_12/kernel/Initializer/random_uniform/sub*#
_output_shapes
:@*
T0*%
_class
loc:@G/conv1d_12/kernel
ļ
-G/conv1d_12/kernel/Initializer/random_uniformAdd1G/conv1d_12/kernel/Initializer/random_uniform/mul1G/conv1d_12/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@G/conv1d_12/kernel*#
_output_shapes
:@
¬
G/conv1d_12/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*#
shared_nameG/conv1d_12/kernel*%
_class
loc:@G/conv1d_12/kernel
u
3G/conv1d_12/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_12/kernel*
_output_shapes
: 
¤
G/conv1d_12/kernel/AssignAssignVariableOpG/conv1d_12/kernel-G/conv1d_12/kernel/Initializer/random_uniform*%
_class
loc:@G/conv1d_12/kernel*
dtype0
„
&G/conv1d_12/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_12/kernel*%
_class
loc:@G/conv1d_12/kernel*
dtype0*#
_output_shapes
:@

"G/conv1d_12/bias/Initializer/zerosConst*
valueB@*    *#
_class
loc:@G/conv1d_12/bias*
dtype0*
_output_shapes
:@

G/conv1d_12/biasVarHandleOp*
shape:@*!
shared_nameG/conv1d_12/bias*#
_class
loc:@G/conv1d_12/bias*
dtype0*
_output_shapes
: 
q
1G/conv1d_12/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_12/bias*
_output_shapes
: 

G/conv1d_12/bias/AssignAssignVariableOpG/conv1d_12/bias"G/conv1d_12/bias/Initializer/zeros*#
_class
loc:@G/conv1d_12/bias*
dtype0

$G/conv1d_12/bias/Read/ReadVariableOpReadVariableOpG/conv1d_12/bias*#
_class
loc:@G/conv1d_12/bias*
dtype0*
_output_shapes
:@
c
G/conv1d_12/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
c
!G/conv1d_12/conv1d/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :

G/conv1d_12/conv1d/ExpandDims
ExpandDims	G/Relu_12!G/conv1d_12/conv1d/ExpandDims/dim*
T0*0
_output_shapes
:’’’’’’’’’


.G/conv1d_12/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_12/kernel*
dtype0*#
_output_shapes
:@
e
#G/conv1d_12/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
“
G/conv1d_12/conv1d/ExpandDims_1
ExpandDims.G/conv1d_12/conv1d/ExpandDims_1/ReadVariableOp#G/conv1d_12/conv1d/ExpandDims_1/dim*
T0*'
_output_shapes
:@
Å
G/conv1d_12/conv1d/Conv2DConv2DG/conv1d_12/conv1d/ExpandDimsG/conv1d_12/conv1d/ExpandDims_1*
paddingSAME*
T0*
strides
*/
_output_shapes
:’’’’’’’’’
@

G/conv1d_12/conv1d/SqueezeSqueezeG/conv1d_12/conv1d/Conv2D*+
_output_shapes
:’’’’’’’’’
@*
squeeze_dims
*
T0
o
"G/conv1d_12/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_12/bias*
dtype0*
_output_shapes
:@

G/conv1d_12/BiasAddBiasAddG/conv1d_12/conv1d/Squeeze"G/conv1d_12/BiasAdd/ReadVariableOp*+
_output_shapes
:’’’’’’’’’
@*
T0
Æ
/G/batch_normalization_13/gamma/Initializer/onesConst*
valueB@*  ?*1
_class'
%#loc:@G/batch_normalization_13/gamma*
dtype0*
_output_shapes
:@
Ē
G/batch_normalization_13/gammaVarHandleOp*1
_class'
%#loc:@G/batch_normalization_13/gamma*
dtype0*
_output_shapes
: *
shape:@*/
shared_name G/batch_normalization_13/gamma

?G/batch_normalization_13/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_13/gamma*
_output_shapes
: 
Ź
%G/batch_normalization_13/gamma/AssignAssignVariableOpG/batch_normalization_13/gamma/G/batch_normalization_13/gamma/Initializer/ones*1
_class'
%#loc:@G/batch_normalization_13/gamma*
dtype0
Ą
2G/batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_13/gamma*1
_class'
%#loc:@G/batch_normalization_13/gamma*
dtype0*
_output_shapes
:@
®
/G/batch_normalization_13/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *0
_class&
$"loc:@G/batch_normalization_13/beta
Ä
G/batch_normalization_13/betaVarHandleOp*0
_class&
$"loc:@G/batch_normalization_13/beta*
dtype0*
_output_shapes
: *
shape:@*.
shared_nameG/batch_normalization_13/beta

>G/batch_normalization_13/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_13/beta*
_output_shapes
: 
Ē
$G/batch_normalization_13/beta/AssignAssignVariableOpG/batch_normalization_13/beta/G/batch_normalization_13/beta/Initializer/zeros*
dtype0*0
_class&
$"loc:@G/batch_normalization_13/beta
½
1G/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_13/beta*
dtype0*
_output_shapes
:@*0
_class&
$"loc:@G/batch_normalization_13/beta
¼
6G/batch_normalization_13/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *7
_class-
+)loc:@G/batch_normalization_13/moving_mean
Ł
$G/batch_normalization_13/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*5
shared_name&$G/batch_normalization_13/moving_mean*7
_class-
+)loc:@G/batch_normalization_13/moving_mean

EG/batch_normalization_13/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp$G/batch_normalization_13/moving_mean*
_output_shapes
: 
ć
+G/batch_normalization_13/moving_mean/AssignAssignVariableOp$G/batch_normalization_13/moving_mean6G/batch_normalization_13/moving_mean/Initializer/zeros*7
_class-
+)loc:@G/batch_normalization_13/moving_mean*
dtype0
Ņ
8G/batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp$G/batch_normalization_13/moving_mean*7
_class-
+)loc:@G/batch_normalization_13/moving_mean*
dtype0*
_output_shapes
:@
Ć
9G/batch_normalization_13/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:@*
valueB@*  ?*;
_class1
/-loc:@G/batch_normalization_13/moving_variance
å
(G/batch_normalization_13/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*9
shared_name*(G/batch_normalization_13/moving_variance*;
_class1
/-loc:@G/batch_normalization_13/moving_variance
”
IG/batch_normalization_13/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp(G/batch_normalization_13/moving_variance*
_output_shapes
: 
ņ
/G/batch_normalization_13/moving_variance/AssignAssignVariableOp(G/batch_normalization_13/moving_variance9G/batch_normalization_13/moving_variance/Initializer/ones*;
_class1
/-loc:@G/batch_normalization_13/moving_variance*
dtype0
Ž
<G/batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp(G/batch_normalization_13/moving_variance*;
_class1
/-loc:@G/batch_normalization_13/moving_variance*
dtype0*
_output_shapes
:@

7G/batch_normalization_13/moments/mean/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
¹
%G/batch_normalization_13/moments/meanMeanG/conv1d_12/BiasAdd7G/batch_normalization_13/moments/mean/reduction_indices*
T0*"
_output_shapes
:@*
	keep_dims(

-G/batch_normalization_13/moments/StopGradientStopGradient%G/batch_normalization_13/moments/mean*
T0*"
_output_shapes
:@
Į
2G/batch_normalization_13/moments/SquaredDifferenceSquaredDifferenceG/conv1d_12/BiasAdd-G/batch_normalization_13/moments/StopGradient*
T0*+
_output_shapes
:’’’’’’’’’
@

;G/batch_normalization_13/moments/variance/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
ą
)G/batch_normalization_13/moments/varianceMean2G/batch_normalization_13/moments/SquaredDifference;G/batch_normalization_13/moments/variance/reduction_indices*
	keep_dims(*
T0*"
_output_shapes
:@

(G/batch_normalization_13/moments/SqueezeSqueeze%G/batch_normalization_13/moments/mean*
T0*
_output_shapes
:@*
squeeze_dims
 

*G/batch_normalization_13/moments/Squeeze_1Squeeze)G/batch_normalization_13/moments/variance*
_output_shapes
:@*
squeeze_dims
 *
T0

$G/batch_normalization_13/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 
{
&G/batch_normalization_13/cond/switch_tIdentity&G/batch_normalization_13/cond/Switch:1*
T0
*
_output_shapes
: 
y
&G/batch_normalization_13/cond/switch_fIdentity$G/batch_normalization_13/cond/Switch*
T0
*
_output_shapes
: 
j
%G/batch_normalization_13/cond/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
é
&G/batch_normalization_13/cond/Switch_1Switch(G/batch_normalization_13/moments/Squeeze%G/batch_normalization_13/cond/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_13/moments/Squeeze* 
_output_shapes
:@:@

,G/batch_normalization_13/cond/ReadVariableOpReadVariableOp3G/batch_normalization_13/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ę
3G/batch_normalization_13/cond/ReadVariableOp/SwitchSwitch$G/batch_normalization_13/moving_mean%G/batch_normalization_13/cond/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_13/moving_mean*
_output_shapes
: : 
“
#G/batch_normalization_13/cond/MergeMerge,G/batch_normalization_13/cond/ReadVariableOp(G/batch_normalization_13/cond/Switch_1:1*
T0*
N*
_output_shapes

:@: 

&G/batch_normalization_13/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 

(G/batch_normalization_13/cond_1/switch_tIdentity(G/batch_normalization_13/cond_1/Switch:1*
T0
*
_output_shapes
: 
}
(G/batch_normalization_13/cond_1/switch_fIdentity&G/batch_normalization_13/cond_1/Switch*
_output_shapes
: *
T0

l
'G/batch_normalization_13/cond_1/pred_idIdentityPlaceholderWithDefault*
_output_shapes
: *
T0

ń
(G/batch_normalization_13/cond_1/Switch_1Switch*G/batch_normalization_13/moments/Squeeze_1'G/batch_normalization_13/cond_1/pred_id*
T0*=
_class3
1/loc:@G/batch_normalization_13/moments/Squeeze_1* 
_output_shapes
:@:@
 
.G/batch_normalization_13/cond_1/ReadVariableOpReadVariableOp5G/batch_normalization_13/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ņ
5G/batch_normalization_13/cond_1/ReadVariableOp/SwitchSwitch(G/batch_normalization_13/moving_variance'G/batch_normalization_13/cond_1/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_13/moving_variance*
_output_shapes
: : 
ŗ
%G/batch_normalization_13/cond_1/MergeMerge.G/batch_normalization_13/cond_1/ReadVariableOp*G/batch_normalization_13/cond_1/Switch_1:1*
T0*
N*
_output_shapes

:@: 

&G/batch_normalization_13/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 

(G/batch_normalization_13/cond_2/switch_tIdentity(G/batch_normalization_13/cond_2/Switch:1*
T0
*
_output_shapes
: 
}
(G/batch_normalization_13/cond_2/switch_fIdentity&G/batch_normalization_13/cond_2/Switch*
_output_shapes
: *
T0

l
'G/batch_normalization_13/cond_2/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
„
5G/batch_normalization_13/cond_2/AssignMovingAvg/decayConst)^G/batch_normalization_13/cond_2/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ā
>G/batch_normalization_13/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpGG/batch_normalization_13/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ś
EG/batch_normalization_13/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch$G/batch_normalization_13/moving_mean'G/batch_normalization_13/cond_2/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_13/moving_mean*
_output_shapes
: : 
Ż
3G/batch_normalization_13/cond_2/AssignMovingAvg/subSub>G/batch_normalization_13/cond_2/AssignMovingAvg/ReadVariableOp<G/batch_normalization_13/cond_2/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
õ
:G/batch_normalization_13/cond_2/AssignMovingAvg/sub/SwitchSwitch#G/batch_normalization_13/cond/Merge'G/batch_normalization_13/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_13/cond/Merge* 
_output_shapes
:@:@
Ė
3G/batch_normalization_13/cond_2/AssignMovingAvg/mulMul3G/batch_normalization_13/cond_2/AssignMovingAvg/sub5G/batch_normalization_13/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes
:@
å
CG/batch_normalization_13/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGG/batch_normalization_13/cond_2/AssignMovingAvg/ReadVariableOp/Switch:13G/batch_normalization_13/cond_2/AssignMovingAvg/mul*
dtype0

@G/batch_normalization_13/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGG/batch_normalization_13/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_13/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
ų
.G/batch_normalization_13/cond_2/ReadVariableOpReadVariableOpGG/batch_normalization_13/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_13/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¤
0G/batch_normalization_13/cond_2/ReadVariableOp_1ReadVariableOp7G/batch_normalization_13/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
ģ
7G/batch_normalization_13/cond_2/ReadVariableOp_1/SwitchSwitch$G/batch_normalization_13/moving_mean'G/batch_normalization_13/cond_2/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_13/moving_mean*
_output_shapes
: : 
Ą
%G/batch_normalization_13/cond_2/MergeMerge0G/batch_normalization_13/cond_2/ReadVariableOp_1.G/batch_normalization_13/cond_2/ReadVariableOp*
T0*
N*
_output_shapes

:@: 

&G/batch_normalization_13/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0


(G/batch_normalization_13/cond_3/switch_tIdentity(G/batch_normalization_13/cond_3/Switch:1*
T0
*
_output_shapes
: 
}
(G/batch_normalization_13/cond_3/switch_fIdentity&G/batch_normalization_13/cond_3/Switch*
T0
*
_output_shapes
: 
l
'G/batch_normalization_13/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
„
5G/batch_normalization_13/cond_3/AssignMovingAvg/decayConst)^G/batch_normalization_13/cond_3/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ā
>G/batch_normalization_13/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpGG/batch_normalization_13/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@

EG/batch_normalization_13/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch(G/batch_normalization_13/moving_variance'G/batch_normalization_13/cond_3/pred_id*
_output_shapes
: : *
T0*;
_class1
/-loc:@G/batch_normalization_13/moving_variance
Ż
3G/batch_normalization_13/cond_3/AssignMovingAvg/subSub>G/batch_normalization_13/cond_3/AssignMovingAvg/ReadVariableOp<G/batch_normalization_13/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
ł
:G/batch_normalization_13/cond_3/AssignMovingAvg/sub/SwitchSwitch%G/batch_normalization_13/cond_1/Merge'G/batch_normalization_13/cond_3/pred_id*
T0*8
_class.
,*loc:@G/batch_normalization_13/cond_1/Merge* 
_output_shapes
:@:@
Ė
3G/batch_normalization_13/cond_3/AssignMovingAvg/mulMul3G/batch_normalization_13/cond_3/AssignMovingAvg/sub5G/batch_normalization_13/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes
:@
å
CG/batch_normalization_13/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGG/batch_normalization_13/cond_3/AssignMovingAvg/ReadVariableOp/Switch:13G/batch_normalization_13/cond_3/AssignMovingAvg/mul*
dtype0

@G/batch_normalization_13/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGG/batch_normalization_13/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_13/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
ų
.G/batch_normalization_13/cond_3/ReadVariableOpReadVariableOpGG/batch_normalization_13/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_13/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¤
0G/batch_normalization_13/cond_3/ReadVariableOp_1ReadVariableOp7G/batch_normalization_13/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
ō
7G/batch_normalization_13/cond_3/ReadVariableOp_1/SwitchSwitch(G/batch_normalization_13/moving_variance'G/batch_normalization_13/cond_3/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_13/moving_variance*
_output_shapes
: : 
Ą
%G/batch_normalization_13/cond_3/MergeMerge0G/batch_normalization_13/cond_3/ReadVariableOp_1.G/batch_normalization_13/cond_3/ReadVariableOp*
N*
_output_shapes

:@: *
T0
m
(G/batch_normalization_13/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
£
&G/batch_normalization_13/batchnorm/addAdd%G/batch_normalization_13/cond_1/Merge(G/batch_normalization_13/batchnorm/add/y*
T0*
_output_shapes
:@
~
(G/batch_normalization_13/batchnorm/RsqrtRsqrt&G/batch_normalization_13/batchnorm/add*
T0*
_output_shapes
:@

5G/batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization_13/gamma*
dtype0*
_output_shapes
:@
³
&G/batch_normalization_13/batchnorm/mulMul(G/batch_normalization_13/batchnorm/Rsqrt5G/batch_normalization_13/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:@
¢
(G/batch_normalization_13/batchnorm/mul_1MulG/conv1d_12/BiasAdd&G/batch_normalization_13/batchnorm/mul*
T0*+
_output_shapes
:’’’’’’’’’
@
”
(G/batch_normalization_13/batchnorm/mul_2Mul#G/batch_normalization_13/cond/Merge&G/batch_normalization_13/batchnorm/mul*
_output_shapes
:@*
T0

1G/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization_13/beta*
dtype0*
_output_shapes
:@
Æ
&G/batch_normalization_13/batchnorm/subSub1G/batch_normalization_13/batchnorm/ReadVariableOp(G/batch_normalization_13/batchnorm/mul_2*
_output_shapes
:@*
T0
·
(G/batch_normalization_13/batchnorm/add_1Add(G/batch_normalization_13/batchnorm/mul_1&G/batch_normalization_13/batchnorm/sub*
T0*+
_output_shapes
:’’’’’’’’’
@
q
	G/Relu_13Relu(G/batch_normalization_13/batchnorm/add_1*
T0*+
_output_shapes
:’’’’’’’’’
@
Æ
3G/conv1d_13/kernel/Initializer/random_uniform/shapeConst*!
valueB"   @   @   *%
_class
loc:@G/conv1d_13/kernel*
dtype0*
_output_shapes
:

1G/conv1d_13/kernel/Initializer/random_uniform/minConst*
valueB
 *ųKĘ½*%
_class
loc:@G/conv1d_13/kernel*
dtype0*
_output_shapes
: 

1G/conv1d_13/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ųKĘ=*%
_class
loc:@G/conv1d_13/kernel
ā
;G/conv1d_13/kernel/Initializer/random_uniform/RandomUniformRandomUniform3G/conv1d_13/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@G/conv1d_13/kernel*
dtype0*"
_output_shapes
:@@
ę
1G/conv1d_13/kernel/Initializer/random_uniform/subSub1G/conv1d_13/kernel/Initializer/random_uniform/max1G/conv1d_13/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@G/conv1d_13/kernel
ü
1G/conv1d_13/kernel/Initializer/random_uniform/mulMul;G/conv1d_13/kernel/Initializer/random_uniform/RandomUniform1G/conv1d_13/kernel/Initializer/random_uniform/sub*"
_output_shapes
:@@*
T0*%
_class
loc:@G/conv1d_13/kernel
ī
-G/conv1d_13/kernel/Initializer/random_uniformAdd1G/conv1d_13/kernel/Initializer/random_uniform/mul1G/conv1d_13/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@G/conv1d_13/kernel*"
_output_shapes
:@@
«
G/conv1d_13/kernelVarHandleOp*#
shared_nameG/conv1d_13/kernel*%
_class
loc:@G/conv1d_13/kernel*
dtype0*
_output_shapes
: *
shape:@@
u
3G/conv1d_13/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_13/kernel*
_output_shapes
: 
¤
G/conv1d_13/kernel/AssignAssignVariableOpG/conv1d_13/kernel-G/conv1d_13/kernel/Initializer/random_uniform*%
_class
loc:@G/conv1d_13/kernel*
dtype0
¤
&G/conv1d_13/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_13/kernel*%
_class
loc:@G/conv1d_13/kernel*
dtype0*"
_output_shapes
:@@

"G/conv1d_13/bias/Initializer/zerosConst*
valueB@*    *#
_class
loc:@G/conv1d_13/bias*
dtype0*
_output_shapes
:@

G/conv1d_13/biasVarHandleOp*
shape:@*!
shared_nameG/conv1d_13/bias*#
_class
loc:@G/conv1d_13/bias*
dtype0*
_output_shapes
: 
q
1G/conv1d_13/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_13/bias*
_output_shapes
: 

G/conv1d_13/bias/AssignAssignVariableOpG/conv1d_13/bias"G/conv1d_13/bias/Initializer/zeros*#
_class
loc:@G/conv1d_13/bias*
dtype0

$G/conv1d_13/bias/Read/ReadVariableOpReadVariableOpG/conv1d_13/bias*#
_class
loc:@G/conv1d_13/bias*
dtype0*
_output_shapes
:@
c
G/conv1d_13/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
c
!G/conv1d_13/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv1d_13/conv1d/ExpandDims
ExpandDims	G/Relu_13!G/conv1d_13/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’
@

.G/conv1d_13/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_13/kernel*
dtype0*"
_output_shapes
:@@
e
#G/conv1d_13/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
³
G/conv1d_13/conv1d/ExpandDims_1
ExpandDims.G/conv1d_13/conv1d/ExpandDims_1/ReadVariableOp#G/conv1d_13/conv1d/ExpandDims_1/dim*&
_output_shapes
:@@*
T0
Å
G/conv1d_13/conv1d/Conv2DConv2DG/conv1d_13/conv1d/ExpandDimsG/conv1d_13/conv1d/ExpandDims_1*
paddingSAME*
T0*
strides
*/
_output_shapes
:’’’’’’’’’
@

G/conv1d_13/conv1d/SqueezeSqueezeG/conv1d_13/conv1d/Conv2D*+
_output_shapes
:’’’’’’’’’
@*
squeeze_dims
*
T0
o
"G/conv1d_13/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_13/bias*
dtype0*
_output_shapes
:@

G/conv1d_13/BiasAddBiasAddG/conv1d_13/conv1d/Squeeze"G/conv1d_13/BiasAdd/ReadVariableOp*
T0*+
_output_shapes
:’’’’’’’’’
@
Æ
/G/batch_normalization_14/gamma/Initializer/onesConst*
valueB@*  ?*1
_class'
%#loc:@G/batch_normalization_14/gamma*
dtype0*
_output_shapes
:@
Ē
G/batch_normalization_14/gammaVarHandleOp*/
shared_name G/batch_normalization_14/gamma*1
_class'
%#loc:@G/batch_normalization_14/gamma*
dtype0*
_output_shapes
: *
shape:@

?G/batch_normalization_14/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_14/gamma*
_output_shapes
: 
Ź
%G/batch_normalization_14/gamma/AssignAssignVariableOpG/batch_normalization_14/gamma/G/batch_normalization_14/gamma/Initializer/ones*
dtype0*1
_class'
%#loc:@G/batch_normalization_14/gamma
Ą
2G/batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOpG/batch_normalization_14/gamma*
dtype0*
_output_shapes
:@*1
_class'
%#loc:@G/batch_normalization_14/gamma
®
/G/batch_normalization_14/beta/Initializer/zerosConst*
valueB@*    *0
_class&
$"loc:@G/batch_normalization_14/beta*
dtype0*
_output_shapes
:@
Ä
G/batch_normalization_14/betaVarHandleOp*
shape:@*.
shared_nameG/batch_normalization_14/beta*0
_class&
$"loc:@G/batch_normalization_14/beta*
dtype0*
_output_shapes
: 

>G/batch_normalization_14/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/batch_normalization_14/beta*
_output_shapes
: 
Ē
$G/batch_normalization_14/beta/AssignAssignVariableOpG/batch_normalization_14/beta/G/batch_normalization_14/beta/Initializer/zeros*0
_class&
$"loc:@G/batch_normalization_14/beta*
dtype0
½
1G/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOpG/batch_normalization_14/beta*
dtype0*
_output_shapes
:@*0
_class&
$"loc:@G/batch_normalization_14/beta
¼
6G/batch_normalization_14/moving_mean/Initializer/zerosConst*
valueB@*    *7
_class-
+)loc:@G/batch_normalization_14/moving_mean*
dtype0*
_output_shapes
:@
Ł
$G/batch_normalization_14/moving_meanVarHandleOp*
shape:@*5
shared_name&$G/batch_normalization_14/moving_mean*7
_class-
+)loc:@G/batch_normalization_14/moving_mean*
dtype0*
_output_shapes
: 

EG/batch_normalization_14/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp$G/batch_normalization_14/moving_mean*
_output_shapes
: 
ć
+G/batch_normalization_14/moving_mean/AssignAssignVariableOp$G/batch_normalization_14/moving_mean6G/batch_normalization_14/moving_mean/Initializer/zeros*7
_class-
+)loc:@G/batch_normalization_14/moving_mean*
dtype0
Ņ
8G/batch_normalization_14/moving_mean/Read/ReadVariableOpReadVariableOp$G/batch_normalization_14/moving_mean*7
_class-
+)loc:@G/batch_normalization_14/moving_mean*
dtype0*
_output_shapes
:@
Ć
9G/batch_normalization_14/moving_variance/Initializer/onesConst*
valueB@*  ?*;
_class1
/-loc:@G/batch_normalization_14/moving_variance*
dtype0*
_output_shapes
:@
å
(G/batch_normalization_14/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*9
shared_name*(G/batch_normalization_14/moving_variance*;
_class1
/-loc:@G/batch_normalization_14/moving_variance
”
IG/batch_normalization_14/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp(G/batch_normalization_14/moving_variance*
_output_shapes
: 
ņ
/G/batch_normalization_14/moving_variance/AssignAssignVariableOp(G/batch_normalization_14/moving_variance9G/batch_normalization_14/moving_variance/Initializer/ones*
dtype0*;
_class1
/-loc:@G/batch_normalization_14/moving_variance
Ž
<G/batch_normalization_14/moving_variance/Read/ReadVariableOpReadVariableOp(G/batch_normalization_14/moving_variance*;
_class1
/-loc:@G/batch_normalization_14/moving_variance*
dtype0*
_output_shapes
:@

7G/batch_normalization_14/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB"       
¹
%G/batch_normalization_14/moments/meanMeanG/conv1d_13/BiasAdd7G/batch_normalization_14/moments/mean/reduction_indices*
	keep_dims(*
T0*"
_output_shapes
:@

-G/batch_normalization_14/moments/StopGradientStopGradient%G/batch_normalization_14/moments/mean*
T0*"
_output_shapes
:@
Į
2G/batch_normalization_14/moments/SquaredDifferenceSquaredDifferenceG/conv1d_13/BiasAdd-G/batch_normalization_14/moments/StopGradient*
T0*+
_output_shapes
:’’’’’’’’’
@

;G/batch_normalization_14/moments/variance/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
ą
)G/batch_normalization_14/moments/varianceMean2G/batch_normalization_14/moments/SquaredDifference;G/batch_normalization_14/moments/variance/reduction_indices*
T0*"
_output_shapes
:@*
	keep_dims(

(G/batch_normalization_14/moments/SqueezeSqueeze%G/batch_normalization_14/moments/mean*
T0*
_output_shapes
:@*
squeeze_dims
 

*G/batch_normalization_14/moments/Squeeze_1Squeeze)G/batch_normalization_14/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:@

$G/batch_normalization_14/cond/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0

{
&G/batch_normalization_14/cond/switch_tIdentity&G/batch_normalization_14/cond/Switch:1*
T0
*
_output_shapes
: 
y
&G/batch_normalization_14/cond/switch_fIdentity$G/batch_normalization_14/cond/Switch*
T0
*
_output_shapes
: 
j
%G/batch_normalization_14/cond/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
é
&G/batch_normalization_14/cond/Switch_1Switch(G/batch_normalization_14/moments/Squeeze%G/batch_normalization_14/cond/pred_id* 
_output_shapes
:@:@*
T0*;
_class1
/-loc:@G/batch_normalization_14/moments/Squeeze

,G/batch_normalization_14/cond/ReadVariableOpReadVariableOp3G/batch_normalization_14/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ę
3G/batch_normalization_14/cond/ReadVariableOp/SwitchSwitch$G/batch_normalization_14/moving_mean%G/batch_normalization_14/cond/pred_id*
_output_shapes
: : *
T0*7
_class-
+)loc:@G/batch_normalization_14/moving_mean
“
#G/batch_normalization_14/cond/MergeMerge,G/batch_normalization_14/cond/ReadVariableOp(G/batch_normalization_14/cond/Switch_1:1*
T0*
N*
_output_shapes

:@: 

&G/batch_normalization_14/cond_1/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
_output_shapes
: : *
T0


(G/batch_normalization_14/cond_1/switch_tIdentity(G/batch_normalization_14/cond_1/Switch:1*
_output_shapes
: *
T0

}
(G/batch_normalization_14/cond_1/switch_fIdentity&G/batch_normalization_14/cond_1/Switch*
T0
*
_output_shapes
: 
l
'G/batch_normalization_14/cond_1/pred_idIdentityPlaceholderWithDefault*
_output_shapes
: *
T0

ń
(G/batch_normalization_14/cond_1/Switch_1Switch*G/batch_normalization_14/moments/Squeeze_1'G/batch_normalization_14/cond_1/pred_id*
T0*=
_class3
1/loc:@G/batch_normalization_14/moments/Squeeze_1* 
_output_shapes
:@:@
 
.G/batch_normalization_14/cond_1/ReadVariableOpReadVariableOp5G/batch_normalization_14/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
ņ
5G/batch_normalization_14/cond_1/ReadVariableOp/SwitchSwitch(G/batch_normalization_14/moving_variance'G/batch_normalization_14/cond_1/pred_id*
_output_shapes
: : *
T0*;
_class1
/-loc:@G/batch_normalization_14/moving_variance
ŗ
%G/batch_normalization_14/cond_1/MergeMerge.G/batch_normalization_14/cond_1/ReadVariableOp*G/batch_normalization_14/cond_1/Switch_1:1*
T0*
N*
_output_shapes

:@: 

&G/batch_normalization_14/cond_2/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 

(G/batch_normalization_14/cond_2/switch_tIdentity(G/batch_normalization_14/cond_2/Switch:1*
_output_shapes
: *
T0

}
(G/batch_normalization_14/cond_2/switch_fIdentity&G/batch_normalization_14/cond_2/Switch*
T0
*
_output_shapes
: 
l
'G/batch_normalization_14/cond_2/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
„
5G/batch_normalization_14/cond_2/AssignMovingAvg/decayConst)^G/batch_normalization_14/cond_2/switch_t*
dtype0*
_output_shapes
: *
valueB
 *
×#<
Ā
>G/batch_normalization_14/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpGG/batch_normalization_14/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
ś
EG/batch_normalization_14/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch$G/batch_normalization_14/moving_mean'G/batch_normalization_14/cond_2/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_14/moving_mean*
_output_shapes
: : 
Ż
3G/batch_normalization_14/cond_2/AssignMovingAvg/subSub>G/batch_normalization_14/cond_2/AssignMovingAvg/ReadVariableOp<G/batch_normalization_14/cond_2/AssignMovingAvg/sub/Switch:1*
_output_shapes
:@*
T0
õ
:G/batch_normalization_14/cond_2/AssignMovingAvg/sub/SwitchSwitch#G/batch_normalization_14/cond/Merge'G/batch_normalization_14/cond_2/pred_id*
T0*6
_class,
*(loc:@G/batch_normalization_14/cond/Merge* 
_output_shapes
:@:@
Ė
3G/batch_normalization_14/cond_2/AssignMovingAvg/mulMul3G/batch_normalization_14/cond_2/AssignMovingAvg/sub5G/batch_normalization_14/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes
:@
å
CG/batch_normalization_14/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGG/batch_normalization_14/cond_2/AssignMovingAvg/ReadVariableOp/Switch:13G/batch_normalization_14/cond_2/AssignMovingAvg/mul*
dtype0

@G/batch_normalization_14/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGG/batch_normalization_14/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_14/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
ų
.G/batch_normalization_14/cond_2/ReadVariableOpReadVariableOpGG/batch_normalization_14/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_14/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¤
0G/batch_normalization_14/cond_2/ReadVariableOp_1ReadVariableOp7G/batch_normalization_14/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
ģ
7G/batch_normalization_14/cond_2/ReadVariableOp_1/SwitchSwitch$G/batch_normalization_14/moving_mean'G/batch_normalization_14/cond_2/pred_id*
T0*7
_class-
+)loc:@G/batch_normalization_14/moving_mean*
_output_shapes
: : 
Ą
%G/batch_normalization_14/cond_2/MergeMerge0G/batch_normalization_14/cond_2/ReadVariableOp_1.G/batch_normalization_14/cond_2/ReadVariableOp*
N*
_output_shapes

:@: *
T0

&G/batch_normalization_14/cond_3/SwitchSwitchPlaceholderWithDefaultPlaceholderWithDefault*
T0
*
_output_shapes
: : 

(G/batch_normalization_14/cond_3/switch_tIdentity(G/batch_normalization_14/cond_3/Switch:1*
T0
*
_output_shapes
: 
}
(G/batch_normalization_14/cond_3/switch_fIdentity&G/batch_normalization_14/cond_3/Switch*
T0
*
_output_shapes
: 
l
'G/batch_normalization_14/cond_3/pred_idIdentityPlaceholderWithDefault*
T0
*
_output_shapes
: 
„
5G/batch_normalization_14/cond_3/AssignMovingAvg/decayConst)^G/batch_normalization_14/cond_3/switch_t*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ā
>G/batch_normalization_14/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpGG/batch_normalization_14/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@

EG/batch_normalization_14/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch(G/batch_normalization_14/moving_variance'G/batch_normalization_14/cond_3/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_14/moving_variance*
_output_shapes
: : 
Ż
3G/batch_normalization_14/cond_3/AssignMovingAvg/subSub>G/batch_normalization_14/cond_3/AssignMovingAvg/ReadVariableOp<G/batch_normalization_14/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes
:@
ł
:G/batch_normalization_14/cond_3/AssignMovingAvg/sub/SwitchSwitch%G/batch_normalization_14/cond_1/Merge'G/batch_normalization_14/cond_3/pred_id* 
_output_shapes
:@:@*
T0*8
_class.
,*loc:@G/batch_normalization_14/cond_1/Merge
Ė
3G/batch_normalization_14/cond_3/AssignMovingAvg/mulMul3G/batch_normalization_14/cond_3/AssignMovingAvg/sub5G/batch_normalization_14/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes
:@
å
CG/batch_normalization_14/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGG/batch_normalization_14/cond_3/AssignMovingAvg/ReadVariableOp/Switch:13G/batch_normalization_14/cond_3/AssignMovingAvg/mul*
dtype0

@G/batch_normalization_14/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGG/batch_normalization_14/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_14/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
ų
.G/batch_normalization_14/cond_3/ReadVariableOpReadVariableOpGG/batch_normalization_14/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1D^G/batch_normalization_14/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
¤
0G/batch_normalization_14/cond_3/ReadVariableOp_1ReadVariableOp7G/batch_normalization_14/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
ō
7G/batch_normalization_14/cond_3/ReadVariableOp_1/SwitchSwitch(G/batch_normalization_14/moving_variance'G/batch_normalization_14/cond_3/pred_id*
T0*;
_class1
/-loc:@G/batch_normalization_14/moving_variance*
_output_shapes
: : 
Ą
%G/batch_normalization_14/cond_3/MergeMerge0G/batch_normalization_14/cond_3/ReadVariableOp_1.G/batch_normalization_14/cond_3/ReadVariableOp*
T0*
N*
_output_shapes

:@: 
m
(G/batch_normalization_14/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o:
£
&G/batch_normalization_14/batchnorm/addAdd%G/batch_normalization_14/cond_1/Merge(G/batch_normalization_14/batchnorm/add/y*
T0*
_output_shapes
:@
~
(G/batch_normalization_14/batchnorm/RsqrtRsqrt&G/batch_normalization_14/batchnorm/add*
T0*
_output_shapes
:@

5G/batch_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOpG/batch_normalization_14/gamma*
dtype0*
_output_shapes
:@
³
&G/batch_normalization_14/batchnorm/mulMul(G/batch_normalization_14/batchnorm/Rsqrt5G/batch_normalization_14/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:@
¢
(G/batch_normalization_14/batchnorm/mul_1MulG/conv1d_13/BiasAdd&G/batch_normalization_14/batchnorm/mul*
T0*+
_output_shapes
:’’’’’’’’’
@
”
(G/batch_normalization_14/batchnorm/mul_2Mul#G/batch_normalization_14/cond/Merge&G/batch_normalization_14/batchnorm/mul*
T0*
_output_shapes
:@

1G/batch_normalization_14/batchnorm/ReadVariableOpReadVariableOpG/batch_normalization_14/beta*
dtype0*
_output_shapes
:@
Æ
&G/batch_normalization_14/batchnorm/subSub1G/batch_normalization_14/batchnorm/ReadVariableOp(G/batch_normalization_14/batchnorm/mul_2*
T0*
_output_shapes
:@
·
(G/batch_normalization_14/batchnorm/add_1Add(G/batch_normalization_14/batchnorm/mul_1&G/batch_normalization_14/batchnorm/sub*+
_output_shapes
:’’’’’’’’’
@*
T0
q
	G/Relu_14Relu(G/batch_normalization_14/batchnorm/add_1*
T0*+
_output_shapes
:’’’’’’’’’
@
Æ
3G/conv1d_14/kernel/Initializer/random_uniform/shapeConst*!
valueB"   @      *%
_class
loc:@G/conv1d_14/kernel*
dtype0*
_output_shapes
:

1G/conv1d_14/kernel/Initializer/random_uniform/minConst*
valueB
 *ó5¾*%
_class
loc:@G/conv1d_14/kernel*
dtype0*
_output_shapes
: 

1G/conv1d_14/kernel/Initializer/random_uniform/maxConst*
valueB
 *ó5>*%
_class
loc:@G/conv1d_14/kernel*
dtype0*
_output_shapes
: 
ć
;G/conv1d_14/kernel/Initializer/random_uniform/RandomUniformRandomUniform3G/conv1d_14/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@G/conv1d_14/kernel*
dtype0*#
_output_shapes
:@
ę
1G/conv1d_14/kernel/Initializer/random_uniform/subSub1G/conv1d_14/kernel/Initializer/random_uniform/max1G/conv1d_14/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@G/conv1d_14/kernel
ż
1G/conv1d_14/kernel/Initializer/random_uniform/mulMul;G/conv1d_14/kernel/Initializer/random_uniform/RandomUniform1G/conv1d_14/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@G/conv1d_14/kernel*#
_output_shapes
:@
ļ
-G/conv1d_14/kernel/Initializer/random_uniformAdd1G/conv1d_14/kernel/Initializer/random_uniform/mul1G/conv1d_14/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@G/conv1d_14/kernel*#
_output_shapes
:@
¬
G/conv1d_14/kernelVarHandleOp*#
shared_nameG/conv1d_14/kernel*%
_class
loc:@G/conv1d_14/kernel*
dtype0*
_output_shapes
: *
shape:@
u
3G/conv1d_14/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_14/kernel*
_output_shapes
: 
¤
G/conv1d_14/kernel/AssignAssignVariableOpG/conv1d_14/kernel-G/conv1d_14/kernel/Initializer/random_uniform*%
_class
loc:@G/conv1d_14/kernel*
dtype0
„
&G/conv1d_14/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_14/kernel*%
_class
loc:@G/conv1d_14/kernel*
dtype0*#
_output_shapes
:@

"G/conv1d_14/bias/Initializer/zerosConst*
valueB*    *#
_class
loc:@G/conv1d_14/bias*
dtype0*
_output_shapes	
:

G/conv1d_14/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:*!
shared_nameG/conv1d_14/bias*#
_class
loc:@G/conv1d_14/bias
q
1G/conv1d_14/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_14/bias*
_output_shapes
: 

G/conv1d_14/bias/AssignAssignVariableOpG/conv1d_14/bias"G/conv1d_14/bias/Initializer/zeros*
dtype0*#
_class
loc:@G/conv1d_14/bias

$G/conv1d_14/bias/Read/ReadVariableOpReadVariableOpG/conv1d_14/bias*
dtype0*
_output_shapes	
:*#
_class
loc:@G/conv1d_14/bias
c
G/conv1d_14/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB:
c
!G/conv1d_14/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv1d_14/conv1d/ExpandDims
ExpandDims	G/Relu_14!G/conv1d_14/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’
@

.G/conv1d_14/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_14/kernel*
dtype0*#
_output_shapes
:@
e
#G/conv1d_14/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
“
G/conv1d_14/conv1d/ExpandDims_1
ExpandDims.G/conv1d_14/conv1d/ExpandDims_1/ReadVariableOp#G/conv1d_14/conv1d/ExpandDims_1/dim*
T0*'
_output_shapes
:@
Ę
G/conv1d_14/conv1d/Conv2DConv2DG/conv1d_14/conv1d/ExpandDimsG/conv1d_14/conv1d/ExpandDims_1*
paddingSAME*
T0*
strides
*0
_output_shapes
:’’’’’’’’’


G/conv1d_14/conv1d/SqueezeSqueezeG/conv1d_14/conv1d/Conv2D*
squeeze_dims
*
T0*,
_output_shapes
:’’’’’’’’’

p
"G/conv1d_14/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_14/bias*
dtype0*
_output_shapes	
:

G/conv1d_14/BiasAddBiasAddG/conv1d_14/conv1d/Squeeze"G/conv1d_14/BiasAdd/ReadVariableOp*,
_output_shapes
:’’’’’’’’’
*
T0
N
	G/mul_4/xConst*
valueB
 *>*
dtype0*
_output_shapes
: 
e
G/mul_4Mul	G/mul_4/xG/conv1d_14/BiasAdd*
T0*,
_output_shapes
:’’’’’’’’’

W
G/add_4AddG/add_3G/mul_4*
T0*,
_output_shapes
:’’’’’’’’’

Æ
3G/conv1d_15/kernel/Initializer/random_uniform/shapeConst*!
valueB"      Š   *%
_class
loc:@G/conv1d_15/kernel*
dtype0*
_output_shapes
:

1G/conv1d_15/kernel/Initializer/random_uniform/minConst*
valueB
 *wÖ¾*%
_class
loc:@G/conv1d_15/kernel*
dtype0*
_output_shapes
: 

1G/conv1d_15/kernel/Initializer/random_uniform/maxConst*
valueB
 *wÖ>*%
_class
loc:@G/conv1d_15/kernel*
dtype0*
_output_shapes
: 
ä
;G/conv1d_15/kernel/Initializer/random_uniform/RandomUniformRandomUniform3G/conv1d_15/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@G/conv1d_15/kernel*
dtype0*$
_output_shapes
:Š
ę
1G/conv1d_15/kernel/Initializer/random_uniform/subSub1G/conv1d_15/kernel/Initializer/random_uniform/max1G/conv1d_15/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@G/conv1d_15/kernel*
_output_shapes
: 
ž
1G/conv1d_15/kernel/Initializer/random_uniform/mulMul;G/conv1d_15/kernel/Initializer/random_uniform/RandomUniform1G/conv1d_15/kernel/Initializer/random_uniform/sub*$
_output_shapes
:Š*
T0*%
_class
loc:@G/conv1d_15/kernel
š
-G/conv1d_15/kernel/Initializer/random_uniformAdd1G/conv1d_15/kernel/Initializer/random_uniform/mul1G/conv1d_15/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@G/conv1d_15/kernel*$
_output_shapes
:Š
­
G/conv1d_15/kernelVarHandleOp*
shape:Š*#
shared_nameG/conv1d_15/kernel*%
_class
loc:@G/conv1d_15/kernel*
dtype0*
_output_shapes
: 
u
3G/conv1d_15/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_15/kernel*
_output_shapes
: 
¤
G/conv1d_15/kernel/AssignAssignVariableOpG/conv1d_15/kernel-G/conv1d_15/kernel/Initializer/random_uniform*%
_class
loc:@G/conv1d_15/kernel*
dtype0
¦
&G/conv1d_15/kernel/Read/ReadVariableOpReadVariableOpG/conv1d_15/kernel*
dtype0*$
_output_shapes
:Š*%
_class
loc:@G/conv1d_15/kernel

"G/conv1d_15/bias/Initializer/zerosConst*
valueBŠ*    *#
_class
loc:@G/conv1d_15/bias*
dtype0*
_output_shapes	
:Š

G/conv1d_15/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:Š*!
shared_nameG/conv1d_15/bias*#
_class
loc:@G/conv1d_15/bias
q
1G/conv1d_15/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpG/conv1d_15/bias*
_output_shapes
: 

G/conv1d_15/bias/AssignAssignVariableOpG/conv1d_15/bias"G/conv1d_15/bias/Initializer/zeros*#
_class
loc:@G/conv1d_15/bias*
dtype0

$G/conv1d_15/bias/Read/ReadVariableOpReadVariableOpG/conv1d_15/bias*
dtype0*
_output_shapes	
:Š*#
_class
loc:@G/conv1d_15/bias
c
G/conv1d_15/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
c
!G/conv1d_15/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

G/conv1d_15/conv1d/ExpandDims
ExpandDimsG/add_4!G/conv1d_15/conv1d/ExpandDims/dim*
T0*0
_output_shapes
:’’’’’’’’’


.G/conv1d_15/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpG/conv1d_15/kernel*
dtype0*$
_output_shapes
:Š
e
#G/conv1d_15/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
µ
G/conv1d_15/conv1d/ExpandDims_1
ExpandDims.G/conv1d_15/conv1d/ExpandDims_1/ReadVariableOp#G/conv1d_15/conv1d/ExpandDims_1/dim*
T0*(
_output_shapes
:Š
Ę
G/conv1d_15/conv1d/Conv2DConv2DG/conv1d_15/conv1d/ExpandDimsG/conv1d_15/conv1d/ExpandDims_1*
T0*
strides
*0
_output_shapes
:’’’’’’’’’
Š*
paddingSAME

G/conv1d_15/conv1d/SqueezeSqueezeG/conv1d_15/conv1d/Conv2D*
T0*,
_output_shapes
:’’’’’’’’’
Š*
squeeze_dims

p
"G/conv1d_15/BiasAdd/ReadVariableOpReadVariableOpG/conv1d_15/bias*
dtype0*
_output_shapes	
:Š

G/conv1d_15/BiasAddBiasAddG/conv1d_15/conv1d/Squeeze"G/conv1d_15/BiasAdd/ReadVariableOp*
T0*,
_output_shapes
:’’’’’’’’’
Š
b
G/Reshape_1/shapeConst*
valueB"’’’’Š   *
dtype0*
_output_shapes
:
q
G/Reshape_1ReshapeG/conv1d_15/BiasAddG/Reshape_1/shape*
T0*(
_output_shapes
:’’’’’’’’’Š
T
	G/SoftmaxSoftmaxG/Reshape_1*
T0*(
_output_shapes
:’’’’’’’’’Š
J
G/ShapeShapeG/conv1d_15/BiasAdd*
_output_shapes
:*
T0
a
G/Reshape_2Reshape	G/SoftmaxG/Shape*
T0*,
_output_shapes
:’’’’’’’’’
Š
R
ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
a
ArgMaxArgMaxG/Reshape_2ArgMax/dimension*
T0*'
_output_shapes
:’’’’’’’’’


index_to_string_LookupLookupTableFindV2index_to_stringArgMaxindex_to_string/Const_1*	
Tin0	*'
_output_shapes
:’’’’’’’’’
*

Tout0
^
ReduceJoin/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
s

ReduceJoin
ReduceJoinindex_to_string_LookupReduceJoin/reduction_indices*#
_output_shapes
:’’’’’’’’’""ā5
trainable_variablesŹ5Ē5
X
G/dense/kernel:0G/dense/kernel/Assign(2+G/dense/kernel/Initializer/random_uniform:0
I
G/dense/bias:0G/dense/bias/Assign(2 G/dense/bias/Initializer/zeros:0
u
G/batch_normalization/gamma:0"G/batch_normalization/gamma/Assign(2.G/batch_normalization/gamma/Initializer/ones:0
s
G/batch_normalization/beta:0!G/batch_normalization/beta/Assign(2.G/batch_normalization/beta/Initializer/zeros:0
[
G/conv1d/kernel:0G/conv1d/kernel/Assign(2,G/conv1d/kernel/Initializer/random_uniform:0
L
G/conv1d/bias:0G/conv1d/bias/Assign(2!G/conv1d/bias/Initializer/zeros:0
{
G/batch_normalization_1/gamma:0$G/batch_normalization_1/gamma/Assign(20G/batch_normalization_1/gamma/Initializer/ones:0
y
G/batch_normalization_1/beta:0#G/batch_normalization_1/beta/Assign(20G/batch_normalization_1/beta/Initializer/zeros:0
a
G/conv1d_1/kernel:0G/conv1d_1/kernel/Assign(2.G/conv1d_1/kernel/Initializer/random_uniform:0
R
G/conv1d_1/bias:0G/conv1d_1/bias/Assign(2#G/conv1d_1/bias/Initializer/zeros:0
{
G/batch_normalization_2/gamma:0$G/batch_normalization_2/gamma/Assign(20G/batch_normalization_2/gamma/Initializer/ones:0
y
G/batch_normalization_2/beta:0#G/batch_normalization_2/beta/Assign(20G/batch_normalization_2/beta/Initializer/zeros:0
a
G/conv1d_2/kernel:0G/conv1d_2/kernel/Assign(2.G/conv1d_2/kernel/Initializer/random_uniform:0
R
G/conv1d_2/bias:0G/conv1d_2/bias/Assign(2#G/conv1d_2/bias/Initializer/zeros:0
{
G/batch_normalization_3/gamma:0$G/batch_normalization_3/gamma/Assign(20G/batch_normalization_3/gamma/Initializer/ones:0
y
G/batch_normalization_3/beta:0#G/batch_normalization_3/beta/Assign(20G/batch_normalization_3/beta/Initializer/zeros:0
a
G/conv1d_3/kernel:0G/conv1d_3/kernel/Assign(2.G/conv1d_3/kernel/Initializer/random_uniform:0
R
G/conv1d_3/bias:0G/conv1d_3/bias/Assign(2#G/conv1d_3/bias/Initializer/zeros:0
{
G/batch_normalization_4/gamma:0$G/batch_normalization_4/gamma/Assign(20G/batch_normalization_4/gamma/Initializer/ones:0
y
G/batch_normalization_4/beta:0#G/batch_normalization_4/beta/Assign(20G/batch_normalization_4/beta/Initializer/zeros:0
a
G/conv1d_4/kernel:0G/conv1d_4/kernel/Assign(2.G/conv1d_4/kernel/Initializer/random_uniform:0
R
G/conv1d_4/bias:0G/conv1d_4/bias/Assign(2#G/conv1d_4/bias/Initializer/zeros:0
{
G/batch_normalization_5/gamma:0$G/batch_normalization_5/gamma/Assign(20G/batch_normalization_5/gamma/Initializer/ones:0
y
G/batch_normalization_5/beta:0#G/batch_normalization_5/beta/Assign(20G/batch_normalization_5/beta/Initializer/zeros:0
a
G/conv1d_5/kernel:0G/conv1d_5/kernel/Assign(2.G/conv1d_5/kernel/Initializer/random_uniform:0
R
G/conv1d_5/bias:0G/conv1d_5/bias/Assign(2#G/conv1d_5/bias/Initializer/zeros:0
{
G/batch_normalization_6/gamma:0$G/batch_normalization_6/gamma/Assign(20G/batch_normalization_6/gamma/Initializer/ones:0
y
G/batch_normalization_6/beta:0#G/batch_normalization_6/beta/Assign(20G/batch_normalization_6/beta/Initializer/zeros:0
a
G/conv1d_6/kernel:0G/conv1d_6/kernel/Assign(2.G/conv1d_6/kernel/Initializer/random_uniform:0
R
G/conv1d_6/bias:0G/conv1d_6/bias/Assign(2#G/conv1d_6/bias/Initializer/zeros:0
{
G/batch_normalization_7/gamma:0$G/batch_normalization_7/gamma/Assign(20G/batch_normalization_7/gamma/Initializer/ones:0
y
G/batch_normalization_7/beta:0#G/batch_normalization_7/beta/Assign(20G/batch_normalization_7/beta/Initializer/zeros:0
a
G/conv1d_7/kernel:0G/conv1d_7/kernel/Assign(2.G/conv1d_7/kernel/Initializer/random_uniform:0
R
G/conv1d_7/bias:0G/conv1d_7/bias/Assign(2#G/conv1d_7/bias/Initializer/zeros:0
{
G/batch_normalization_8/gamma:0$G/batch_normalization_8/gamma/Assign(20G/batch_normalization_8/gamma/Initializer/ones:0
y
G/batch_normalization_8/beta:0#G/batch_normalization_8/beta/Assign(20G/batch_normalization_8/beta/Initializer/zeros:0
a
G/conv1d_8/kernel:0G/conv1d_8/kernel/Assign(2.G/conv1d_8/kernel/Initializer/random_uniform:0
R
G/conv1d_8/bias:0G/conv1d_8/bias/Assign(2#G/conv1d_8/bias/Initializer/zeros:0
{
G/batch_normalization_9/gamma:0$G/batch_normalization_9/gamma/Assign(20G/batch_normalization_9/gamma/Initializer/ones:0
y
G/batch_normalization_9/beta:0#G/batch_normalization_9/beta/Assign(20G/batch_normalization_9/beta/Initializer/zeros:0
a
G/conv1d_9/kernel:0G/conv1d_9/kernel/Assign(2.G/conv1d_9/kernel/Initializer/random_uniform:0
R
G/conv1d_9/bias:0G/conv1d_9/bias/Assign(2#G/conv1d_9/bias/Initializer/zeros:0
~
 G/batch_normalization_10/gamma:0%G/batch_normalization_10/gamma/Assign(21G/batch_normalization_10/gamma/Initializer/ones:0
|
G/batch_normalization_10/beta:0$G/batch_normalization_10/beta/Assign(21G/batch_normalization_10/beta/Initializer/zeros:0
d
G/conv1d_10/kernel:0G/conv1d_10/kernel/Assign(2/G/conv1d_10/kernel/Initializer/random_uniform:0
U
G/conv1d_10/bias:0G/conv1d_10/bias/Assign(2$G/conv1d_10/bias/Initializer/zeros:0
~
 G/batch_normalization_11/gamma:0%G/batch_normalization_11/gamma/Assign(21G/batch_normalization_11/gamma/Initializer/ones:0
|
G/batch_normalization_11/beta:0$G/batch_normalization_11/beta/Assign(21G/batch_normalization_11/beta/Initializer/zeros:0
d
G/conv1d_11/kernel:0G/conv1d_11/kernel/Assign(2/G/conv1d_11/kernel/Initializer/random_uniform:0
U
G/conv1d_11/bias:0G/conv1d_11/bias/Assign(2$G/conv1d_11/bias/Initializer/zeros:0
~
 G/batch_normalization_12/gamma:0%G/batch_normalization_12/gamma/Assign(21G/batch_normalization_12/gamma/Initializer/ones:0
|
G/batch_normalization_12/beta:0$G/batch_normalization_12/beta/Assign(21G/batch_normalization_12/beta/Initializer/zeros:0
d
G/conv1d_12/kernel:0G/conv1d_12/kernel/Assign(2/G/conv1d_12/kernel/Initializer/random_uniform:0
U
G/conv1d_12/bias:0G/conv1d_12/bias/Assign(2$G/conv1d_12/bias/Initializer/zeros:0
~
 G/batch_normalization_13/gamma:0%G/batch_normalization_13/gamma/Assign(21G/batch_normalization_13/gamma/Initializer/ones:0
|
G/batch_normalization_13/beta:0$G/batch_normalization_13/beta/Assign(21G/batch_normalization_13/beta/Initializer/zeros:0
d
G/conv1d_13/kernel:0G/conv1d_13/kernel/Assign(2/G/conv1d_13/kernel/Initializer/random_uniform:0
U
G/conv1d_13/bias:0G/conv1d_13/bias/Assign(2$G/conv1d_13/bias/Initializer/zeros:0
~
 G/batch_normalization_14/gamma:0%G/batch_normalization_14/gamma/Assign(21G/batch_normalization_14/gamma/Initializer/ones:0
|
G/batch_normalization_14/beta:0$G/batch_normalization_14/beta/Assign(21G/batch_normalization_14/beta/Initializer/zeros:0
d
G/conv1d_14/kernel:0G/conv1d_14/kernel/Assign(2/G/conv1d_14/kernel/Initializer/random_uniform:0
U
G/conv1d_14/bias:0G/conv1d_14/bias/Assign(2$G/conv1d_14/bias/Initializer/zeros:0
d
G/conv1d_15/kernel:0G/conv1d_15/kernel/Assign(2/G/conv1d_15/kernel/Initializer/random_uniform:0
U
G/conv1d_15/bias:0G/conv1d_15/bias/Assign(2$G/conv1d_15/bias/Initializer/zeros:0"Ģ
cond_contextĢĢ
¬
$G/batch_normalization/cond/cond_text$G/batch_normalization/cond/pred_id:0%G/batch_normalization/cond/switch_t:0 *“
%G/batch_normalization/cond/Switch_1:0
%G/batch_normalization/cond/Switch_1:1
$G/batch_normalization/cond/pred_id:0
%G/batch_normalization/cond/switch_t:0
'G/batch_normalization/moments/Squeeze:0L
$G/batch_normalization/cond/pred_id:0$G/batch_normalization/cond/pred_id:0N
%G/batch_normalization/cond/switch_t:0%G/batch_normalization/cond/switch_t:0P
'G/batch_normalization/moments/Squeeze:0%G/batch_normalization/cond/Switch_1:1
Ä
&G/batch_normalization/cond/cond_text_1$G/batch_normalization/cond/pred_id:0%G/batch_normalization/cond/switch_f:0*Ģ
2G/batch_normalization/cond/ReadVariableOp/Switch:0
+G/batch_normalization/cond/ReadVariableOp:0
$G/batch_normalization/cond/pred_id:0
%G/batch_normalization/cond/switch_f:0
#G/batch_normalization/moving_mean:0L
$G/batch_normalization/cond/pred_id:0$G/batch_normalization/cond/pred_id:0Y
#G/batch_normalization/moving_mean:02G/batch_normalization/cond/ReadVariableOp/Switch:0N
%G/batch_normalization/cond/switch_f:0%G/batch_normalization/cond/switch_f:0
Č
&G/batch_normalization/cond_1/cond_text&G/batch_normalization/cond_1/pred_id:0'G/batch_normalization/cond_1/switch_t:0 *Ź
'G/batch_normalization/cond_1/Switch_1:0
'G/batch_normalization/cond_1/Switch_1:1
&G/batch_normalization/cond_1/pred_id:0
'G/batch_normalization/cond_1/switch_t:0
)G/batch_normalization/moments/Squeeze_1:0T
)G/batch_normalization/moments/Squeeze_1:0'G/batch_normalization/cond_1/Switch_1:1P
&G/batch_normalization/cond_1/pred_id:0&G/batch_normalization/cond_1/pred_id:0R
'G/batch_normalization/cond_1/switch_t:0'G/batch_normalization/cond_1/switch_t:0
ä
(G/batch_normalization/cond_1/cond_text_1&G/batch_normalization/cond_1/pred_id:0'G/batch_normalization/cond_1/switch_f:0*ę
4G/batch_normalization/cond_1/ReadVariableOp/Switch:0
-G/batch_normalization/cond_1/ReadVariableOp:0
&G/batch_normalization/cond_1/pred_id:0
'G/batch_normalization/cond_1/switch_f:0
'G/batch_normalization/moving_variance:0R
'G/batch_normalization/cond_1/switch_f:0'G/batch_normalization/cond_1/switch_f:0_
'G/batch_normalization/moving_variance:04G/batch_normalization/cond_1/ReadVariableOp/Switch:0P
&G/batch_normalization/cond_1/pred_id:0&G/batch_normalization/cond_1/pred_id:0
Ś
&G/batch_normalization/cond_2/cond_text&G/batch_normalization/cond_2/pred_id:0'G/batch_normalization/cond_2/switch_t:0 *Ü
"G/batch_normalization/cond/Merge:0
DG/batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
=G/batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp:0
?G/batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp_1:0
4G/batch_normalization/cond_2/AssignMovingAvg/decay:0
2G/batch_normalization/cond_2/AssignMovingAvg/mul:0
9G/batch_normalization/cond_2/AssignMovingAvg/sub/Switch:1
2G/batch_normalization/cond_2/AssignMovingAvg/sub:0
-G/batch_normalization/cond_2/ReadVariableOp:0
&G/batch_normalization/cond_2/pred_id:0
'G/batch_normalization/cond_2/switch_t:0
#G/batch_normalization/moving_mean:0k
#G/batch_normalization/moving_mean:0DG/batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1R
'G/batch_normalization/cond_2/switch_t:0'G/batch_normalization/cond_2/switch_t:0P
&G/batch_normalization/cond_2/pred_id:0&G/batch_normalization/cond_2/pred_id:0_
"G/batch_normalization/cond/Merge:09G/batch_normalization/cond_2/AssignMovingAvg/sub/Switch:1
ā
(G/batch_normalization/cond_2/cond_text_1&G/batch_normalization/cond_2/pred_id:0'G/batch_normalization/cond_2/switch_f:0*ä
6G/batch_normalization/cond_2/ReadVariableOp_1/Switch:0
/G/batch_normalization/cond_2/ReadVariableOp_1:0
&G/batch_normalization/cond_2/pred_id:0
'G/batch_normalization/cond_2/switch_f:0
#G/batch_normalization/moving_mean:0P
&G/batch_normalization/cond_2/pred_id:0&G/batch_normalization/cond_2/pred_id:0R
'G/batch_normalization/cond_2/switch_f:0'G/batch_normalization/cond_2/switch_f:0]
#G/batch_normalization/moving_mean:06G/batch_normalization/cond_2/ReadVariableOp_1/Switch:0
ę
&G/batch_normalization/cond_3/cond_text&G/batch_normalization/cond_3/pred_id:0'G/batch_normalization/cond_3/switch_t:0 *č
$G/batch_normalization/cond_1/Merge:0
DG/batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
=G/batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp:0
?G/batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp_1:0
4G/batch_normalization/cond_3/AssignMovingAvg/decay:0
2G/batch_normalization/cond_3/AssignMovingAvg/mul:0
9G/batch_normalization/cond_3/AssignMovingAvg/sub/Switch:1
2G/batch_normalization/cond_3/AssignMovingAvg/sub:0
-G/batch_normalization/cond_3/ReadVariableOp:0
&G/batch_normalization/cond_3/pred_id:0
'G/batch_normalization/cond_3/switch_t:0
'G/batch_normalization/moving_variance:0R
'G/batch_normalization/cond_3/switch_t:0'G/batch_normalization/cond_3/switch_t:0a
$G/batch_normalization/cond_1/Merge:09G/batch_normalization/cond_3/AssignMovingAvg/sub/Switch:1o
'G/batch_normalization/moving_variance:0DG/batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1P
&G/batch_normalization/cond_3/pred_id:0&G/batch_normalization/cond_3/pred_id:0
ź
(G/batch_normalization/cond_3/cond_text_1&G/batch_normalization/cond_3/pred_id:0'G/batch_normalization/cond_3/switch_f:0*ģ
6G/batch_normalization/cond_3/ReadVariableOp_1/Switch:0
/G/batch_normalization/cond_3/ReadVariableOp_1:0
&G/batch_normalization/cond_3/pred_id:0
'G/batch_normalization/cond_3/switch_f:0
'G/batch_normalization/moving_variance:0P
&G/batch_normalization/cond_3/pred_id:0&G/batch_normalization/cond_3/pred_id:0R
'G/batch_normalization/cond_3/switch_f:0'G/batch_normalization/cond_3/switch_f:0a
'G/batch_normalization/moving_variance:06G/batch_normalization/cond_3/ReadVariableOp_1/Switch:0
Č
&G/batch_normalization_1/cond/cond_text&G/batch_normalization_1/cond/pred_id:0'G/batch_normalization_1/cond/switch_t:0 *Ź
'G/batch_normalization_1/cond/Switch_1:0
'G/batch_normalization_1/cond/Switch_1:1
&G/batch_normalization_1/cond/pred_id:0
'G/batch_normalization_1/cond/switch_t:0
)G/batch_normalization_1/moments/Squeeze:0P
&G/batch_normalization_1/cond/pred_id:0&G/batch_normalization_1/cond/pred_id:0R
'G/batch_normalization_1/cond/switch_t:0'G/batch_normalization_1/cond/switch_t:0T
)G/batch_normalization_1/moments/Squeeze:0'G/batch_normalization_1/cond/Switch_1:1
ą
(G/batch_normalization_1/cond/cond_text_1&G/batch_normalization_1/cond/pred_id:0'G/batch_normalization_1/cond/switch_f:0*ā
4G/batch_normalization_1/cond/ReadVariableOp/Switch:0
-G/batch_normalization_1/cond/ReadVariableOp:0
&G/batch_normalization_1/cond/pred_id:0
'G/batch_normalization_1/cond/switch_f:0
%G/batch_normalization_1/moving_mean:0P
&G/batch_normalization_1/cond/pred_id:0&G/batch_normalization_1/cond/pred_id:0]
%G/batch_normalization_1/moving_mean:04G/batch_normalization_1/cond/ReadVariableOp/Switch:0R
'G/batch_normalization_1/cond/switch_f:0'G/batch_normalization_1/cond/switch_f:0
ä
(G/batch_normalization_1/cond_1/cond_text(G/batch_normalization_1/cond_1/pred_id:0)G/batch_normalization_1/cond_1/switch_t:0 *ą
)G/batch_normalization_1/cond_1/Switch_1:0
)G/batch_normalization_1/cond_1/Switch_1:1
(G/batch_normalization_1/cond_1/pred_id:0
)G/batch_normalization_1/cond_1/switch_t:0
+G/batch_normalization_1/moments/Squeeze_1:0X
+G/batch_normalization_1/moments/Squeeze_1:0)G/batch_normalization_1/cond_1/Switch_1:1T
(G/batch_normalization_1/cond_1/pred_id:0(G/batch_normalization_1/cond_1/pred_id:0V
)G/batch_normalization_1/cond_1/switch_t:0)G/batch_normalization_1/cond_1/switch_t:0

*G/batch_normalization_1/cond_1/cond_text_1(G/batch_normalization_1/cond_1/pred_id:0)G/batch_normalization_1/cond_1/switch_f:0*ü
6G/batch_normalization_1/cond_1/ReadVariableOp/Switch:0
/G/batch_normalization_1/cond_1/ReadVariableOp:0
(G/batch_normalization_1/cond_1/pred_id:0
)G/batch_normalization_1/cond_1/switch_f:0
)G/batch_normalization_1/moving_variance:0T
(G/batch_normalization_1/cond_1/pred_id:0(G/batch_normalization_1/cond_1/pred_id:0V
)G/batch_normalization_1/cond_1/switch_f:0)G/batch_normalization_1/cond_1/switch_f:0c
)G/batch_normalization_1/moving_variance:06G/batch_normalization_1/cond_1/ReadVariableOp/Switch:0
	
(G/batch_normalization_1/cond_2/cond_text(G/batch_normalization_1/cond_2/pred_id:0)G/batch_normalization_1/cond_2/switch_t:0 *
$G/batch_normalization_1/cond/Merge:0
FG/batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_1/cond_2/AssignMovingAvg/decay:0
4G/batch_normalization_1/cond_2/AssignMovingAvg/mul:0
;G/batch_normalization_1/cond_2/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_1/cond_2/AssignMovingAvg/sub:0
/G/batch_normalization_1/cond_2/ReadVariableOp:0
(G/batch_normalization_1/cond_2/pred_id:0
)G/batch_normalization_1/cond_2/switch_t:0
%G/batch_normalization_1/moving_mean:0V
)G/batch_normalization_1/cond_2/switch_t:0)G/batch_normalization_1/cond_2/switch_t:0T
(G/batch_normalization_1/cond_2/pred_id:0(G/batch_normalization_1/cond_2/pred_id:0c
$G/batch_normalization_1/cond/Merge:0;G/batch_normalization_1/cond_2/AssignMovingAvg/sub/Switch:1o
%G/batch_normalization_1/moving_mean:0FG/batch_normalization_1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
ž
*G/batch_normalization_1/cond_2/cond_text_1(G/batch_normalization_1/cond_2/pred_id:0)G/batch_normalization_1/cond_2/switch_f:0*ś
8G/batch_normalization_1/cond_2/ReadVariableOp_1/Switch:0
1G/batch_normalization_1/cond_2/ReadVariableOp_1:0
(G/batch_normalization_1/cond_2/pred_id:0
)G/batch_normalization_1/cond_2/switch_f:0
%G/batch_normalization_1/moving_mean:0T
(G/batch_normalization_1/cond_2/pred_id:0(G/batch_normalization_1/cond_2/pred_id:0V
)G/batch_normalization_1/cond_2/switch_f:0)G/batch_normalization_1/cond_2/switch_f:0a
%G/batch_normalization_1/moving_mean:08G/batch_normalization_1/cond_2/ReadVariableOp_1/Switch:0
	
(G/batch_normalization_1/cond_3/cond_text(G/batch_normalization_1/cond_3/pred_id:0)G/batch_normalization_1/cond_3/switch_t:0 *
&G/batch_normalization_1/cond_1/Merge:0
FG/batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_1/cond_3/AssignMovingAvg/decay:0
4G/batch_normalization_1/cond_3/AssignMovingAvg/mul:0
;G/batch_normalization_1/cond_3/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_1/cond_3/AssignMovingAvg/sub:0
/G/batch_normalization_1/cond_3/ReadVariableOp:0
(G/batch_normalization_1/cond_3/pred_id:0
)G/batch_normalization_1/cond_3/switch_t:0
)G/batch_normalization_1/moving_variance:0T
(G/batch_normalization_1/cond_3/pred_id:0(G/batch_normalization_1/cond_3/pred_id:0V
)G/batch_normalization_1/cond_3/switch_t:0)G/batch_normalization_1/cond_3/switch_t:0e
&G/batch_normalization_1/cond_1/Merge:0;G/batch_normalization_1/cond_3/AssignMovingAvg/sub/Switch:1s
)G/batch_normalization_1/moving_variance:0FG/batch_normalization_1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1

*G/batch_normalization_1/cond_3/cond_text_1(G/batch_normalization_1/cond_3/pred_id:0)G/batch_normalization_1/cond_3/switch_f:0*
8G/batch_normalization_1/cond_3/ReadVariableOp_1/Switch:0
1G/batch_normalization_1/cond_3/ReadVariableOp_1:0
(G/batch_normalization_1/cond_3/pred_id:0
)G/batch_normalization_1/cond_3/switch_f:0
)G/batch_normalization_1/moving_variance:0T
(G/batch_normalization_1/cond_3/pred_id:0(G/batch_normalization_1/cond_3/pred_id:0V
)G/batch_normalization_1/cond_3/switch_f:0)G/batch_normalization_1/cond_3/switch_f:0e
)G/batch_normalization_1/moving_variance:08G/batch_normalization_1/cond_3/ReadVariableOp_1/Switch:0
Č
&G/batch_normalization_2/cond/cond_text&G/batch_normalization_2/cond/pred_id:0'G/batch_normalization_2/cond/switch_t:0 *Ź
'G/batch_normalization_2/cond/Switch_1:0
'G/batch_normalization_2/cond/Switch_1:1
&G/batch_normalization_2/cond/pred_id:0
'G/batch_normalization_2/cond/switch_t:0
)G/batch_normalization_2/moments/Squeeze:0R
'G/batch_normalization_2/cond/switch_t:0'G/batch_normalization_2/cond/switch_t:0P
&G/batch_normalization_2/cond/pred_id:0&G/batch_normalization_2/cond/pred_id:0T
)G/batch_normalization_2/moments/Squeeze:0'G/batch_normalization_2/cond/Switch_1:1
ą
(G/batch_normalization_2/cond/cond_text_1&G/batch_normalization_2/cond/pred_id:0'G/batch_normalization_2/cond/switch_f:0*ā
4G/batch_normalization_2/cond/ReadVariableOp/Switch:0
-G/batch_normalization_2/cond/ReadVariableOp:0
&G/batch_normalization_2/cond/pred_id:0
'G/batch_normalization_2/cond/switch_f:0
%G/batch_normalization_2/moving_mean:0P
&G/batch_normalization_2/cond/pred_id:0&G/batch_normalization_2/cond/pred_id:0R
'G/batch_normalization_2/cond/switch_f:0'G/batch_normalization_2/cond/switch_f:0]
%G/batch_normalization_2/moving_mean:04G/batch_normalization_2/cond/ReadVariableOp/Switch:0
ä
(G/batch_normalization_2/cond_1/cond_text(G/batch_normalization_2/cond_1/pred_id:0)G/batch_normalization_2/cond_1/switch_t:0 *ą
)G/batch_normalization_2/cond_1/Switch_1:0
)G/batch_normalization_2/cond_1/Switch_1:1
(G/batch_normalization_2/cond_1/pred_id:0
)G/batch_normalization_2/cond_1/switch_t:0
+G/batch_normalization_2/moments/Squeeze_1:0V
)G/batch_normalization_2/cond_1/switch_t:0)G/batch_normalization_2/cond_1/switch_t:0T
(G/batch_normalization_2/cond_1/pred_id:0(G/batch_normalization_2/cond_1/pred_id:0X
+G/batch_normalization_2/moments/Squeeze_1:0)G/batch_normalization_2/cond_1/Switch_1:1

*G/batch_normalization_2/cond_1/cond_text_1(G/batch_normalization_2/cond_1/pred_id:0)G/batch_normalization_2/cond_1/switch_f:0*ü
6G/batch_normalization_2/cond_1/ReadVariableOp/Switch:0
/G/batch_normalization_2/cond_1/ReadVariableOp:0
(G/batch_normalization_2/cond_1/pred_id:0
)G/batch_normalization_2/cond_1/switch_f:0
)G/batch_normalization_2/moving_variance:0T
(G/batch_normalization_2/cond_1/pred_id:0(G/batch_normalization_2/cond_1/pred_id:0V
)G/batch_normalization_2/cond_1/switch_f:0)G/batch_normalization_2/cond_1/switch_f:0c
)G/batch_normalization_2/moving_variance:06G/batch_normalization_2/cond_1/ReadVariableOp/Switch:0
	
(G/batch_normalization_2/cond_2/cond_text(G/batch_normalization_2/cond_2/pred_id:0)G/batch_normalization_2/cond_2/switch_t:0 *
$G/batch_normalization_2/cond/Merge:0
FG/batch_normalization_2/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_2/cond_2/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_2/cond_2/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_2/cond_2/AssignMovingAvg/decay:0
4G/batch_normalization_2/cond_2/AssignMovingAvg/mul:0
;G/batch_normalization_2/cond_2/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_2/cond_2/AssignMovingAvg/sub:0
/G/batch_normalization_2/cond_2/ReadVariableOp:0
(G/batch_normalization_2/cond_2/pred_id:0
)G/batch_normalization_2/cond_2/switch_t:0
%G/batch_normalization_2/moving_mean:0o
%G/batch_normalization_2/moving_mean:0FG/batch_normalization_2/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1V
)G/batch_normalization_2/cond_2/switch_t:0)G/batch_normalization_2/cond_2/switch_t:0T
(G/batch_normalization_2/cond_2/pred_id:0(G/batch_normalization_2/cond_2/pred_id:0c
$G/batch_normalization_2/cond/Merge:0;G/batch_normalization_2/cond_2/AssignMovingAvg/sub/Switch:1
ž
*G/batch_normalization_2/cond_2/cond_text_1(G/batch_normalization_2/cond_2/pred_id:0)G/batch_normalization_2/cond_2/switch_f:0*ś
8G/batch_normalization_2/cond_2/ReadVariableOp_1/Switch:0
1G/batch_normalization_2/cond_2/ReadVariableOp_1:0
(G/batch_normalization_2/cond_2/pred_id:0
)G/batch_normalization_2/cond_2/switch_f:0
%G/batch_normalization_2/moving_mean:0V
)G/batch_normalization_2/cond_2/switch_f:0)G/batch_normalization_2/cond_2/switch_f:0T
(G/batch_normalization_2/cond_2/pred_id:0(G/batch_normalization_2/cond_2/pred_id:0a
%G/batch_normalization_2/moving_mean:08G/batch_normalization_2/cond_2/ReadVariableOp_1/Switch:0
	
(G/batch_normalization_2/cond_3/cond_text(G/batch_normalization_2/cond_3/pred_id:0)G/batch_normalization_2/cond_3/switch_t:0 *
&G/batch_normalization_2/cond_1/Merge:0
FG/batch_normalization_2/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_2/cond_3/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_2/cond_3/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_2/cond_3/AssignMovingAvg/decay:0
4G/batch_normalization_2/cond_3/AssignMovingAvg/mul:0
;G/batch_normalization_2/cond_3/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_2/cond_3/AssignMovingAvg/sub:0
/G/batch_normalization_2/cond_3/ReadVariableOp:0
(G/batch_normalization_2/cond_3/pred_id:0
)G/batch_normalization_2/cond_3/switch_t:0
)G/batch_normalization_2/moving_variance:0e
&G/batch_normalization_2/cond_1/Merge:0;G/batch_normalization_2/cond_3/AssignMovingAvg/sub/Switch:1V
)G/batch_normalization_2/cond_3/switch_t:0)G/batch_normalization_2/cond_3/switch_t:0T
(G/batch_normalization_2/cond_3/pred_id:0(G/batch_normalization_2/cond_3/pred_id:0s
)G/batch_normalization_2/moving_variance:0FG/batch_normalization_2/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1

*G/batch_normalization_2/cond_3/cond_text_1(G/batch_normalization_2/cond_3/pred_id:0)G/batch_normalization_2/cond_3/switch_f:0*
8G/batch_normalization_2/cond_3/ReadVariableOp_1/Switch:0
1G/batch_normalization_2/cond_3/ReadVariableOp_1:0
(G/batch_normalization_2/cond_3/pred_id:0
)G/batch_normalization_2/cond_3/switch_f:0
)G/batch_normalization_2/moving_variance:0T
(G/batch_normalization_2/cond_3/pred_id:0(G/batch_normalization_2/cond_3/pred_id:0V
)G/batch_normalization_2/cond_3/switch_f:0)G/batch_normalization_2/cond_3/switch_f:0e
)G/batch_normalization_2/moving_variance:08G/batch_normalization_2/cond_3/ReadVariableOp_1/Switch:0
Č
&G/batch_normalization_3/cond/cond_text&G/batch_normalization_3/cond/pred_id:0'G/batch_normalization_3/cond/switch_t:0 *Ź
'G/batch_normalization_3/cond/Switch_1:0
'G/batch_normalization_3/cond/Switch_1:1
&G/batch_normalization_3/cond/pred_id:0
'G/batch_normalization_3/cond/switch_t:0
)G/batch_normalization_3/moments/Squeeze:0T
)G/batch_normalization_3/moments/Squeeze:0'G/batch_normalization_3/cond/Switch_1:1P
&G/batch_normalization_3/cond/pred_id:0&G/batch_normalization_3/cond/pred_id:0R
'G/batch_normalization_3/cond/switch_t:0'G/batch_normalization_3/cond/switch_t:0
ą
(G/batch_normalization_3/cond/cond_text_1&G/batch_normalization_3/cond/pred_id:0'G/batch_normalization_3/cond/switch_f:0*ā
4G/batch_normalization_3/cond/ReadVariableOp/Switch:0
-G/batch_normalization_3/cond/ReadVariableOp:0
&G/batch_normalization_3/cond/pred_id:0
'G/batch_normalization_3/cond/switch_f:0
%G/batch_normalization_3/moving_mean:0P
&G/batch_normalization_3/cond/pred_id:0&G/batch_normalization_3/cond/pred_id:0]
%G/batch_normalization_3/moving_mean:04G/batch_normalization_3/cond/ReadVariableOp/Switch:0R
'G/batch_normalization_3/cond/switch_f:0'G/batch_normalization_3/cond/switch_f:0
ä
(G/batch_normalization_3/cond_1/cond_text(G/batch_normalization_3/cond_1/pred_id:0)G/batch_normalization_3/cond_1/switch_t:0 *ą
)G/batch_normalization_3/cond_1/Switch_1:0
)G/batch_normalization_3/cond_1/Switch_1:1
(G/batch_normalization_3/cond_1/pred_id:0
)G/batch_normalization_3/cond_1/switch_t:0
+G/batch_normalization_3/moments/Squeeze_1:0X
+G/batch_normalization_3/moments/Squeeze_1:0)G/batch_normalization_3/cond_1/Switch_1:1T
(G/batch_normalization_3/cond_1/pred_id:0(G/batch_normalization_3/cond_1/pred_id:0V
)G/batch_normalization_3/cond_1/switch_t:0)G/batch_normalization_3/cond_1/switch_t:0

*G/batch_normalization_3/cond_1/cond_text_1(G/batch_normalization_3/cond_1/pred_id:0)G/batch_normalization_3/cond_1/switch_f:0*ü
6G/batch_normalization_3/cond_1/ReadVariableOp/Switch:0
/G/batch_normalization_3/cond_1/ReadVariableOp:0
(G/batch_normalization_3/cond_1/pred_id:0
)G/batch_normalization_3/cond_1/switch_f:0
)G/batch_normalization_3/moving_variance:0T
(G/batch_normalization_3/cond_1/pred_id:0(G/batch_normalization_3/cond_1/pred_id:0V
)G/batch_normalization_3/cond_1/switch_f:0)G/batch_normalization_3/cond_1/switch_f:0c
)G/batch_normalization_3/moving_variance:06G/batch_normalization_3/cond_1/ReadVariableOp/Switch:0
	
(G/batch_normalization_3/cond_2/cond_text(G/batch_normalization_3/cond_2/pred_id:0)G/batch_normalization_3/cond_2/switch_t:0 *
$G/batch_normalization_3/cond/Merge:0
FG/batch_normalization_3/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_3/cond_2/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_3/cond_2/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_3/cond_2/AssignMovingAvg/decay:0
4G/batch_normalization_3/cond_2/AssignMovingAvg/mul:0
;G/batch_normalization_3/cond_2/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_3/cond_2/AssignMovingAvg/sub:0
/G/batch_normalization_3/cond_2/ReadVariableOp:0
(G/batch_normalization_3/cond_2/pred_id:0
)G/batch_normalization_3/cond_2/switch_t:0
%G/batch_normalization_3/moving_mean:0o
%G/batch_normalization_3/moving_mean:0FG/batch_normalization_3/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1V
)G/batch_normalization_3/cond_2/switch_t:0)G/batch_normalization_3/cond_2/switch_t:0T
(G/batch_normalization_3/cond_2/pred_id:0(G/batch_normalization_3/cond_2/pred_id:0c
$G/batch_normalization_3/cond/Merge:0;G/batch_normalization_3/cond_2/AssignMovingAvg/sub/Switch:1
ž
*G/batch_normalization_3/cond_2/cond_text_1(G/batch_normalization_3/cond_2/pred_id:0)G/batch_normalization_3/cond_2/switch_f:0*ś
8G/batch_normalization_3/cond_2/ReadVariableOp_1/Switch:0
1G/batch_normalization_3/cond_2/ReadVariableOp_1:0
(G/batch_normalization_3/cond_2/pred_id:0
)G/batch_normalization_3/cond_2/switch_f:0
%G/batch_normalization_3/moving_mean:0T
(G/batch_normalization_3/cond_2/pred_id:0(G/batch_normalization_3/cond_2/pred_id:0V
)G/batch_normalization_3/cond_2/switch_f:0)G/batch_normalization_3/cond_2/switch_f:0a
%G/batch_normalization_3/moving_mean:08G/batch_normalization_3/cond_2/ReadVariableOp_1/Switch:0
	
(G/batch_normalization_3/cond_3/cond_text(G/batch_normalization_3/cond_3/pred_id:0)G/batch_normalization_3/cond_3/switch_t:0 *
&G/batch_normalization_3/cond_1/Merge:0
FG/batch_normalization_3/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_3/cond_3/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_3/cond_3/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_3/cond_3/AssignMovingAvg/decay:0
4G/batch_normalization_3/cond_3/AssignMovingAvg/mul:0
;G/batch_normalization_3/cond_3/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_3/cond_3/AssignMovingAvg/sub:0
/G/batch_normalization_3/cond_3/ReadVariableOp:0
(G/batch_normalization_3/cond_3/pred_id:0
)G/batch_normalization_3/cond_3/switch_t:0
)G/batch_normalization_3/moving_variance:0T
(G/batch_normalization_3/cond_3/pred_id:0(G/batch_normalization_3/cond_3/pred_id:0V
)G/batch_normalization_3/cond_3/switch_t:0)G/batch_normalization_3/cond_3/switch_t:0e
&G/batch_normalization_3/cond_1/Merge:0;G/batch_normalization_3/cond_3/AssignMovingAvg/sub/Switch:1s
)G/batch_normalization_3/moving_variance:0FG/batch_normalization_3/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1

*G/batch_normalization_3/cond_3/cond_text_1(G/batch_normalization_3/cond_3/pred_id:0)G/batch_normalization_3/cond_3/switch_f:0*
8G/batch_normalization_3/cond_3/ReadVariableOp_1/Switch:0
1G/batch_normalization_3/cond_3/ReadVariableOp_1:0
(G/batch_normalization_3/cond_3/pred_id:0
)G/batch_normalization_3/cond_3/switch_f:0
)G/batch_normalization_3/moving_variance:0T
(G/batch_normalization_3/cond_3/pred_id:0(G/batch_normalization_3/cond_3/pred_id:0V
)G/batch_normalization_3/cond_3/switch_f:0)G/batch_normalization_3/cond_3/switch_f:0e
)G/batch_normalization_3/moving_variance:08G/batch_normalization_3/cond_3/ReadVariableOp_1/Switch:0
Č
&G/batch_normalization_4/cond/cond_text&G/batch_normalization_4/cond/pred_id:0'G/batch_normalization_4/cond/switch_t:0 *Ź
'G/batch_normalization_4/cond/Switch_1:0
'G/batch_normalization_4/cond/Switch_1:1
&G/batch_normalization_4/cond/pred_id:0
'G/batch_normalization_4/cond/switch_t:0
)G/batch_normalization_4/moments/Squeeze:0R
'G/batch_normalization_4/cond/switch_t:0'G/batch_normalization_4/cond/switch_t:0P
&G/batch_normalization_4/cond/pred_id:0&G/batch_normalization_4/cond/pred_id:0T
)G/batch_normalization_4/moments/Squeeze:0'G/batch_normalization_4/cond/Switch_1:1
ą
(G/batch_normalization_4/cond/cond_text_1&G/batch_normalization_4/cond/pred_id:0'G/batch_normalization_4/cond/switch_f:0*ā
4G/batch_normalization_4/cond/ReadVariableOp/Switch:0
-G/batch_normalization_4/cond/ReadVariableOp:0
&G/batch_normalization_4/cond/pred_id:0
'G/batch_normalization_4/cond/switch_f:0
%G/batch_normalization_4/moving_mean:0]
%G/batch_normalization_4/moving_mean:04G/batch_normalization_4/cond/ReadVariableOp/Switch:0P
&G/batch_normalization_4/cond/pred_id:0&G/batch_normalization_4/cond/pred_id:0R
'G/batch_normalization_4/cond/switch_f:0'G/batch_normalization_4/cond/switch_f:0
ä
(G/batch_normalization_4/cond_1/cond_text(G/batch_normalization_4/cond_1/pred_id:0)G/batch_normalization_4/cond_1/switch_t:0 *ą
)G/batch_normalization_4/cond_1/Switch_1:0
)G/batch_normalization_4/cond_1/Switch_1:1
(G/batch_normalization_4/cond_1/pred_id:0
)G/batch_normalization_4/cond_1/switch_t:0
+G/batch_normalization_4/moments/Squeeze_1:0X
+G/batch_normalization_4/moments/Squeeze_1:0)G/batch_normalization_4/cond_1/Switch_1:1V
)G/batch_normalization_4/cond_1/switch_t:0)G/batch_normalization_4/cond_1/switch_t:0T
(G/batch_normalization_4/cond_1/pred_id:0(G/batch_normalization_4/cond_1/pred_id:0

*G/batch_normalization_4/cond_1/cond_text_1(G/batch_normalization_4/cond_1/pred_id:0)G/batch_normalization_4/cond_1/switch_f:0*ü
6G/batch_normalization_4/cond_1/ReadVariableOp/Switch:0
/G/batch_normalization_4/cond_1/ReadVariableOp:0
(G/batch_normalization_4/cond_1/pred_id:0
)G/batch_normalization_4/cond_1/switch_f:0
)G/batch_normalization_4/moving_variance:0T
(G/batch_normalization_4/cond_1/pred_id:0(G/batch_normalization_4/cond_1/pred_id:0V
)G/batch_normalization_4/cond_1/switch_f:0)G/batch_normalization_4/cond_1/switch_f:0c
)G/batch_normalization_4/moving_variance:06G/batch_normalization_4/cond_1/ReadVariableOp/Switch:0
	
(G/batch_normalization_4/cond_2/cond_text(G/batch_normalization_4/cond_2/pred_id:0)G/batch_normalization_4/cond_2/switch_t:0 *
$G/batch_normalization_4/cond/Merge:0
FG/batch_normalization_4/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_4/cond_2/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_4/cond_2/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_4/cond_2/AssignMovingAvg/decay:0
4G/batch_normalization_4/cond_2/AssignMovingAvg/mul:0
;G/batch_normalization_4/cond_2/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_4/cond_2/AssignMovingAvg/sub:0
/G/batch_normalization_4/cond_2/ReadVariableOp:0
(G/batch_normalization_4/cond_2/pred_id:0
)G/batch_normalization_4/cond_2/switch_t:0
%G/batch_normalization_4/moving_mean:0T
(G/batch_normalization_4/cond_2/pred_id:0(G/batch_normalization_4/cond_2/pred_id:0c
$G/batch_normalization_4/cond/Merge:0;G/batch_normalization_4/cond_2/AssignMovingAvg/sub/Switch:1o
%G/batch_normalization_4/moving_mean:0FG/batch_normalization_4/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1V
)G/batch_normalization_4/cond_2/switch_t:0)G/batch_normalization_4/cond_2/switch_t:0
ž
*G/batch_normalization_4/cond_2/cond_text_1(G/batch_normalization_4/cond_2/pred_id:0)G/batch_normalization_4/cond_2/switch_f:0*ś
8G/batch_normalization_4/cond_2/ReadVariableOp_1/Switch:0
1G/batch_normalization_4/cond_2/ReadVariableOp_1:0
(G/batch_normalization_4/cond_2/pred_id:0
)G/batch_normalization_4/cond_2/switch_f:0
%G/batch_normalization_4/moving_mean:0T
(G/batch_normalization_4/cond_2/pred_id:0(G/batch_normalization_4/cond_2/pred_id:0a
%G/batch_normalization_4/moving_mean:08G/batch_normalization_4/cond_2/ReadVariableOp_1/Switch:0V
)G/batch_normalization_4/cond_2/switch_f:0)G/batch_normalization_4/cond_2/switch_f:0
	
(G/batch_normalization_4/cond_3/cond_text(G/batch_normalization_4/cond_3/pred_id:0)G/batch_normalization_4/cond_3/switch_t:0 *
&G/batch_normalization_4/cond_1/Merge:0
FG/batch_normalization_4/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_4/cond_3/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_4/cond_3/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_4/cond_3/AssignMovingAvg/decay:0
4G/batch_normalization_4/cond_3/AssignMovingAvg/mul:0
;G/batch_normalization_4/cond_3/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_4/cond_3/AssignMovingAvg/sub:0
/G/batch_normalization_4/cond_3/ReadVariableOp:0
(G/batch_normalization_4/cond_3/pred_id:0
)G/batch_normalization_4/cond_3/switch_t:0
)G/batch_normalization_4/moving_variance:0T
(G/batch_normalization_4/cond_3/pred_id:0(G/batch_normalization_4/cond_3/pred_id:0s
)G/batch_normalization_4/moving_variance:0FG/batch_normalization_4/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1e
&G/batch_normalization_4/cond_1/Merge:0;G/batch_normalization_4/cond_3/AssignMovingAvg/sub/Switch:1V
)G/batch_normalization_4/cond_3/switch_t:0)G/batch_normalization_4/cond_3/switch_t:0

*G/batch_normalization_4/cond_3/cond_text_1(G/batch_normalization_4/cond_3/pred_id:0)G/batch_normalization_4/cond_3/switch_f:0*
8G/batch_normalization_4/cond_3/ReadVariableOp_1/Switch:0
1G/batch_normalization_4/cond_3/ReadVariableOp_1:0
(G/batch_normalization_4/cond_3/pred_id:0
)G/batch_normalization_4/cond_3/switch_f:0
)G/batch_normalization_4/moving_variance:0T
(G/batch_normalization_4/cond_3/pred_id:0(G/batch_normalization_4/cond_3/pred_id:0V
)G/batch_normalization_4/cond_3/switch_f:0)G/batch_normalization_4/cond_3/switch_f:0e
)G/batch_normalization_4/moving_variance:08G/batch_normalization_4/cond_3/ReadVariableOp_1/Switch:0
Č
&G/batch_normalization_5/cond/cond_text&G/batch_normalization_5/cond/pred_id:0'G/batch_normalization_5/cond/switch_t:0 *Ź
'G/batch_normalization_5/cond/Switch_1:0
'G/batch_normalization_5/cond/Switch_1:1
&G/batch_normalization_5/cond/pred_id:0
'G/batch_normalization_5/cond/switch_t:0
)G/batch_normalization_5/moments/Squeeze:0T
)G/batch_normalization_5/moments/Squeeze:0'G/batch_normalization_5/cond/Switch_1:1P
&G/batch_normalization_5/cond/pred_id:0&G/batch_normalization_5/cond/pred_id:0R
'G/batch_normalization_5/cond/switch_t:0'G/batch_normalization_5/cond/switch_t:0
ą
(G/batch_normalization_5/cond/cond_text_1&G/batch_normalization_5/cond/pred_id:0'G/batch_normalization_5/cond/switch_f:0*ā
4G/batch_normalization_5/cond/ReadVariableOp/Switch:0
-G/batch_normalization_5/cond/ReadVariableOp:0
&G/batch_normalization_5/cond/pred_id:0
'G/batch_normalization_5/cond/switch_f:0
%G/batch_normalization_5/moving_mean:0P
&G/batch_normalization_5/cond/pred_id:0&G/batch_normalization_5/cond/pred_id:0]
%G/batch_normalization_5/moving_mean:04G/batch_normalization_5/cond/ReadVariableOp/Switch:0R
'G/batch_normalization_5/cond/switch_f:0'G/batch_normalization_5/cond/switch_f:0
ä
(G/batch_normalization_5/cond_1/cond_text(G/batch_normalization_5/cond_1/pred_id:0)G/batch_normalization_5/cond_1/switch_t:0 *ą
)G/batch_normalization_5/cond_1/Switch_1:0
)G/batch_normalization_5/cond_1/Switch_1:1
(G/batch_normalization_5/cond_1/pred_id:0
)G/batch_normalization_5/cond_1/switch_t:0
+G/batch_normalization_5/moments/Squeeze_1:0V
)G/batch_normalization_5/cond_1/switch_t:0)G/batch_normalization_5/cond_1/switch_t:0X
+G/batch_normalization_5/moments/Squeeze_1:0)G/batch_normalization_5/cond_1/Switch_1:1T
(G/batch_normalization_5/cond_1/pred_id:0(G/batch_normalization_5/cond_1/pred_id:0

*G/batch_normalization_5/cond_1/cond_text_1(G/batch_normalization_5/cond_1/pred_id:0)G/batch_normalization_5/cond_1/switch_f:0*ü
6G/batch_normalization_5/cond_1/ReadVariableOp/Switch:0
/G/batch_normalization_5/cond_1/ReadVariableOp:0
(G/batch_normalization_5/cond_1/pred_id:0
)G/batch_normalization_5/cond_1/switch_f:0
)G/batch_normalization_5/moving_variance:0T
(G/batch_normalization_5/cond_1/pred_id:0(G/batch_normalization_5/cond_1/pred_id:0V
)G/batch_normalization_5/cond_1/switch_f:0)G/batch_normalization_5/cond_1/switch_f:0c
)G/batch_normalization_5/moving_variance:06G/batch_normalization_5/cond_1/ReadVariableOp/Switch:0
	
(G/batch_normalization_5/cond_2/cond_text(G/batch_normalization_5/cond_2/pred_id:0)G/batch_normalization_5/cond_2/switch_t:0 *
$G/batch_normalization_5/cond/Merge:0
FG/batch_normalization_5/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_5/cond_2/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_5/cond_2/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_5/cond_2/AssignMovingAvg/decay:0
4G/batch_normalization_5/cond_2/AssignMovingAvg/mul:0
;G/batch_normalization_5/cond_2/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_5/cond_2/AssignMovingAvg/sub:0
/G/batch_normalization_5/cond_2/ReadVariableOp:0
(G/batch_normalization_5/cond_2/pred_id:0
)G/batch_normalization_5/cond_2/switch_t:0
%G/batch_normalization_5/moving_mean:0o
%G/batch_normalization_5/moving_mean:0FG/batch_normalization_5/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1V
)G/batch_normalization_5/cond_2/switch_t:0)G/batch_normalization_5/cond_2/switch_t:0T
(G/batch_normalization_5/cond_2/pred_id:0(G/batch_normalization_5/cond_2/pred_id:0c
$G/batch_normalization_5/cond/Merge:0;G/batch_normalization_5/cond_2/AssignMovingAvg/sub/Switch:1
ž
*G/batch_normalization_5/cond_2/cond_text_1(G/batch_normalization_5/cond_2/pred_id:0)G/batch_normalization_5/cond_2/switch_f:0*ś
8G/batch_normalization_5/cond_2/ReadVariableOp_1/Switch:0
1G/batch_normalization_5/cond_2/ReadVariableOp_1:0
(G/batch_normalization_5/cond_2/pred_id:0
)G/batch_normalization_5/cond_2/switch_f:0
%G/batch_normalization_5/moving_mean:0a
%G/batch_normalization_5/moving_mean:08G/batch_normalization_5/cond_2/ReadVariableOp_1/Switch:0T
(G/batch_normalization_5/cond_2/pred_id:0(G/batch_normalization_5/cond_2/pred_id:0V
)G/batch_normalization_5/cond_2/switch_f:0)G/batch_normalization_5/cond_2/switch_f:0
	
(G/batch_normalization_5/cond_3/cond_text(G/batch_normalization_5/cond_3/pred_id:0)G/batch_normalization_5/cond_3/switch_t:0 *
&G/batch_normalization_5/cond_1/Merge:0
FG/batch_normalization_5/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_5/cond_3/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_5/cond_3/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_5/cond_3/AssignMovingAvg/decay:0
4G/batch_normalization_5/cond_3/AssignMovingAvg/mul:0
;G/batch_normalization_5/cond_3/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_5/cond_3/AssignMovingAvg/sub:0
/G/batch_normalization_5/cond_3/ReadVariableOp:0
(G/batch_normalization_5/cond_3/pred_id:0
)G/batch_normalization_5/cond_3/switch_t:0
)G/batch_normalization_5/moving_variance:0e
&G/batch_normalization_5/cond_1/Merge:0;G/batch_normalization_5/cond_3/AssignMovingAvg/sub/Switch:1s
)G/batch_normalization_5/moving_variance:0FG/batch_normalization_5/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1T
(G/batch_normalization_5/cond_3/pred_id:0(G/batch_normalization_5/cond_3/pred_id:0V
)G/batch_normalization_5/cond_3/switch_t:0)G/batch_normalization_5/cond_3/switch_t:0

*G/batch_normalization_5/cond_3/cond_text_1(G/batch_normalization_5/cond_3/pred_id:0)G/batch_normalization_5/cond_3/switch_f:0*
8G/batch_normalization_5/cond_3/ReadVariableOp_1/Switch:0
1G/batch_normalization_5/cond_3/ReadVariableOp_1:0
(G/batch_normalization_5/cond_3/pred_id:0
)G/batch_normalization_5/cond_3/switch_f:0
)G/batch_normalization_5/moving_variance:0T
(G/batch_normalization_5/cond_3/pred_id:0(G/batch_normalization_5/cond_3/pred_id:0V
)G/batch_normalization_5/cond_3/switch_f:0)G/batch_normalization_5/cond_3/switch_f:0e
)G/batch_normalization_5/moving_variance:08G/batch_normalization_5/cond_3/ReadVariableOp_1/Switch:0
Č
&G/batch_normalization_6/cond/cond_text&G/batch_normalization_6/cond/pred_id:0'G/batch_normalization_6/cond/switch_t:0 *Ź
'G/batch_normalization_6/cond/Switch_1:0
'G/batch_normalization_6/cond/Switch_1:1
&G/batch_normalization_6/cond/pred_id:0
'G/batch_normalization_6/cond/switch_t:0
)G/batch_normalization_6/moments/Squeeze:0R
'G/batch_normalization_6/cond/switch_t:0'G/batch_normalization_6/cond/switch_t:0P
&G/batch_normalization_6/cond/pred_id:0&G/batch_normalization_6/cond/pred_id:0T
)G/batch_normalization_6/moments/Squeeze:0'G/batch_normalization_6/cond/Switch_1:1
ą
(G/batch_normalization_6/cond/cond_text_1&G/batch_normalization_6/cond/pred_id:0'G/batch_normalization_6/cond/switch_f:0*ā
4G/batch_normalization_6/cond/ReadVariableOp/Switch:0
-G/batch_normalization_6/cond/ReadVariableOp:0
&G/batch_normalization_6/cond/pred_id:0
'G/batch_normalization_6/cond/switch_f:0
%G/batch_normalization_6/moving_mean:0]
%G/batch_normalization_6/moving_mean:04G/batch_normalization_6/cond/ReadVariableOp/Switch:0P
&G/batch_normalization_6/cond/pred_id:0&G/batch_normalization_6/cond/pred_id:0R
'G/batch_normalization_6/cond/switch_f:0'G/batch_normalization_6/cond/switch_f:0
ä
(G/batch_normalization_6/cond_1/cond_text(G/batch_normalization_6/cond_1/pred_id:0)G/batch_normalization_6/cond_1/switch_t:0 *ą
)G/batch_normalization_6/cond_1/Switch_1:0
)G/batch_normalization_6/cond_1/Switch_1:1
(G/batch_normalization_6/cond_1/pred_id:0
)G/batch_normalization_6/cond_1/switch_t:0
+G/batch_normalization_6/moments/Squeeze_1:0V
)G/batch_normalization_6/cond_1/switch_t:0)G/batch_normalization_6/cond_1/switch_t:0T
(G/batch_normalization_6/cond_1/pred_id:0(G/batch_normalization_6/cond_1/pred_id:0X
+G/batch_normalization_6/moments/Squeeze_1:0)G/batch_normalization_6/cond_1/Switch_1:1

*G/batch_normalization_6/cond_1/cond_text_1(G/batch_normalization_6/cond_1/pred_id:0)G/batch_normalization_6/cond_1/switch_f:0*ü
6G/batch_normalization_6/cond_1/ReadVariableOp/Switch:0
/G/batch_normalization_6/cond_1/ReadVariableOp:0
(G/batch_normalization_6/cond_1/pred_id:0
)G/batch_normalization_6/cond_1/switch_f:0
)G/batch_normalization_6/moving_variance:0T
(G/batch_normalization_6/cond_1/pred_id:0(G/batch_normalization_6/cond_1/pred_id:0V
)G/batch_normalization_6/cond_1/switch_f:0)G/batch_normalization_6/cond_1/switch_f:0c
)G/batch_normalization_6/moving_variance:06G/batch_normalization_6/cond_1/ReadVariableOp/Switch:0
	
(G/batch_normalization_6/cond_2/cond_text(G/batch_normalization_6/cond_2/pred_id:0)G/batch_normalization_6/cond_2/switch_t:0 *
$G/batch_normalization_6/cond/Merge:0
FG/batch_normalization_6/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_6/cond_2/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_6/cond_2/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_6/cond_2/AssignMovingAvg/decay:0
4G/batch_normalization_6/cond_2/AssignMovingAvg/mul:0
;G/batch_normalization_6/cond_2/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_6/cond_2/AssignMovingAvg/sub:0
/G/batch_normalization_6/cond_2/ReadVariableOp:0
(G/batch_normalization_6/cond_2/pred_id:0
)G/batch_normalization_6/cond_2/switch_t:0
%G/batch_normalization_6/moving_mean:0o
%G/batch_normalization_6/moving_mean:0FG/batch_normalization_6/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1V
)G/batch_normalization_6/cond_2/switch_t:0)G/batch_normalization_6/cond_2/switch_t:0T
(G/batch_normalization_6/cond_2/pred_id:0(G/batch_normalization_6/cond_2/pred_id:0c
$G/batch_normalization_6/cond/Merge:0;G/batch_normalization_6/cond_2/AssignMovingAvg/sub/Switch:1
ž
*G/batch_normalization_6/cond_2/cond_text_1(G/batch_normalization_6/cond_2/pred_id:0)G/batch_normalization_6/cond_2/switch_f:0*ś
8G/batch_normalization_6/cond_2/ReadVariableOp_1/Switch:0
1G/batch_normalization_6/cond_2/ReadVariableOp_1:0
(G/batch_normalization_6/cond_2/pred_id:0
)G/batch_normalization_6/cond_2/switch_f:0
%G/batch_normalization_6/moving_mean:0V
)G/batch_normalization_6/cond_2/switch_f:0)G/batch_normalization_6/cond_2/switch_f:0T
(G/batch_normalization_6/cond_2/pred_id:0(G/batch_normalization_6/cond_2/pred_id:0a
%G/batch_normalization_6/moving_mean:08G/batch_normalization_6/cond_2/ReadVariableOp_1/Switch:0
	
(G/batch_normalization_6/cond_3/cond_text(G/batch_normalization_6/cond_3/pred_id:0)G/batch_normalization_6/cond_3/switch_t:0 *
&G/batch_normalization_6/cond_1/Merge:0
FG/batch_normalization_6/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_6/cond_3/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_6/cond_3/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_6/cond_3/AssignMovingAvg/decay:0
4G/batch_normalization_6/cond_3/AssignMovingAvg/mul:0
;G/batch_normalization_6/cond_3/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_6/cond_3/AssignMovingAvg/sub:0
/G/batch_normalization_6/cond_3/ReadVariableOp:0
(G/batch_normalization_6/cond_3/pred_id:0
)G/batch_normalization_6/cond_3/switch_t:0
)G/batch_normalization_6/moving_variance:0T
(G/batch_normalization_6/cond_3/pred_id:0(G/batch_normalization_6/cond_3/pred_id:0s
)G/batch_normalization_6/moving_variance:0FG/batch_normalization_6/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1e
&G/batch_normalization_6/cond_1/Merge:0;G/batch_normalization_6/cond_3/AssignMovingAvg/sub/Switch:1V
)G/batch_normalization_6/cond_3/switch_t:0)G/batch_normalization_6/cond_3/switch_t:0

*G/batch_normalization_6/cond_3/cond_text_1(G/batch_normalization_6/cond_3/pred_id:0)G/batch_normalization_6/cond_3/switch_f:0*
8G/batch_normalization_6/cond_3/ReadVariableOp_1/Switch:0
1G/batch_normalization_6/cond_3/ReadVariableOp_1:0
(G/batch_normalization_6/cond_3/pred_id:0
)G/batch_normalization_6/cond_3/switch_f:0
)G/batch_normalization_6/moving_variance:0T
(G/batch_normalization_6/cond_3/pred_id:0(G/batch_normalization_6/cond_3/pred_id:0V
)G/batch_normalization_6/cond_3/switch_f:0)G/batch_normalization_6/cond_3/switch_f:0e
)G/batch_normalization_6/moving_variance:08G/batch_normalization_6/cond_3/ReadVariableOp_1/Switch:0
Č
&G/batch_normalization_7/cond/cond_text&G/batch_normalization_7/cond/pred_id:0'G/batch_normalization_7/cond/switch_t:0 *Ź
'G/batch_normalization_7/cond/Switch_1:0
'G/batch_normalization_7/cond/Switch_1:1
&G/batch_normalization_7/cond/pred_id:0
'G/batch_normalization_7/cond/switch_t:0
)G/batch_normalization_7/moments/Squeeze:0P
&G/batch_normalization_7/cond/pred_id:0&G/batch_normalization_7/cond/pred_id:0R
'G/batch_normalization_7/cond/switch_t:0'G/batch_normalization_7/cond/switch_t:0T
)G/batch_normalization_7/moments/Squeeze:0'G/batch_normalization_7/cond/Switch_1:1
ą
(G/batch_normalization_7/cond/cond_text_1&G/batch_normalization_7/cond/pred_id:0'G/batch_normalization_7/cond/switch_f:0*ā
4G/batch_normalization_7/cond/ReadVariableOp/Switch:0
-G/batch_normalization_7/cond/ReadVariableOp:0
&G/batch_normalization_7/cond/pred_id:0
'G/batch_normalization_7/cond/switch_f:0
%G/batch_normalization_7/moving_mean:0]
%G/batch_normalization_7/moving_mean:04G/batch_normalization_7/cond/ReadVariableOp/Switch:0R
'G/batch_normalization_7/cond/switch_f:0'G/batch_normalization_7/cond/switch_f:0P
&G/batch_normalization_7/cond/pred_id:0&G/batch_normalization_7/cond/pred_id:0
ä
(G/batch_normalization_7/cond_1/cond_text(G/batch_normalization_7/cond_1/pred_id:0)G/batch_normalization_7/cond_1/switch_t:0 *ą
)G/batch_normalization_7/cond_1/Switch_1:0
)G/batch_normalization_7/cond_1/Switch_1:1
(G/batch_normalization_7/cond_1/pred_id:0
)G/batch_normalization_7/cond_1/switch_t:0
+G/batch_normalization_7/moments/Squeeze_1:0X
+G/batch_normalization_7/moments/Squeeze_1:0)G/batch_normalization_7/cond_1/Switch_1:1T
(G/batch_normalization_7/cond_1/pred_id:0(G/batch_normalization_7/cond_1/pred_id:0V
)G/batch_normalization_7/cond_1/switch_t:0)G/batch_normalization_7/cond_1/switch_t:0

*G/batch_normalization_7/cond_1/cond_text_1(G/batch_normalization_7/cond_1/pred_id:0)G/batch_normalization_7/cond_1/switch_f:0*ü
6G/batch_normalization_7/cond_1/ReadVariableOp/Switch:0
/G/batch_normalization_7/cond_1/ReadVariableOp:0
(G/batch_normalization_7/cond_1/pred_id:0
)G/batch_normalization_7/cond_1/switch_f:0
)G/batch_normalization_7/moving_variance:0V
)G/batch_normalization_7/cond_1/switch_f:0)G/batch_normalization_7/cond_1/switch_f:0c
)G/batch_normalization_7/moving_variance:06G/batch_normalization_7/cond_1/ReadVariableOp/Switch:0T
(G/batch_normalization_7/cond_1/pred_id:0(G/batch_normalization_7/cond_1/pred_id:0
	
(G/batch_normalization_7/cond_2/cond_text(G/batch_normalization_7/cond_2/pred_id:0)G/batch_normalization_7/cond_2/switch_t:0 *
$G/batch_normalization_7/cond/Merge:0
FG/batch_normalization_7/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_7/cond_2/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_7/cond_2/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_7/cond_2/AssignMovingAvg/decay:0
4G/batch_normalization_7/cond_2/AssignMovingAvg/mul:0
;G/batch_normalization_7/cond_2/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_7/cond_2/AssignMovingAvg/sub:0
/G/batch_normalization_7/cond_2/ReadVariableOp:0
(G/batch_normalization_7/cond_2/pred_id:0
)G/batch_normalization_7/cond_2/switch_t:0
%G/batch_normalization_7/moving_mean:0o
%G/batch_normalization_7/moving_mean:0FG/batch_normalization_7/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1V
)G/batch_normalization_7/cond_2/switch_t:0)G/batch_normalization_7/cond_2/switch_t:0T
(G/batch_normalization_7/cond_2/pred_id:0(G/batch_normalization_7/cond_2/pred_id:0c
$G/batch_normalization_7/cond/Merge:0;G/batch_normalization_7/cond_2/AssignMovingAvg/sub/Switch:1
ž
*G/batch_normalization_7/cond_2/cond_text_1(G/batch_normalization_7/cond_2/pred_id:0)G/batch_normalization_7/cond_2/switch_f:0*ś
8G/batch_normalization_7/cond_2/ReadVariableOp_1/Switch:0
1G/batch_normalization_7/cond_2/ReadVariableOp_1:0
(G/batch_normalization_7/cond_2/pred_id:0
)G/batch_normalization_7/cond_2/switch_f:0
%G/batch_normalization_7/moving_mean:0a
%G/batch_normalization_7/moving_mean:08G/batch_normalization_7/cond_2/ReadVariableOp_1/Switch:0T
(G/batch_normalization_7/cond_2/pred_id:0(G/batch_normalization_7/cond_2/pred_id:0V
)G/batch_normalization_7/cond_2/switch_f:0)G/batch_normalization_7/cond_2/switch_f:0
	
(G/batch_normalization_7/cond_3/cond_text(G/batch_normalization_7/cond_3/pred_id:0)G/batch_normalization_7/cond_3/switch_t:0 *
&G/batch_normalization_7/cond_1/Merge:0
FG/batch_normalization_7/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_7/cond_3/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_7/cond_3/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_7/cond_3/AssignMovingAvg/decay:0
4G/batch_normalization_7/cond_3/AssignMovingAvg/mul:0
;G/batch_normalization_7/cond_3/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_7/cond_3/AssignMovingAvg/sub:0
/G/batch_normalization_7/cond_3/ReadVariableOp:0
(G/batch_normalization_7/cond_3/pred_id:0
)G/batch_normalization_7/cond_3/switch_t:0
)G/batch_normalization_7/moving_variance:0e
&G/batch_normalization_7/cond_1/Merge:0;G/batch_normalization_7/cond_3/AssignMovingAvg/sub/Switch:1s
)G/batch_normalization_7/moving_variance:0FG/batch_normalization_7/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1T
(G/batch_normalization_7/cond_3/pred_id:0(G/batch_normalization_7/cond_3/pred_id:0V
)G/batch_normalization_7/cond_3/switch_t:0)G/batch_normalization_7/cond_3/switch_t:0

*G/batch_normalization_7/cond_3/cond_text_1(G/batch_normalization_7/cond_3/pred_id:0)G/batch_normalization_7/cond_3/switch_f:0*
8G/batch_normalization_7/cond_3/ReadVariableOp_1/Switch:0
1G/batch_normalization_7/cond_3/ReadVariableOp_1:0
(G/batch_normalization_7/cond_3/pred_id:0
)G/batch_normalization_7/cond_3/switch_f:0
)G/batch_normalization_7/moving_variance:0T
(G/batch_normalization_7/cond_3/pred_id:0(G/batch_normalization_7/cond_3/pred_id:0V
)G/batch_normalization_7/cond_3/switch_f:0)G/batch_normalization_7/cond_3/switch_f:0e
)G/batch_normalization_7/moving_variance:08G/batch_normalization_7/cond_3/ReadVariableOp_1/Switch:0
Č
&G/batch_normalization_8/cond/cond_text&G/batch_normalization_8/cond/pred_id:0'G/batch_normalization_8/cond/switch_t:0 *Ź
'G/batch_normalization_8/cond/Switch_1:0
'G/batch_normalization_8/cond/Switch_1:1
&G/batch_normalization_8/cond/pred_id:0
'G/batch_normalization_8/cond/switch_t:0
)G/batch_normalization_8/moments/Squeeze:0T
)G/batch_normalization_8/moments/Squeeze:0'G/batch_normalization_8/cond/Switch_1:1R
'G/batch_normalization_8/cond/switch_t:0'G/batch_normalization_8/cond/switch_t:0P
&G/batch_normalization_8/cond/pred_id:0&G/batch_normalization_8/cond/pred_id:0
ą
(G/batch_normalization_8/cond/cond_text_1&G/batch_normalization_8/cond/pred_id:0'G/batch_normalization_8/cond/switch_f:0*ā
4G/batch_normalization_8/cond/ReadVariableOp/Switch:0
-G/batch_normalization_8/cond/ReadVariableOp:0
&G/batch_normalization_8/cond/pred_id:0
'G/batch_normalization_8/cond/switch_f:0
%G/batch_normalization_8/moving_mean:0]
%G/batch_normalization_8/moving_mean:04G/batch_normalization_8/cond/ReadVariableOp/Switch:0P
&G/batch_normalization_8/cond/pred_id:0&G/batch_normalization_8/cond/pred_id:0R
'G/batch_normalization_8/cond/switch_f:0'G/batch_normalization_8/cond/switch_f:0
ä
(G/batch_normalization_8/cond_1/cond_text(G/batch_normalization_8/cond_1/pred_id:0)G/batch_normalization_8/cond_1/switch_t:0 *ą
)G/batch_normalization_8/cond_1/Switch_1:0
)G/batch_normalization_8/cond_1/Switch_1:1
(G/batch_normalization_8/cond_1/pred_id:0
)G/batch_normalization_8/cond_1/switch_t:0
+G/batch_normalization_8/moments/Squeeze_1:0V
)G/batch_normalization_8/cond_1/switch_t:0)G/batch_normalization_8/cond_1/switch_t:0T
(G/batch_normalization_8/cond_1/pred_id:0(G/batch_normalization_8/cond_1/pred_id:0X
+G/batch_normalization_8/moments/Squeeze_1:0)G/batch_normalization_8/cond_1/Switch_1:1

*G/batch_normalization_8/cond_1/cond_text_1(G/batch_normalization_8/cond_1/pred_id:0)G/batch_normalization_8/cond_1/switch_f:0*ü
6G/batch_normalization_8/cond_1/ReadVariableOp/Switch:0
/G/batch_normalization_8/cond_1/ReadVariableOp:0
(G/batch_normalization_8/cond_1/pred_id:0
)G/batch_normalization_8/cond_1/switch_f:0
)G/batch_normalization_8/moving_variance:0c
)G/batch_normalization_8/moving_variance:06G/batch_normalization_8/cond_1/ReadVariableOp/Switch:0T
(G/batch_normalization_8/cond_1/pred_id:0(G/batch_normalization_8/cond_1/pred_id:0V
)G/batch_normalization_8/cond_1/switch_f:0)G/batch_normalization_8/cond_1/switch_f:0
	
(G/batch_normalization_8/cond_2/cond_text(G/batch_normalization_8/cond_2/pred_id:0)G/batch_normalization_8/cond_2/switch_t:0 *
$G/batch_normalization_8/cond/Merge:0
FG/batch_normalization_8/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_8/cond_2/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_8/cond_2/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_8/cond_2/AssignMovingAvg/decay:0
4G/batch_normalization_8/cond_2/AssignMovingAvg/mul:0
;G/batch_normalization_8/cond_2/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_8/cond_2/AssignMovingAvg/sub:0
/G/batch_normalization_8/cond_2/ReadVariableOp:0
(G/batch_normalization_8/cond_2/pred_id:0
)G/batch_normalization_8/cond_2/switch_t:0
%G/batch_normalization_8/moving_mean:0T
(G/batch_normalization_8/cond_2/pred_id:0(G/batch_normalization_8/cond_2/pred_id:0c
$G/batch_normalization_8/cond/Merge:0;G/batch_normalization_8/cond_2/AssignMovingAvg/sub/Switch:1o
%G/batch_normalization_8/moving_mean:0FG/batch_normalization_8/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1V
)G/batch_normalization_8/cond_2/switch_t:0)G/batch_normalization_8/cond_2/switch_t:0
ž
*G/batch_normalization_8/cond_2/cond_text_1(G/batch_normalization_8/cond_2/pred_id:0)G/batch_normalization_8/cond_2/switch_f:0*ś
8G/batch_normalization_8/cond_2/ReadVariableOp_1/Switch:0
1G/batch_normalization_8/cond_2/ReadVariableOp_1:0
(G/batch_normalization_8/cond_2/pred_id:0
)G/batch_normalization_8/cond_2/switch_f:0
%G/batch_normalization_8/moving_mean:0T
(G/batch_normalization_8/cond_2/pred_id:0(G/batch_normalization_8/cond_2/pred_id:0a
%G/batch_normalization_8/moving_mean:08G/batch_normalization_8/cond_2/ReadVariableOp_1/Switch:0V
)G/batch_normalization_8/cond_2/switch_f:0)G/batch_normalization_8/cond_2/switch_f:0
	
(G/batch_normalization_8/cond_3/cond_text(G/batch_normalization_8/cond_3/pred_id:0)G/batch_normalization_8/cond_3/switch_t:0 *
&G/batch_normalization_8/cond_1/Merge:0
FG/batch_normalization_8/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_8/cond_3/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_8/cond_3/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_8/cond_3/AssignMovingAvg/decay:0
4G/batch_normalization_8/cond_3/AssignMovingAvg/mul:0
;G/batch_normalization_8/cond_3/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_8/cond_3/AssignMovingAvg/sub:0
/G/batch_normalization_8/cond_3/ReadVariableOp:0
(G/batch_normalization_8/cond_3/pred_id:0
)G/batch_normalization_8/cond_3/switch_t:0
)G/batch_normalization_8/moving_variance:0e
&G/batch_normalization_8/cond_1/Merge:0;G/batch_normalization_8/cond_3/AssignMovingAvg/sub/Switch:1V
)G/batch_normalization_8/cond_3/switch_t:0)G/batch_normalization_8/cond_3/switch_t:0T
(G/batch_normalization_8/cond_3/pred_id:0(G/batch_normalization_8/cond_3/pred_id:0s
)G/batch_normalization_8/moving_variance:0FG/batch_normalization_8/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1

*G/batch_normalization_8/cond_3/cond_text_1(G/batch_normalization_8/cond_3/pred_id:0)G/batch_normalization_8/cond_3/switch_f:0*
8G/batch_normalization_8/cond_3/ReadVariableOp_1/Switch:0
1G/batch_normalization_8/cond_3/ReadVariableOp_1:0
(G/batch_normalization_8/cond_3/pred_id:0
)G/batch_normalization_8/cond_3/switch_f:0
)G/batch_normalization_8/moving_variance:0T
(G/batch_normalization_8/cond_3/pred_id:0(G/batch_normalization_8/cond_3/pred_id:0V
)G/batch_normalization_8/cond_3/switch_f:0)G/batch_normalization_8/cond_3/switch_f:0e
)G/batch_normalization_8/moving_variance:08G/batch_normalization_8/cond_3/ReadVariableOp_1/Switch:0
Č
&G/batch_normalization_9/cond/cond_text&G/batch_normalization_9/cond/pred_id:0'G/batch_normalization_9/cond/switch_t:0 *Ź
'G/batch_normalization_9/cond/Switch_1:0
'G/batch_normalization_9/cond/Switch_1:1
&G/batch_normalization_9/cond/pred_id:0
'G/batch_normalization_9/cond/switch_t:0
)G/batch_normalization_9/moments/Squeeze:0P
&G/batch_normalization_9/cond/pred_id:0&G/batch_normalization_9/cond/pred_id:0R
'G/batch_normalization_9/cond/switch_t:0'G/batch_normalization_9/cond/switch_t:0T
)G/batch_normalization_9/moments/Squeeze:0'G/batch_normalization_9/cond/Switch_1:1
ą
(G/batch_normalization_9/cond/cond_text_1&G/batch_normalization_9/cond/pred_id:0'G/batch_normalization_9/cond/switch_f:0*ā
4G/batch_normalization_9/cond/ReadVariableOp/Switch:0
-G/batch_normalization_9/cond/ReadVariableOp:0
&G/batch_normalization_9/cond/pred_id:0
'G/batch_normalization_9/cond/switch_f:0
%G/batch_normalization_9/moving_mean:0P
&G/batch_normalization_9/cond/pred_id:0&G/batch_normalization_9/cond/pred_id:0]
%G/batch_normalization_9/moving_mean:04G/batch_normalization_9/cond/ReadVariableOp/Switch:0R
'G/batch_normalization_9/cond/switch_f:0'G/batch_normalization_9/cond/switch_f:0
ä
(G/batch_normalization_9/cond_1/cond_text(G/batch_normalization_9/cond_1/pred_id:0)G/batch_normalization_9/cond_1/switch_t:0 *ą
)G/batch_normalization_9/cond_1/Switch_1:0
)G/batch_normalization_9/cond_1/Switch_1:1
(G/batch_normalization_9/cond_1/pred_id:0
)G/batch_normalization_9/cond_1/switch_t:0
+G/batch_normalization_9/moments/Squeeze_1:0V
)G/batch_normalization_9/cond_1/switch_t:0)G/batch_normalization_9/cond_1/switch_t:0X
+G/batch_normalization_9/moments/Squeeze_1:0)G/batch_normalization_9/cond_1/Switch_1:1T
(G/batch_normalization_9/cond_1/pred_id:0(G/batch_normalization_9/cond_1/pred_id:0

*G/batch_normalization_9/cond_1/cond_text_1(G/batch_normalization_9/cond_1/pred_id:0)G/batch_normalization_9/cond_1/switch_f:0*ü
6G/batch_normalization_9/cond_1/ReadVariableOp/Switch:0
/G/batch_normalization_9/cond_1/ReadVariableOp:0
(G/batch_normalization_9/cond_1/pred_id:0
)G/batch_normalization_9/cond_1/switch_f:0
)G/batch_normalization_9/moving_variance:0c
)G/batch_normalization_9/moving_variance:06G/batch_normalization_9/cond_1/ReadVariableOp/Switch:0T
(G/batch_normalization_9/cond_1/pred_id:0(G/batch_normalization_9/cond_1/pred_id:0V
)G/batch_normalization_9/cond_1/switch_f:0)G/batch_normalization_9/cond_1/switch_f:0
	
(G/batch_normalization_9/cond_2/cond_text(G/batch_normalization_9/cond_2/pred_id:0)G/batch_normalization_9/cond_2/switch_t:0 *
$G/batch_normalization_9/cond/Merge:0
FG/batch_normalization_9/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_9/cond_2/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_9/cond_2/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_9/cond_2/AssignMovingAvg/decay:0
4G/batch_normalization_9/cond_2/AssignMovingAvg/mul:0
;G/batch_normalization_9/cond_2/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_9/cond_2/AssignMovingAvg/sub:0
/G/batch_normalization_9/cond_2/ReadVariableOp:0
(G/batch_normalization_9/cond_2/pred_id:0
)G/batch_normalization_9/cond_2/switch_t:0
%G/batch_normalization_9/moving_mean:0V
)G/batch_normalization_9/cond_2/switch_t:0)G/batch_normalization_9/cond_2/switch_t:0T
(G/batch_normalization_9/cond_2/pred_id:0(G/batch_normalization_9/cond_2/pred_id:0c
$G/batch_normalization_9/cond/Merge:0;G/batch_normalization_9/cond_2/AssignMovingAvg/sub/Switch:1o
%G/batch_normalization_9/moving_mean:0FG/batch_normalization_9/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
ž
*G/batch_normalization_9/cond_2/cond_text_1(G/batch_normalization_9/cond_2/pred_id:0)G/batch_normalization_9/cond_2/switch_f:0*ś
8G/batch_normalization_9/cond_2/ReadVariableOp_1/Switch:0
1G/batch_normalization_9/cond_2/ReadVariableOp_1:0
(G/batch_normalization_9/cond_2/pred_id:0
)G/batch_normalization_9/cond_2/switch_f:0
%G/batch_normalization_9/moving_mean:0a
%G/batch_normalization_9/moving_mean:08G/batch_normalization_9/cond_2/ReadVariableOp_1/Switch:0T
(G/batch_normalization_9/cond_2/pred_id:0(G/batch_normalization_9/cond_2/pred_id:0V
)G/batch_normalization_9/cond_2/switch_f:0)G/batch_normalization_9/cond_2/switch_f:0
	
(G/batch_normalization_9/cond_3/cond_text(G/batch_normalization_9/cond_3/pred_id:0)G/batch_normalization_9/cond_3/switch_t:0 *
&G/batch_normalization_9/cond_1/Merge:0
FG/batch_normalization_9/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
?G/batch_normalization_9/cond_3/AssignMovingAvg/ReadVariableOp:0
AG/batch_normalization_9/cond_3/AssignMovingAvg/ReadVariableOp_1:0
6G/batch_normalization_9/cond_3/AssignMovingAvg/decay:0
4G/batch_normalization_9/cond_3/AssignMovingAvg/mul:0
;G/batch_normalization_9/cond_3/AssignMovingAvg/sub/Switch:1
4G/batch_normalization_9/cond_3/AssignMovingAvg/sub:0
/G/batch_normalization_9/cond_3/ReadVariableOp:0
(G/batch_normalization_9/cond_3/pred_id:0
)G/batch_normalization_9/cond_3/switch_t:0
)G/batch_normalization_9/moving_variance:0V
)G/batch_normalization_9/cond_3/switch_t:0)G/batch_normalization_9/cond_3/switch_t:0e
&G/batch_normalization_9/cond_1/Merge:0;G/batch_normalization_9/cond_3/AssignMovingAvg/sub/Switch:1s
)G/batch_normalization_9/moving_variance:0FG/batch_normalization_9/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1T
(G/batch_normalization_9/cond_3/pred_id:0(G/batch_normalization_9/cond_3/pred_id:0

*G/batch_normalization_9/cond_3/cond_text_1(G/batch_normalization_9/cond_3/pred_id:0)G/batch_normalization_9/cond_3/switch_f:0*
8G/batch_normalization_9/cond_3/ReadVariableOp_1/Switch:0
1G/batch_normalization_9/cond_3/ReadVariableOp_1:0
(G/batch_normalization_9/cond_3/pred_id:0
)G/batch_normalization_9/cond_3/switch_f:0
)G/batch_normalization_9/moving_variance:0V
)G/batch_normalization_9/cond_3/switch_f:0)G/batch_normalization_9/cond_3/switch_f:0e
)G/batch_normalization_9/moving_variance:08G/batch_normalization_9/cond_3/ReadVariableOp_1/Switch:0T
(G/batch_normalization_9/cond_3/pred_id:0(G/batch_normalization_9/cond_3/pred_id:0
Ö
'G/batch_normalization_10/cond/cond_text'G/batch_normalization_10/cond/pred_id:0(G/batch_normalization_10/cond/switch_t:0 *Õ
(G/batch_normalization_10/cond/Switch_1:0
(G/batch_normalization_10/cond/Switch_1:1
'G/batch_normalization_10/cond/pred_id:0
(G/batch_normalization_10/cond/switch_t:0
*G/batch_normalization_10/moments/Squeeze:0V
*G/batch_normalization_10/moments/Squeeze:0(G/batch_normalization_10/cond/Switch_1:1R
'G/batch_normalization_10/cond/pred_id:0'G/batch_normalization_10/cond/pred_id:0T
(G/batch_normalization_10/cond/switch_t:0(G/batch_normalization_10/cond/switch_t:0
ī
)G/batch_normalization_10/cond/cond_text_1'G/batch_normalization_10/cond/pred_id:0(G/batch_normalization_10/cond/switch_f:0*ķ
5G/batch_normalization_10/cond/ReadVariableOp/Switch:0
.G/batch_normalization_10/cond/ReadVariableOp:0
'G/batch_normalization_10/cond/pred_id:0
(G/batch_normalization_10/cond/switch_f:0
&G/batch_normalization_10/moving_mean:0R
'G/batch_normalization_10/cond/pred_id:0'G/batch_normalization_10/cond/pred_id:0_
&G/batch_normalization_10/moving_mean:05G/batch_normalization_10/cond/ReadVariableOp/Switch:0T
(G/batch_normalization_10/cond/switch_f:0(G/batch_normalization_10/cond/switch_f:0
ņ
)G/batch_normalization_10/cond_1/cond_text)G/batch_normalization_10/cond_1/pred_id:0*G/batch_normalization_10/cond_1/switch_t:0 *ė
*G/batch_normalization_10/cond_1/Switch_1:0
*G/batch_normalization_10/cond_1/Switch_1:1
)G/batch_normalization_10/cond_1/pred_id:0
*G/batch_normalization_10/cond_1/switch_t:0
,G/batch_normalization_10/moments/Squeeze_1:0X
*G/batch_normalization_10/cond_1/switch_t:0*G/batch_normalization_10/cond_1/switch_t:0Z
,G/batch_normalization_10/moments/Squeeze_1:0*G/batch_normalization_10/cond_1/Switch_1:1V
)G/batch_normalization_10/cond_1/pred_id:0)G/batch_normalization_10/cond_1/pred_id:0

+G/batch_normalization_10/cond_1/cond_text_1)G/batch_normalization_10/cond_1/pred_id:0*G/batch_normalization_10/cond_1/switch_f:0*
7G/batch_normalization_10/cond_1/ReadVariableOp/Switch:0
0G/batch_normalization_10/cond_1/ReadVariableOp:0
)G/batch_normalization_10/cond_1/pred_id:0
*G/batch_normalization_10/cond_1/switch_f:0
*G/batch_normalization_10/moving_variance:0e
*G/batch_normalization_10/moving_variance:07G/batch_normalization_10/cond_1/ReadVariableOp/Switch:0V
)G/batch_normalization_10/cond_1/pred_id:0)G/batch_normalization_10/cond_1/pred_id:0X
*G/batch_normalization_10/cond_1/switch_f:0*G/batch_normalization_10/cond_1/switch_f:0
	
)G/batch_normalization_10/cond_2/cond_text)G/batch_normalization_10/cond_2/pred_id:0*G/batch_normalization_10/cond_2/switch_t:0 *
%G/batch_normalization_10/cond/Merge:0
GG/batch_normalization_10/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
@G/batch_normalization_10/cond_2/AssignMovingAvg/ReadVariableOp:0
BG/batch_normalization_10/cond_2/AssignMovingAvg/ReadVariableOp_1:0
7G/batch_normalization_10/cond_2/AssignMovingAvg/decay:0
5G/batch_normalization_10/cond_2/AssignMovingAvg/mul:0
<G/batch_normalization_10/cond_2/AssignMovingAvg/sub/Switch:1
5G/batch_normalization_10/cond_2/AssignMovingAvg/sub:0
0G/batch_normalization_10/cond_2/ReadVariableOp:0
)G/batch_normalization_10/cond_2/pred_id:0
*G/batch_normalization_10/cond_2/switch_t:0
&G/batch_normalization_10/moving_mean:0q
&G/batch_normalization_10/moving_mean:0GG/batch_normalization_10/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1X
*G/batch_normalization_10/cond_2/switch_t:0*G/batch_normalization_10/cond_2/switch_t:0V
)G/batch_normalization_10/cond_2/pred_id:0)G/batch_normalization_10/cond_2/pred_id:0e
%G/batch_normalization_10/cond/Merge:0<G/batch_normalization_10/cond_2/AssignMovingAvg/sub/Switch:1

+G/batch_normalization_10/cond_2/cond_text_1)G/batch_normalization_10/cond_2/pred_id:0*G/batch_normalization_10/cond_2/switch_f:0*
9G/batch_normalization_10/cond_2/ReadVariableOp_1/Switch:0
2G/batch_normalization_10/cond_2/ReadVariableOp_1:0
)G/batch_normalization_10/cond_2/pred_id:0
*G/batch_normalization_10/cond_2/switch_f:0
&G/batch_normalization_10/moving_mean:0V
)G/batch_normalization_10/cond_2/pred_id:0)G/batch_normalization_10/cond_2/pred_id:0X
*G/batch_normalization_10/cond_2/switch_f:0*G/batch_normalization_10/cond_2/switch_f:0c
&G/batch_normalization_10/moving_mean:09G/batch_normalization_10/cond_2/ReadVariableOp_1/Switch:0
«	
)G/batch_normalization_10/cond_3/cond_text)G/batch_normalization_10/cond_3/pred_id:0*G/batch_normalization_10/cond_3/switch_t:0 *¤
'G/batch_normalization_10/cond_1/Merge:0
GG/batch_normalization_10/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
@G/batch_normalization_10/cond_3/AssignMovingAvg/ReadVariableOp:0
BG/batch_normalization_10/cond_3/AssignMovingAvg/ReadVariableOp_1:0
7G/batch_normalization_10/cond_3/AssignMovingAvg/decay:0
5G/batch_normalization_10/cond_3/AssignMovingAvg/mul:0
<G/batch_normalization_10/cond_3/AssignMovingAvg/sub/Switch:1
5G/batch_normalization_10/cond_3/AssignMovingAvg/sub:0
0G/batch_normalization_10/cond_3/ReadVariableOp:0
)G/batch_normalization_10/cond_3/pred_id:0
*G/batch_normalization_10/cond_3/switch_t:0
*G/batch_normalization_10/moving_variance:0g
'G/batch_normalization_10/cond_1/Merge:0<G/batch_normalization_10/cond_3/AssignMovingAvg/sub/Switch:1u
*G/batch_normalization_10/moving_variance:0GG/batch_normalization_10/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1V
)G/batch_normalization_10/cond_3/pred_id:0)G/batch_normalization_10/cond_3/pred_id:0X
*G/batch_normalization_10/cond_3/switch_t:0*G/batch_normalization_10/cond_3/switch_t:0

+G/batch_normalization_10/cond_3/cond_text_1)G/batch_normalization_10/cond_3/pred_id:0*G/batch_normalization_10/cond_3/switch_f:0*
9G/batch_normalization_10/cond_3/ReadVariableOp_1/Switch:0
2G/batch_normalization_10/cond_3/ReadVariableOp_1:0
)G/batch_normalization_10/cond_3/pred_id:0
*G/batch_normalization_10/cond_3/switch_f:0
*G/batch_normalization_10/moving_variance:0V
)G/batch_normalization_10/cond_3/pred_id:0)G/batch_normalization_10/cond_3/pred_id:0X
*G/batch_normalization_10/cond_3/switch_f:0*G/batch_normalization_10/cond_3/switch_f:0g
*G/batch_normalization_10/moving_variance:09G/batch_normalization_10/cond_3/ReadVariableOp_1/Switch:0
Ö
'G/batch_normalization_11/cond/cond_text'G/batch_normalization_11/cond/pred_id:0(G/batch_normalization_11/cond/switch_t:0 *Õ
(G/batch_normalization_11/cond/Switch_1:0
(G/batch_normalization_11/cond/Switch_1:1
'G/batch_normalization_11/cond/pred_id:0
(G/batch_normalization_11/cond/switch_t:0
*G/batch_normalization_11/moments/Squeeze:0T
(G/batch_normalization_11/cond/switch_t:0(G/batch_normalization_11/cond/switch_t:0R
'G/batch_normalization_11/cond/pred_id:0'G/batch_normalization_11/cond/pred_id:0V
*G/batch_normalization_11/moments/Squeeze:0(G/batch_normalization_11/cond/Switch_1:1
ī
)G/batch_normalization_11/cond/cond_text_1'G/batch_normalization_11/cond/pred_id:0(G/batch_normalization_11/cond/switch_f:0*ķ
5G/batch_normalization_11/cond/ReadVariableOp/Switch:0
.G/batch_normalization_11/cond/ReadVariableOp:0
'G/batch_normalization_11/cond/pred_id:0
(G/batch_normalization_11/cond/switch_f:0
&G/batch_normalization_11/moving_mean:0_
&G/batch_normalization_11/moving_mean:05G/batch_normalization_11/cond/ReadVariableOp/Switch:0R
'G/batch_normalization_11/cond/pred_id:0'G/batch_normalization_11/cond/pred_id:0T
(G/batch_normalization_11/cond/switch_f:0(G/batch_normalization_11/cond/switch_f:0
ņ
)G/batch_normalization_11/cond_1/cond_text)G/batch_normalization_11/cond_1/pred_id:0*G/batch_normalization_11/cond_1/switch_t:0 *ė
*G/batch_normalization_11/cond_1/Switch_1:0
*G/batch_normalization_11/cond_1/Switch_1:1
)G/batch_normalization_11/cond_1/pred_id:0
*G/batch_normalization_11/cond_1/switch_t:0
,G/batch_normalization_11/moments/Squeeze_1:0V
)G/batch_normalization_11/cond_1/pred_id:0)G/batch_normalization_11/cond_1/pred_id:0Z
,G/batch_normalization_11/moments/Squeeze_1:0*G/batch_normalization_11/cond_1/Switch_1:1X
*G/batch_normalization_11/cond_1/switch_t:0*G/batch_normalization_11/cond_1/switch_t:0

+G/batch_normalization_11/cond_1/cond_text_1)G/batch_normalization_11/cond_1/pred_id:0*G/batch_normalization_11/cond_1/switch_f:0*
7G/batch_normalization_11/cond_1/ReadVariableOp/Switch:0
0G/batch_normalization_11/cond_1/ReadVariableOp:0
)G/batch_normalization_11/cond_1/pred_id:0
*G/batch_normalization_11/cond_1/switch_f:0
*G/batch_normalization_11/moving_variance:0V
)G/batch_normalization_11/cond_1/pred_id:0)G/batch_normalization_11/cond_1/pred_id:0X
*G/batch_normalization_11/cond_1/switch_f:0*G/batch_normalization_11/cond_1/switch_f:0e
*G/batch_normalization_11/moving_variance:07G/batch_normalization_11/cond_1/ReadVariableOp/Switch:0
	
)G/batch_normalization_11/cond_2/cond_text)G/batch_normalization_11/cond_2/pred_id:0*G/batch_normalization_11/cond_2/switch_t:0 *
%G/batch_normalization_11/cond/Merge:0
GG/batch_normalization_11/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
@G/batch_normalization_11/cond_2/AssignMovingAvg/ReadVariableOp:0
BG/batch_normalization_11/cond_2/AssignMovingAvg/ReadVariableOp_1:0
7G/batch_normalization_11/cond_2/AssignMovingAvg/decay:0
5G/batch_normalization_11/cond_2/AssignMovingAvg/mul:0
<G/batch_normalization_11/cond_2/AssignMovingAvg/sub/Switch:1
5G/batch_normalization_11/cond_2/AssignMovingAvg/sub:0
0G/batch_normalization_11/cond_2/ReadVariableOp:0
)G/batch_normalization_11/cond_2/pred_id:0
*G/batch_normalization_11/cond_2/switch_t:0
&G/batch_normalization_11/moving_mean:0V
)G/batch_normalization_11/cond_2/pred_id:0)G/batch_normalization_11/cond_2/pred_id:0e
%G/batch_normalization_11/cond/Merge:0<G/batch_normalization_11/cond_2/AssignMovingAvg/sub/Switch:1q
&G/batch_normalization_11/moving_mean:0GG/batch_normalization_11/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1X
*G/batch_normalization_11/cond_2/switch_t:0*G/batch_normalization_11/cond_2/switch_t:0

+G/batch_normalization_11/cond_2/cond_text_1)G/batch_normalization_11/cond_2/pred_id:0*G/batch_normalization_11/cond_2/switch_f:0*
9G/batch_normalization_11/cond_2/ReadVariableOp_1/Switch:0
2G/batch_normalization_11/cond_2/ReadVariableOp_1:0
)G/batch_normalization_11/cond_2/pred_id:0
*G/batch_normalization_11/cond_2/switch_f:0
&G/batch_normalization_11/moving_mean:0V
)G/batch_normalization_11/cond_2/pred_id:0)G/batch_normalization_11/cond_2/pred_id:0c
&G/batch_normalization_11/moving_mean:09G/batch_normalization_11/cond_2/ReadVariableOp_1/Switch:0X
*G/batch_normalization_11/cond_2/switch_f:0*G/batch_normalization_11/cond_2/switch_f:0
«	
)G/batch_normalization_11/cond_3/cond_text)G/batch_normalization_11/cond_3/pred_id:0*G/batch_normalization_11/cond_3/switch_t:0 *¤
'G/batch_normalization_11/cond_1/Merge:0
GG/batch_normalization_11/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
@G/batch_normalization_11/cond_3/AssignMovingAvg/ReadVariableOp:0
BG/batch_normalization_11/cond_3/AssignMovingAvg/ReadVariableOp_1:0
7G/batch_normalization_11/cond_3/AssignMovingAvg/decay:0
5G/batch_normalization_11/cond_3/AssignMovingAvg/mul:0
<G/batch_normalization_11/cond_3/AssignMovingAvg/sub/Switch:1
5G/batch_normalization_11/cond_3/AssignMovingAvg/sub:0
0G/batch_normalization_11/cond_3/ReadVariableOp:0
)G/batch_normalization_11/cond_3/pred_id:0
*G/batch_normalization_11/cond_3/switch_t:0
*G/batch_normalization_11/moving_variance:0X
*G/batch_normalization_11/cond_3/switch_t:0*G/batch_normalization_11/cond_3/switch_t:0V
)G/batch_normalization_11/cond_3/pred_id:0)G/batch_normalization_11/cond_3/pred_id:0u
*G/batch_normalization_11/moving_variance:0GG/batch_normalization_11/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1g
'G/batch_normalization_11/cond_1/Merge:0<G/batch_normalization_11/cond_3/AssignMovingAvg/sub/Switch:1

+G/batch_normalization_11/cond_3/cond_text_1)G/batch_normalization_11/cond_3/pred_id:0*G/batch_normalization_11/cond_3/switch_f:0*
9G/batch_normalization_11/cond_3/ReadVariableOp_1/Switch:0
2G/batch_normalization_11/cond_3/ReadVariableOp_1:0
)G/batch_normalization_11/cond_3/pred_id:0
*G/batch_normalization_11/cond_3/switch_f:0
*G/batch_normalization_11/moving_variance:0V
)G/batch_normalization_11/cond_3/pred_id:0)G/batch_normalization_11/cond_3/pred_id:0X
*G/batch_normalization_11/cond_3/switch_f:0*G/batch_normalization_11/cond_3/switch_f:0g
*G/batch_normalization_11/moving_variance:09G/batch_normalization_11/cond_3/ReadVariableOp_1/Switch:0
Ö
'G/batch_normalization_12/cond/cond_text'G/batch_normalization_12/cond/pred_id:0(G/batch_normalization_12/cond/switch_t:0 *Õ
(G/batch_normalization_12/cond/Switch_1:0
(G/batch_normalization_12/cond/Switch_1:1
'G/batch_normalization_12/cond/pred_id:0
(G/batch_normalization_12/cond/switch_t:0
*G/batch_normalization_12/moments/Squeeze:0T
(G/batch_normalization_12/cond/switch_t:0(G/batch_normalization_12/cond/switch_t:0V
*G/batch_normalization_12/moments/Squeeze:0(G/batch_normalization_12/cond/Switch_1:1R
'G/batch_normalization_12/cond/pred_id:0'G/batch_normalization_12/cond/pred_id:0
ī
)G/batch_normalization_12/cond/cond_text_1'G/batch_normalization_12/cond/pred_id:0(G/batch_normalization_12/cond/switch_f:0*ķ
5G/batch_normalization_12/cond/ReadVariableOp/Switch:0
.G/batch_normalization_12/cond/ReadVariableOp:0
'G/batch_normalization_12/cond/pred_id:0
(G/batch_normalization_12/cond/switch_f:0
&G/batch_normalization_12/moving_mean:0_
&G/batch_normalization_12/moving_mean:05G/batch_normalization_12/cond/ReadVariableOp/Switch:0T
(G/batch_normalization_12/cond/switch_f:0(G/batch_normalization_12/cond/switch_f:0R
'G/batch_normalization_12/cond/pred_id:0'G/batch_normalization_12/cond/pred_id:0
ņ
)G/batch_normalization_12/cond_1/cond_text)G/batch_normalization_12/cond_1/pred_id:0*G/batch_normalization_12/cond_1/switch_t:0 *ė
*G/batch_normalization_12/cond_1/Switch_1:0
*G/batch_normalization_12/cond_1/Switch_1:1
)G/batch_normalization_12/cond_1/pred_id:0
*G/batch_normalization_12/cond_1/switch_t:0
,G/batch_normalization_12/moments/Squeeze_1:0V
)G/batch_normalization_12/cond_1/pred_id:0)G/batch_normalization_12/cond_1/pred_id:0X
*G/batch_normalization_12/cond_1/switch_t:0*G/batch_normalization_12/cond_1/switch_t:0Z
,G/batch_normalization_12/moments/Squeeze_1:0*G/batch_normalization_12/cond_1/Switch_1:1

+G/batch_normalization_12/cond_1/cond_text_1)G/batch_normalization_12/cond_1/pred_id:0*G/batch_normalization_12/cond_1/switch_f:0*
7G/batch_normalization_12/cond_1/ReadVariableOp/Switch:0
0G/batch_normalization_12/cond_1/ReadVariableOp:0
)G/batch_normalization_12/cond_1/pred_id:0
*G/batch_normalization_12/cond_1/switch_f:0
*G/batch_normalization_12/moving_variance:0X
*G/batch_normalization_12/cond_1/switch_f:0*G/batch_normalization_12/cond_1/switch_f:0e
*G/batch_normalization_12/moving_variance:07G/batch_normalization_12/cond_1/ReadVariableOp/Switch:0V
)G/batch_normalization_12/cond_1/pred_id:0)G/batch_normalization_12/cond_1/pred_id:0
	
)G/batch_normalization_12/cond_2/cond_text)G/batch_normalization_12/cond_2/pred_id:0*G/batch_normalization_12/cond_2/switch_t:0 *
%G/batch_normalization_12/cond/Merge:0
GG/batch_normalization_12/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
@G/batch_normalization_12/cond_2/AssignMovingAvg/ReadVariableOp:0
BG/batch_normalization_12/cond_2/AssignMovingAvg/ReadVariableOp_1:0
7G/batch_normalization_12/cond_2/AssignMovingAvg/decay:0
5G/batch_normalization_12/cond_2/AssignMovingAvg/mul:0
<G/batch_normalization_12/cond_2/AssignMovingAvg/sub/Switch:1
5G/batch_normalization_12/cond_2/AssignMovingAvg/sub:0
0G/batch_normalization_12/cond_2/ReadVariableOp:0
)G/batch_normalization_12/cond_2/pred_id:0
*G/batch_normalization_12/cond_2/switch_t:0
&G/batch_normalization_12/moving_mean:0V
)G/batch_normalization_12/cond_2/pred_id:0)G/batch_normalization_12/cond_2/pred_id:0e
%G/batch_normalization_12/cond/Merge:0<G/batch_normalization_12/cond_2/AssignMovingAvg/sub/Switch:1q
&G/batch_normalization_12/moving_mean:0GG/batch_normalization_12/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1X
*G/batch_normalization_12/cond_2/switch_t:0*G/batch_normalization_12/cond_2/switch_t:0

+G/batch_normalization_12/cond_2/cond_text_1)G/batch_normalization_12/cond_2/pred_id:0*G/batch_normalization_12/cond_2/switch_f:0*
9G/batch_normalization_12/cond_2/ReadVariableOp_1/Switch:0
2G/batch_normalization_12/cond_2/ReadVariableOp_1:0
)G/batch_normalization_12/cond_2/pred_id:0
*G/batch_normalization_12/cond_2/switch_f:0
&G/batch_normalization_12/moving_mean:0c
&G/batch_normalization_12/moving_mean:09G/batch_normalization_12/cond_2/ReadVariableOp_1/Switch:0V
)G/batch_normalization_12/cond_2/pred_id:0)G/batch_normalization_12/cond_2/pred_id:0X
*G/batch_normalization_12/cond_2/switch_f:0*G/batch_normalization_12/cond_2/switch_f:0
«	
)G/batch_normalization_12/cond_3/cond_text)G/batch_normalization_12/cond_3/pred_id:0*G/batch_normalization_12/cond_3/switch_t:0 *¤
'G/batch_normalization_12/cond_1/Merge:0
GG/batch_normalization_12/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
@G/batch_normalization_12/cond_3/AssignMovingAvg/ReadVariableOp:0
BG/batch_normalization_12/cond_3/AssignMovingAvg/ReadVariableOp_1:0
7G/batch_normalization_12/cond_3/AssignMovingAvg/decay:0
5G/batch_normalization_12/cond_3/AssignMovingAvg/mul:0
<G/batch_normalization_12/cond_3/AssignMovingAvg/sub/Switch:1
5G/batch_normalization_12/cond_3/AssignMovingAvg/sub:0
0G/batch_normalization_12/cond_3/ReadVariableOp:0
)G/batch_normalization_12/cond_3/pred_id:0
*G/batch_normalization_12/cond_3/switch_t:0
*G/batch_normalization_12/moving_variance:0V
)G/batch_normalization_12/cond_3/pred_id:0)G/batch_normalization_12/cond_3/pred_id:0X
*G/batch_normalization_12/cond_3/switch_t:0*G/batch_normalization_12/cond_3/switch_t:0g
'G/batch_normalization_12/cond_1/Merge:0<G/batch_normalization_12/cond_3/AssignMovingAvg/sub/Switch:1u
*G/batch_normalization_12/moving_variance:0GG/batch_normalization_12/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1

+G/batch_normalization_12/cond_3/cond_text_1)G/batch_normalization_12/cond_3/pred_id:0*G/batch_normalization_12/cond_3/switch_f:0*
9G/batch_normalization_12/cond_3/ReadVariableOp_1/Switch:0
2G/batch_normalization_12/cond_3/ReadVariableOp_1:0
)G/batch_normalization_12/cond_3/pred_id:0
*G/batch_normalization_12/cond_3/switch_f:0
*G/batch_normalization_12/moving_variance:0V
)G/batch_normalization_12/cond_3/pred_id:0)G/batch_normalization_12/cond_3/pred_id:0X
*G/batch_normalization_12/cond_3/switch_f:0*G/batch_normalization_12/cond_3/switch_f:0g
*G/batch_normalization_12/moving_variance:09G/batch_normalization_12/cond_3/ReadVariableOp_1/Switch:0
Ö
'G/batch_normalization_13/cond/cond_text'G/batch_normalization_13/cond/pred_id:0(G/batch_normalization_13/cond/switch_t:0 *Õ
(G/batch_normalization_13/cond/Switch_1:0
(G/batch_normalization_13/cond/Switch_1:1
'G/batch_normalization_13/cond/pred_id:0
(G/batch_normalization_13/cond/switch_t:0
*G/batch_normalization_13/moments/Squeeze:0R
'G/batch_normalization_13/cond/pred_id:0'G/batch_normalization_13/cond/pred_id:0V
*G/batch_normalization_13/moments/Squeeze:0(G/batch_normalization_13/cond/Switch_1:1T
(G/batch_normalization_13/cond/switch_t:0(G/batch_normalization_13/cond/switch_t:0
ī
)G/batch_normalization_13/cond/cond_text_1'G/batch_normalization_13/cond/pred_id:0(G/batch_normalization_13/cond/switch_f:0*ķ
5G/batch_normalization_13/cond/ReadVariableOp/Switch:0
.G/batch_normalization_13/cond/ReadVariableOp:0
'G/batch_normalization_13/cond/pred_id:0
(G/batch_normalization_13/cond/switch_f:0
&G/batch_normalization_13/moving_mean:0_
&G/batch_normalization_13/moving_mean:05G/batch_normalization_13/cond/ReadVariableOp/Switch:0R
'G/batch_normalization_13/cond/pred_id:0'G/batch_normalization_13/cond/pred_id:0T
(G/batch_normalization_13/cond/switch_f:0(G/batch_normalization_13/cond/switch_f:0
ņ
)G/batch_normalization_13/cond_1/cond_text)G/batch_normalization_13/cond_1/pred_id:0*G/batch_normalization_13/cond_1/switch_t:0 *ė
*G/batch_normalization_13/cond_1/Switch_1:0
*G/batch_normalization_13/cond_1/Switch_1:1
)G/batch_normalization_13/cond_1/pred_id:0
*G/batch_normalization_13/cond_1/switch_t:0
,G/batch_normalization_13/moments/Squeeze_1:0V
)G/batch_normalization_13/cond_1/pred_id:0)G/batch_normalization_13/cond_1/pred_id:0Z
,G/batch_normalization_13/moments/Squeeze_1:0*G/batch_normalization_13/cond_1/Switch_1:1X
*G/batch_normalization_13/cond_1/switch_t:0*G/batch_normalization_13/cond_1/switch_t:0

+G/batch_normalization_13/cond_1/cond_text_1)G/batch_normalization_13/cond_1/pred_id:0*G/batch_normalization_13/cond_1/switch_f:0*
7G/batch_normalization_13/cond_1/ReadVariableOp/Switch:0
0G/batch_normalization_13/cond_1/ReadVariableOp:0
)G/batch_normalization_13/cond_1/pred_id:0
*G/batch_normalization_13/cond_1/switch_f:0
*G/batch_normalization_13/moving_variance:0V
)G/batch_normalization_13/cond_1/pred_id:0)G/batch_normalization_13/cond_1/pred_id:0X
*G/batch_normalization_13/cond_1/switch_f:0*G/batch_normalization_13/cond_1/switch_f:0e
*G/batch_normalization_13/moving_variance:07G/batch_normalization_13/cond_1/ReadVariableOp/Switch:0
	
)G/batch_normalization_13/cond_2/cond_text)G/batch_normalization_13/cond_2/pred_id:0*G/batch_normalization_13/cond_2/switch_t:0 *
%G/batch_normalization_13/cond/Merge:0
GG/batch_normalization_13/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
@G/batch_normalization_13/cond_2/AssignMovingAvg/ReadVariableOp:0
BG/batch_normalization_13/cond_2/AssignMovingAvg/ReadVariableOp_1:0
7G/batch_normalization_13/cond_2/AssignMovingAvg/decay:0
5G/batch_normalization_13/cond_2/AssignMovingAvg/mul:0
<G/batch_normalization_13/cond_2/AssignMovingAvg/sub/Switch:1
5G/batch_normalization_13/cond_2/AssignMovingAvg/sub:0
0G/batch_normalization_13/cond_2/ReadVariableOp:0
)G/batch_normalization_13/cond_2/pred_id:0
*G/batch_normalization_13/cond_2/switch_t:0
&G/batch_normalization_13/moving_mean:0q
&G/batch_normalization_13/moving_mean:0GG/batch_normalization_13/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1X
*G/batch_normalization_13/cond_2/switch_t:0*G/batch_normalization_13/cond_2/switch_t:0V
)G/batch_normalization_13/cond_2/pred_id:0)G/batch_normalization_13/cond_2/pred_id:0e
%G/batch_normalization_13/cond/Merge:0<G/batch_normalization_13/cond_2/AssignMovingAvg/sub/Switch:1

+G/batch_normalization_13/cond_2/cond_text_1)G/batch_normalization_13/cond_2/pred_id:0*G/batch_normalization_13/cond_2/switch_f:0*
9G/batch_normalization_13/cond_2/ReadVariableOp_1/Switch:0
2G/batch_normalization_13/cond_2/ReadVariableOp_1:0
)G/batch_normalization_13/cond_2/pred_id:0
*G/batch_normalization_13/cond_2/switch_f:0
&G/batch_normalization_13/moving_mean:0V
)G/batch_normalization_13/cond_2/pred_id:0)G/batch_normalization_13/cond_2/pred_id:0c
&G/batch_normalization_13/moving_mean:09G/batch_normalization_13/cond_2/ReadVariableOp_1/Switch:0X
*G/batch_normalization_13/cond_2/switch_f:0*G/batch_normalization_13/cond_2/switch_f:0
«	
)G/batch_normalization_13/cond_3/cond_text)G/batch_normalization_13/cond_3/pred_id:0*G/batch_normalization_13/cond_3/switch_t:0 *¤
'G/batch_normalization_13/cond_1/Merge:0
GG/batch_normalization_13/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
@G/batch_normalization_13/cond_3/AssignMovingAvg/ReadVariableOp:0
BG/batch_normalization_13/cond_3/AssignMovingAvg/ReadVariableOp_1:0
7G/batch_normalization_13/cond_3/AssignMovingAvg/decay:0
5G/batch_normalization_13/cond_3/AssignMovingAvg/mul:0
<G/batch_normalization_13/cond_3/AssignMovingAvg/sub/Switch:1
5G/batch_normalization_13/cond_3/AssignMovingAvg/sub:0
0G/batch_normalization_13/cond_3/ReadVariableOp:0
)G/batch_normalization_13/cond_3/pred_id:0
*G/batch_normalization_13/cond_3/switch_t:0
*G/batch_normalization_13/moving_variance:0V
)G/batch_normalization_13/cond_3/pred_id:0)G/batch_normalization_13/cond_3/pred_id:0u
*G/batch_normalization_13/moving_variance:0GG/batch_normalization_13/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1g
'G/batch_normalization_13/cond_1/Merge:0<G/batch_normalization_13/cond_3/AssignMovingAvg/sub/Switch:1X
*G/batch_normalization_13/cond_3/switch_t:0*G/batch_normalization_13/cond_3/switch_t:0

+G/batch_normalization_13/cond_3/cond_text_1)G/batch_normalization_13/cond_3/pred_id:0*G/batch_normalization_13/cond_3/switch_f:0*
9G/batch_normalization_13/cond_3/ReadVariableOp_1/Switch:0
2G/batch_normalization_13/cond_3/ReadVariableOp_1:0
)G/batch_normalization_13/cond_3/pred_id:0
*G/batch_normalization_13/cond_3/switch_f:0
*G/batch_normalization_13/moving_variance:0V
)G/batch_normalization_13/cond_3/pred_id:0)G/batch_normalization_13/cond_3/pred_id:0X
*G/batch_normalization_13/cond_3/switch_f:0*G/batch_normalization_13/cond_3/switch_f:0g
*G/batch_normalization_13/moving_variance:09G/batch_normalization_13/cond_3/ReadVariableOp_1/Switch:0
Ö
'G/batch_normalization_14/cond/cond_text'G/batch_normalization_14/cond/pred_id:0(G/batch_normalization_14/cond/switch_t:0 *Õ
(G/batch_normalization_14/cond/Switch_1:0
(G/batch_normalization_14/cond/Switch_1:1
'G/batch_normalization_14/cond/pred_id:0
(G/batch_normalization_14/cond/switch_t:0
*G/batch_normalization_14/moments/Squeeze:0V
*G/batch_normalization_14/moments/Squeeze:0(G/batch_normalization_14/cond/Switch_1:1R
'G/batch_normalization_14/cond/pred_id:0'G/batch_normalization_14/cond/pred_id:0T
(G/batch_normalization_14/cond/switch_t:0(G/batch_normalization_14/cond/switch_t:0
ī
)G/batch_normalization_14/cond/cond_text_1'G/batch_normalization_14/cond/pred_id:0(G/batch_normalization_14/cond/switch_f:0*ķ
5G/batch_normalization_14/cond/ReadVariableOp/Switch:0
.G/batch_normalization_14/cond/ReadVariableOp:0
'G/batch_normalization_14/cond/pred_id:0
(G/batch_normalization_14/cond/switch_f:0
&G/batch_normalization_14/moving_mean:0_
&G/batch_normalization_14/moving_mean:05G/batch_normalization_14/cond/ReadVariableOp/Switch:0T
(G/batch_normalization_14/cond/switch_f:0(G/batch_normalization_14/cond/switch_f:0R
'G/batch_normalization_14/cond/pred_id:0'G/batch_normalization_14/cond/pred_id:0
ņ
)G/batch_normalization_14/cond_1/cond_text)G/batch_normalization_14/cond_1/pred_id:0*G/batch_normalization_14/cond_1/switch_t:0 *ė
*G/batch_normalization_14/cond_1/Switch_1:0
*G/batch_normalization_14/cond_1/Switch_1:1
)G/batch_normalization_14/cond_1/pred_id:0
*G/batch_normalization_14/cond_1/switch_t:0
,G/batch_normalization_14/moments/Squeeze_1:0X
*G/batch_normalization_14/cond_1/switch_t:0*G/batch_normalization_14/cond_1/switch_t:0Z
,G/batch_normalization_14/moments/Squeeze_1:0*G/batch_normalization_14/cond_1/Switch_1:1V
)G/batch_normalization_14/cond_1/pred_id:0)G/batch_normalization_14/cond_1/pred_id:0

+G/batch_normalization_14/cond_1/cond_text_1)G/batch_normalization_14/cond_1/pred_id:0*G/batch_normalization_14/cond_1/switch_f:0*
7G/batch_normalization_14/cond_1/ReadVariableOp/Switch:0
0G/batch_normalization_14/cond_1/ReadVariableOp:0
)G/batch_normalization_14/cond_1/pred_id:0
*G/batch_normalization_14/cond_1/switch_f:0
*G/batch_normalization_14/moving_variance:0X
*G/batch_normalization_14/cond_1/switch_f:0*G/batch_normalization_14/cond_1/switch_f:0e
*G/batch_normalization_14/moving_variance:07G/batch_normalization_14/cond_1/ReadVariableOp/Switch:0V
)G/batch_normalization_14/cond_1/pred_id:0)G/batch_normalization_14/cond_1/pred_id:0
	
)G/batch_normalization_14/cond_2/cond_text)G/batch_normalization_14/cond_2/pred_id:0*G/batch_normalization_14/cond_2/switch_t:0 *
%G/batch_normalization_14/cond/Merge:0
GG/batch_normalization_14/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
@G/batch_normalization_14/cond_2/AssignMovingAvg/ReadVariableOp:0
BG/batch_normalization_14/cond_2/AssignMovingAvg/ReadVariableOp_1:0
7G/batch_normalization_14/cond_2/AssignMovingAvg/decay:0
5G/batch_normalization_14/cond_2/AssignMovingAvg/mul:0
<G/batch_normalization_14/cond_2/AssignMovingAvg/sub/Switch:1
5G/batch_normalization_14/cond_2/AssignMovingAvg/sub:0
0G/batch_normalization_14/cond_2/ReadVariableOp:0
)G/batch_normalization_14/cond_2/pred_id:0
*G/batch_normalization_14/cond_2/switch_t:0
&G/batch_normalization_14/moving_mean:0V
)G/batch_normalization_14/cond_2/pred_id:0)G/batch_normalization_14/cond_2/pred_id:0e
%G/batch_normalization_14/cond/Merge:0<G/batch_normalization_14/cond_2/AssignMovingAvg/sub/Switch:1q
&G/batch_normalization_14/moving_mean:0GG/batch_normalization_14/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1X
*G/batch_normalization_14/cond_2/switch_t:0*G/batch_normalization_14/cond_2/switch_t:0

+G/batch_normalization_14/cond_2/cond_text_1)G/batch_normalization_14/cond_2/pred_id:0*G/batch_normalization_14/cond_2/switch_f:0*
9G/batch_normalization_14/cond_2/ReadVariableOp_1/Switch:0
2G/batch_normalization_14/cond_2/ReadVariableOp_1:0
)G/batch_normalization_14/cond_2/pred_id:0
*G/batch_normalization_14/cond_2/switch_f:0
&G/batch_normalization_14/moving_mean:0c
&G/batch_normalization_14/moving_mean:09G/batch_normalization_14/cond_2/ReadVariableOp_1/Switch:0V
)G/batch_normalization_14/cond_2/pred_id:0)G/batch_normalization_14/cond_2/pred_id:0X
*G/batch_normalization_14/cond_2/switch_f:0*G/batch_normalization_14/cond_2/switch_f:0
«	
)G/batch_normalization_14/cond_3/cond_text)G/batch_normalization_14/cond_3/pred_id:0*G/batch_normalization_14/cond_3/switch_t:0 *¤
'G/batch_normalization_14/cond_1/Merge:0
GG/batch_normalization_14/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
@G/batch_normalization_14/cond_3/AssignMovingAvg/ReadVariableOp:0
BG/batch_normalization_14/cond_3/AssignMovingAvg/ReadVariableOp_1:0
7G/batch_normalization_14/cond_3/AssignMovingAvg/decay:0
5G/batch_normalization_14/cond_3/AssignMovingAvg/mul:0
<G/batch_normalization_14/cond_3/AssignMovingAvg/sub/Switch:1
5G/batch_normalization_14/cond_3/AssignMovingAvg/sub:0
0G/batch_normalization_14/cond_3/ReadVariableOp:0
)G/batch_normalization_14/cond_3/pred_id:0
*G/batch_normalization_14/cond_3/switch_t:0
*G/batch_normalization_14/moving_variance:0V
)G/batch_normalization_14/cond_3/pred_id:0)G/batch_normalization_14/cond_3/pred_id:0X
*G/batch_normalization_14/cond_3/switch_t:0*G/batch_normalization_14/cond_3/switch_t:0g
'G/batch_normalization_14/cond_1/Merge:0<G/batch_normalization_14/cond_3/AssignMovingAvg/sub/Switch:1u
*G/batch_normalization_14/moving_variance:0GG/batch_normalization_14/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1

+G/batch_normalization_14/cond_3/cond_text_1)G/batch_normalization_14/cond_3/pred_id:0*G/batch_normalization_14/cond_3/switch_f:0*
9G/batch_normalization_14/cond_3/ReadVariableOp_1/Switch:0
2G/batch_normalization_14/cond_3/ReadVariableOp_1:0
)G/batch_normalization_14/cond_3/pred_id:0
*G/batch_normalization_14/cond_3/switch_f:0
*G/batch_normalization_14/moving_variance:0X
*G/batch_normalization_14/cond_3/switch_f:0*G/batch_normalization_14/cond_3/switch_f:0g
*G/batch_normalization_14/moving_variance:09G/batch_normalization_14/cond_3/ReadVariableOp_1/Switch:0V
)G/batch_normalization_14/cond_3/pred_id:0)G/batch_normalization_14/cond_3/pred_id:0"Č	

update_ops¹	
¶	
$G/batch_normalization/cond_2/Merge:0
$G/batch_normalization/cond_3/Merge:0
&G/batch_normalization_1/cond_2/Merge:0
&G/batch_normalization_1/cond_3/Merge:0
&G/batch_normalization_2/cond_2/Merge:0
&G/batch_normalization_2/cond_3/Merge:0
&G/batch_normalization_3/cond_2/Merge:0
&G/batch_normalization_3/cond_3/Merge:0
&G/batch_normalization_4/cond_2/Merge:0
&G/batch_normalization_4/cond_3/Merge:0
&G/batch_normalization_5/cond_2/Merge:0
&G/batch_normalization_5/cond_3/Merge:0
&G/batch_normalization_6/cond_2/Merge:0
&G/batch_normalization_6/cond_3/Merge:0
&G/batch_normalization_7/cond_2/Merge:0
&G/batch_normalization_7/cond_3/Merge:0
&G/batch_normalization_8/cond_2/Merge:0
&G/batch_normalization_8/cond_3/Merge:0
&G/batch_normalization_9/cond_2/Merge:0
&G/batch_normalization_9/cond_3/Merge:0
'G/batch_normalization_10/cond_2/Merge:0
'G/batch_normalization_10/cond_3/Merge:0
'G/batch_normalization_11/cond_2/Merge:0
'G/batch_normalization_11/cond_3/Merge:0
'G/batch_normalization_12/cond_2/Merge:0
'G/batch_normalization_12/cond_3/Merge:0
'G/batch_normalization_13/cond_2/Merge:0
'G/batch_normalization_13/cond_3/Merge:0
'G/batch_normalization_14/cond_2/Merge:0
'G/batch_normalization_14/cond_3/Merge:0"Y
	variables’XüX
X
G/dense/kernel:0G/dense/kernel/Assign(2+G/dense/kernel/Initializer/random_uniform:0
I
G/dense/bias:0G/dense/bias/Assign(2 G/dense/bias/Initializer/zeros:0
u
G/batch_normalization/gamma:0"G/batch_normalization/gamma/Assign(2.G/batch_normalization/gamma/Initializer/ones:0
s
G/batch_normalization/beta:0!G/batch_normalization/beta/Assign(2.G/batch_normalization/beta/Initializer/zeros:0

#G/batch_normalization/moving_mean:0(G/batch_normalization/moving_mean/Assign(25G/batch_normalization/moving_mean/Initializer/zeros:0

'G/batch_normalization/moving_variance:0,G/batch_normalization/moving_variance/Assign(28G/batch_normalization/moving_variance/Initializer/ones:0
[
G/conv1d/kernel:0G/conv1d/kernel/Assign(2,G/conv1d/kernel/Initializer/random_uniform:0
L
G/conv1d/bias:0G/conv1d/bias/Assign(2!G/conv1d/bias/Initializer/zeros:0
{
G/batch_normalization_1/gamma:0$G/batch_normalization_1/gamma/Assign(20G/batch_normalization_1/gamma/Initializer/ones:0
y
G/batch_normalization_1/beta:0#G/batch_normalization_1/beta/Assign(20G/batch_normalization_1/beta/Initializer/zeros:0

%G/batch_normalization_1/moving_mean:0*G/batch_normalization_1/moving_mean/Assign(27G/batch_normalization_1/moving_mean/Initializer/zeros:0

)G/batch_normalization_1/moving_variance:0.G/batch_normalization_1/moving_variance/Assign(2:G/batch_normalization_1/moving_variance/Initializer/ones:0
a
G/conv1d_1/kernel:0G/conv1d_1/kernel/Assign(2.G/conv1d_1/kernel/Initializer/random_uniform:0
R
G/conv1d_1/bias:0G/conv1d_1/bias/Assign(2#G/conv1d_1/bias/Initializer/zeros:0
{
G/batch_normalization_2/gamma:0$G/batch_normalization_2/gamma/Assign(20G/batch_normalization_2/gamma/Initializer/ones:0
y
G/batch_normalization_2/beta:0#G/batch_normalization_2/beta/Assign(20G/batch_normalization_2/beta/Initializer/zeros:0

%G/batch_normalization_2/moving_mean:0*G/batch_normalization_2/moving_mean/Assign(27G/batch_normalization_2/moving_mean/Initializer/zeros:0

)G/batch_normalization_2/moving_variance:0.G/batch_normalization_2/moving_variance/Assign(2:G/batch_normalization_2/moving_variance/Initializer/ones:0
a
G/conv1d_2/kernel:0G/conv1d_2/kernel/Assign(2.G/conv1d_2/kernel/Initializer/random_uniform:0
R
G/conv1d_2/bias:0G/conv1d_2/bias/Assign(2#G/conv1d_2/bias/Initializer/zeros:0
{
G/batch_normalization_3/gamma:0$G/batch_normalization_3/gamma/Assign(20G/batch_normalization_3/gamma/Initializer/ones:0
y
G/batch_normalization_3/beta:0#G/batch_normalization_3/beta/Assign(20G/batch_normalization_3/beta/Initializer/zeros:0

%G/batch_normalization_3/moving_mean:0*G/batch_normalization_3/moving_mean/Assign(27G/batch_normalization_3/moving_mean/Initializer/zeros:0

)G/batch_normalization_3/moving_variance:0.G/batch_normalization_3/moving_variance/Assign(2:G/batch_normalization_3/moving_variance/Initializer/ones:0
a
G/conv1d_3/kernel:0G/conv1d_3/kernel/Assign(2.G/conv1d_3/kernel/Initializer/random_uniform:0
R
G/conv1d_3/bias:0G/conv1d_3/bias/Assign(2#G/conv1d_3/bias/Initializer/zeros:0
{
G/batch_normalization_4/gamma:0$G/batch_normalization_4/gamma/Assign(20G/batch_normalization_4/gamma/Initializer/ones:0
y
G/batch_normalization_4/beta:0#G/batch_normalization_4/beta/Assign(20G/batch_normalization_4/beta/Initializer/zeros:0

%G/batch_normalization_4/moving_mean:0*G/batch_normalization_4/moving_mean/Assign(27G/batch_normalization_4/moving_mean/Initializer/zeros:0

)G/batch_normalization_4/moving_variance:0.G/batch_normalization_4/moving_variance/Assign(2:G/batch_normalization_4/moving_variance/Initializer/ones:0
a
G/conv1d_4/kernel:0G/conv1d_4/kernel/Assign(2.G/conv1d_4/kernel/Initializer/random_uniform:0
R
G/conv1d_4/bias:0G/conv1d_4/bias/Assign(2#G/conv1d_4/bias/Initializer/zeros:0
{
G/batch_normalization_5/gamma:0$G/batch_normalization_5/gamma/Assign(20G/batch_normalization_5/gamma/Initializer/ones:0
y
G/batch_normalization_5/beta:0#G/batch_normalization_5/beta/Assign(20G/batch_normalization_5/beta/Initializer/zeros:0

%G/batch_normalization_5/moving_mean:0*G/batch_normalization_5/moving_mean/Assign(27G/batch_normalization_5/moving_mean/Initializer/zeros:0

)G/batch_normalization_5/moving_variance:0.G/batch_normalization_5/moving_variance/Assign(2:G/batch_normalization_5/moving_variance/Initializer/ones:0
a
G/conv1d_5/kernel:0G/conv1d_5/kernel/Assign(2.G/conv1d_5/kernel/Initializer/random_uniform:0
R
G/conv1d_5/bias:0G/conv1d_5/bias/Assign(2#G/conv1d_5/bias/Initializer/zeros:0
{
G/batch_normalization_6/gamma:0$G/batch_normalization_6/gamma/Assign(20G/batch_normalization_6/gamma/Initializer/ones:0
y
G/batch_normalization_6/beta:0#G/batch_normalization_6/beta/Assign(20G/batch_normalization_6/beta/Initializer/zeros:0

%G/batch_normalization_6/moving_mean:0*G/batch_normalization_6/moving_mean/Assign(27G/batch_normalization_6/moving_mean/Initializer/zeros:0

)G/batch_normalization_6/moving_variance:0.G/batch_normalization_6/moving_variance/Assign(2:G/batch_normalization_6/moving_variance/Initializer/ones:0
a
G/conv1d_6/kernel:0G/conv1d_6/kernel/Assign(2.G/conv1d_6/kernel/Initializer/random_uniform:0
R
G/conv1d_6/bias:0G/conv1d_6/bias/Assign(2#G/conv1d_6/bias/Initializer/zeros:0
{
G/batch_normalization_7/gamma:0$G/batch_normalization_7/gamma/Assign(20G/batch_normalization_7/gamma/Initializer/ones:0
y
G/batch_normalization_7/beta:0#G/batch_normalization_7/beta/Assign(20G/batch_normalization_7/beta/Initializer/zeros:0

%G/batch_normalization_7/moving_mean:0*G/batch_normalization_7/moving_mean/Assign(27G/batch_normalization_7/moving_mean/Initializer/zeros:0

)G/batch_normalization_7/moving_variance:0.G/batch_normalization_7/moving_variance/Assign(2:G/batch_normalization_7/moving_variance/Initializer/ones:0
a
G/conv1d_7/kernel:0G/conv1d_7/kernel/Assign(2.G/conv1d_7/kernel/Initializer/random_uniform:0
R
G/conv1d_7/bias:0G/conv1d_7/bias/Assign(2#G/conv1d_7/bias/Initializer/zeros:0
{
G/batch_normalization_8/gamma:0$G/batch_normalization_8/gamma/Assign(20G/batch_normalization_8/gamma/Initializer/ones:0
y
G/batch_normalization_8/beta:0#G/batch_normalization_8/beta/Assign(20G/batch_normalization_8/beta/Initializer/zeros:0

%G/batch_normalization_8/moving_mean:0*G/batch_normalization_8/moving_mean/Assign(27G/batch_normalization_8/moving_mean/Initializer/zeros:0

)G/batch_normalization_8/moving_variance:0.G/batch_normalization_8/moving_variance/Assign(2:G/batch_normalization_8/moving_variance/Initializer/ones:0
a
G/conv1d_8/kernel:0G/conv1d_8/kernel/Assign(2.G/conv1d_8/kernel/Initializer/random_uniform:0
R
G/conv1d_8/bias:0G/conv1d_8/bias/Assign(2#G/conv1d_8/bias/Initializer/zeros:0
{
G/batch_normalization_9/gamma:0$G/batch_normalization_9/gamma/Assign(20G/batch_normalization_9/gamma/Initializer/ones:0
y
G/batch_normalization_9/beta:0#G/batch_normalization_9/beta/Assign(20G/batch_normalization_9/beta/Initializer/zeros:0

%G/batch_normalization_9/moving_mean:0*G/batch_normalization_9/moving_mean/Assign(27G/batch_normalization_9/moving_mean/Initializer/zeros:0

)G/batch_normalization_9/moving_variance:0.G/batch_normalization_9/moving_variance/Assign(2:G/batch_normalization_9/moving_variance/Initializer/ones:0
a
G/conv1d_9/kernel:0G/conv1d_9/kernel/Assign(2.G/conv1d_9/kernel/Initializer/random_uniform:0
R
G/conv1d_9/bias:0G/conv1d_9/bias/Assign(2#G/conv1d_9/bias/Initializer/zeros:0
~
 G/batch_normalization_10/gamma:0%G/batch_normalization_10/gamma/Assign(21G/batch_normalization_10/gamma/Initializer/ones:0
|
G/batch_normalization_10/beta:0$G/batch_normalization_10/beta/Assign(21G/batch_normalization_10/beta/Initializer/zeros:0

&G/batch_normalization_10/moving_mean:0+G/batch_normalization_10/moving_mean/Assign(28G/batch_normalization_10/moving_mean/Initializer/zeros:0

*G/batch_normalization_10/moving_variance:0/G/batch_normalization_10/moving_variance/Assign(2;G/batch_normalization_10/moving_variance/Initializer/ones:0
d
G/conv1d_10/kernel:0G/conv1d_10/kernel/Assign(2/G/conv1d_10/kernel/Initializer/random_uniform:0
U
G/conv1d_10/bias:0G/conv1d_10/bias/Assign(2$G/conv1d_10/bias/Initializer/zeros:0
~
 G/batch_normalization_11/gamma:0%G/batch_normalization_11/gamma/Assign(21G/batch_normalization_11/gamma/Initializer/ones:0
|
G/batch_normalization_11/beta:0$G/batch_normalization_11/beta/Assign(21G/batch_normalization_11/beta/Initializer/zeros:0

&G/batch_normalization_11/moving_mean:0+G/batch_normalization_11/moving_mean/Assign(28G/batch_normalization_11/moving_mean/Initializer/zeros:0

*G/batch_normalization_11/moving_variance:0/G/batch_normalization_11/moving_variance/Assign(2;G/batch_normalization_11/moving_variance/Initializer/ones:0
d
G/conv1d_11/kernel:0G/conv1d_11/kernel/Assign(2/G/conv1d_11/kernel/Initializer/random_uniform:0
U
G/conv1d_11/bias:0G/conv1d_11/bias/Assign(2$G/conv1d_11/bias/Initializer/zeros:0
~
 G/batch_normalization_12/gamma:0%G/batch_normalization_12/gamma/Assign(21G/batch_normalization_12/gamma/Initializer/ones:0
|
G/batch_normalization_12/beta:0$G/batch_normalization_12/beta/Assign(21G/batch_normalization_12/beta/Initializer/zeros:0

&G/batch_normalization_12/moving_mean:0+G/batch_normalization_12/moving_mean/Assign(28G/batch_normalization_12/moving_mean/Initializer/zeros:0

*G/batch_normalization_12/moving_variance:0/G/batch_normalization_12/moving_variance/Assign(2;G/batch_normalization_12/moving_variance/Initializer/ones:0
d
G/conv1d_12/kernel:0G/conv1d_12/kernel/Assign(2/G/conv1d_12/kernel/Initializer/random_uniform:0
U
G/conv1d_12/bias:0G/conv1d_12/bias/Assign(2$G/conv1d_12/bias/Initializer/zeros:0
~
 G/batch_normalization_13/gamma:0%G/batch_normalization_13/gamma/Assign(21G/batch_normalization_13/gamma/Initializer/ones:0
|
G/batch_normalization_13/beta:0$G/batch_normalization_13/beta/Assign(21G/batch_normalization_13/beta/Initializer/zeros:0

&G/batch_normalization_13/moving_mean:0+G/batch_normalization_13/moving_mean/Assign(28G/batch_normalization_13/moving_mean/Initializer/zeros:0

*G/batch_normalization_13/moving_variance:0/G/batch_normalization_13/moving_variance/Assign(2;G/batch_normalization_13/moving_variance/Initializer/ones:0
d
G/conv1d_13/kernel:0G/conv1d_13/kernel/Assign(2/G/conv1d_13/kernel/Initializer/random_uniform:0
U
G/conv1d_13/bias:0G/conv1d_13/bias/Assign(2$G/conv1d_13/bias/Initializer/zeros:0
~
 G/batch_normalization_14/gamma:0%G/batch_normalization_14/gamma/Assign(21G/batch_normalization_14/gamma/Initializer/ones:0
|
G/batch_normalization_14/beta:0$G/batch_normalization_14/beta/Assign(21G/batch_normalization_14/beta/Initializer/zeros:0

&G/batch_normalization_14/moving_mean:0+G/batch_normalization_14/moving_mean/Assign(28G/batch_normalization_14/moving_mean/Initializer/zeros:0

*G/batch_normalization_14/moving_variance:0/G/batch_normalization_14/moving_variance/Assign(2;G/batch_normalization_14/moving_variance/Initializer/ones:0
d
G/conv1d_14/kernel:0G/conv1d_14/kernel/Assign(2/G/conv1d_14/kernel/Initializer/random_uniform:0
U
G/conv1d_14/bias:0G/conv1d_14/bias/Assign(2$G/conv1d_14/bias/Initializer/zeros:0
d
G/conv1d_15/kernel:0G/conv1d_15/kernel/Assign(2/G/conv1d_15/kernel/Initializer/random_uniform:0
U
G/conv1d_15/bias:0G/conv1d_15/bias/Assign(2$G/conv1d_15/bias/Initializer/zeros:0"3
table_initializer

index_to_string/table_init*Ż
latent_to_dataŹ
/
default$
Placeholder:0’’’’’’’’’@*
default
ReduceJoin:0’’’’’’’’’;
logits1
G/conv1d_15/BiasAdd:0’’’’’’’’’
Š.
p)
G/Reshape_2:0’’’’’’’’’
Š