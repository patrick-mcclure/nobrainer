õ

,
Abs
x"T
y"T"
Ttype:

2	
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
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
 
BatchToSpaceND

input"T
block_shape"Tblock_shape
crops"Tcrops
output"T"	
Ttype" 
Tblock_shapetype0:
2	"
Tcropstype0:
2	
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
Const
output"dtype"
valuetensor"
dtypetype
Ö
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

,
Floor
x"T
y"T"
Ttype:
2
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
;
Maximum
x"T
y"T
z"T"
Ttype:

2	
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
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
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
©
SpaceToBatchND

input"T
block_shape"Tblock_shape
paddings"	Tpaddings
output"T"	
Ttype" 
Tblock_shapetype0:
2	"
	Tpaddingstype0:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.12.02
b'unknown'ź	

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 

global_step
VariableV2*
shared_name *
_class
loc:@global_step*
	container *
shape: *
dtype0	*
_output_shapes
: 
²
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 

PlaceholderPlaceholder*3
_output_shapes!
:’’’’’’’’’   *(
shape:’’’’’’’’’   *
dtype0
G
ConstConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
I
Const_1Const*
value	B
 Z*
dtype0
*
_output_shapes
: 
³
1layer_1/conv3d/v/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_1/conv3d/v*)
value B"            `   *
dtype0*
_output_shapes
:

/layer_1/conv3d/v/Initializer/random_uniform/minConst*#
_class
loc:@layer_1/conv3d/v*
valueB
 *źD½*
dtype0*
_output_shapes
: 

/layer_1/conv3d/v/Initializer/random_uniform/maxConst*#
_class
loc:@layer_1/conv3d/v*
valueB
 *źD=*
dtype0*
_output_shapes
: 
ż
9layer_1/conv3d/v/Initializer/random_uniform/RandomUniformRandomUniform1layer_1/conv3d/v/Initializer/random_uniform/shape*
seed2 *
dtype0**
_output_shapes
:`*

seed *
T0*#
_class
loc:@layer_1/conv3d/v
Ž
/layer_1/conv3d/v/Initializer/random_uniform/subSub/layer_1/conv3d/v/Initializer/random_uniform/max/layer_1/conv3d/v/Initializer/random_uniform/min*#
_class
loc:@layer_1/conv3d/v*
_output_shapes
: *
T0
ü
/layer_1/conv3d/v/Initializer/random_uniform/mulMul9layer_1/conv3d/v/Initializer/random_uniform/RandomUniform/layer_1/conv3d/v/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_1/conv3d/v**
_output_shapes
:`
ī
+layer_1/conv3d/v/Initializer/random_uniformAdd/layer_1/conv3d/v/Initializer/random_uniform/mul/layer_1/conv3d/v/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_1/conv3d/v**
_output_shapes
:`
Į
layer_1/conv3d/v
VariableV2*
shared_name *#
_class
loc:@layer_1/conv3d/v*
	container *
shape:`*
dtype0**
_output_shapes
:`
ć
layer_1/conv3d/v/AssignAssignlayer_1/conv3d/v+layer_1/conv3d/v/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_1/conv3d/v*
validate_shape(**
_output_shapes
:`

layer_1/conv3d/v/readIdentitylayer_1/conv3d/v**
_output_shapes
:`*
T0*#
_class
loc:@layer_1/conv3d/v

%layer_1/conv3d/layer_1/conv3d/v_0/tagConst*2
value)B' B!layer_1/conv3d/layer_1/conv3d/v_0*
dtype0*
_output_shapes
: 

!layer_1/conv3d/layer_1/conv3d/v_0HistogramSummary%layer_1/conv3d/layer_1/conv3d/v_0/taglayer_1/conv3d/v/read*
T0*
_output_shapes
: 
“
"layer_1/conv3d/g/Initializer/ConstConst*#
_class
loc:@layer_1/conv3d/g*)
value B`*óµ?*
dtype0**
_output_shapes
:`
Į
layer_1/conv3d/g
VariableV2*
	container *
shape:`*
dtype0**
_output_shapes
:`*
shared_name *#
_class
loc:@layer_1/conv3d/g
Ś
layer_1/conv3d/g/AssignAssignlayer_1/conv3d/g"layer_1/conv3d/g/Initializer/Const*
use_locking(*
T0*#
_class
loc:@layer_1/conv3d/g*
validate_shape(**
_output_shapes
:`

layer_1/conv3d/g/readIdentitylayer_1/conv3d/g**
_output_shapes
:`*
T0*#
_class
loc:@layer_1/conv3d/g

%layer_1/conv3d/layer_1/conv3d/g_0/tagConst*
_output_shapes
: *2
value)B' B!layer_1/conv3d/layer_1/conv3d/g_0*
dtype0

!layer_1/conv3d/layer_1/conv3d/g_0HistogramSummary%layer_1/conv3d/layer_1/conv3d/g_0/taglayer_1/conv3d/g/read*
T0*
_output_shapes
: 
x
"layer_1/conv3d/l2_normalize/SquareSquarelayer_1/conv3d/v/read**
_output_shapes
:`*
T0

1layer_1/conv3d/l2_normalize/Sum/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ļ
layer_1/conv3d/l2_normalize/SumSum"layer_1/conv3d/l2_normalize/Square1layer_1/conv3d/l2_normalize/Sum/reduction_indices*
T0**
_output_shapes
:`*
	keep_dims(*

Tidx0
j
%layer_1/conv3d/l2_normalize/Maximum/yConst*
valueB
 *Ģ¼+*
dtype0*
_output_shapes
: 
«
#layer_1/conv3d/l2_normalize/MaximumMaximumlayer_1/conv3d/l2_normalize/Sum%layer_1/conv3d/l2_normalize/Maximum/y**
_output_shapes
:`*
T0

!layer_1/conv3d/l2_normalize/RsqrtRsqrt#layer_1/conv3d/l2_normalize/Maximum**
_output_shapes
:`*
T0

layer_1/conv3d/l2_normalizeMullayer_1/conv3d/v/read!layer_1/conv3d/l2_normalize/Rsqrt*
T0**
_output_shapes
:`

layer_1/conv3d/kernel_mMullayer_1/conv3d/g/readlayer_1/conv3d/l2_normalize**
_output_shapes
:`*
T0

,layer_1/conv3d/layer_1/conv3d/kernel_m_0/tagConst*9
value0B. B(layer_1/conv3d/layer_1/conv3d/kernel_m_0*
dtype0*
_output_shapes
: 
¤
(layer_1/conv3d/layer_1/conv3d/kernel_m_0HistogramSummary,layer_1/conv3d/layer_1/conv3d/kernel_m_0/taglayer_1/conv3d/kernel_m*
T0*
_output_shapes
: 
Ā
)layer_1/conv3d/kernel_a/Initializer/ConstConst**
_class 
loc:@layer_1/conv3d/kernel_a*)
value B`*·Ń8*
dtype0**
_output_shapes
:`
Ļ
layer_1/conv3d/kernel_a
VariableV2*
shared_name **
_class 
loc:@layer_1/conv3d/kernel_a*
	container *
shape:`*
dtype0**
_output_shapes
:`
ö
layer_1/conv3d/kernel_a/AssignAssignlayer_1/conv3d/kernel_a)layer_1/conv3d/kernel_a/Initializer/Const**
_class 
loc:@layer_1/conv3d/kernel_a*
validate_shape(**
_output_shapes
:`*
use_locking(*
T0
¢
layer_1/conv3d/kernel_a/readIdentitylayer_1/conv3d/kernel_a**
_output_shapes
:`*
T0**
_class 
loc:@layer_1/conv3d/kernel_a

,layer_1/conv3d/layer_1/conv3d/kernel_a_0/tagConst*9
value0B. B(layer_1/conv3d/layer_1/conv3d/kernel_a_0*
dtype0*
_output_shapes
: 
©
(layer_1/conv3d/layer_1/conv3d/kernel_a_0HistogramSummary,layer_1/conv3d/layer_1/conv3d/kernel_a_0/taglayer_1/conv3d/kernel_a/read*
T0*
_output_shapes
: 
u
layer_1/conv3d/kernel_sigmaAbslayer_1/conv3d/kernel_a/read**
_output_shapes
:`*
T0

0layer_1/conv3d/layer_1/conv3d/kernel_sigma_0/tagConst*=
value4B2 B,layer_1/conv3d/layer_1/conv3d/kernel_sigma_0*
dtype0*
_output_shapes
: 
°
,layer_1/conv3d/layer_1/conv3d/kernel_sigma_0HistogramSummary0layer_1/conv3d/layer_1/conv3d/kernel_sigma_0/taglayer_1/conv3d/kernel_sigma*
_output_shapes
: *
T0
q
layer_1/conv3d/ConstConst*
_output_shapes
:*)
value B"                *
dtype0

layer_1/conv3d/MeanMeanlayer_1/conv3d/kernel_sigmalayer_1/conv3d/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
¢
3layer_1/conv3d/layer_1/conv3d/kernel_sigma_0_1/tagsConst*?
value6B4 B.layer_1/conv3d/layer_1/conv3d/kernel_sigma_0_1*
dtype0*
_output_shapes
: 
Ŗ
.layer_1/conv3d/layer_1/conv3d/kernel_sigma_0_1ScalarSummary3layer_1/conv3d/layer_1/conv3d/kernel_sigma_0_1/tagslayer_1/conv3d/Mean*
T0*
_output_shapes
: 

'layer_1/conv3d/bias_m/Initializer/zerosConst*
dtype0*
_output_shapes
:`*(
_class
loc:@layer_1/conv3d/bias_m*
valueB`*    
«
layer_1/conv3d/bias_m
VariableV2*
shared_name *(
_class
loc:@layer_1/conv3d/bias_m*
	container *
shape:`*
dtype0*
_output_shapes
:`
Ž
layer_1/conv3d/bias_m/AssignAssignlayer_1/conv3d/bias_m'layer_1/conv3d/bias_m/Initializer/zeros*
use_locking(*
T0*(
_class
loc:@layer_1/conv3d/bias_m*
validate_shape(*
_output_shapes
:`

layer_1/conv3d/bias_m/readIdentitylayer_1/conv3d/bias_m*
T0*(
_class
loc:@layer_1/conv3d/bias_m*
_output_shapes
:`

*layer_1/conv3d/layer_1/conv3d/bias_m_0/tagConst*7
value.B, B&layer_1/conv3d/layer_1/conv3d/bias_m_0*
dtype0*
_output_shapes
: 
£
&layer_1/conv3d/layer_1/conv3d/bias_m_0HistogramSummary*layer_1/conv3d/layer_1/conv3d/bias_m_0/taglayer_1/conv3d/bias_m/read*
_output_shapes
: *
T0

'layer_1/conv3d/bias_a/Initializer/ConstConst*(
_class
loc:@layer_1/conv3d/bias_a*
valueB`*·Ń8*
dtype0*
_output_shapes
:`
«
layer_1/conv3d/bias_a
VariableV2*
	container *
shape:`*
dtype0*
_output_shapes
:`*
shared_name *(
_class
loc:@layer_1/conv3d/bias_a
Ž
layer_1/conv3d/bias_a/AssignAssignlayer_1/conv3d/bias_a'layer_1/conv3d/bias_a/Initializer/Const*
use_locking(*
T0*(
_class
loc:@layer_1/conv3d/bias_a*
validate_shape(*
_output_shapes
:`

layer_1/conv3d/bias_a/readIdentitylayer_1/conv3d/bias_a*(
_class
loc:@layer_1/conv3d/bias_a*
_output_shapes
:`*
T0

*layer_1/conv3d/layer_1/conv3d/bias_a_0/tagConst*
dtype0*
_output_shapes
: *7
value.B, B&layer_1/conv3d/layer_1/conv3d/bias_a_0
£
&layer_1/conv3d/layer_1/conv3d/bias_a_0HistogramSummary*layer_1/conv3d/layer_1/conv3d/bias_a_0/taglayer_1/conv3d/bias_a/read*
_output_shapes
: *
T0
a
layer_1/conv3d/bias_sigmaAbslayer_1/conv3d/bias_a/read*
T0*
_output_shapes
:`

.layer_1/conv3d/layer_1/conv3d/bias_sigma_0/tagConst*;
value2B0 B*layer_1/conv3d/layer_1/conv3d/bias_sigma_0*
dtype0*
_output_shapes
: 
Ŗ
*layer_1/conv3d/layer_1/conv3d/bias_sigma_0HistogramSummary.layer_1/conv3d/layer_1/conv3d/bias_sigma_0/taglayer_1/conv3d/bias_sigma*
T0*
_output_shapes
: 
`
layer_1/conv3d/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

layer_1/conv3d/Mean_1Meanlayer_1/conv3d/bias_sigmalayer_1/conv3d/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

1layer_1/conv3d/layer_1/conv3d/bias_sigma_0_1/tagsConst*=
value4B2 B,layer_1/conv3d/layer_1/conv3d/bias_sigma_0_1*
dtype0*
_output_shapes
: 
Ø
,layer_1/conv3d/layer_1/conv3d/bias_sigma_0_1ScalarSummary1layer_1/conv3d/layer_1/conv3d/bias_sigma_0_1/tagslayer_1/conv3d/Mean_1*
_output_shapes
: *
T0
q
layer_1/conv3d/dilation_rateConst*
_output_shapes
:*!
valueB"         *
dtype0
Ü
layer_1/conv3d/Conv3DConv3DPlaceholderlayer_1/conv3d/kernel_m*
	dilations	
*
T0*
data_formatNDHWC*
strides	
*
paddingSAME*3
_output_shapes!
:’’’’’’’’’   `
j
layer_1/conv3d/SquareSquarePlaceholder*
T0*3
_output_shapes!
:’’’’’’’’’   
s
layer_1/conv3d/Square_1Squarelayer_1/conv3d/kernel_sigma**
_output_shapes
:`*
T0
č
layer_1/conv3d/Conv3D_1Conv3Dlayer_1/conv3d/Squarelayer_1/conv3d/Square_1*3
_output_shapes!
:’’’’’’’’’   `*
	dilations	
*
T0*
data_formatNDHWC*
strides	
*
paddingSAME
q
layer_1/conv3d/ShapeConst*)
value B"            `   *
dtype0*
_output_shapes
:
f
!layer_1/conv3d/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
#layer_1/conv3d/random_normal/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ŗ
1layer_1/conv3d/random_normal/RandomStandardNormalRandomStandardNormallayer_1/conv3d/Shape*

seed *
T0*
dtype0**
_output_shapes
:`*
seed2 
“
 layer_1/conv3d/random_normal/mulMul1layer_1/conv3d/random_normal/RandomStandardNormal#layer_1/conv3d/random_normal/stddev*
T0**
_output_shapes
:`

layer_1/conv3d/random_normalAdd layer_1/conv3d/random_normal/mul!layer_1/conv3d/random_normal/mean*
T0**
_output_shapes
:`
©
layer_1/conv3d/BiasAddBiasAddlayer_1/conv3d/Conv3Dlayer_1/conv3d/bias_m/read*
T0*
data_formatNHWC*3
_output_shapes!
:’’’’’’’’’   `
a
layer_1/conv3d/Square_2Squarelayer_1/conv3d/bias_sigma*
T0*
_output_shapes
:`
Ŗ
layer_1/conv3d/BiasAdd_1BiasAddlayer_1/conv3d/Conv3D_1layer_1/conv3d/Square_2*
T0*
data_formatNHWC*3
_output_shapes!
:’’’’’’’’’   `
U
layer_1/conv3d/cond/SwitchSwitchConstConst*
_output_shapes
: : *
T0

g
layer_1/conv3d/cond/switch_tIdentitylayer_1/conv3d/cond/Switch:1*
_output_shapes
: *
T0

e
layer_1/conv3d/cond/switch_fIdentitylayer_1/conv3d/cond/Switch*
_output_shapes
: *
T0

O
layer_1/conv3d/cond/pred_idIdentityConst*
_output_shapes
: *
T0

}
layer_1/conv3d/cond/add/yConst^layer_1/conv3d/cond/switch_t*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 

layer_1/conv3d/cond/addAdd layer_1/conv3d/cond/add/Switch:1layer_1/conv3d/cond/add/y*3
_output_shapes!
:’’’’’’’’’   `*
T0
é
layer_1/conv3d/cond/add/SwitchSwitchlayer_1/conv3d/BiasAdd_1layer_1/conv3d/cond/pred_id*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `*
T0*+
_class!
loc:@layer_1/conv3d/BiasAdd_1
w
layer_1/conv3d/cond/SqrtSqrtlayer_1/conv3d/cond/add*
T0*3
_output_shapes!
:’’’’’’’’’   `

layer_1/conv3d/cond/mulMullayer_1/conv3d/cond/Sqrt layer_1/conv3d/cond/mul/Switch:1*
T0*3
_output_shapes!
:’’’’’’’’’   `
ß
layer_1/conv3d/cond/mul/SwitchSwitchlayer_1/conv3d/random_normallayer_1/conv3d/cond/pred_id*/
_class%
#!loc:@layer_1/conv3d/random_normal*@
_output_shapes.
,:`:`*
T0

layer_1/conv3d/cond/add_1Add"layer_1/conv3d/cond/add_1/Switch:1layer_1/conv3d/cond/mul*
T0*3
_output_shapes!
:’’’’’’’’’   `
ē
 layer_1/conv3d/cond/add_1/SwitchSwitchlayer_1/conv3d/BiasAddlayer_1/conv3d/cond/pred_id*
T0*)
_class
loc:@layer_1/conv3d/BiasAdd*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
ć
layer_1/conv3d/cond/Switch_1Switchlayer_1/conv3d/BiasAddlayer_1/conv3d/cond/pred_id*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `*
T0*)
_class
loc:@layer_1/conv3d/BiasAdd
¤
layer_1/conv3d/cond/MergeMergelayer_1/conv3d/cond/Switch_1layer_1/conv3d/cond/add_1*
N*5
_output_shapes#
!:’’’’’’’’’   `: *
T0
K
scalarConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
k
mulMulscalarlayer_1/conv3d/cond/Merge*3
_output_shapes!
:’’’’’’’’’   `*
T0
J
cond/SwitchSwitchConst_1Const_1*
_output_shapes
: : *
T0

I
cond/switch_tIdentitycond/Switch:1*
T0
*
_output_shapes
: 
G
cond/switch_fIdentitycond/Switch*
_output_shapes
: *
T0

B
cond/pred_idIdentityConst_1*
T0
*
_output_shapes
: 
k
cond/dropout/keep_probConst^cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
m
cond/dropout/ShapeShapecond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
×
cond/dropout/Shape/SwitchSwitchlayer_1/conv3d/cond/Mergecond/pred_id*
T0*,
_class"
 loc:@layer_1/conv3d/cond/Merge*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
t
cond/dropout/random_uniform/minConst^cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
t
cond/dropout/random_uniform/maxConst^cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
²
)cond/dropout/random_uniform/RandomUniformRandomUniformcond/dropout/Shape*
T0*
dtype0*3
_output_shapes!
:’’’’’’’’’   `*
seed2 *

seed 

cond/dropout/random_uniform/subSubcond/dropout/random_uniform/maxcond/dropout/random_uniform/min*
T0*
_output_shapes
: 
°
cond/dropout/random_uniform/mulMul)cond/dropout/random_uniform/RandomUniformcond/dropout/random_uniform/sub*
T0*3
_output_shapes!
:’’’’’’’’’   `
¢
cond/dropout/random_uniformAddcond/dropout/random_uniform/mulcond/dropout/random_uniform/min*3
_output_shapes!
:’’’’’’’’’   `*
T0

cond/dropout/addAddcond/dropout/keep_probcond/dropout/random_uniform*
T0*3
_output_shapes!
:’’’’’’’’’   `
k
cond/dropout/FloorFloorcond/dropout/add*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond/dropout/divRealDivcond/dropout/Shape/Switch:1cond/dropout/keep_prob*
T0*3
_output_shapes!
:’’’’’’’’’   `
{
cond/dropout/mulMulcond/dropout/divcond/dropout/Floor*
T0*3
_output_shapes!
:’’’’’’’’’   `
`
cond/scalarConst^cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
l
cond/mulMulcond/scalarcond/dropout/mul*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond/Switch_1Switchmulcond/pred_id*
T0*
_class

loc:@mul*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
u

cond/MergeMergecond/Switch_1cond/mul*
T0*
N*5
_output_shapes#
!:’’’’’’’’’   `: 
^
layer_1/ReluRelu
cond/Merge*
T0*3
_output_shapes!
:’’’’’’’’’   `
³
1layer_2/conv3d/v/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_2/conv3d/v*)
value B"         `   `   *
dtype0*
_output_shapes
:

/layer_2/conv3d/v/Initializer/random_uniform/minConst*#
_class
loc:@layer_2/conv3d/v*
valueB
 *HY½*
dtype0*
_output_shapes
: 

/layer_2/conv3d/v/Initializer/random_uniform/maxConst*#
_class
loc:@layer_2/conv3d/v*
valueB
 *HY=*
dtype0*
_output_shapes
: 
ż
9layer_2/conv3d/v/Initializer/random_uniform/RandomUniformRandomUniform1layer_2/conv3d/v/Initializer/random_uniform/shape*
seed2 *
dtype0**
_output_shapes
:``*

seed *
T0*#
_class
loc:@layer_2/conv3d/v
Ž
/layer_2/conv3d/v/Initializer/random_uniform/subSub/layer_2/conv3d/v/Initializer/random_uniform/max/layer_2/conv3d/v/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_2/conv3d/v*
_output_shapes
: 
ü
/layer_2/conv3d/v/Initializer/random_uniform/mulMul9layer_2/conv3d/v/Initializer/random_uniform/RandomUniform/layer_2/conv3d/v/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_2/conv3d/v**
_output_shapes
:``
ī
+layer_2/conv3d/v/Initializer/random_uniformAdd/layer_2/conv3d/v/Initializer/random_uniform/mul/layer_2/conv3d/v/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_2/conv3d/v**
_output_shapes
:``
Į
layer_2/conv3d/v
VariableV2*
shared_name *#
_class
loc:@layer_2/conv3d/v*
	container *
shape:``*
dtype0**
_output_shapes
:``
ć
layer_2/conv3d/v/AssignAssignlayer_2/conv3d/v+layer_2/conv3d/v/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_2/conv3d/v*
validate_shape(**
_output_shapes
:``

layer_2/conv3d/v/readIdentitylayer_2/conv3d/v*
T0*#
_class
loc:@layer_2/conv3d/v**
_output_shapes
:``

%layer_2/conv3d/layer_2/conv3d/v_0/tagConst*2
value)B' B!layer_2/conv3d/layer_2/conv3d/v_0*
dtype0*
_output_shapes
: 

!layer_2/conv3d/layer_2/conv3d/v_0HistogramSummary%layer_2/conv3d/layer_2/conv3d/v_0/taglayer_2/conv3d/v/read*
T0*
_output_shapes
: 
“
"layer_2/conv3d/g/Initializer/ConstConst*#
_class
loc:@layer_2/conv3d/g*)
value B`*óµ?*
dtype0**
_output_shapes
:`
Į
layer_2/conv3d/g
VariableV2*
dtype0**
_output_shapes
:`*
shared_name *#
_class
loc:@layer_2/conv3d/g*
	container *
shape:`
Ś
layer_2/conv3d/g/AssignAssignlayer_2/conv3d/g"layer_2/conv3d/g/Initializer/Const*
use_locking(*
T0*#
_class
loc:@layer_2/conv3d/g*
validate_shape(**
_output_shapes
:`

layer_2/conv3d/g/readIdentitylayer_2/conv3d/g*#
_class
loc:@layer_2/conv3d/g**
_output_shapes
:`*
T0

%layer_2/conv3d/layer_2/conv3d/g_0/tagConst*2
value)B' B!layer_2/conv3d/layer_2/conv3d/g_0*
dtype0*
_output_shapes
: 

!layer_2/conv3d/layer_2/conv3d/g_0HistogramSummary%layer_2/conv3d/layer_2/conv3d/g_0/taglayer_2/conv3d/g/read*
T0*
_output_shapes
: 
x
"layer_2/conv3d/l2_normalize/SquareSquarelayer_2/conv3d/v/read**
_output_shapes
:``*
T0

1layer_2/conv3d/l2_normalize/Sum/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ļ
layer_2/conv3d/l2_normalize/SumSum"layer_2/conv3d/l2_normalize/Square1layer_2/conv3d/l2_normalize/Sum/reduction_indices*
T0**
_output_shapes
:`*
	keep_dims(*

Tidx0
j
%layer_2/conv3d/l2_normalize/Maximum/yConst*
valueB
 *Ģ¼+*
dtype0*
_output_shapes
: 
«
#layer_2/conv3d/l2_normalize/MaximumMaximumlayer_2/conv3d/l2_normalize/Sum%layer_2/conv3d/l2_normalize/Maximum/y**
_output_shapes
:`*
T0

!layer_2/conv3d/l2_normalize/RsqrtRsqrt#layer_2/conv3d/l2_normalize/Maximum*
T0**
_output_shapes
:`

layer_2/conv3d/l2_normalizeMullayer_2/conv3d/v/read!layer_2/conv3d/l2_normalize/Rsqrt*
T0**
_output_shapes
:``

layer_2/conv3d/kernel_mMullayer_2/conv3d/g/readlayer_2/conv3d/l2_normalize**
_output_shapes
:``*
T0

,layer_2/conv3d/layer_2/conv3d/kernel_m_0/tagConst*9
value0B. B(layer_2/conv3d/layer_2/conv3d/kernel_m_0*
dtype0*
_output_shapes
: 
¤
(layer_2/conv3d/layer_2/conv3d/kernel_m_0HistogramSummary,layer_2/conv3d/layer_2/conv3d/kernel_m_0/taglayer_2/conv3d/kernel_m*
T0*
_output_shapes
: 
Ā
)layer_2/conv3d/kernel_a/Initializer/ConstConst**
_class 
loc:@layer_2/conv3d/kernel_a*)
value B``*·Ń8*
dtype0**
_output_shapes
:``
Ļ
layer_2/conv3d/kernel_a
VariableV2*
shape:``*
dtype0**
_output_shapes
:``*
shared_name **
_class 
loc:@layer_2/conv3d/kernel_a*
	container 
ö
layer_2/conv3d/kernel_a/AssignAssignlayer_2/conv3d/kernel_a)layer_2/conv3d/kernel_a/Initializer/Const**
_output_shapes
:``*
use_locking(*
T0**
_class 
loc:@layer_2/conv3d/kernel_a*
validate_shape(
¢
layer_2/conv3d/kernel_a/readIdentitylayer_2/conv3d/kernel_a*
T0**
_class 
loc:@layer_2/conv3d/kernel_a**
_output_shapes
:``

,layer_2/conv3d/layer_2/conv3d/kernel_a_0/tagConst*
dtype0*
_output_shapes
: *9
value0B. B(layer_2/conv3d/layer_2/conv3d/kernel_a_0
©
(layer_2/conv3d/layer_2/conv3d/kernel_a_0HistogramSummary,layer_2/conv3d/layer_2/conv3d/kernel_a_0/taglayer_2/conv3d/kernel_a/read*
_output_shapes
: *
T0
u
layer_2/conv3d/kernel_sigmaAbslayer_2/conv3d/kernel_a/read**
_output_shapes
:``*
T0

0layer_2/conv3d/layer_2/conv3d/kernel_sigma_0/tagConst*=
value4B2 B,layer_2/conv3d/layer_2/conv3d/kernel_sigma_0*
dtype0*
_output_shapes
: 
°
,layer_2/conv3d/layer_2/conv3d/kernel_sigma_0HistogramSummary0layer_2/conv3d/layer_2/conv3d/kernel_sigma_0/taglayer_2/conv3d/kernel_sigma*
T0*
_output_shapes
: 
q
layer_2/conv3d/ConstConst*)
value B"                *
dtype0*
_output_shapes
:

layer_2/conv3d/MeanMeanlayer_2/conv3d/kernel_sigmalayer_2/conv3d/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
¢
3layer_2/conv3d/layer_2/conv3d/kernel_sigma_0_1/tagsConst*?
value6B4 B.layer_2/conv3d/layer_2/conv3d/kernel_sigma_0_1*
dtype0*
_output_shapes
: 
Ŗ
.layer_2/conv3d/layer_2/conv3d/kernel_sigma_0_1ScalarSummary3layer_2/conv3d/layer_2/conv3d/kernel_sigma_0_1/tagslayer_2/conv3d/Mean*
T0*
_output_shapes
: 

'layer_2/conv3d/bias_m/Initializer/zerosConst*(
_class
loc:@layer_2/conv3d/bias_m*
valueB`*    *
dtype0*
_output_shapes
:`
«
layer_2/conv3d/bias_m
VariableV2*
	container *
shape:`*
dtype0*
_output_shapes
:`*
shared_name *(
_class
loc:@layer_2/conv3d/bias_m
Ž
layer_2/conv3d/bias_m/AssignAssignlayer_2/conv3d/bias_m'layer_2/conv3d/bias_m/Initializer/zeros*
_output_shapes
:`*
use_locking(*
T0*(
_class
loc:@layer_2/conv3d/bias_m*
validate_shape(

layer_2/conv3d/bias_m/readIdentitylayer_2/conv3d/bias_m*
T0*(
_class
loc:@layer_2/conv3d/bias_m*
_output_shapes
:`

*layer_2/conv3d/layer_2/conv3d/bias_m_0/tagConst*7
value.B, B&layer_2/conv3d/layer_2/conv3d/bias_m_0*
dtype0*
_output_shapes
: 
£
&layer_2/conv3d/layer_2/conv3d/bias_m_0HistogramSummary*layer_2/conv3d/layer_2/conv3d/bias_m_0/taglayer_2/conv3d/bias_m/read*
_output_shapes
: *
T0

'layer_2/conv3d/bias_a/Initializer/ConstConst*(
_class
loc:@layer_2/conv3d/bias_a*
valueB`*·Ń8*
dtype0*
_output_shapes
:`
«
layer_2/conv3d/bias_a
VariableV2*
shared_name *(
_class
loc:@layer_2/conv3d/bias_a*
	container *
shape:`*
dtype0*
_output_shapes
:`
Ž
layer_2/conv3d/bias_a/AssignAssignlayer_2/conv3d/bias_a'layer_2/conv3d/bias_a/Initializer/Const*
T0*(
_class
loc:@layer_2/conv3d/bias_a*
validate_shape(*
_output_shapes
:`*
use_locking(

layer_2/conv3d/bias_a/readIdentitylayer_2/conv3d/bias_a*
T0*(
_class
loc:@layer_2/conv3d/bias_a*
_output_shapes
:`

*layer_2/conv3d/layer_2/conv3d/bias_a_0/tagConst*7
value.B, B&layer_2/conv3d/layer_2/conv3d/bias_a_0*
dtype0*
_output_shapes
: 
£
&layer_2/conv3d/layer_2/conv3d/bias_a_0HistogramSummary*layer_2/conv3d/layer_2/conv3d/bias_a_0/taglayer_2/conv3d/bias_a/read*
_output_shapes
: *
T0
a
layer_2/conv3d/bias_sigmaAbslayer_2/conv3d/bias_a/read*
T0*
_output_shapes
:`

.layer_2/conv3d/layer_2/conv3d/bias_sigma_0/tagConst*;
value2B0 B*layer_2/conv3d/layer_2/conv3d/bias_sigma_0*
dtype0*
_output_shapes
: 
Ŗ
*layer_2/conv3d/layer_2/conv3d/bias_sigma_0HistogramSummary.layer_2/conv3d/layer_2/conv3d/bias_sigma_0/taglayer_2/conv3d/bias_sigma*
T0*
_output_shapes
: 
`
layer_2/conv3d/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

layer_2/conv3d/Mean_1Meanlayer_2/conv3d/bias_sigmalayer_2/conv3d/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

1layer_2/conv3d/layer_2/conv3d/bias_sigma_0_1/tagsConst*=
value4B2 B,layer_2/conv3d/layer_2/conv3d/bias_sigma_0_1*
dtype0*
_output_shapes
: 
Ø
,layer_2/conv3d/layer_2/conv3d/bias_sigma_0_1ScalarSummary1layer_2/conv3d/layer_2/conv3d/bias_sigma_0_1/tagslayer_2/conv3d/Mean_1*
T0*
_output_shapes
: 
q
layer_2/conv3d/dilation_rateConst*!
valueB"         *
dtype0*
_output_shapes
:
Ż
layer_2/conv3d/Conv3DConv3Dlayer_1/Relulayer_2/conv3d/kernel_m*
paddingSAME*3
_output_shapes!
:’’’’’’’’’   `*
	dilations	
*
T0*
data_formatNDHWC*
strides	

k
layer_2/conv3d/SquareSquarelayer_1/Relu*
T0*3
_output_shapes!
:’’’’’’’’’   `
s
layer_2/conv3d/Square_1Squarelayer_2/conv3d/kernel_sigma*
T0**
_output_shapes
:``
č
layer_2/conv3d/Conv3D_1Conv3Dlayer_2/conv3d/Squarelayer_2/conv3d/Square_1*
	dilations	
*
T0*
data_formatNDHWC*
strides	
*
paddingSAME*3
_output_shapes!
:’’’’’’’’’   `
q
layer_2/conv3d/ShapeConst*)
value B"            `   *
dtype0*
_output_shapes
:
f
!layer_2/conv3d/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
#layer_2/conv3d/random_normal/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ŗ
1layer_2/conv3d/random_normal/RandomStandardNormalRandomStandardNormallayer_2/conv3d/Shape*
dtype0**
_output_shapes
:`*
seed2 *

seed *
T0
“
 layer_2/conv3d/random_normal/mulMul1layer_2/conv3d/random_normal/RandomStandardNormal#layer_2/conv3d/random_normal/stddev*
T0**
_output_shapes
:`

layer_2/conv3d/random_normalAdd layer_2/conv3d/random_normal/mul!layer_2/conv3d/random_normal/mean*
T0**
_output_shapes
:`
©
layer_2/conv3d/BiasAddBiasAddlayer_2/conv3d/Conv3Dlayer_2/conv3d/bias_m/read*
T0*
data_formatNHWC*3
_output_shapes!
:’’’’’’’’’   `
a
layer_2/conv3d/Square_2Squarelayer_2/conv3d/bias_sigma*
_output_shapes
:`*
T0
Ŗ
layer_2/conv3d/BiasAdd_1BiasAddlayer_2/conv3d/Conv3D_1layer_2/conv3d/Square_2*
T0*
data_formatNHWC*3
_output_shapes!
:’’’’’’’’’   `
U
layer_2/conv3d/cond/SwitchSwitchConstConst*
T0
*
_output_shapes
: : 
g
layer_2/conv3d/cond/switch_tIdentitylayer_2/conv3d/cond/Switch:1*
T0
*
_output_shapes
: 
e
layer_2/conv3d/cond/switch_fIdentitylayer_2/conv3d/cond/Switch*
T0
*
_output_shapes
: 
O
layer_2/conv3d/cond/pred_idIdentityConst*
_output_shapes
: *
T0

}
layer_2/conv3d/cond/add/yConst^layer_2/conv3d/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2

layer_2/conv3d/cond/addAdd layer_2/conv3d/cond/add/Switch:1layer_2/conv3d/cond/add/y*
T0*3
_output_shapes!
:’’’’’’’’’   `
é
layer_2/conv3d/cond/add/SwitchSwitchlayer_2/conv3d/BiasAdd_1layer_2/conv3d/cond/pred_id*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `*
T0*+
_class!
loc:@layer_2/conv3d/BiasAdd_1
w
layer_2/conv3d/cond/SqrtSqrtlayer_2/conv3d/cond/add*
T0*3
_output_shapes!
:’’’’’’’’’   `

layer_2/conv3d/cond/mulMullayer_2/conv3d/cond/Sqrt layer_2/conv3d/cond/mul/Switch:1*
T0*3
_output_shapes!
:’’’’’’’’’   `
ß
layer_2/conv3d/cond/mul/SwitchSwitchlayer_2/conv3d/random_normallayer_2/conv3d/cond/pred_id*
T0*/
_class%
#!loc:@layer_2/conv3d/random_normal*@
_output_shapes.
,:`:`

layer_2/conv3d/cond/add_1Add"layer_2/conv3d/cond/add_1/Switch:1layer_2/conv3d/cond/mul*
T0*3
_output_shapes!
:’’’’’’’’’   `
ē
 layer_2/conv3d/cond/add_1/SwitchSwitchlayer_2/conv3d/BiasAddlayer_2/conv3d/cond/pred_id*)
_class
loc:@layer_2/conv3d/BiasAdd*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `*
T0
ć
layer_2/conv3d/cond/Switch_1Switchlayer_2/conv3d/BiasAddlayer_2/conv3d/cond/pred_id*
T0*)
_class
loc:@layer_2/conv3d/BiasAdd*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
¤
layer_2/conv3d/cond/MergeMergelayer_2/conv3d/cond/Switch_1layer_2/conv3d/cond/add_1*
T0*
N*5
_output_shapes#
!:’’’’’’’’’   `: 
M
scalar_1Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
o
mul_1Mulscalar_1layer_2/conv3d/cond/Merge*
T0*3
_output_shapes!
:’’’’’’’’’   `
L
cond_1/SwitchSwitchConst_1Const_1*
T0
*
_output_shapes
: : 
M
cond_1/switch_tIdentitycond_1/Switch:1*
_output_shapes
: *
T0

K
cond_1/switch_fIdentitycond_1/Switch*
_output_shapes
: *
T0

D
cond_1/pred_idIdentityConst_1*
_output_shapes
: *
T0

o
cond_1/dropout/keep_probConst^cond_1/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
q
cond_1/dropout/ShapeShapecond_1/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Ū
cond_1/dropout/Shape/SwitchSwitchlayer_2/conv3d/cond/Mergecond_1/pred_id*
T0*,
_class"
 loc:@layer_2/conv3d/cond/Merge*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
x
!cond_1/dropout/random_uniform/minConst^cond_1/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
x
!cond_1/dropout/random_uniform/maxConst^cond_1/switch_t*
_output_shapes
: *
valueB
 *  ?*
dtype0
¶
+cond_1/dropout/random_uniform/RandomUniformRandomUniformcond_1/dropout/Shape*
dtype0*3
_output_shapes!
:’’’’’’’’’   `*
seed2 *

seed *
T0

!cond_1/dropout/random_uniform/subSub!cond_1/dropout/random_uniform/max!cond_1/dropout/random_uniform/min*
_output_shapes
: *
T0
¶
!cond_1/dropout/random_uniform/mulMul+cond_1/dropout/random_uniform/RandomUniform!cond_1/dropout/random_uniform/sub*
T0*3
_output_shapes!
:’’’’’’’’’   `
Ø
cond_1/dropout/random_uniformAdd!cond_1/dropout/random_uniform/mul!cond_1/dropout/random_uniform/min*3
_output_shapes!
:’’’’’’’’’   `*
T0

cond_1/dropout/addAddcond_1/dropout/keep_probcond_1/dropout/random_uniform*
T0*3
_output_shapes!
:’’’’’’’’’   `
o
cond_1/dropout/FloorFloorcond_1/dropout/add*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond_1/dropout/divRealDivcond_1/dropout/Shape/Switch:1cond_1/dropout/keep_prob*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond_1/dropout/mulMulcond_1/dropout/divcond_1/dropout/Floor*3
_output_shapes!
:’’’’’’’’’   `*
T0
d
cond_1/scalarConst^cond_1/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r

cond_1/mulMulcond_1/scalarcond_1/dropout/mul*
T0*3
_output_shapes!
:’’’’’’’’’   `
§
cond_1/Switch_1Switchmul_1cond_1/pred_id*
T0*
_class

loc:@mul_1*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
{
cond_1/MergeMergecond_1/Switch_1
cond_1/mul*
N*5
_output_shapes#
!:’’’’’’’’’   `: *
T0
`
layer_2/ReluRelucond_1/Merge*
T0*3
_output_shapes!
:’’’’’’’’’   `
³
1layer_3/conv3d/v/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*#
_class
loc:@layer_3/conv3d/v*)
value B"         `   `   

/layer_3/conv3d/v/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_3/conv3d/v*
valueB
 *HY½

/layer_3/conv3d/v/Initializer/random_uniform/maxConst*#
_class
loc:@layer_3/conv3d/v*
valueB
 *HY=*
dtype0*
_output_shapes
: 
ż
9layer_3/conv3d/v/Initializer/random_uniform/RandomUniformRandomUniform1layer_3/conv3d/v/Initializer/random_uniform/shape*
dtype0**
_output_shapes
:``*

seed *
T0*#
_class
loc:@layer_3/conv3d/v*
seed2 
Ž
/layer_3/conv3d/v/Initializer/random_uniform/subSub/layer_3/conv3d/v/Initializer/random_uniform/max/layer_3/conv3d/v/Initializer/random_uniform/min*#
_class
loc:@layer_3/conv3d/v*
_output_shapes
: *
T0
ü
/layer_3/conv3d/v/Initializer/random_uniform/mulMul9layer_3/conv3d/v/Initializer/random_uniform/RandomUniform/layer_3/conv3d/v/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_3/conv3d/v**
_output_shapes
:``
ī
+layer_3/conv3d/v/Initializer/random_uniformAdd/layer_3/conv3d/v/Initializer/random_uniform/mul/layer_3/conv3d/v/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_3/conv3d/v**
_output_shapes
:``
Į
layer_3/conv3d/v
VariableV2*
dtype0**
_output_shapes
:``*
shared_name *#
_class
loc:@layer_3/conv3d/v*
	container *
shape:``
ć
layer_3/conv3d/v/AssignAssignlayer_3/conv3d/v+layer_3/conv3d/v/Initializer/random_uniform**
_output_shapes
:``*
use_locking(*
T0*#
_class
loc:@layer_3/conv3d/v*
validate_shape(

layer_3/conv3d/v/readIdentitylayer_3/conv3d/v**
_output_shapes
:``*
T0*#
_class
loc:@layer_3/conv3d/v

%layer_3/conv3d/layer_3/conv3d/v_0/tagConst*2
value)B' B!layer_3/conv3d/layer_3/conv3d/v_0*
dtype0*
_output_shapes
: 

!layer_3/conv3d/layer_3/conv3d/v_0HistogramSummary%layer_3/conv3d/layer_3/conv3d/v_0/taglayer_3/conv3d/v/read*
T0*
_output_shapes
: 
“
"layer_3/conv3d/g/Initializer/ConstConst*#
_class
loc:@layer_3/conv3d/g*)
value B`*óµ?*
dtype0**
_output_shapes
:`
Į
layer_3/conv3d/g
VariableV2*
shared_name *#
_class
loc:@layer_3/conv3d/g*
	container *
shape:`*
dtype0**
_output_shapes
:`
Ś
layer_3/conv3d/g/AssignAssignlayer_3/conv3d/g"layer_3/conv3d/g/Initializer/Const*
use_locking(*
T0*#
_class
loc:@layer_3/conv3d/g*
validate_shape(**
_output_shapes
:`

layer_3/conv3d/g/readIdentitylayer_3/conv3d/g**
_output_shapes
:`*
T0*#
_class
loc:@layer_3/conv3d/g

%layer_3/conv3d/layer_3/conv3d/g_0/tagConst*2
value)B' B!layer_3/conv3d/layer_3/conv3d/g_0*
dtype0*
_output_shapes
: 

!layer_3/conv3d/layer_3/conv3d/g_0HistogramSummary%layer_3/conv3d/layer_3/conv3d/g_0/taglayer_3/conv3d/g/read*
T0*
_output_shapes
: 
x
"layer_3/conv3d/l2_normalize/SquareSquarelayer_3/conv3d/v/read*
T0**
_output_shapes
:``

1layer_3/conv3d/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
:*%
valueB"             *
dtype0
Ļ
layer_3/conv3d/l2_normalize/SumSum"layer_3/conv3d/l2_normalize/Square1layer_3/conv3d/l2_normalize/Sum/reduction_indices*
T0**
_output_shapes
:`*
	keep_dims(*

Tidx0
j
%layer_3/conv3d/l2_normalize/Maximum/yConst*
valueB
 *Ģ¼+*
dtype0*
_output_shapes
: 
«
#layer_3/conv3d/l2_normalize/MaximumMaximumlayer_3/conv3d/l2_normalize/Sum%layer_3/conv3d/l2_normalize/Maximum/y*
T0**
_output_shapes
:`

!layer_3/conv3d/l2_normalize/RsqrtRsqrt#layer_3/conv3d/l2_normalize/Maximum**
_output_shapes
:`*
T0

layer_3/conv3d/l2_normalizeMullayer_3/conv3d/v/read!layer_3/conv3d/l2_normalize/Rsqrt*
T0**
_output_shapes
:``

layer_3/conv3d/kernel_mMullayer_3/conv3d/g/readlayer_3/conv3d/l2_normalize*
T0**
_output_shapes
:``

,layer_3/conv3d/layer_3/conv3d/kernel_m_0/tagConst*9
value0B. B(layer_3/conv3d/layer_3/conv3d/kernel_m_0*
dtype0*
_output_shapes
: 
¤
(layer_3/conv3d/layer_3/conv3d/kernel_m_0HistogramSummary,layer_3/conv3d/layer_3/conv3d/kernel_m_0/taglayer_3/conv3d/kernel_m*
_output_shapes
: *
T0
Ā
)layer_3/conv3d/kernel_a/Initializer/ConstConst**
_class 
loc:@layer_3/conv3d/kernel_a*)
value B``*·Ń8*
dtype0**
_output_shapes
:``
Ļ
layer_3/conv3d/kernel_a
VariableV2*
dtype0**
_output_shapes
:``*
shared_name **
_class 
loc:@layer_3/conv3d/kernel_a*
	container *
shape:``
ö
layer_3/conv3d/kernel_a/AssignAssignlayer_3/conv3d/kernel_a)layer_3/conv3d/kernel_a/Initializer/Const*
T0**
_class 
loc:@layer_3/conv3d/kernel_a*
validate_shape(**
_output_shapes
:``*
use_locking(
¢
layer_3/conv3d/kernel_a/readIdentitylayer_3/conv3d/kernel_a**
_output_shapes
:``*
T0**
_class 
loc:@layer_3/conv3d/kernel_a

,layer_3/conv3d/layer_3/conv3d/kernel_a_0/tagConst*9
value0B. B(layer_3/conv3d/layer_3/conv3d/kernel_a_0*
dtype0*
_output_shapes
: 
©
(layer_3/conv3d/layer_3/conv3d/kernel_a_0HistogramSummary,layer_3/conv3d/layer_3/conv3d/kernel_a_0/taglayer_3/conv3d/kernel_a/read*
T0*
_output_shapes
: 
u
layer_3/conv3d/kernel_sigmaAbslayer_3/conv3d/kernel_a/read**
_output_shapes
:``*
T0

0layer_3/conv3d/layer_3/conv3d/kernel_sigma_0/tagConst*=
value4B2 B,layer_3/conv3d/layer_3/conv3d/kernel_sigma_0*
dtype0*
_output_shapes
: 
°
,layer_3/conv3d/layer_3/conv3d/kernel_sigma_0HistogramSummary0layer_3/conv3d/layer_3/conv3d/kernel_sigma_0/taglayer_3/conv3d/kernel_sigma*
T0*
_output_shapes
: 
q
layer_3/conv3d/ConstConst*
dtype0*
_output_shapes
:*)
value B"                

layer_3/conv3d/MeanMeanlayer_3/conv3d/kernel_sigmalayer_3/conv3d/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
¢
3layer_3/conv3d/layer_3/conv3d/kernel_sigma_0_1/tagsConst*?
value6B4 B.layer_3/conv3d/layer_3/conv3d/kernel_sigma_0_1*
dtype0*
_output_shapes
: 
Ŗ
.layer_3/conv3d/layer_3/conv3d/kernel_sigma_0_1ScalarSummary3layer_3/conv3d/layer_3/conv3d/kernel_sigma_0_1/tagslayer_3/conv3d/Mean*
T0*
_output_shapes
: 

'layer_3/conv3d/bias_m/Initializer/zerosConst*
dtype0*
_output_shapes
:`*(
_class
loc:@layer_3/conv3d/bias_m*
valueB`*    
«
layer_3/conv3d/bias_m
VariableV2*
shared_name *(
_class
loc:@layer_3/conv3d/bias_m*
	container *
shape:`*
dtype0*
_output_shapes
:`
Ž
layer_3/conv3d/bias_m/AssignAssignlayer_3/conv3d/bias_m'layer_3/conv3d/bias_m/Initializer/zeros*
use_locking(*
T0*(
_class
loc:@layer_3/conv3d/bias_m*
validate_shape(*
_output_shapes
:`

layer_3/conv3d/bias_m/readIdentitylayer_3/conv3d/bias_m*
T0*(
_class
loc:@layer_3/conv3d/bias_m*
_output_shapes
:`

*layer_3/conv3d/layer_3/conv3d/bias_m_0/tagConst*7
value.B, B&layer_3/conv3d/layer_3/conv3d/bias_m_0*
dtype0*
_output_shapes
: 
£
&layer_3/conv3d/layer_3/conv3d/bias_m_0HistogramSummary*layer_3/conv3d/layer_3/conv3d/bias_m_0/taglayer_3/conv3d/bias_m/read*
T0*
_output_shapes
: 

'layer_3/conv3d/bias_a/Initializer/ConstConst*(
_class
loc:@layer_3/conv3d/bias_a*
valueB`*·Ń8*
dtype0*
_output_shapes
:`
«
layer_3/conv3d/bias_a
VariableV2*
dtype0*
_output_shapes
:`*
shared_name *(
_class
loc:@layer_3/conv3d/bias_a*
	container *
shape:`
Ž
layer_3/conv3d/bias_a/AssignAssignlayer_3/conv3d/bias_a'layer_3/conv3d/bias_a/Initializer/Const*
T0*(
_class
loc:@layer_3/conv3d/bias_a*
validate_shape(*
_output_shapes
:`*
use_locking(

layer_3/conv3d/bias_a/readIdentitylayer_3/conv3d/bias_a*
T0*(
_class
loc:@layer_3/conv3d/bias_a*
_output_shapes
:`

*layer_3/conv3d/layer_3/conv3d/bias_a_0/tagConst*7
value.B, B&layer_3/conv3d/layer_3/conv3d/bias_a_0*
dtype0*
_output_shapes
: 
£
&layer_3/conv3d/layer_3/conv3d/bias_a_0HistogramSummary*layer_3/conv3d/layer_3/conv3d/bias_a_0/taglayer_3/conv3d/bias_a/read*
_output_shapes
: *
T0
a
layer_3/conv3d/bias_sigmaAbslayer_3/conv3d/bias_a/read*
T0*
_output_shapes
:`

.layer_3/conv3d/layer_3/conv3d/bias_sigma_0/tagConst*;
value2B0 B*layer_3/conv3d/layer_3/conv3d/bias_sigma_0*
dtype0*
_output_shapes
: 
Ŗ
*layer_3/conv3d/layer_3/conv3d/bias_sigma_0HistogramSummary.layer_3/conv3d/layer_3/conv3d/bias_sigma_0/taglayer_3/conv3d/bias_sigma*
_output_shapes
: *
T0
`
layer_3/conv3d/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

layer_3/conv3d/Mean_1Meanlayer_3/conv3d/bias_sigmalayer_3/conv3d/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

1layer_3/conv3d/layer_3/conv3d/bias_sigma_0_1/tagsConst*=
value4B2 B,layer_3/conv3d/layer_3/conv3d/bias_sigma_0_1*
dtype0*
_output_shapes
: 
Ø
,layer_3/conv3d/layer_3/conv3d/bias_sigma_0_1ScalarSummary1layer_3/conv3d/layer_3/conv3d/bias_sigma_0_1/tagslayer_3/conv3d/Mean_1*
_output_shapes
: *
T0
q
layer_3/conv3d/dilation_rateConst*
_output_shapes
:*!
valueB"         *
dtype0
Ż
layer_3/conv3d/Conv3DConv3Dlayer_2/Relulayer_3/conv3d/kernel_m*3
_output_shapes!
:’’’’’’’’’   `*
	dilations	
*
T0*
data_formatNDHWC*
strides	
*
paddingSAME
k
layer_3/conv3d/SquareSquarelayer_2/Relu*3
_output_shapes!
:’’’’’’’’’   `*
T0
s
layer_3/conv3d/Square_1Squarelayer_3/conv3d/kernel_sigma*
T0**
_output_shapes
:``
č
layer_3/conv3d/Conv3D_1Conv3Dlayer_3/conv3d/Squarelayer_3/conv3d/Square_1*3
_output_shapes!
:’’’’’’’’’   `*
	dilations	
*
T0*
data_formatNDHWC*
strides	
*
paddingSAME
q
layer_3/conv3d/ShapeConst*)
value B"            `   *
dtype0*
_output_shapes
:
f
!layer_3/conv3d/random_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
h
#layer_3/conv3d/random_normal/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ŗ
1layer_3/conv3d/random_normal/RandomStandardNormalRandomStandardNormallayer_3/conv3d/Shape*

seed *
T0*
dtype0**
_output_shapes
:`*
seed2 
“
 layer_3/conv3d/random_normal/mulMul1layer_3/conv3d/random_normal/RandomStandardNormal#layer_3/conv3d/random_normal/stddev*
T0**
_output_shapes
:`

layer_3/conv3d/random_normalAdd layer_3/conv3d/random_normal/mul!layer_3/conv3d/random_normal/mean**
_output_shapes
:`*
T0
©
layer_3/conv3d/BiasAddBiasAddlayer_3/conv3d/Conv3Dlayer_3/conv3d/bias_m/read*3
_output_shapes!
:’’’’’’’’’   `*
T0*
data_formatNHWC
a
layer_3/conv3d/Square_2Squarelayer_3/conv3d/bias_sigma*
T0*
_output_shapes
:`
Ŗ
layer_3/conv3d/BiasAdd_1BiasAddlayer_3/conv3d/Conv3D_1layer_3/conv3d/Square_2*
T0*
data_formatNHWC*3
_output_shapes!
:’’’’’’’’’   `
U
layer_3/conv3d/cond/SwitchSwitchConstConst*
T0
*
_output_shapes
: : 
g
layer_3/conv3d/cond/switch_tIdentitylayer_3/conv3d/cond/Switch:1*
T0
*
_output_shapes
: 
e
layer_3/conv3d/cond/switch_fIdentitylayer_3/conv3d/cond/Switch*
T0
*
_output_shapes
: 
O
layer_3/conv3d/cond/pred_idIdentityConst*
T0
*
_output_shapes
: 
}
layer_3/conv3d/cond/add/yConst^layer_3/conv3d/cond/switch_t*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 

layer_3/conv3d/cond/addAdd layer_3/conv3d/cond/add/Switch:1layer_3/conv3d/cond/add/y*
T0*3
_output_shapes!
:’’’’’’’’’   `
é
layer_3/conv3d/cond/add/SwitchSwitchlayer_3/conv3d/BiasAdd_1layer_3/conv3d/cond/pred_id*
T0*+
_class!
loc:@layer_3/conv3d/BiasAdd_1*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
w
layer_3/conv3d/cond/SqrtSqrtlayer_3/conv3d/cond/add*
T0*3
_output_shapes!
:’’’’’’’’’   `

layer_3/conv3d/cond/mulMullayer_3/conv3d/cond/Sqrt layer_3/conv3d/cond/mul/Switch:1*
T0*3
_output_shapes!
:’’’’’’’’’   `
ß
layer_3/conv3d/cond/mul/SwitchSwitchlayer_3/conv3d/random_normallayer_3/conv3d/cond/pred_id*
T0*/
_class%
#!loc:@layer_3/conv3d/random_normal*@
_output_shapes.
,:`:`

layer_3/conv3d/cond/add_1Add"layer_3/conv3d/cond/add_1/Switch:1layer_3/conv3d/cond/mul*3
_output_shapes!
:’’’’’’’’’   `*
T0
ē
 layer_3/conv3d/cond/add_1/SwitchSwitchlayer_3/conv3d/BiasAddlayer_3/conv3d/cond/pred_id*
T0*)
_class
loc:@layer_3/conv3d/BiasAdd*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
ć
layer_3/conv3d/cond/Switch_1Switchlayer_3/conv3d/BiasAddlayer_3/conv3d/cond/pred_id*)
_class
loc:@layer_3/conv3d/BiasAdd*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `*
T0
¤
layer_3/conv3d/cond/MergeMergelayer_3/conv3d/cond/Switch_1layer_3/conv3d/cond/add_1*
T0*
N*5
_output_shapes#
!:’’’’’’’’’   `: 
M
scalar_2Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
o
mul_2Mulscalar_2layer_3/conv3d/cond/Merge*3
_output_shapes!
:’’’’’’’’’   `*
T0
L
cond_2/SwitchSwitchConst_1Const_1*
T0
*
_output_shapes
: : 
M
cond_2/switch_tIdentitycond_2/Switch:1*
_output_shapes
: *
T0

K
cond_2/switch_fIdentitycond_2/Switch*
T0
*
_output_shapes
: 
D
cond_2/pred_idIdentityConst_1*
_output_shapes
: *
T0

o
cond_2/dropout/keep_probConst^cond_2/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
q
cond_2/dropout/ShapeShapecond_2/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0
Ū
cond_2/dropout/Shape/SwitchSwitchlayer_3/conv3d/cond/Mergecond_2/pred_id*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `*
T0*,
_class"
 loc:@layer_3/conv3d/cond/Merge
x
!cond_2/dropout/random_uniform/minConst^cond_2/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
x
!cond_2/dropout/random_uniform/maxConst^cond_2/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¶
+cond_2/dropout/random_uniform/RandomUniformRandomUniformcond_2/dropout/Shape*3
_output_shapes!
:’’’’’’’’’   `*
seed2 *

seed *
T0*
dtype0

!cond_2/dropout/random_uniform/subSub!cond_2/dropout/random_uniform/max!cond_2/dropout/random_uniform/min*
T0*
_output_shapes
: 
¶
!cond_2/dropout/random_uniform/mulMul+cond_2/dropout/random_uniform/RandomUniform!cond_2/dropout/random_uniform/sub*3
_output_shapes!
:’’’’’’’’’   `*
T0
Ø
cond_2/dropout/random_uniformAdd!cond_2/dropout/random_uniform/mul!cond_2/dropout/random_uniform/min*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond_2/dropout/addAddcond_2/dropout/keep_probcond_2/dropout/random_uniform*
T0*3
_output_shapes!
:’’’’’’’’’   `
o
cond_2/dropout/FloorFloorcond_2/dropout/add*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond_2/dropout/divRealDivcond_2/dropout/Shape/Switch:1cond_2/dropout/keep_prob*3
_output_shapes!
:’’’’’’’’’   `*
T0

cond_2/dropout/mulMulcond_2/dropout/divcond_2/dropout/Floor*
T0*3
_output_shapes!
:’’’’’’’’’   `
d
cond_2/scalarConst^cond_2/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r

cond_2/mulMulcond_2/scalarcond_2/dropout/mul*
T0*3
_output_shapes!
:’’’’’’’’’   `
§
cond_2/Switch_1Switchmul_2cond_2/pred_id*
T0*
_class

loc:@mul_2*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
{
cond_2/MergeMergecond_2/Switch_1
cond_2/mul*
T0*
N*5
_output_shapes#
!:’’’’’’’’’   `: 
`
layer_3/ReluRelucond_2/Merge*3
_output_shapes!
:’’’’’’’’’   `*
T0
³
1layer_4/conv3d/v/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*#
_class
loc:@layer_4/conv3d/v*)
value B"         `   `   

/layer_4/conv3d/v/Initializer/random_uniform/minConst*#
_class
loc:@layer_4/conv3d/v*
valueB
 *HY½*
dtype0*
_output_shapes
: 

/layer_4/conv3d/v/Initializer/random_uniform/maxConst*#
_class
loc:@layer_4/conv3d/v*
valueB
 *HY=*
dtype0*
_output_shapes
: 
ż
9layer_4/conv3d/v/Initializer/random_uniform/RandomUniformRandomUniform1layer_4/conv3d/v/Initializer/random_uniform/shape*#
_class
loc:@layer_4/conv3d/v*
seed2 *
dtype0**
_output_shapes
:``*

seed *
T0
Ž
/layer_4/conv3d/v/Initializer/random_uniform/subSub/layer_4/conv3d/v/Initializer/random_uniform/max/layer_4/conv3d/v/Initializer/random_uniform/min*#
_class
loc:@layer_4/conv3d/v*
_output_shapes
: *
T0
ü
/layer_4/conv3d/v/Initializer/random_uniform/mulMul9layer_4/conv3d/v/Initializer/random_uniform/RandomUniform/layer_4/conv3d/v/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_4/conv3d/v**
_output_shapes
:``
ī
+layer_4/conv3d/v/Initializer/random_uniformAdd/layer_4/conv3d/v/Initializer/random_uniform/mul/layer_4/conv3d/v/Initializer/random_uniform/min**
_output_shapes
:``*
T0*#
_class
loc:@layer_4/conv3d/v
Į
layer_4/conv3d/v
VariableV2*
shared_name *#
_class
loc:@layer_4/conv3d/v*
	container *
shape:``*
dtype0**
_output_shapes
:``
ć
layer_4/conv3d/v/AssignAssignlayer_4/conv3d/v+layer_4/conv3d/v/Initializer/random_uniform*
validate_shape(**
_output_shapes
:``*
use_locking(*
T0*#
_class
loc:@layer_4/conv3d/v

layer_4/conv3d/v/readIdentitylayer_4/conv3d/v*
T0*#
_class
loc:@layer_4/conv3d/v**
_output_shapes
:``

%layer_4/conv3d/layer_4/conv3d/v_0/tagConst*
dtype0*
_output_shapes
: *2
value)B' B!layer_4/conv3d/layer_4/conv3d/v_0

!layer_4/conv3d/layer_4/conv3d/v_0HistogramSummary%layer_4/conv3d/layer_4/conv3d/v_0/taglayer_4/conv3d/v/read*
_output_shapes
: *
T0
“
"layer_4/conv3d/g/Initializer/ConstConst*#
_class
loc:@layer_4/conv3d/g*)
value B`*óµ?*
dtype0**
_output_shapes
:`
Į
layer_4/conv3d/g
VariableV2*#
_class
loc:@layer_4/conv3d/g*
	container *
shape:`*
dtype0**
_output_shapes
:`*
shared_name 
Ś
layer_4/conv3d/g/AssignAssignlayer_4/conv3d/g"layer_4/conv3d/g/Initializer/Const*
T0*#
_class
loc:@layer_4/conv3d/g*
validate_shape(**
_output_shapes
:`*
use_locking(

layer_4/conv3d/g/readIdentitylayer_4/conv3d/g*
T0*#
_class
loc:@layer_4/conv3d/g**
_output_shapes
:`

%layer_4/conv3d/layer_4/conv3d/g_0/tagConst*
_output_shapes
: *2
value)B' B!layer_4/conv3d/layer_4/conv3d/g_0*
dtype0

!layer_4/conv3d/layer_4/conv3d/g_0HistogramSummary%layer_4/conv3d/layer_4/conv3d/g_0/taglayer_4/conv3d/g/read*
T0*
_output_shapes
: 
x
"layer_4/conv3d/l2_normalize/SquareSquarelayer_4/conv3d/v/read*
T0**
_output_shapes
:``

1layer_4/conv3d/l2_normalize/Sum/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ļ
layer_4/conv3d/l2_normalize/SumSum"layer_4/conv3d/l2_normalize/Square1layer_4/conv3d/l2_normalize/Sum/reduction_indices*
T0**
_output_shapes
:`*
	keep_dims(*

Tidx0
j
%layer_4/conv3d/l2_normalize/Maximum/yConst*
valueB
 *Ģ¼+*
dtype0*
_output_shapes
: 
«
#layer_4/conv3d/l2_normalize/MaximumMaximumlayer_4/conv3d/l2_normalize/Sum%layer_4/conv3d/l2_normalize/Maximum/y*
T0**
_output_shapes
:`

!layer_4/conv3d/l2_normalize/RsqrtRsqrt#layer_4/conv3d/l2_normalize/Maximum*
T0**
_output_shapes
:`

layer_4/conv3d/l2_normalizeMullayer_4/conv3d/v/read!layer_4/conv3d/l2_normalize/Rsqrt**
_output_shapes
:``*
T0

layer_4/conv3d/kernel_mMullayer_4/conv3d/g/readlayer_4/conv3d/l2_normalize**
_output_shapes
:``*
T0

,layer_4/conv3d/layer_4/conv3d/kernel_m_0/tagConst*
dtype0*
_output_shapes
: *9
value0B. B(layer_4/conv3d/layer_4/conv3d/kernel_m_0
¤
(layer_4/conv3d/layer_4/conv3d/kernel_m_0HistogramSummary,layer_4/conv3d/layer_4/conv3d/kernel_m_0/taglayer_4/conv3d/kernel_m*
_output_shapes
: *
T0
Ā
)layer_4/conv3d/kernel_a/Initializer/ConstConst**
_output_shapes
:``**
_class 
loc:@layer_4/conv3d/kernel_a*)
value B``*·Ń8*
dtype0
Ļ
layer_4/conv3d/kernel_a
VariableV2*
shared_name **
_class 
loc:@layer_4/conv3d/kernel_a*
	container *
shape:``*
dtype0**
_output_shapes
:``
ö
layer_4/conv3d/kernel_a/AssignAssignlayer_4/conv3d/kernel_a)layer_4/conv3d/kernel_a/Initializer/Const*
use_locking(*
T0**
_class 
loc:@layer_4/conv3d/kernel_a*
validate_shape(**
_output_shapes
:``
¢
layer_4/conv3d/kernel_a/readIdentitylayer_4/conv3d/kernel_a*
T0**
_class 
loc:@layer_4/conv3d/kernel_a**
_output_shapes
:``

,layer_4/conv3d/layer_4/conv3d/kernel_a_0/tagConst*9
value0B. B(layer_4/conv3d/layer_4/conv3d/kernel_a_0*
dtype0*
_output_shapes
: 
©
(layer_4/conv3d/layer_4/conv3d/kernel_a_0HistogramSummary,layer_4/conv3d/layer_4/conv3d/kernel_a_0/taglayer_4/conv3d/kernel_a/read*
T0*
_output_shapes
: 
u
layer_4/conv3d/kernel_sigmaAbslayer_4/conv3d/kernel_a/read*
T0**
_output_shapes
:``

0layer_4/conv3d/layer_4/conv3d/kernel_sigma_0/tagConst*=
value4B2 B,layer_4/conv3d/layer_4/conv3d/kernel_sigma_0*
dtype0*
_output_shapes
: 
°
,layer_4/conv3d/layer_4/conv3d/kernel_sigma_0HistogramSummary0layer_4/conv3d/layer_4/conv3d/kernel_sigma_0/taglayer_4/conv3d/kernel_sigma*
T0*
_output_shapes
: 
q
layer_4/conv3d/ConstConst*)
value B"                *
dtype0*
_output_shapes
:

layer_4/conv3d/MeanMeanlayer_4/conv3d/kernel_sigmalayer_4/conv3d/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
¢
3layer_4/conv3d/layer_4/conv3d/kernel_sigma_0_1/tagsConst*?
value6B4 B.layer_4/conv3d/layer_4/conv3d/kernel_sigma_0_1*
dtype0*
_output_shapes
: 
Ŗ
.layer_4/conv3d/layer_4/conv3d/kernel_sigma_0_1ScalarSummary3layer_4/conv3d/layer_4/conv3d/kernel_sigma_0_1/tagslayer_4/conv3d/Mean*
T0*
_output_shapes
: 

'layer_4/conv3d/bias_m/Initializer/zerosConst*(
_class
loc:@layer_4/conv3d/bias_m*
valueB`*    *
dtype0*
_output_shapes
:`
«
layer_4/conv3d/bias_m
VariableV2*
dtype0*
_output_shapes
:`*
shared_name *(
_class
loc:@layer_4/conv3d/bias_m*
	container *
shape:`
Ž
layer_4/conv3d/bias_m/AssignAssignlayer_4/conv3d/bias_m'layer_4/conv3d/bias_m/Initializer/zeros*
validate_shape(*
_output_shapes
:`*
use_locking(*
T0*(
_class
loc:@layer_4/conv3d/bias_m

layer_4/conv3d/bias_m/readIdentitylayer_4/conv3d/bias_m*
T0*(
_class
loc:@layer_4/conv3d/bias_m*
_output_shapes
:`

*layer_4/conv3d/layer_4/conv3d/bias_m_0/tagConst*7
value.B, B&layer_4/conv3d/layer_4/conv3d/bias_m_0*
dtype0*
_output_shapes
: 
£
&layer_4/conv3d/layer_4/conv3d/bias_m_0HistogramSummary*layer_4/conv3d/layer_4/conv3d/bias_m_0/taglayer_4/conv3d/bias_m/read*
_output_shapes
: *
T0

'layer_4/conv3d/bias_a/Initializer/ConstConst*
dtype0*
_output_shapes
:`*(
_class
loc:@layer_4/conv3d/bias_a*
valueB`*·Ń8
«
layer_4/conv3d/bias_a
VariableV2*
dtype0*
_output_shapes
:`*
shared_name *(
_class
loc:@layer_4/conv3d/bias_a*
	container *
shape:`
Ž
layer_4/conv3d/bias_a/AssignAssignlayer_4/conv3d/bias_a'layer_4/conv3d/bias_a/Initializer/Const*(
_class
loc:@layer_4/conv3d/bias_a*
validate_shape(*
_output_shapes
:`*
use_locking(*
T0

layer_4/conv3d/bias_a/readIdentitylayer_4/conv3d/bias_a*(
_class
loc:@layer_4/conv3d/bias_a*
_output_shapes
:`*
T0

*layer_4/conv3d/layer_4/conv3d/bias_a_0/tagConst*7
value.B, B&layer_4/conv3d/layer_4/conv3d/bias_a_0*
dtype0*
_output_shapes
: 
£
&layer_4/conv3d/layer_4/conv3d/bias_a_0HistogramSummary*layer_4/conv3d/layer_4/conv3d/bias_a_0/taglayer_4/conv3d/bias_a/read*
T0*
_output_shapes
: 
a
layer_4/conv3d/bias_sigmaAbslayer_4/conv3d/bias_a/read*
_output_shapes
:`*
T0

.layer_4/conv3d/layer_4/conv3d/bias_sigma_0/tagConst*
dtype0*
_output_shapes
: *;
value2B0 B*layer_4/conv3d/layer_4/conv3d/bias_sigma_0
Ŗ
*layer_4/conv3d/layer_4/conv3d/bias_sigma_0HistogramSummary.layer_4/conv3d/layer_4/conv3d/bias_sigma_0/taglayer_4/conv3d/bias_sigma*
T0*
_output_shapes
: 
`
layer_4/conv3d/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

layer_4/conv3d/Mean_1Meanlayer_4/conv3d/bias_sigmalayer_4/conv3d/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

1layer_4/conv3d/layer_4/conv3d/bias_sigma_0_1/tagsConst*
_output_shapes
: *=
value4B2 B,layer_4/conv3d/layer_4/conv3d/bias_sigma_0_1*
dtype0
Ø
,layer_4/conv3d/layer_4/conv3d/bias_sigma_0_1ScalarSummary1layer_4/conv3d/layer_4/conv3d/bias_sigma_0_1/tagslayer_4/conv3d/Mean_1*
_output_shapes
: *
T0
q
layer_4/conv3d/dilation_rateConst*!
valueB"         *
dtype0*
_output_shapes
:
x
layer_4/conv3d/filter_shapeConst*)
value B"         `   `   *
dtype0*
_output_shapes
:
}
layer_4/conv3d/stackConst*1
value(B&"                  *
dtype0*
_output_shapes

:

;layer_4/conv3d/required_space_to_batch_paddings/input_shapeConst*
dtype0*
_output_shapes
:*!
valueB"            
”
8layer_4/conv3d/required_space_to_batch_paddings/paddingsConst*1
value(B&"                  *
dtype0*
_output_shapes

:

5layer_4/conv3d/required_space_to_batch_paddings/cropsConst*1
value(B&"                        *
dtype0*
_output_shapes

:
~
)layer_4/conv3d/SpaceToBatchND/block_shapeConst*!
valueB"         *
dtype0*
_output_shapes
:

&layer_4/conv3d/SpaceToBatchND/paddingsConst*1
value(B&"                  *
dtype0*
_output_shapes

:
ó
layer_4/conv3d/SpaceToBatchNDSpaceToBatchNDlayer_3/Relu)layer_4/conv3d/SpaceToBatchND/block_shape&layer_4/conv3d/SpaceToBatchND/paddings*3
_output_shapes!
:’’’’’’’’’`*
Tblock_shape0*
T0*
	Tpaddings0
ļ
layer_4/conv3d/Conv3DConv3Dlayer_4/conv3d/SpaceToBatchNDlayer_4/conv3d/kernel_m*3
_output_shapes!
:’’’’’’’’’`*
	dilations	
*
T0*
data_formatNDHWC*
strides	
*
paddingVALID
~
)layer_4/conv3d/BatchToSpaceND/block_shapeConst*!
valueB"         *
dtype0*
_output_shapes
:

#layer_4/conv3d/BatchToSpaceND/cropsConst*1
value(B&"                        *
dtype0*
_output_shapes

:
ö
layer_4/conv3d/BatchToSpaceNDBatchToSpaceNDlayer_4/conv3d/Conv3D)layer_4/conv3d/BatchToSpaceND/block_shape#layer_4/conv3d/BatchToSpaceND/crops*
Tcrops0*
T0*3
_output_shapes!
:’’’’’’’’’   `*
Tblock_shape0
k
layer_4/conv3d/SquareSquarelayer_3/Relu*3
_output_shapes!
:’’’’’’’’’   `*
T0
s
layer_4/conv3d/Square_1Squarelayer_4/conv3d/kernel_sigma*
T0**
_output_shapes
:``

=layer_4/conv3d/required_space_to_batch_paddings_1/input_shapeConst*!
valueB"            *
dtype0*
_output_shapes
:
£
:layer_4/conv3d/required_space_to_batch_paddings_1/paddingsConst*1
value(B&"                  *
dtype0*
_output_shapes

:
 
7layer_4/conv3d/required_space_to_batch_paddings_1/cropsConst*1
value(B&"                        *
dtype0*
_output_shapes

:

+layer_4/conv3d/SpaceToBatchND_1/block_shapeConst*!
valueB"         *
dtype0*
_output_shapes
:

(layer_4/conv3d/SpaceToBatchND_1/paddingsConst*1
value(B&"                  *
dtype0*
_output_shapes

:

layer_4/conv3d/SpaceToBatchND_1SpaceToBatchNDlayer_4/conv3d/Square+layer_4/conv3d/SpaceToBatchND_1/block_shape(layer_4/conv3d/SpaceToBatchND_1/paddings*
T0*
	Tpaddings0*3
_output_shapes!
:’’’’’’’’’`*
Tblock_shape0
ó
layer_4/conv3d/Conv3D_1Conv3Dlayer_4/conv3d/SpaceToBatchND_1layer_4/conv3d/Square_1*3
_output_shapes!
:’’’’’’’’’`*
	dilations	
*
T0*
data_formatNDHWC*
strides	
*
paddingVALID

+layer_4/conv3d/BatchToSpaceND_1/block_shapeConst*
_output_shapes
:*!
valueB"         *
dtype0

%layer_4/conv3d/BatchToSpaceND_1/cropsConst*1
value(B&"                        *
dtype0*
_output_shapes

:
ž
layer_4/conv3d/BatchToSpaceND_1BatchToSpaceNDlayer_4/conv3d/Conv3D_1+layer_4/conv3d/BatchToSpaceND_1/block_shape%layer_4/conv3d/BatchToSpaceND_1/crops*3
_output_shapes!
:’’’’’’’’’   `*
Tblock_shape0*
Tcrops0*
T0
q
layer_4/conv3d/ShapeConst*
dtype0*
_output_shapes
:*)
value B"            `   
f
!layer_4/conv3d/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
#layer_4/conv3d/random_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
ŗ
1layer_4/conv3d/random_normal/RandomStandardNormalRandomStandardNormallayer_4/conv3d/Shape*
T0*
dtype0**
_output_shapes
:`*
seed2 *

seed 
“
 layer_4/conv3d/random_normal/mulMul1layer_4/conv3d/random_normal/RandomStandardNormal#layer_4/conv3d/random_normal/stddev**
_output_shapes
:`*
T0

layer_4/conv3d/random_normalAdd layer_4/conv3d/random_normal/mul!layer_4/conv3d/random_normal/mean**
_output_shapes
:`*
T0
±
layer_4/conv3d/BiasAddBiasAddlayer_4/conv3d/BatchToSpaceNDlayer_4/conv3d/bias_m/read*
data_formatNHWC*3
_output_shapes!
:’’’’’’’’’   `*
T0
a
layer_4/conv3d/Square_2Squarelayer_4/conv3d/bias_sigma*
_output_shapes
:`*
T0
²
layer_4/conv3d/BiasAdd_1BiasAddlayer_4/conv3d/BatchToSpaceND_1layer_4/conv3d/Square_2*
data_formatNHWC*3
_output_shapes!
:’’’’’’’’’   `*
T0
U
layer_4/conv3d/cond/SwitchSwitchConstConst*
T0
*
_output_shapes
: : 
g
layer_4/conv3d/cond/switch_tIdentitylayer_4/conv3d/cond/Switch:1*
_output_shapes
: *
T0

e
layer_4/conv3d/cond/switch_fIdentitylayer_4/conv3d/cond/Switch*
T0
*
_output_shapes
: 
O
layer_4/conv3d/cond/pred_idIdentityConst*
T0
*
_output_shapes
: 
}
layer_4/conv3d/cond/add/yConst^layer_4/conv3d/cond/switch_t*
_output_shapes
: *
valueB
 *wĢ+2*
dtype0

layer_4/conv3d/cond/addAdd layer_4/conv3d/cond/add/Switch:1layer_4/conv3d/cond/add/y*
T0*3
_output_shapes!
:’’’’’’’’’   `
é
layer_4/conv3d/cond/add/SwitchSwitchlayer_4/conv3d/BiasAdd_1layer_4/conv3d/cond/pred_id*+
_class!
loc:@layer_4/conv3d/BiasAdd_1*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `*
T0
w
layer_4/conv3d/cond/SqrtSqrtlayer_4/conv3d/cond/add*
T0*3
_output_shapes!
:’’’’’’’’’   `

layer_4/conv3d/cond/mulMullayer_4/conv3d/cond/Sqrt layer_4/conv3d/cond/mul/Switch:1*3
_output_shapes!
:’’’’’’’’’   `*
T0
ß
layer_4/conv3d/cond/mul/SwitchSwitchlayer_4/conv3d/random_normallayer_4/conv3d/cond/pred_id*@
_output_shapes.
,:`:`*
T0*/
_class%
#!loc:@layer_4/conv3d/random_normal

layer_4/conv3d/cond/add_1Add"layer_4/conv3d/cond/add_1/Switch:1layer_4/conv3d/cond/mul*
T0*3
_output_shapes!
:’’’’’’’’’   `
ē
 layer_4/conv3d/cond/add_1/SwitchSwitchlayer_4/conv3d/BiasAddlayer_4/conv3d/cond/pred_id*
T0*)
_class
loc:@layer_4/conv3d/BiasAdd*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
ć
layer_4/conv3d/cond/Switch_1Switchlayer_4/conv3d/BiasAddlayer_4/conv3d/cond/pred_id*)
_class
loc:@layer_4/conv3d/BiasAdd*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `*
T0
¤
layer_4/conv3d/cond/MergeMergelayer_4/conv3d/cond/Switch_1layer_4/conv3d/cond/add_1*5
_output_shapes#
!:’’’’’’’’’   `: *
T0*
N
M
scalar_3Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
o
mul_3Mulscalar_3layer_4/conv3d/cond/Merge*
T0*3
_output_shapes!
:’’’’’’’’’   `
L
cond_3/SwitchSwitchConst_1Const_1*
_output_shapes
: : *
T0

M
cond_3/switch_tIdentitycond_3/Switch:1*
T0
*
_output_shapes
: 
K
cond_3/switch_fIdentitycond_3/Switch*
T0
*
_output_shapes
: 
D
cond_3/pred_idIdentityConst_1*
T0
*
_output_shapes
: 
o
cond_3/dropout/keep_probConst^cond_3/switch_t*
_output_shapes
: *
valueB
 *   ?*
dtype0
q
cond_3/dropout/ShapeShapecond_3/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0
Ū
cond_3/dropout/Shape/SwitchSwitchlayer_4/conv3d/cond/Mergecond_3/pred_id*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `*
T0*,
_class"
 loc:@layer_4/conv3d/cond/Merge
x
!cond_3/dropout/random_uniform/minConst^cond_3/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
x
!cond_3/dropout/random_uniform/maxConst^cond_3/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¶
+cond_3/dropout/random_uniform/RandomUniformRandomUniformcond_3/dropout/Shape*
T0*
dtype0*3
_output_shapes!
:’’’’’’’’’   `*
seed2 *

seed 

!cond_3/dropout/random_uniform/subSub!cond_3/dropout/random_uniform/max!cond_3/dropout/random_uniform/min*
_output_shapes
: *
T0
¶
!cond_3/dropout/random_uniform/mulMul+cond_3/dropout/random_uniform/RandomUniform!cond_3/dropout/random_uniform/sub*
T0*3
_output_shapes!
:’’’’’’’’’   `
Ø
cond_3/dropout/random_uniformAdd!cond_3/dropout/random_uniform/mul!cond_3/dropout/random_uniform/min*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond_3/dropout/addAddcond_3/dropout/keep_probcond_3/dropout/random_uniform*
T0*3
_output_shapes!
:’’’’’’’’’   `
o
cond_3/dropout/FloorFloorcond_3/dropout/add*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond_3/dropout/divRealDivcond_3/dropout/Shape/Switch:1cond_3/dropout/keep_prob*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond_3/dropout/mulMulcond_3/dropout/divcond_3/dropout/Floor*3
_output_shapes!
:’’’’’’’’’   `*
T0
d
cond_3/scalarConst^cond_3/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r

cond_3/mulMulcond_3/scalarcond_3/dropout/mul*
T0*3
_output_shapes!
:’’’’’’’’’   `
§
cond_3/Switch_1Switchmul_3cond_3/pred_id*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `*
T0*
_class

loc:@mul_3
{
cond_3/MergeMergecond_3/Switch_1
cond_3/mul*
N*5
_output_shapes#
!:’’’’’’’’’   `: *
T0
`
layer_4/ReluRelucond_3/Merge*3
_output_shapes!
:’’’’’’’’’   `*
T0
³
1layer_5/conv3d/v/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_5/conv3d/v*)
value B"         `   `   *
dtype0*
_output_shapes
:

/layer_5/conv3d/v/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_5/conv3d/v*
valueB
 *HY½

/layer_5/conv3d/v/Initializer/random_uniform/maxConst*#
_class
loc:@layer_5/conv3d/v*
valueB
 *HY=*
dtype0*
_output_shapes
: 
ż
9layer_5/conv3d/v/Initializer/random_uniform/RandomUniformRandomUniform1layer_5/conv3d/v/Initializer/random_uniform/shape*
dtype0**
_output_shapes
:``*

seed *
T0*#
_class
loc:@layer_5/conv3d/v*
seed2 
Ž
/layer_5/conv3d/v/Initializer/random_uniform/subSub/layer_5/conv3d/v/Initializer/random_uniform/max/layer_5/conv3d/v/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_5/conv3d/v*
_output_shapes
: 
ü
/layer_5/conv3d/v/Initializer/random_uniform/mulMul9layer_5/conv3d/v/Initializer/random_uniform/RandomUniform/layer_5/conv3d/v/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_5/conv3d/v**
_output_shapes
:``
ī
+layer_5/conv3d/v/Initializer/random_uniformAdd/layer_5/conv3d/v/Initializer/random_uniform/mul/layer_5/conv3d/v/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_5/conv3d/v**
_output_shapes
:``
Į
layer_5/conv3d/v
VariableV2*
	container *
shape:``*
dtype0**
_output_shapes
:``*
shared_name *#
_class
loc:@layer_5/conv3d/v
ć
layer_5/conv3d/v/AssignAssignlayer_5/conv3d/v+layer_5/conv3d/v/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_5/conv3d/v*
validate_shape(**
_output_shapes
:``

layer_5/conv3d/v/readIdentitylayer_5/conv3d/v**
_output_shapes
:``*
T0*#
_class
loc:@layer_5/conv3d/v

%layer_5/conv3d/layer_5/conv3d/v_0/tagConst*2
value)B' B!layer_5/conv3d/layer_5/conv3d/v_0*
dtype0*
_output_shapes
: 

!layer_5/conv3d/layer_5/conv3d/v_0HistogramSummary%layer_5/conv3d/layer_5/conv3d/v_0/taglayer_5/conv3d/v/read*
_output_shapes
: *
T0
“
"layer_5/conv3d/g/Initializer/ConstConst*
dtype0**
_output_shapes
:`*#
_class
loc:@layer_5/conv3d/g*)
value B`*óµ?
Į
layer_5/conv3d/g
VariableV2*
shape:`*
dtype0**
_output_shapes
:`*
shared_name *#
_class
loc:@layer_5/conv3d/g*
	container 
Ś
layer_5/conv3d/g/AssignAssignlayer_5/conv3d/g"layer_5/conv3d/g/Initializer/Const*
validate_shape(**
_output_shapes
:`*
use_locking(*
T0*#
_class
loc:@layer_5/conv3d/g

layer_5/conv3d/g/readIdentitylayer_5/conv3d/g**
_output_shapes
:`*
T0*#
_class
loc:@layer_5/conv3d/g

%layer_5/conv3d/layer_5/conv3d/g_0/tagConst*
_output_shapes
: *2
value)B' B!layer_5/conv3d/layer_5/conv3d/g_0*
dtype0

!layer_5/conv3d/layer_5/conv3d/g_0HistogramSummary%layer_5/conv3d/layer_5/conv3d/g_0/taglayer_5/conv3d/g/read*
_output_shapes
: *
T0
x
"layer_5/conv3d/l2_normalize/SquareSquarelayer_5/conv3d/v/read*
T0**
_output_shapes
:``

1layer_5/conv3d/l2_normalize/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
Ļ
layer_5/conv3d/l2_normalize/SumSum"layer_5/conv3d/l2_normalize/Square1layer_5/conv3d/l2_normalize/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0**
_output_shapes
:`
j
%layer_5/conv3d/l2_normalize/Maximum/yConst*
valueB
 *Ģ¼+*
dtype0*
_output_shapes
: 
«
#layer_5/conv3d/l2_normalize/MaximumMaximumlayer_5/conv3d/l2_normalize/Sum%layer_5/conv3d/l2_normalize/Maximum/y*
T0**
_output_shapes
:`

!layer_5/conv3d/l2_normalize/RsqrtRsqrt#layer_5/conv3d/l2_normalize/Maximum*
T0**
_output_shapes
:`

layer_5/conv3d/l2_normalizeMullayer_5/conv3d/v/read!layer_5/conv3d/l2_normalize/Rsqrt**
_output_shapes
:``*
T0

layer_5/conv3d/kernel_mMullayer_5/conv3d/g/readlayer_5/conv3d/l2_normalize**
_output_shapes
:``*
T0

,layer_5/conv3d/layer_5/conv3d/kernel_m_0/tagConst*9
value0B. B(layer_5/conv3d/layer_5/conv3d/kernel_m_0*
dtype0*
_output_shapes
: 
¤
(layer_5/conv3d/layer_5/conv3d/kernel_m_0HistogramSummary,layer_5/conv3d/layer_5/conv3d/kernel_m_0/taglayer_5/conv3d/kernel_m*
T0*
_output_shapes
: 
Ā
)layer_5/conv3d/kernel_a/Initializer/ConstConst**
_class 
loc:@layer_5/conv3d/kernel_a*)
value B``*·Ń8*
dtype0**
_output_shapes
:``
Ļ
layer_5/conv3d/kernel_a
VariableV2*
shared_name **
_class 
loc:@layer_5/conv3d/kernel_a*
	container *
shape:``*
dtype0**
_output_shapes
:``
ö
layer_5/conv3d/kernel_a/AssignAssignlayer_5/conv3d/kernel_a)layer_5/conv3d/kernel_a/Initializer/Const**
_class 
loc:@layer_5/conv3d/kernel_a*
validate_shape(**
_output_shapes
:``*
use_locking(*
T0
¢
layer_5/conv3d/kernel_a/readIdentitylayer_5/conv3d/kernel_a*
T0**
_class 
loc:@layer_5/conv3d/kernel_a**
_output_shapes
:``

,layer_5/conv3d/layer_5/conv3d/kernel_a_0/tagConst*
dtype0*
_output_shapes
: *9
value0B. B(layer_5/conv3d/layer_5/conv3d/kernel_a_0
©
(layer_5/conv3d/layer_5/conv3d/kernel_a_0HistogramSummary,layer_5/conv3d/layer_5/conv3d/kernel_a_0/taglayer_5/conv3d/kernel_a/read*
_output_shapes
: *
T0
u
layer_5/conv3d/kernel_sigmaAbslayer_5/conv3d/kernel_a/read*
T0**
_output_shapes
:``

0layer_5/conv3d/layer_5/conv3d/kernel_sigma_0/tagConst*=
value4B2 B,layer_5/conv3d/layer_5/conv3d/kernel_sigma_0*
dtype0*
_output_shapes
: 
°
,layer_5/conv3d/layer_5/conv3d/kernel_sigma_0HistogramSummary0layer_5/conv3d/layer_5/conv3d/kernel_sigma_0/taglayer_5/conv3d/kernel_sigma*
T0*
_output_shapes
: 
q
layer_5/conv3d/ConstConst*)
value B"                *
dtype0*
_output_shapes
:

layer_5/conv3d/MeanMeanlayer_5/conv3d/kernel_sigmalayer_5/conv3d/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
¢
3layer_5/conv3d/layer_5/conv3d/kernel_sigma_0_1/tagsConst*
dtype0*
_output_shapes
: *?
value6B4 B.layer_5/conv3d/layer_5/conv3d/kernel_sigma_0_1
Ŗ
.layer_5/conv3d/layer_5/conv3d/kernel_sigma_0_1ScalarSummary3layer_5/conv3d/layer_5/conv3d/kernel_sigma_0_1/tagslayer_5/conv3d/Mean*
T0*
_output_shapes
: 

'layer_5/conv3d/bias_m/Initializer/zerosConst*(
_class
loc:@layer_5/conv3d/bias_m*
valueB`*    *
dtype0*
_output_shapes
:`
«
layer_5/conv3d/bias_m
VariableV2*
dtype0*
_output_shapes
:`*
shared_name *(
_class
loc:@layer_5/conv3d/bias_m*
	container *
shape:`
Ž
layer_5/conv3d/bias_m/AssignAssignlayer_5/conv3d/bias_m'layer_5/conv3d/bias_m/Initializer/zeros*
use_locking(*
T0*(
_class
loc:@layer_5/conv3d/bias_m*
validate_shape(*
_output_shapes
:`

layer_5/conv3d/bias_m/readIdentitylayer_5/conv3d/bias_m*
T0*(
_class
loc:@layer_5/conv3d/bias_m*
_output_shapes
:`

*layer_5/conv3d/layer_5/conv3d/bias_m_0/tagConst*7
value.B, B&layer_5/conv3d/layer_5/conv3d/bias_m_0*
dtype0*
_output_shapes
: 
£
&layer_5/conv3d/layer_5/conv3d/bias_m_0HistogramSummary*layer_5/conv3d/layer_5/conv3d/bias_m_0/taglayer_5/conv3d/bias_m/read*
_output_shapes
: *
T0

'layer_5/conv3d/bias_a/Initializer/ConstConst*
dtype0*
_output_shapes
:`*(
_class
loc:@layer_5/conv3d/bias_a*
valueB`*·Ń8
«
layer_5/conv3d/bias_a
VariableV2*
dtype0*
_output_shapes
:`*
shared_name *(
_class
loc:@layer_5/conv3d/bias_a*
	container *
shape:`
Ž
layer_5/conv3d/bias_a/AssignAssignlayer_5/conv3d/bias_a'layer_5/conv3d/bias_a/Initializer/Const*
_output_shapes
:`*
use_locking(*
T0*(
_class
loc:@layer_5/conv3d/bias_a*
validate_shape(

layer_5/conv3d/bias_a/readIdentitylayer_5/conv3d/bias_a*
T0*(
_class
loc:@layer_5/conv3d/bias_a*
_output_shapes
:`

*layer_5/conv3d/layer_5/conv3d/bias_a_0/tagConst*
dtype0*
_output_shapes
: *7
value.B, B&layer_5/conv3d/layer_5/conv3d/bias_a_0
£
&layer_5/conv3d/layer_5/conv3d/bias_a_0HistogramSummary*layer_5/conv3d/layer_5/conv3d/bias_a_0/taglayer_5/conv3d/bias_a/read*
T0*
_output_shapes
: 
a
layer_5/conv3d/bias_sigmaAbslayer_5/conv3d/bias_a/read*
T0*
_output_shapes
:`

.layer_5/conv3d/layer_5/conv3d/bias_sigma_0/tagConst*;
value2B0 B*layer_5/conv3d/layer_5/conv3d/bias_sigma_0*
dtype0*
_output_shapes
: 
Ŗ
*layer_5/conv3d/layer_5/conv3d/bias_sigma_0HistogramSummary.layer_5/conv3d/layer_5/conv3d/bias_sigma_0/taglayer_5/conv3d/bias_sigma*
_output_shapes
: *
T0
`
layer_5/conv3d/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

layer_5/conv3d/Mean_1Meanlayer_5/conv3d/bias_sigmalayer_5/conv3d/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

1layer_5/conv3d/layer_5/conv3d/bias_sigma_0_1/tagsConst*=
value4B2 B,layer_5/conv3d/layer_5/conv3d/bias_sigma_0_1*
dtype0*
_output_shapes
: 
Ø
,layer_5/conv3d/layer_5/conv3d/bias_sigma_0_1ScalarSummary1layer_5/conv3d/layer_5/conv3d/bias_sigma_0_1/tagslayer_5/conv3d/Mean_1*
_output_shapes
: *
T0
q
layer_5/conv3d/dilation_rateConst*!
valueB"         *
dtype0*
_output_shapes
:
x
layer_5/conv3d/filter_shapeConst*)
value B"         `   `   *
dtype0*
_output_shapes
:
}
layer_5/conv3d/stackConst*1
value(B&"                  *
dtype0*
_output_shapes

:

;layer_5/conv3d/required_space_to_batch_paddings/input_shapeConst*!
valueB"            *
dtype0*
_output_shapes
:
”
8layer_5/conv3d/required_space_to_batch_paddings/paddingsConst*1
value(B&"                  *
dtype0*
_output_shapes

:

5layer_5/conv3d/required_space_to_batch_paddings/cropsConst*1
value(B&"                        *
dtype0*
_output_shapes

:
~
)layer_5/conv3d/SpaceToBatchND/block_shapeConst*!
valueB"         *
dtype0*
_output_shapes
:

&layer_5/conv3d/SpaceToBatchND/paddingsConst*1
value(B&"                  *
dtype0*
_output_shapes

:
ó
layer_5/conv3d/SpaceToBatchNDSpaceToBatchNDlayer_4/Relu)layer_5/conv3d/SpaceToBatchND/block_shape&layer_5/conv3d/SpaceToBatchND/paddings*
T0*
	Tpaddings0*3
_output_shapes!
:’’’’’’’’’


`*
Tblock_shape0
ļ
layer_5/conv3d/Conv3DConv3Dlayer_5/conv3d/SpaceToBatchNDlayer_5/conv3d/kernel_m*
data_formatNDHWC*
strides	
*
paddingVALID*3
_output_shapes!
:’’’’’’’’’`*
	dilations	
*
T0
~
)layer_5/conv3d/BatchToSpaceND/block_shapeConst*!
valueB"         *
dtype0*
_output_shapes
:

#layer_5/conv3d/BatchToSpaceND/cropsConst*1
value(B&"                        *
dtype0*
_output_shapes

:
ö
layer_5/conv3d/BatchToSpaceNDBatchToSpaceNDlayer_5/conv3d/Conv3D)layer_5/conv3d/BatchToSpaceND/block_shape#layer_5/conv3d/BatchToSpaceND/crops*
Tcrops0*
T0*3
_output_shapes!
:’’’’’’’’’   `*
Tblock_shape0
k
layer_5/conv3d/SquareSquarelayer_4/Relu*
T0*3
_output_shapes!
:’’’’’’’’’   `
s
layer_5/conv3d/Square_1Squarelayer_5/conv3d/kernel_sigma*
T0**
_output_shapes
:``

=layer_5/conv3d/required_space_to_batch_paddings_1/input_shapeConst*!
valueB"            *
dtype0*
_output_shapes
:
£
:layer_5/conv3d/required_space_to_batch_paddings_1/paddingsConst*1
value(B&"                  *
dtype0*
_output_shapes

:
 
7layer_5/conv3d/required_space_to_batch_paddings_1/cropsConst*1
value(B&"                        *
dtype0*
_output_shapes

:

+layer_5/conv3d/SpaceToBatchND_1/block_shapeConst*
dtype0*
_output_shapes
:*!
valueB"         

(layer_5/conv3d/SpaceToBatchND_1/paddingsConst*
_output_shapes

:*1
value(B&"                  *
dtype0

layer_5/conv3d/SpaceToBatchND_1SpaceToBatchNDlayer_5/conv3d/Square+layer_5/conv3d/SpaceToBatchND_1/block_shape(layer_5/conv3d/SpaceToBatchND_1/paddings*
	Tpaddings0*3
_output_shapes!
:’’’’’’’’’


`*
Tblock_shape0*
T0
ó
layer_5/conv3d/Conv3D_1Conv3Dlayer_5/conv3d/SpaceToBatchND_1layer_5/conv3d/Square_1*
paddingVALID*3
_output_shapes!
:’’’’’’’’’`*
	dilations	
*
T0*
data_formatNDHWC*
strides	


+layer_5/conv3d/BatchToSpaceND_1/block_shapeConst*!
valueB"         *
dtype0*
_output_shapes
:

%layer_5/conv3d/BatchToSpaceND_1/cropsConst*1
value(B&"                        *
dtype0*
_output_shapes

:
ž
layer_5/conv3d/BatchToSpaceND_1BatchToSpaceNDlayer_5/conv3d/Conv3D_1+layer_5/conv3d/BatchToSpaceND_1/block_shape%layer_5/conv3d/BatchToSpaceND_1/crops*
T0*3
_output_shapes!
:’’’’’’’’’   `*
Tblock_shape0*
Tcrops0
q
layer_5/conv3d/ShapeConst*)
value B"            `   *
dtype0*
_output_shapes
:
f
!layer_5/conv3d/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
#layer_5/conv3d/random_normal/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ŗ
1layer_5/conv3d/random_normal/RandomStandardNormalRandomStandardNormallayer_5/conv3d/Shape*
dtype0**
_output_shapes
:`*
seed2 *

seed *
T0
“
 layer_5/conv3d/random_normal/mulMul1layer_5/conv3d/random_normal/RandomStandardNormal#layer_5/conv3d/random_normal/stddev*
T0**
_output_shapes
:`

layer_5/conv3d/random_normalAdd layer_5/conv3d/random_normal/mul!layer_5/conv3d/random_normal/mean*
T0**
_output_shapes
:`
±
layer_5/conv3d/BiasAddBiasAddlayer_5/conv3d/BatchToSpaceNDlayer_5/conv3d/bias_m/read*
T0*
data_formatNHWC*3
_output_shapes!
:’’’’’’’’’   `
a
layer_5/conv3d/Square_2Squarelayer_5/conv3d/bias_sigma*
T0*
_output_shapes
:`
²
layer_5/conv3d/BiasAdd_1BiasAddlayer_5/conv3d/BatchToSpaceND_1layer_5/conv3d/Square_2*
T0*
data_formatNHWC*3
_output_shapes!
:’’’’’’’’’   `
U
layer_5/conv3d/cond/SwitchSwitchConstConst*
_output_shapes
: : *
T0

g
layer_5/conv3d/cond/switch_tIdentitylayer_5/conv3d/cond/Switch:1*
T0
*
_output_shapes
: 
e
layer_5/conv3d/cond/switch_fIdentitylayer_5/conv3d/cond/Switch*
T0
*
_output_shapes
: 
O
layer_5/conv3d/cond/pred_idIdentityConst*
T0
*
_output_shapes
: 
}
layer_5/conv3d/cond/add/yConst^layer_5/conv3d/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2

layer_5/conv3d/cond/addAdd layer_5/conv3d/cond/add/Switch:1layer_5/conv3d/cond/add/y*
T0*3
_output_shapes!
:’’’’’’’’’   `
é
layer_5/conv3d/cond/add/SwitchSwitchlayer_5/conv3d/BiasAdd_1layer_5/conv3d/cond/pred_id*
T0*+
_class!
loc:@layer_5/conv3d/BiasAdd_1*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
w
layer_5/conv3d/cond/SqrtSqrtlayer_5/conv3d/cond/add*
T0*3
_output_shapes!
:’’’’’’’’’   `

layer_5/conv3d/cond/mulMullayer_5/conv3d/cond/Sqrt layer_5/conv3d/cond/mul/Switch:1*
T0*3
_output_shapes!
:’’’’’’’’’   `
ß
layer_5/conv3d/cond/mul/SwitchSwitchlayer_5/conv3d/random_normallayer_5/conv3d/cond/pred_id*
T0*/
_class%
#!loc:@layer_5/conv3d/random_normal*@
_output_shapes.
,:`:`

layer_5/conv3d/cond/add_1Add"layer_5/conv3d/cond/add_1/Switch:1layer_5/conv3d/cond/mul*3
_output_shapes!
:’’’’’’’’’   `*
T0
ē
 layer_5/conv3d/cond/add_1/SwitchSwitchlayer_5/conv3d/BiasAddlayer_5/conv3d/cond/pred_id*
T0*)
_class
loc:@layer_5/conv3d/BiasAdd*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
ć
layer_5/conv3d/cond/Switch_1Switchlayer_5/conv3d/BiasAddlayer_5/conv3d/cond/pred_id*
T0*)
_class
loc:@layer_5/conv3d/BiasAdd*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
¤
layer_5/conv3d/cond/MergeMergelayer_5/conv3d/cond/Switch_1layer_5/conv3d/cond/add_1*
N*5
_output_shapes#
!:’’’’’’’’’   `: *
T0
M
scalar_4Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
o
mul_4Mulscalar_4layer_5/conv3d/cond/Merge*3
_output_shapes!
:’’’’’’’’’   `*
T0
L
cond_4/SwitchSwitchConst_1Const_1*
_output_shapes
: : *
T0

M
cond_4/switch_tIdentitycond_4/Switch:1*
T0
*
_output_shapes
: 
K
cond_4/switch_fIdentitycond_4/Switch*
_output_shapes
: *
T0

D
cond_4/pred_idIdentityConst_1*
_output_shapes
: *
T0

o
cond_4/dropout/keep_probConst^cond_4/switch_t*
_output_shapes
: *
valueB
 *   ?*
dtype0
q
cond_4/dropout/ShapeShapecond_4/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Ū
cond_4/dropout/Shape/SwitchSwitchlayer_5/conv3d/cond/Mergecond_4/pred_id*
T0*,
_class"
 loc:@layer_5/conv3d/cond/Merge*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
x
!cond_4/dropout/random_uniform/minConst^cond_4/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
x
!cond_4/dropout/random_uniform/maxConst^cond_4/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¶
+cond_4/dropout/random_uniform/RandomUniformRandomUniformcond_4/dropout/Shape*

seed *
T0*
dtype0*3
_output_shapes!
:’’’’’’’’’   `*
seed2 

!cond_4/dropout/random_uniform/subSub!cond_4/dropout/random_uniform/max!cond_4/dropout/random_uniform/min*
_output_shapes
: *
T0
¶
!cond_4/dropout/random_uniform/mulMul+cond_4/dropout/random_uniform/RandomUniform!cond_4/dropout/random_uniform/sub*3
_output_shapes!
:’’’’’’’’’   `*
T0
Ø
cond_4/dropout/random_uniformAdd!cond_4/dropout/random_uniform/mul!cond_4/dropout/random_uniform/min*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond_4/dropout/addAddcond_4/dropout/keep_probcond_4/dropout/random_uniform*3
_output_shapes!
:’’’’’’’’’   `*
T0
o
cond_4/dropout/FloorFloorcond_4/dropout/add*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond_4/dropout/divRealDivcond_4/dropout/Shape/Switch:1cond_4/dropout/keep_prob*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond_4/dropout/mulMulcond_4/dropout/divcond_4/dropout/Floor*3
_output_shapes!
:’’’’’’’’’   `*
T0
d
cond_4/scalarConst^cond_4/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r

cond_4/mulMulcond_4/scalarcond_4/dropout/mul*3
_output_shapes!
:’’’’’’’’’   `*
T0
§
cond_4/Switch_1Switchmul_4cond_4/pred_id*
T0*
_class

loc:@mul_4*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
{
cond_4/MergeMergecond_4/Switch_1
cond_4/mul*
N*5
_output_shapes#
!:’’’’’’’’’   `: *
T0
`
layer_5/ReluRelucond_4/Merge*
T0*3
_output_shapes!
:’’’’’’’’’   `
³
1layer_6/conv3d/v/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_6/conv3d/v*)
value B"         `   `   *
dtype0*
_output_shapes
:

/layer_6/conv3d/v/Initializer/random_uniform/minConst*
_output_shapes
: *#
_class
loc:@layer_6/conv3d/v*
valueB
 *HY½*
dtype0

/layer_6/conv3d/v/Initializer/random_uniform/maxConst*#
_class
loc:@layer_6/conv3d/v*
valueB
 *HY=*
dtype0*
_output_shapes
: 
ż
9layer_6/conv3d/v/Initializer/random_uniform/RandomUniformRandomUniform1layer_6/conv3d/v/Initializer/random_uniform/shape*
dtype0**
_output_shapes
:``*

seed *
T0*#
_class
loc:@layer_6/conv3d/v*
seed2 
Ž
/layer_6/conv3d/v/Initializer/random_uniform/subSub/layer_6/conv3d/v/Initializer/random_uniform/max/layer_6/conv3d/v/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@layer_6/conv3d/v
ü
/layer_6/conv3d/v/Initializer/random_uniform/mulMul9layer_6/conv3d/v/Initializer/random_uniform/RandomUniform/layer_6/conv3d/v/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_6/conv3d/v**
_output_shapes
:``
ī
+layer_6/conv3d/v/Initializer/random_uniformAdd/layer_6/conv3d/v/Initializer/random_uniform/mul/layer_6/conv3d/v/Initializer/random_uniform/min**
_output_shapes
:``*
T0*#
_class
loc:@layer_6/conv3d/v
Į
layer_6/conv3d/v
VariableV2*
dtype0**
_output_shapes
:``*
shared_name *#
_class
loc:@layer_6/conv3d/v*
	container *
shape:``
ć
layer_6/conv3d/v/AssignAssignlayer_6/conv3d/v+layer_6/conv3d/v/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_6/conv3d/v*
validate_shape(**
_output_shapes
:``

layer_6/conv3d/v/readIdentitylayer_6/conv3d/v*
T0*#
_class
loc:@layer_6/conv3d/v**
_output_shapes
:``

%layer_6/conv3d/layer_6/conv3d/v_0/tagConst*2
value)B' B!layer_6/conv3d/layer_6/conv3d/v_0*
dtype0*
_output_shapes
: 

!layer_6/conv3d/layer_6/conv3d/v_0HistogramSummary%layer_6/conv3d/layer_6/conv3d/v_0/taglayer_6/conv3d/v/read*
_output_shapes
: *
T0
“
"layer_6/conv3d/g/Initializer/ConstConst*#
_class
loc:@layer_6/conv3d/g*)
value B`*óµ?*
dtype0**
_output_shapes
:`
Į
layer_6/conv3d/g
VariableV2*
shared_name *#
_class
loc:@layer_6/conv3d/g*
	container *
shape:`*
dtype0**
_output_shapes
:`
Ś
layer_6/conv3d/g/AssignAssignlayer_6/conv3d/g"layer_6/conv3d/g/Initializer/Const*
use_locking(*
T0*#
_class
loc:@layer_6/conv3d/g*
validate_shape(**
_output_shapes
:`

layer_6/conv3d/g/readIdentitylayer_6/conv3d/g**
_output_shapes
:`*
T0*#
_class
loc:@layer_6/conv3d/g

%layer_6/conv3d/layer_6/conv3d/g_0/tagConst*2
value)B' B!layer_6/conv3d/layer_6/conv3d/g_0*
dtype0*
_output_shapes
: 

!layer_6/conv3d/layer_6/conv3d/g_0HistogramSummary%layer_6/conv3d/layer_6/conv3d/g_0/taglayer_6/conv3d/g/read*
_output_shapes
: *
T0
x
"layer_6/conv3d/l2_normalize/SquareSquarelayer_6/conv3d/v/read**
_output_shapes
:``*
T0

1layer_6/conv3d/l2_normalize/Sum/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ļ
layer_6/conv3d/l2_normalize/SumSum"layer_6/conv3d/l2_normalize/Square1layer_6/conv3d/l2_normalize/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0**
_output_shapes
:`
j
%layer_6/conv3d/l2_normalize/Maximum/yConst*
_output_shapes
: *
valueB
 *Ģ¼+*
dtype0
«
#layer_6/conv3d/l2_normalize/MaximumMaximumlayer_6/conv3d/l2_normalize/Sum%layer_6/conv3d/l2_normalize/Maximum/y*
T0**
_output_shapes
:`

!layer_6/conv3d/l2_normalize/RsqrtRsqrt#layer_6/conv3d/l2_normalize/Maximum*
T0**
_output_shapes
:`

layer_6/conv3d/l2_normalizeMullayer_6/conv3d/v/read!layer_6/conv3d/l2_normalize/Rsqrt*
T0**
_output_shapes
:``

layer_6/conv3d/kernel_mMullayer_6/conv3d/g/readlayer_6/conv3d/l2_normalize*
T0**
_output_shapes
:``

,layer_6/conv3d/layer_6/conv3d/kernel_m_0/tagConst*
_output_shapes
: *9
value0B. B(layer_6/conv3d/layer_6/conv3d/kernel_m_0*
dtype0
¤
(layer_6/conv3d/layer_6/conv3d/kernel_m_0HistogramSummary,layer_6/conv3d/layer_6/conv3d/kernel_m_0/taglayer_6/conv3d/kernel_m*
T0*
_output_shapes
: 
Ā
)layer_6/conv3d/kernel_a/Initializer/ConstConst**
_class 
loc:@layer_6/conv3d/kernel_a*)
value B``*·Ń8*
dtype0**
_output_shapes
:``
Ļ
layer_6/conv3d/kernel_a
VariableV2**
_class 
loc:@layer_6/conv3d/kernel_a*
	container *
shape:``*
dtype0**
_output_shapes
:``*
shared_name 
ö
layer_6/conv3d/kernel_a/AssignAssignlayer_6/conv3d/kernel_a)layer_6/conv3d/kernel_a/Initializer/Const**
_output_shapes
:``*
use_locking(*
T0**
_class 
loc:@layer_6/conv3d/kernel_a*
validate_shape(
¢
layer_6/conv3d/kernel_a/readIdentitylayer_6/conv3d/kernel_a**
_output_shapes
:``*
T0**
_class 
loc:@layer_6/conv3d/kernel_a

,layer_6/conv3d/layer_6/conv3d/kernel_a_0/tagConst*9
value0B. B(layer_6/conv3d/layer_6/conv3d/kernel_a_0*
dtype0*
_output_shapes
: 
©
(layer_6/conv3d/layer_6/conv3d/kernel_a_0HistogramSummary,layer_6/conv3d/layer_6/conv3d/kernel_a_0/taglayer_6/conv3d/kernel_a/read*
T0*
_output_shapes
: 
u
layer_6/conv3d/kernel_sigmaAbslayer_6/conv3d/kernel_a/read*
T0**
_output_shapes
:``

0layer_6/conv3d/layer_6/conv3d/kernel_sigma_0/tagConst*=
value4B2 B,layer_6/conv3d/layer_6/conv3d/kernel_sigma_0*
dtype0*
_output_shapes
: 
°
,layer_6/conv3d/layer_6/conv3d/kernel_sigma_0HistogramSummary0layer_6/conv3d/layer_6/conv3d/kernel_sigma_0/taglayer_6/conv3d/kernel_sigma*
T0*
_output_shapes
: 
q
layer_6/conv3d/ConstConst*)
value B"                *
dtype0*
_output_shapes
:

layer_6/conv3d/MeanMeanlayer_6/conv3d/kernel_sigmalayer_6/conv3d/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
¢
3layer_6/conv3d/layer_6/conv3d/kernel_sigma_0_1/tagsConst*?
value6B4 B.layer_6/conv3d/layer_6/conv3d/kernel_sigma_0_1*
dtype0*
_output_shapes
: 
Ŗ
.layer_6/conv3d/layer_6/conv3d/kernel_sigma_0_1ScalarSummary3layer_6/conv3d/layer_6/conv3d/kernel_sigma_0_1/tagslayer_6/conv3d/Mean*
T0*
_output_shapes
: 

'layer_6/conv3d/bias_m/Initializer/zerosConst*(
_class
loc:@layer_6/conv3d/bias_m*
valueB`*    *
dtype0*
_output_shapes
:`
«
layer_6/conv3d/bias_m
VariableV2*
	container *
shape:`*
dtype0*
_output_shapes
:`*
shared_name *(
_class
loc:@layer_6/conv3d/bias_m
Ž
layer_6/conv3d/bias_m/AssignAssignlayer_6/conv3d/bias_m'layer_6/conv3d/bias_m/Initializer/zeros*
use_locking(*
T0*(
_class
loc:@layer_6/conv3d/bias_m*
validate_shape(*
_output_shapes
:`

layer_6/conv3d/bias_m/readIdentitylayer_6/conv3d/bias_m*
_output_shapes
:`*
T0*(
_class
loc:@layer_6/conv3d/bias_m

*layer_6/conv3d/layer_6/conv3d/bias_m_0/tagConst*
_output_shapes
: *7
value.B, B&layer_6/conv3d/layer_6/conv3d/bias_m_0*
dtype0
£
&layer_6/conv3d/layer_6/conv3d/bias_m_0HistogramSummary*layer_6/conv3d/layer_6/conv3d/bias_m_0/taglayer_6/conv3d/bias_m/read*
T0*
_output_shapes
: 

'layer_6/conv3d/bias_a/Initializer/ConstConst*
dtype0*
_output_shapes
:`*(
_class
loc:@layer_6/conv3d/bias_a*
valueB`*·Ń8
«
layer_6/conv3d/bias_a
VariableV2*
shape:`*
dtype0*
_output_shapes
:`*
shared_name *(
_class
loc:@layer_6/conv3d/bias_a*
	container 
Ž
layer_6/conv3d/bias_a/AssignAssignlayer_6/conv3d/bias_a'layer_6/conv3d/bias_a/Initializer/Const*
use_locking(*
T0*(
_class
loc:@layer_6/conv3d/bias_a*
validate_shape(*
_output_shapes
:`

layer_6/conv3d/bias_a/readIdentitylayer_6/conv3d/bias_a*
_output_shapes
:`*
T0*(
_class
loc:@layer_6/conv3d/bias_a

*layer_6/conv3d/layer_6/conv3d/bias_a_0/tagConst*7
value.B, B&layer_6/conv3d/layer_6/conv3d/bias_a_0*
dtype0*
_output_shapes
: 
£
&layer_6/conv3d/layer_6/conv3d/bias_a_0HistogramSummary*layer_6/conv3d/layer_6/conv3d/bias_a_0/taglayer_6/conv3d/bias_a/read*
_output_shapes
: *
T0
a
layer_6/conv3d/bias_sigmaAbslayer_6/conv3d/bias_a/read*
T0*
_output_shapes
:`

.layer_6/conv3d/layer_6/conv3d/bias_sigma_0/tagConst*;
value2B0 B*layer_6/conv3d/layer_6/conv3d/bias_sigma_0*
dtype0*
_output_shapes
: 
Ŗ
*layer_6/conv3d/layer_6/conv3d/bias_sigma_0HistogramSummary.layer_6/conv3d/layer_6/conv3d/bias_sigma_0/taglayer_6/conv3d/bias_sigma*
T0*
_output_shapes
: 
`
layer_6/conv3d/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

layer_6/conv3d/Mean_1Meanlayer_6/conv3d/bias_sigmalayer_6/conv3d/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

1layer_6/conv3d/layer_6/conv3d/bias_sigma_0_1/tagsConst*
_output_shapes
: *=
value4B2 B,layer_6/conv3d/layer_6/conv3d/bias_sigma_0_1*
dtype0
Ø
,layer_6/conv3d/layer_6/conv3d/bias_sigma_0_1ScalarSummary1layer_6/conv3d/layer_6/conv3d/bias_sigma_0_1/tagslayer_6/conv3d/Mean_1*
_output_shapes
: *
T0
q
layer_6/conv3d/dilation_rateConst*!
valueB"         *
dtype0*
_output_shapes
:
x
layer_6/conv3d/filter_shapeConst*)
value B"         `   `   *
dtype0*
_output_shapes
:
}
layer_6/conv3d/stackConst*1
value(B&"                  *
dtype0*
_output_shapes

:

;layer_6/conv3d/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*!
valueB"            *
dtype0
”
8layer_6/conv3d/required_space_to_batch_paddings/paddingsConst*1
value(B&"                  *
dtype0*
_output_shapes

:

5layer_6/conv3d/required_space_to_batch_paddings/cropsConst*1
value(B&"                        *
dtype0*
_output_shapes

:
~
)layer_6/conv3d/SpaceToBatchND/block_shapeConst*
_output_shapes
:*!
valueB"         *
dtype0

&layer_6/conv3d/SpaceToBatchND/paddingsConst*1
value(B&"                  *
dtype0*
_output_shapes

:
ó
layer_6/conv3d/SpaceToBatchNDSpaceToBatchNDlayer_5/Relu)layer_6/conv3d/SpaceToBatchND/block_shape&layer_6/conv3d/SpaceToBatchND/paddings*
T0*
	Tpaddings0*3
_output_shapes!
:’’’’’’’’’`*
Tblock_shape0
ļ
layer_6/conv3d/Conv3DConv3Dlayer_6/conv3d/SpaceToBatchNDlayer_6/conv3d/kernel_m*
	dilations	
*
T0*
data_formatNDHWC*
strides	
*
paddingVALID*3
_output_shapes!
:’’’’’’’’’`
~
)layer_6/conv3d/BatchToSpaceND/block_shapeConst*!
valueB"         *
dtype0*
_output_shapes
:

#layer_6/conv3d/BatchToSpaceND/cropsConst*1
value(B&"                        *
dtype0*
_output_shapes

:
ö
layer_6/conv3d/BatchToSpaceNDBatchToSpaceNDlayer_6/conv3d/Conv3D)layer_6/conv3d/BatchToSpaceND/block_shape#layer_6/conv3d/BatchToSpaceND/crops*3
_output_shapes!
:’’’’’’’’’   `*
Tblock_shape0*
Tcrops0*
T0
k
layer_6/conv3d/SquareSquarelayer_5/Relu*3
_output_shapes!
:’’’’’’’’’   `*
T0
s
layer_6/conv3d/Square_1Squarelayer_6/conv3d/kernel_sigma**
_output_shapes
:``*
T0

=layer_6/conv3d/required_space_to_batch_paddings_1/input_shapeConst*!
valueB"            *
dtype0*
_output_shapes
:
£
:layer_6/conv3d/required_space_to_batch_paddings_1/paddingsConst*
dtype0*
_output_shapes

:*1
value(B&"                  
 
7layer_6/conv3d/required_space_to_batch_paddings_1/cropsConst*1
value(B&"                        *
dtype0*
_output_shapes

:

+layer_6/conv3d/SpaceToBatchND_1/block_shapeConst*!
valueB"         *
dtype0*
_output_shapes
:

(layer_6/conv3d/SpaceToBatchND_1/paddingsConst*1
value(B&"                  *
dtype0*
_output_shapes

:

layer_6/conv3d/SpaceToBatchND_1SpaceToBatchNDlayer_6/conv3d/Square+layer_6/conv3d/SpaceToBatchND_1/block_shape(layer_6/conv3d/SpaceToBatchND_1/paddings*
T0*
	Tpaddings0*3
_output_shapes!
:’’’’’’’’’`*
Tblock_shape0
ó
layer_6/conv3d/Conv3D_1Conv3Dlayer_6/conv3d/SpaceToBatchND_1layer_6/conv3d/Square_1*
paddingVALID*3
_output_shapes!
:’’’’’’’’’`*
	dilations	
*
T0*
data_formatNDHWC*
strides	


+layer_6/conv3d/BatchToSpaceND_1/block_shapeConst*!
valueB"         *
dtype0*
_output_shapes
:

%layer_6/conv3d/BatchToSpaceND_1/cropsConst*1
value(B&"                        *
dtype0*
_output_shapes

:
ž
layer_6/conv3d/BatchToSpaceND_1BatchToSpaceNDlayer_6/conv3d/Conv3D_1+layer_6/conv3d/BatchToSpaceND_1/block_shape%layer_6/conv3d/BatchToSpaceND_1/crops*3
_output_shapes!
:’’’’’’’’’   `*
Tblock_shape0*
Tcrops0*
T0
q
layer_6/conv3d/ShapeConst*
dtype0*
_output_shapes
:*)
value B"            `   
f
!layer_6/conv3d/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
#layer_6/conv3d/random_normal/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ŗ
1layer_6/conv3d/random_normal/RandomStandardNormalRandomStandardNormallayer_6/conv3d/Shape*
dtype0**
_output_shapes
:`*
seed2 *

seed *
T0
“
 layer_6/conv3d/random_normal/mulMul1layer_6/conv3d/random_normal/RandomStandardNormal#layer_6/conv3d/random_normal/stddev*
T0**
_output_shapes
:`

layer_6/conv3d/random_normalAdd layer_6/conv3d/random_normal/mul!layer_6/conv3d/random_normal/mean*
T0**
_output_shapes
:`
±
layer_6/conv3d/BiasAddBiasAddlayer_6/conv3d/BatchToSpaceNDlayer_6/conv3d/bias_m/read*
data_formatNHWC*3
_output_shapes!
:’’’’’’’’’   `*
T0
a
layer_6/conv3d/Square_2Squarelayer_6/conv3d/bias_sigma*
T0*
_output_shapes
:`
²
layer_6/conv3d/BiasAdd_1BiasAddlayer_6/conv3d/BatchToSpaceND_1layer_6/conv3d/Square_2*
data_formatNHWC*3
_output_shapes!
:’’’’’’’’’   `*
T0
U
layer_6/conv3d/cond/SwitchSwitchConstConst*
T0
*
_output_shapes
: : 
g
layer_6/conv3d/cond/switch_tIdentitylayer_6/conv3d/cond/Switch:1*
T0
*
_output_shapes
: 
e
layer_6/conv3d/cond/switch_fIdentitylayer_6/conv3d/cond/Switch*
T0
*
_output_shapes
: 
O
layer_6/conv3d/cond/pred_idIdentityConst*
_output_shapes
: *
T0

}
layer_6/conv3d/cond/add/yConst^layer_6/conv3d/cond/switch_t*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 

layer_6/conv3d/cond/addAdd layer_6/conv3d/cond/add/Switch:1layer_6/conv3d/cond/add/y*
T0*3
_output_shapes!
:’’’’’’’’’   `
é
layer_6/conv3d/cond/add/SwitchSwitchlayer_6/conv3d/BiasAdd_1layer_6/conv3d/cond/pred_id*
T0*+
_class!
loc:@layer_6/conv3d/BiasAdd_1*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
w
layer_6/conv3d/cond/SqrtSqrtlayer_6/conv3d/cond/add*3
_output_shapes!
:’’’’’’’’’   `*
T0

layer_6/conv3d/cond/mulMullayer_6/conv3d/cond/Sqrt layer_6/conv3d/cond/mul/Switch:1*
T0*3
_output_shapes!
:’’’’’’’’’   `
ß
layer_6/conv3d/cond/mul/SwitchSwitchlayer_6/conv3d/random_normallayer_6/conv3d/cond/pred_id*/
_class%
#!loc:@layer_6/conv3d/random_normal*@
_output_shapes.
,:`:`*
T0

layer_6/conv3d/cond/add_1Add"layer_6/conv3d/cond/add_1/Switch:1layer_6/conv3d/cond/mul*
T0*3
_output_shapes!
:’’’’’’’’’   `
ē
 layer_6/conv3d/cond/add_1/SwitchSwitchlayer_6/conv3d/BiasAddlayer_6/conv3d/cond/pred_id*
T0*)
_class
loc:@layer_6/conv3d/BiasAdd*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
ć
layer_6/conv3d/cond/Switch_1Switchlayer_6/conv3d/BiasAddlayer_6/conv3d/cond/pred_id*
T0*)
_class
loc:@layer_6/conv3d/BiasAdd*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
¤
layer_6/conv3d/cond/MergeMergelayer_6/conv3d/cond/Switch_1layer_6/conv3d/cond/add_1*
T0*
N*5
_output_shapes#
!:’’’’’’’’’   `: 
M
scalar_5Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
o
mul_5Mulscalar_5layer_6/conv3d/cond/Merge*
T0*3
_output_shapes!
:’’’’’’’’’   `
L
cond_5/SwitchSwitchConst_1Const_1*
T0
*
_output_shapes
: : 
M
cond_5/switch_tIdentitycond_5/Switch:1*
_output_shapes
: *
T0

K
cond_5/switch_fIdentitycond_5/Switch*
T0
*
_output_shapes
: 
D
cond_5/pred_idIdentityConst_1*
T0
*
_output_shapes
: 
o
cond_5/dropout/keep_probConst^cond_5/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
q
cond_5/dropout/ShapeShapecond_5/dropout/Shape/Switch:1*
out_type0*
_output_shapes
:*
T0
Ū
cond_5/dropout/Shape/SwitchSwitchlayer_6/conv3d/cond/Mergecond_5/pred_id*,
_class"
 loc:@layer_6/conv3d/cond/Merge*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `*
T0
x
!cond_5/dropout/random_uniform/minConst^cond_5/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
x
!cond_5/dropout/random_uniform/maxConst^cond_5/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¶
+cond_5/dropout/random_uniform/RandomUniformRandomUniformcond_5/dropout/Shape*
dtype0*3
_output_shapes!
:’’’’’’’’’   `*
seed2 *

seed *
T0

!cond_5/dropout/random_uniform/subSub!cond_5/dropout/random_uniform/max!cond_5/dropout/random_uniform/min*
T0*
_output_shapes
: 
¶
!cond_5/dropout/random_uniform/mulMul+cond_5/dropout/random_uniform/RandomUniform!cond_5/dropout/random_uniform/sub*
T0*3
_output_shapes!
:’’’’’’’’’   `
Ø
cond_5/dropout/random_uniformAdd!cond_5/dropout/random_uniform/mul!cond_5/dropout/random_uniform/min*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond_5/dropout/addAddcond_5/dropout/keep_probcond_5/dropout/random_uniform*
T0*3
_output_shapes!
:’’’’’’’’’   `
o
cond_5/dropout/FloorFloorcond_5/dropout/add*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond_5/dropout/divRealDivcond_5/dropout/Shape/Switch:1cond_5/dropout/keep_prob*3
_output_shapes!
:’’’’’’’’’   `*
T0

cond_5/dropout/mulMulcond_5/dropout/divcond_5/dropout/Floor*3
_output_shapes!
:’’’’’’’’’   `*
T0
d
cond_5/scalarConst^cond_5/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r

cond_5/mulMulcond_5/scalarcond_5/dropout/mul*
T0*3
_output_shapes!
:’’’’’’’’’   `
§
cond_5/Switch_1Switchmul_5cond_5/pred_id*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `*
T0*
_class

loc:@mul_5
{
cond_5/MergeMergecond_5/Switch_1
cond_5/mul*5
_output_shapes#
!:’’’’’’’’’   `: *
T0*
N
`
layer_6/ReluRelucond_5/Merge*
T0*3
_output_shapes!
:’’’’’’’’’   `
³
1layer_7/conv3d/v/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_7/conv3d/v*)
value B"         `   `   *
dtype0*
_output_shapes
:

/layer_7/conv3d/v/Initializer/random_uniform/minConst*
_output_shapes
: *#
_class
loc:@layer_7/conv3d/v*
valueB
 *HY½*
dtype0

/layer_7/conv3d/v/Initializer/random_uniform/maxConst*
_output_shapes
: *#
_class
loc:@layer_7/conv3d/v*
valueB
 *HY=*
dtype0
ż
9layer_7/conv3d/v/Initializer/random_uniform/RandomUniformRandomUniform1layer_7/conv3d/v/Initializer/random_uniform/shape*
T0*#
_class
loc:@layer_7/conv3d/v*
seed2 *
dtype0**
_output_shapes
:``*

seed 
Ž
/layer_7/conv3d/v/Initializer/random_uniform/subSub/layer_7/conv3d/v/Initializer/random_uniform/max/layer_7/conv3d/v/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@layer_7/conv3d/v
ü
/layer_7/conv3d/v/Initializer/random_uniform/mulMul9layer_7/conv3d/v/Initializer/random_uniform/RandomUniform/layer_7/conv3d/v/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_7/conv3d/v**
_output_shapes
:``
ī
+layer_7/conv3d/v/Initializer/random_uniformAdd/layer_7/conv3d/v/Initializer/random_uniform/mul/layer_7/conv3d/v/Initializer/random_uniform/min**
_output_shapes
:``*
T0*#
_class
loc:@layer_7/conv3d/v
Į
layer_7/conv3d/v
VariableV2*
shared_name *#
_class
loc:@layer_7/conv3d/v*
	container *
shape:``*
dtype0**
_output_shapes
:``
ć
layer_7/conv3d/v/AssignAssignlayer_7/conv3d/v+layer_7/conv3d/v/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_7/conv3d/v*
validate_shape(**
_output_shapes
:``

layer_7/conv3d/v/readIdentitylayer_7/conv3d/v*
T0*#
_class
loc:@layer_7/conv3d/v**
_output_shapes
:``

%layer_7/conv3d/layer_7/conv3d/v_0/tagConst*2
value)B' B!layer_7/conv3d/layer_7/conv3d/v_0*
dtype0*
_output_shapes
: 

!layer_7/conv3d/layer_7/conv3d/v_0HistogramSummary%layer_7/conv3d/layer_7/conv3d/v_0/taglayer_7/conv3d/v/read*
T0*
_output_shapes
: 
“
"layer_7/conv3d/g/Initializer/ConstConst*#
_class
loc:@layer_7/conv3d/g*)
value B`*óµ?*
dtype0**
_output_shapes
:`
Į
layer_7/conv3d/g
VariableV2*
shared_name *#
_class
loc:@layer_7/conv3d/g*
	container *
shape:`*
dtype0**
_output_shapes
:`
Ś
layer_7/conv3d/g/AssignAssignlayer_7/conv3d/g"layer_7/conv3d/g/Initializer/Const*
use_locking(*
T0*#
_class
loc:@layer_7/conv3d/g*
validate_shape(**
_output_shapes
:`

layer_7/conv3d/g/readIdentitylayer_7/conv3d/g*
T0*#
_class
loc:@layer_7/conv3d/g**
_output_shapes
:`

%layer_7/conv3d/layer_7/conv3d/g_0/tagConst*2
value)B' B!layer_7/conv3d/layer_7/conv3d/g_0*
dtype0*
_output_shapes
: 

!layer_7/conv3d/layer_7/conv3d/g_0HistogramSummary%layer_7/conv3d/layer_7/conv3d/g_0/taglayer_7/conv3d/g/read*
_output_shapes
: *
T0
x
"layer_7/conv3d/l2_normalize/SquareSquarelayer_7/conv3d/v/read*
T0**
_output_shapes
:``

1layer_7/conv3d/l2_normalize/Sum/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ļ
layer_7/conv3d/l2_normalize/SumSum"layer_7/conv3d/l2_normalize/Square1layer_7/conv3d/l2_normalize/Sum/reduction_indices**
_output_shapes
:`*
	keep_dims(*

Tidx0*
T0
j
%layer_7/conv3d/l2_normalize/Maximum/yConst*
valueB
 *Ģ¼+*
dtype0*
_output_shapes
: 
«
#layer_7/conv3d/l2_normalize/MaximumMaximumlayer_7/conv3d/l2_normalize/Sum%layer_7/conv3d/l2_normalize/Maximum/y*
T0**
_output_shapes
:`

!layer_7/conv3d/l2_normalize/RsqrtRsqrt#layer_7/conv3d/l2_normalize/Maximum*
T0**
_output_shapes
:`

layer_7/conv3d/l2_normalizeMullayer_7/conv3d/v/read!layer_7/conv3d/l2_normalize/Rsqrt*
T0**
_output_shapes
:``

layer_7/conv3d/kernel_mMullayer_7/conv3d/g/readlayer_7/conv3d/l2_normalize*
T0**
_output_shapes
:``

,layer_7/conv3d/layer_7/conv3d/kernel_m_0/tagConst*9
value0B. B(layer_7/conv3d/layer_7/conv3d/kernel_m_0*
dtype0*
_output_shapes
: 
¤
(layer_7/conv3d/layer_7/conv3d/kernel_m_0HistogramSummary,layer_7/conv3d/layer_7/conv3d/kernel_m_0/taglayer_7/conv3d/kernel_m*
_output_shapes
: *
T0
Ā
)layer_7/conv3d/kernel_a/Initializer/ConstConst*
dtype0**
_output_shapes
:``**
_class 
loc:@layer_7/conv3d/kernel_a*)
value B``*·Ń8
Ļ
layer_7/conv3d/kernel_a
VariableV2*
dtype0**
_output_shapes
:``*
shared_name **
_class 
loc:@layer_7/conv3d/kernel_a*
	container *
shape:``
ö
layer_7/conv3d/kernel_a/AssignAssignlayer_7/conv3d/kernel_a)layer_7/conv3d/kernel_a/Initializer/Const*
validate_shape(**
_output_shapes
:``*
use_locking(*
T0**
_class 
loc:@layer_7/conv3d/kernel_a
¢
layer_7/conv3d/kernel_a/readIdentitylayer_7/conv3d/kernel_a**
_output_shapes
:``*
T0**
_class 
loc:@layer_7/conv3d/kernel_a

,layer_7/conv3d/layer_7/conv3d/kernel_a_0/tagConst*9
value0B. B(layer_7/conv3d/layer_7/conv3d/kernel_a_0*
dtype0*
_output_shapes
: 
©
(layer_7/conv3d/layer_7/conv3d/kernel_a_0HistogramSummary,layer_7/conv3d/layer_7/conv3d/kernel_a_0/taglayer_7/conv3d/kernel_a/read*
_output_shapes
: *
T0
u
layer_7/conv3d/kernel_sigmaAbslayer_7/conv3d/kernel_a/read*
T0**
_output_shapes
:``

0layer_7/conv3d/layer_7/conv3d/kernel_sigma_0/tagConst*=
value4B2 B,layer_7/conv3d/layer_7/conv3d/kernel_sigma_0*
dtype0*
_output_shapes
: 
°
,layer_7/conv3d/layer_7/conv3d/kernel_sigma_0HistogramSummary0layer_7/conv3d/layer_7/conv3d/kernel_sigma_0/taglayer_7/conv3d/kernel_sigma*
T0*
_output_shapes
: 
q
layer_7/conv3d/ConstConst*)
value B"                *
dtype0*
_output_shapes
:

layer_7/conv3d/MeanMeanlayer_7/conv3d/kernel_sigmalayer_7/conv3d/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
¢
3layer_7/conv3d/layer_7/conv3d/kernel_sigma_0_1/tagsConst*
dtype0*
_output_shapes
: *?
value6B4 B.layer_7/conv3d/layer_7/conv3d/kernel_sigma_0_1
Ŗ
.layer_7/conv3d/layer_7/conv3d/kernel_sigma_0_1ScalarSummary3layer_7/conv3d/layer_7/conv3d/kernel_sigma_0_1/tagslayer_7/conv3d/Mean*
T0*
_output_shapes
: 

'layer_7/conv3d/bias_m/Initializer/zerosConst*(
_class
loc:@layer_7/conv3d/bias_m*
valueB`*    *
dtype0*
_output_shapes
:`
«
layer_7/conv3d/bias_m
VariableV2*
dtype0*
_output_shapes
:`*
shared_name *(
_class
loc:@layer_7/conv3d/bias_m*
	container *
shape:`
Ž
layer_7/conv3d/bias_m/AssignAssignlayer_7/conv3d/bias_m'layer_7/conv3d/bias_m/Initializer/zeros*
T0*(
_class
loc:@layer_7/conv3d/bias_m*
validate_shape(*
_output_shapes
:`*
use_locking(

layer_7/conv3d/bias_m/readIdentitylayer_7/conv3d/bias_m*(
_class
loc:@layer_7/conv3d/bias_m*
_output_shapes
:`*
T0

*layer_7/conv3d/layer_7/conv3d/bias_m_0/tagConst*7
value.B, B&layer_7/conv3d/layer_7/conv3d/bias_m_0*
dtype0*
_output_shapes
: 
£
&layer_7/conv3d/layer_7/conv3d/bias_m_0HistogramSummary*layer_7/conv3d/layer_7/conv3d/bias_m_0/taglayer_7/conv3d/bias_m/read*
_output_shapes
: *
T0

'layer_7/conv3d/bias_a/Initializer/ConstConst*
dtype0*
_output_shapes
:`*(
_class
loc:@layer_7/conv3d/bias_a*
valueB`*·Ń8
«
layer_7/conv3d/bias_a
VariableV2*
_output_shapes
:`*
shared_name *(
_class
loc:@layer_7/conv3d/bias_a*
	container *
shape:`*
dtype0
Ž
layer_7/conv3d/bias_a/AssignAssignlayer_7/conv3d/bias_a'layer_7/conv3d/bias_a/Initializer/Const*
_output_shapes
:`*
use_locking(*
T0*(
_class
loc:@layer_7/conv3d/bias_a*
validate_shape(

layer_7/conv3d/bias_a/readIdentitylayer_7/conv3d/bias_a*(
_class
loc:@layer_7/conv3d/bias_a*
_output_shapes
:`*
T0

*layer_7/conv3d/layer_7/conv3d/bias_a_0/tagConst*7
value.B, B&layer_7/conv3d/layer_7/conv3d/bias_a_0*
dtype0*
_output_shapes
: 
£
&layer_7/conv3d/layer_7/conv3d/bias_a_0HistogramSummary*layer_7/conv3d/layer_7/conv3d/bias_a_0/taglayer_7/conv3d/bias_a/read*
_output_shapes
: *
T0
a
layer_7/conv3d/bias_sigmaAbslayer_7/conv3d/bias_a/read*
T0*
_output_shapes
:`

.layer_7/conv3d/layer_7/conv3d/bias_sigma_0/tagConst*;
value2B0 B*layer_7/conv3d/layer_7/conv3d/bias_sigma_0*
dtype0*
_output_shapes
: 
Ŗ
*layer_7/conv3d/layer_7/conv3d/bias_sigma_0HistogramSummary.layer_7/conv3d/layer_7/conv3d/bias_sigma_0/taglayer_7/conv3d/bias_sigma*
T0*
_output_shapes
: 
`
layer_7/conv3d/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

layer_7/conv3d/Mean_1Meanlayer_7/conv3d/bias_sigmalayer_7/conv3d/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

1layer_7/conv3d/layer_7/conv3d/bias_sigma_0_1/tagsConst*=
value4B2 B,layer_7/conv3d/layer_7/conv3d/bias_sigma_0_1*
dtype0*
_output_shapes
: 
Ø
,layer_7/conv3d/layer_7/conv3d/bias_sigma_0_1ScalarSummary1layer_7/conv3d/layer_7/conv3d/bias_sigma_0_1/tagslayer_7/conv3d/Mean_1*
_output_shapes
: *
T0
q
layer_7/conv3d/dilation_rateConst*!
valueB"         *
dtype0*
_output_shapes
:
Ż
layer_7/conv3d/Conv3DConv3Dlayer_6/Relulayer_7/conv3d/kernel_m*
	dilations	
*
T0*
data_formatNDHWC*
strides	
*
paddingSAME*3
_output_shapes!
:’’’’’’’’’   `
k
layer_7/conv3d/SquareSquarelayer_6/Relu*
T0*3
_output_shapes!
:’’’’’’’’’   `
s
layer_7/conv3d/Square_1Squarelayer_7/conv3d/kernel_sigma**
_output_shapes
:``*
T0
č
layer_7/conv3d/Conv3D_1Conv3Dlayer_7/conv3d/Squarelayer_7/conv3d/Square_1*
paddingSAME*3
_output_shapes!
:’’’’’’’’’   `*
	dilations	
*
T0*
data_formatNDHWC*
strides	

q
layer_7/conv3d/ShapeConst*)
value B"            `   *
dtype0*
_output_shapes
:
f
!layer_7/conv3d/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
#layer_7/conv3d/random_normal/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ŗ
1layer_7/conv3d/random_normal/RandomStandardNormalRandomStandardNormallayer_7/conv3d/Shape*

seed *
T0*
dtype0**
_output_shapes
:`*
seed2 
“
 layer_7/conv3d/random_normal/mulMul1layer_7/conv3d/random_normal/RandomStandardNormal#layer_7/conv3d/random_normal/stddev*
T0**
_output_shapes
:`

layer_7/conv3d/random_normalAdd layer_7/conv3d/random_normal/mul!layer_7/conv3d/random_normal/mean**
_output_shapes
:`*
T0
©
layer_7/conv3d/BiasAddBiasAddlayer_7/conv3d/Conv3Dlayer_7/conv3d/bias_m/read*
T0*
data_formatNHWC*3
_output_shapes!
:’’’’’’’’’   `
a
layer_7/conv3d/Square_2Squarelayer_7/conv3d/bias_sigma*
T0*
_output_shapes
:`
Ŗ
layer_7/conv3d/BiasAdd_1BiasAddlayer_7/conv3d/Conv3D_1layer_7/conv3d/Square_2*3
_output_shapes!
:’’’’’’’’’   `*
T0*
data_formatNHWC
U
layer_7/conv3d/cond/SwitchSwitchConstConst*
_output_shapes
: : *
T0

g
layer_7/conv3d/cond/switch_tIdentitylayer_7/conv3d/cond/Switch:1*
_output_shapes
: *
T0

e
layer_7/conv3d/cond/switch_fIdentitylayer_7/conv3d/cond/Switch*
T0
*
_output_shapes
: 
O
layer_7/conv3d/cond/pred_idIdentityConst*
_output_shapes
: *
T0

}
layer_7/conv3d/cond/add/yConst^layer_7/conv3d/cond/switch_t*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 

layer_7/conv3d/cond/addAdd layer_7/conv3d/cond/add/Switch:1layer_7/conv3d/cond/add/y*
T0*3
_output_shapes!
:’’’’’’’’’   `
é
layer_7/conv3d/cond/add/SwitchSwitchlayer_7/conv3d/BiasAdd_1layer_7/conv3d/cond/pred_id*+
_class!
loc:@layer_7/conv3d/BiasAdd_1*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `*
T0
w
layer_7/conv3d/cond/SqrtSqrtlayer_7/conv3d/cond/add*3
_output_shapes!
:’’’’’’’’’   `*
T0

layer_7/conv3d/cond/mulMullayer_7/conv3d/cond/Sqrt layer_7/conv3d/cond/mul/Switch:1*
T0*3
_output_shapes!
:’’’’’’’’’   `
ß
layer_7/conv3d/cond/mul/SwitchSwitchlayer_7/conv3d/random_normallayer_7/conv3d/cond/pred_id*
T0*/
_class%
#!loc:@layer_7/conv3d/random_normal*@
_output_shapes.
,:`:`

layer_7/conv3d/cond/add_1Add"layer_7/conv3d/cond/add_1/Switch:1layer_7/conv3d/cond/mul*
T0*3
_output_shapes!
:’’’’’’’’’   `
ē
 layer_7/conv3d/cond/add_1/SwitchSwitchlayer_7/conv3d/BiasAddlayer_7/conv3d/cond/pred_id*
T0*)
_class
loc:@layer_7/conv3d/BiasAdd*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
ć
layer_7/conv3d/cond/Switch_1Switchlayer_7/conv3d/BiasAddlayer_7/conv3d/cond/pred_id*
T0*)
_class
loc:@layer_7/conv3d/BiasAdd*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
¤
layer_7/conv3d/cond/MergeMergelayer_7/conv3d/cond/Switch_1layer_7/conv3d/cond/add_1*
T0*
N*5
_output_shapes#
!:’’’’’’’’’   `: 
M
scalar_6Const*
valueB
 *   ?*
dtype0*
_output_shapes
: 
o
mul_6Mulscalar_6layer_7/conv3d/cond/Merge*
T0*3
_output_shapes!
:’’’’’’’’’   `
L
cond_6/SwitchSwitchConst_1Const_1*
T0
*
_output_shapes
: : 
M
cond_6/switch_tIdentitycond_6/Switch:1*
_output_shapes
: *
T0

K
cond_6/switch_fIdentitycond_6/Switch*
T0
*
_output_shapes
: 
D
cond_6/pred_idIdentityConst_1*
_output_shapes
: *
T0

o
cond_6/dropout/keep_probConst^cond_6/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
q
cond_6/dropout/ShapeShapecond_6/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Ū
cond_6/dropout/Shape/SwitchSwitchlayer_7/conv3d/cond/Mergecond_6/pred_id*
T0*,
_class"
 loc:@layer_7/conv3d/cond/Merge*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `
x
!cond_6/dropout/random_uniform/minConst^cond_6/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
x
!cond_6/dropout/random_uniform/maxConst^cond_6/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¶
+cond_6/dropout/random_uniform/RandomUniformRandomUniformcond_6/dropout/Shape*
T0*
dtype0*3
_output_shapes!
:’’’’’’’’’   `*
seed2 *

seed 

!cond_6/dropout/random_uniform/subSub!cond_6/dropout/random_uniform/max!cond_6/dropout/random_uniform/min*
T0*
_output_shapes
: 
¶
!cond_6/dropout/random_uniform/mulMul+cond_6/dropout/random_uniform/RandomUniform!cond_6/dropout/random_uniform/sub*
T0*3
_output_shapes!
:’’’’’’’’’   `
Ø
cond_6/dropout/random_uniformAdd!cond_6/dropout/random_uniform/mul!cond_6/dropout/random_uniform/min*3
_output_shapes!
:’’’’’’’’’   `*
T0

cond_6/dropout/addAddcond_6/dropout/keep_probcond_6/dropout/random_uniform*
T0*3
_output_shapes!
:’’’’’’’’’   `
o
cond_6/dropout/FloorFloorcond_6/dropout/add*
T0*3
_output_shapes!
:’’’’’’’’’   `

cond_6/dropout/divRealDivcond_6/dropout/Shape/Switch:1cond_6/dropout/keep_prob*3
_output_shapes!
:’’’’’’’’’   `*
T0

cond_6/dropout/mulMulcond_6/dropout/divcond_6/dropout/Floor*
T0*3
_output_shapes!
:’’’’’’’’’   `
d
cond_6/scalarConst^cond_6/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r

cond_6/mulMulcond_6/scalarcond_6/dropout/mul*
T0*3
_output_shapes!
:’’’’’’’’’   `
§
cond_6/Switch_1Switchmul_6cond_6/pred_id*R
_output_shapes@
>:’’’’’’’’’   `:’’’’’’’’’   `*
T0*
_class

loc:@mul_6
{
cond_6/MergeMergecond_6/Switch_1
cond_6/mul*
T0*
N*5
_output_shapes#
!:’’’’’’’’’   `: 
`
layer_7/ReluRelucond_6/Merge*
T0*3
_output_shapes!
:’’’’’’’’’   `
±
0logits/conv3d/v/Initializer/random_uniform/shapeConst*"
_class
loc:@logits/conv3d/v*)
value B"         `   2   *
dtype0*
_output_shapes
:

.logits/conv3d/v/Initializer/random_uniform/minConst*"
_class
loc:@logits/conv3d/v*
valueB
 *&O¾*
dtype0*
_output_shapes
: 

.logits/conv3d/v/Initializer/random_uniform/maxConst*"
_class
loc:@logits/conv3d/v*
valueB
 *&O>*
dtype0*
_output_shapes
: 
ś
8logits/conv3d/v/Initializer/random_uniform/RandomUniformRandomUniform0logits/conv3d/v/Initializer/random_uniform/shape*
T0*"
_class
loc:@logits/conv3d/v*
seed2 *
dtype0**
_output_shapes
:`2*

seed 
Ś
.logits/conv3d/v/Initializer/random_uniform/subSub.logits/conv3d/v/Initializer/random_uniform/max.logits/conv3d/v/Initializer/random_uniform/min*
T0*"
_class
loc:@logits/conv3d/v*
_output_shapes
: 
ų
.logits/conv3d/v/Initializer/random_uniform/mulMul8logits/conv3d/v/Initializer/random_uniform/RandomUniform.logits/conv3d/v/Initializer/random_uniform/sub**
_output_shapes
:`2*
T0*"
_class
loc:@logits/conv3d/v
ź
*logits/conv3d/v/Initializer/random_uniformAdd.logits/conv3d/v/Initializer/random_uniform/mul.logits/conv3d/v/Initializer/random_uniform/min*"
_class
loc:@logits/conv3d/v**
_output_shapes
:`2*
T0
æ
logits/conv3d/v
VariableV2*
	container *
shape:`2*
dtype0**
_output_shapes
:`2*
shared_name *"
_class
loc:@logits/conv3d/v
ß
logits/conv3d/v/AssignAssignlogits/conv3d/v*logits/conv3d/v/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@logits/conv3d/v*
validate_shape(**
_output_shapes
:`2

logits/conv3d/v/readIdentitylogits/conv3d/v*
T0*"
_class
loc:@logits/conv3d/v**
_output_shapes
:`2

#logits/conv3d/logits/conv3d/v_0/tagConst*0
value'B% Blogits/conv3d/logits/conv3d/v_0*
dtype0*
_output_shapes
: 

logits/conv3d/logits/conv3d/v_0HistogramSummary#logits/conv3d/logits/conv3d/v_0/taglogits/conv3d/v/read*
_output_shapes
: *
T0
²
!logits/conv3d/g/Initializer/ConstConst*
dtype0**
_output_shapes
:2*"
_class
loc:@logits/conv3d/g*)
value B2*óµ?
æ
logits/conv3d/g
VariableV2*
shared_name *"
_class
loc:@logits/conv3d/g*
	container *
shape:2*
dtype0**
_output_shapes
:2
Ö
logits/conv3d/g/AssignAssignlogits/conv3d/g!logits/conv3d/g/Initializer/Const**
_output_shapes
:2*
use_locking(*
T0*"
_class
loc:@logits/conv3d/g*
validate_shape(

logits/conv3d/g/readIdentitylogits/conv3d/g*"
_class
loc:@logits/conv3d/g**
_output_shapes
:2*
T0

#logits/conv3d/logits/conv3d/g_0/tagConst*0
value'B% Blogits/conv3d/logits/conv3d/g_0*
dtype0*
_output_shapes
: 

logits/conv3d/logits/conv3d/g_0HistogramSummary#logits/conv3d/logits/conv3d/g_0/taglogits/conv3d/g/read*
_output_shapes
: *
T0
v
!logits/conv3d/l2_normalize/SquareSquarelogits/conv3d/v/read*
T0**
_output_shapes
:`2

0logits/conv3d/l2_normalize/Sum/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ģ
logits/conv3d/l2_normalize/SumSum!logits/conv3d/l2_normalize/Square0logits/conv3d/l2_normalize/Sum/reduction_indices**
_output_shapes
:2*
	keep_dims(*

Tidx0*
T0
i
$logits/conv3d/l2_normalize/Maximum/yConst*
valueB
 *Ģ¼+*
dtype0*
_output_shapes
: 
Ø
"logits/conv3d/l2_normalize/MaximumMaximumlogits/conv3d/l2_normalize/Sum$logits/conv3d/l2_normalize/Maximum/y*
T0**
_output_shapes
:2

 logits/conv3d/l2_normalize/RsqrtRsqrt"logits/conv3d/l2_normalize/Maximum*
T0**
_output_shapes
:2

logits/conv3d/l2_normalizeMullogits/conv3d/v/read logits/conv3d/l2_normalize/Rsqrt*
T0**
_output_shapes
:`2

logits/conv3d/kernel_mMullogits/conv3d/g/readlogits/conv3d/l2_normalize*
T0**
_output_shapes
:`2

*logits/conv3d/logits/conv3d/kernel_m_0/tagConst*
dtype0*
_output_shapes
: *7
value.B, B&logits/conv3d/logits/conv3d/kernel_m_0

&logits/conv3d/logits/conv3d/kernel_m_0HistogramSummary*logits/conv3d/logits/conv3d/kernel_m_0/taglogits/conv3d/kernel_m*
T0*
_output_shapes
: 
Ą
(logits/conv3d/kernel_a/Initializer/ConstConst**
_output_shapes
:`2*)
_class
loc:@logits/conv3d/kernel_a*)
value B`2*·Ń8*
dtype0
Ķ
logits/conv3d/kernel_a
VariableV2*
dtype0**
_output_shapes
:`2*
shared_name *)
_class
loc:@logits/conv3d/kernel_a*
	container *
shape:`2
ņ
logits/conv3d/kernel_a/AssignAssignlogits/conv3d/kernel_a(logits/conv3d/kernel_a/Initializer/Const*
use_locking(*
T0*)
_class
loc:@logits/conv3d/kernel_a*
validate_shape(**
_output_shapes
:`2

logits/conv3d/kernel_a/readIdentitylogits/conv3d/kernel_a**
_output_shapes
:`2*
T0*)
_class
loc:@logits/conv3d/kernel_a

*logits/conv3d/logits/conv3d/kernel_a_0/tagConst*
dtype0*
_output_shapes
: *7
value.B, B&logits/conv3d/logits/conv3d/kernel_a_0
¤
&logits/conv3d/logits/conv3d/kernel_a_0HistogramSummary*logits/conv3d/logits/conv3d/kernel_a_0/taglogits/conv3d/kernel_a/read*
T0*
_output_shapes
: 
s
logits/conv3d/kernel_sigmaAbslogits/conv3d/kernel_a/read*
T0**
_output_shapes
:`2

.logits/conv3d/logits/conv3d/kernel_sigma_0/tagConst*;
value2B0 B*logits/conv3d/logits/conv3d/kernel_sigma_0*
dtype0*
_output_shapes
: 
«
*logits/conv3d/logits/conv3d/kernel_sigma_0HistogramSummary.logits/conv3d/logits/conv3d/kernel_sigma_0/taglogits/conv3d/kernel_sigma*
T0*
_output_shapes
: 
p
logits/conv3d/ConstConst*)
value B"                *
dtype0*
_output_shapes
:

logits/conv3d/MeanMeanlogits/conv3d/kernel_sigmalogits/conv3d/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

1logits/conv3d/logits/conv3d/kernel_sigma_0_1/tagsConst*
_output_shapes
: *=
value4B2 B,logits/conv3d/logits/conv3d/kernel_sigma_0_1*
dtype0
„
,logits/conv3d/logits/conv3d/kernel_sigma_0_1ScalarSummary1logits/conv3d/logits/conv3d/kernel_sigma_0_1/tagslogits/conv3d/Mean*
_output_shapes
: *
T0

&logits/conv3d/bias_m/Initializer/zerosConst*'
_class
loc:@logits/conv3d/bias_m*
valueB2*    *
dtype0*
_output_shapes
:2
©
logits/conv3d/bias_m
VariableV2*
dtype0*
_output_shapes
:2*
shared_name *'
_class
loc:@logits/conv3d/bias_m*
	container *
shape:2
Ś
logits/conv3d/bias_m/AssignAssignlogits/conv3d/bias_m&logits/conv3d/bias_m/Initializer/zeros*'
_class
loc:@logits/conv3d/bias_m*
validate_shape(*
_output_shapes
:2*
use_locking(*
T0

logits/conv3d/bias_m/readIdentitylogits/conv3d/bias_m*'
_class
loc:@logits/conv3d/bias_m*
_output_shapes
:2*
T0

(logits/conv3d/logits/conv3d/bias_m_0/tagConst*5
value,B* B$logits/conv3d/logits/conv3d/bias_m_0*
dtype0*
_output_shapes
: 

$logits/conv3d/logits/conv3d/bias_m_0HistogramSummary(logits/conv3d/logits/conv3d/bias_m_0/taglogits/conv3d/bias_m/read*
_output_shapes
: *
T0

&logits/conv3d/bias_a/Initializer/ConstConst*'
_class
loc:@logits/conv3d/bias_a*
valueB2*·Ń8*
dtype0*
_output_shapes
:2
©
logits/conv3d/bias_a
VariableV2*'
_class
loc:@logits/conv3d/bias_a*
	container *
shape:2*
dtype0*
_output_shapes
:2*
shared_name 
Ś
logits/conv3d/bias_a/AssignAssignlogits/conv3d/bias_a&logits/conv3d/bias_a/Initializer/Const*
T0*'
_class
loc:@logits/conv3d/bias_a*
validate_shape(*
_output_shapes
:2*
use_locking(

logits/conv3d/bias_a/readIdentitylogits/conv3d/bias_a*
T0*'
_class
loc:@logits/conv3d/bias_a*
_output_shapes
:2

(logits/conv3d/logits/conv3d/bias_a_0/tagConst*5
value,B* B$logits/conv3d/logits/conv3d/bias_a_0*
dtype0*
_output_shapes
: 

$logits/conv3d/logits/conv3d/bias_a_0HistogramSummary(logits/conv3d/logits/conv3d/bias_a_0/taglogits/conv3d/bias_a/read*
T0*
_output_shapes
: 
_
logits/conv3d/bias_sigmaAbslogits/conv3d/bias_a/read*
T0*
_output_shapes
:2

,logits/conv3d/logits/conv3d/bias_sigma_0/tagConst*9
value0B. B(logits/conv3d/logits/conv3d/bias_sigma_0*
dtype0*
_output_shapes
: 
„
(logits/conv3d/logits/conv3d/bias_sigma_0HistogramSummary,logits/conv3d/logits/conv3d/bias_sigma_0/taglogits/conv3d/bias_sigma*
_output_shapes
: *
T0
_
logits/conv3d/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

logits/conv3d/Mean_1Meanlogits/conv3d/bias_sigmalogits/conv3d/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

/logits/conv3d/logits/conv3d/bias_sigma_0_1/tagsConst*;
value2B0 B*logits/conv3d/logits/conv3d/bias_sigma_0_1*
dtype0*
_output_shapes
: 
£
*logits/conv3d/logits/conv3d/bias_sigma_0_1ScalarSummary/logits/conv3d/logits/conv3d/bias_sigma_0_1/tagslogits/conv3d/Mean_1*
_output_shapes
: *
T0
p
logits/conv3d/dilation_rateConst*!
valueB"         *
dtype0*
_output_shapes
:
Ū
logits/conv3d/Conv3DConv3Dlayer_7/Relulogits/conv3d/kernel_m*
paddingSAME*3
_output_shapes!
:’’’’’’’’’   2*
	dilations	
*
T0*
data_formatNDHWC*
strides	

j
logits/conv3d/SquareSquarelayer_7/Relu*
T0*3
_output_shapes!
:’’’’’’’’’   `
q
logits/conv3d/Square_1Squarelogits/conv3d/kernel_sigma*
T0**
_output_shapes
:`2
å
logits/conv3d/Conv3D_1Conv3Dlogits/conv3d/Squarelogits/conv3d/Square_1*
paddingSAME*3
_output_shapes!
:’’’’’’’’’   2*
	dilations	
*
T0*
data_formatNDHWC*
strides	

p
logits/conv3d/ShapeConst*)
value B"            2   *
dtype0*
_output_shapes
:
e
 logits/conv3d/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
g
"logits/conv3d/random_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
ø
0logits/conv3d/random_normal/RandomStandardNormalRandomStandardNormallogits/conv3d/Shape*

seed *
T0*
dtype0**
_output_shapes
:2*
seed2 
±
logits/conv3d/random_normal/mulMul0logits/conv3d/random_normal/RandomStandardNormal"logits/conv3d/random_normal/stddev*
T0**
_output_shapes
:2

logits/conv3d/random_normalAddlogits/conv3d/random_normal/mul logits/conv3d/random_normal/mean**
_output_shapes
:2*
T0
¦
logits/conv3d/BiasAddBiasAddlogits/conv3d/Conv3Dlogits/conv3d/bias_m/read*
data_formatNHWC*3
_output_shapes!
:’’’’’’’’’   2*
T0
_
logits/conv3d/Square_2Squarelogits/conv3d/bias_sigma*
T0*
_output_shapes
:2
§
logits/conv3d/BiasAdd_1BiasAddlogits/conv3d/Conv3D_1logits/conv3d/Square_2*
T0*
data_formatNHWC*3
_output_shapes!
:’’’’’’’’’   2
T
logits/conv3d/cond/SwitchSwitchConstConst*
_output_shapes
: : *
T0

e
logits/conv3d/cond/switch_tIdentitylogits/conv3d/cond/Switch:1*
_output_shapes
: *
T0

c
logits/conv3d/cond/switch_fIdentitylogits/conv3d/cond/Switch*
T0
*
_output_shapes
: 
N
logits/conv3d/cond/pred_idIdentityConst*
T0
*
_output_shapes
: 
{
logits/conv3d/cond/add/yConst^logits/conv3d/cond/switch_t*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 

logits/conv3d/cond/addAddlogits/conv3d/cond/add/Switch:1logits/conv3d/cond/add/y*
T0*3
_output_shapes!
:’’’’’’’’’   2
å
logits/conv3d/cond/add/SwitchSwitchlogits/conv3d/BiasAdd_1logits/conv3d/cond/pred_id*
T0**
_class 
loc:@logits/conv3d/BiasAdd_1*R
_output_shapes@
>:’’’’’’’’’   2:’’’’’’’’’   2
u
logits/conv3d/cond/SqrtSqrtlogits/conv3d/cond/add*
T0*3
_output_shapes!
:’’’’’’’’’   2

logits/conv3d/cond/mulMullogits/conv3d/cond/Sqrtlogits/conv3d/cond/mul/Switch:1*
T0*3
_output_shapes!
:’’’’’’’’’   2
Ū
logits/conv3d/cond/mul/SwitchSwitchlogits/conv3d/random_normallogits/conv3d/cond/pred_id*
T0*.
_class$
" loc:@logits/conv3d/random_normal*@
_output_shapes.
,:2:2

logits/conv3d/cond/add_1Add!logits/conv3d/cond/add_1/Switch:1logits/conv3d/cond/mul*
T0*3
_output_shapes!
:’’’’’’’’’   2
ć
logits/conv3d/cond/add_1/SwitchSwitchlogits/conv3d/BiasAddlogits/conv3d/cond/pred_id*(
_class
loc:@logits/conv3d/BiasAdd*R
_output_shapes@
>:’’’’’’’’’   2:’’’’’’’’’   2*
T0
ß
logits/conv3d/cond/Switch_1Switchlogits/conv3d/BiasAddlogits/conv3d/cond/pred_id*R
_output_shapes@
>:’’’’’’’’’   2:’’’’’’’’’   2*
T0*(
_class
loc:@logits/conv3d/BiasAdd
”
logits/conv3d/cond/MergeMergelogits/conv3d/cond/Switch_1logits/conv3d/cond/add_1*5
_output_shapes#
!:’’’’’’’’’   2: *
T0*
N
[
ArgMax/dimensionConst*
_output_shapes
: *
valueB :
’’’’’’’’’*
dtype0

ArgMaxArgMaxlogits/conv3d/cond/MergeArgMax/dimension*
T0*
output_type0	*/
_output_shapes
:’’’’’’’’’   *

Tidx0
j
SoftmaxSoftmaxlogits/conv3d/cond/Merge*
T0*3
_output_shapes!
:’’’’’’’’’   2

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_b3853b2e82f7449ea2b6104f3fd88ae5/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Ń
save/SaveV2/tensor_namesConst"/device:CPU:0*õ
valueėBč)Bglobal_stepBlayer_1/conv3d/bias_aBlayer_1/conv3d/bias_mBlayer_1/conv3d/gBlayer_1/conv3d/kernel_aBlayer_1/conv3d/vBlayer_2/conv3d/bias_aBlayer_2/conv3d/bias_mBlayer_2/conv3d/gBlayer_2/conv3d/kernel_aBlayer_2/conv3d/vBlayer_3/conv3d/bias_aBlayer_3/conv3d/bias_mBlayer_3/conv3d/gBlayer_3/conv3d/kernel_aBlayer_3/conv3d/vBlayer_4/conv3d/bias_aBlayer_4/conv3d/bias_mBlayer_4/conv3d/gBlayer_4/conv3d/kernel_aBlayer_4/conv3d/vBlayer_5/conv3d/bias_aBlayer_5/conv3d/bias_mBlayer_5/conv3d/gBlayer_5/conv3d/kernel_aBlayer_5/conv3d/vBlayer_6/conv3d/bias_aBlayer_6/conv3d/bias_mBlayer_6/conv3d/gBlayer_6/conv3d/kernel_aBlayer_6/conv3d/vBlayer_7/conv3d/bias_aBlayer_7/conv3d/bias_mBlayer_7/conv3d/gBlayer_7/conv3d/kernel_aBlayer_7/conv3d/vBlogits/conv3d/bias_aBlogits/conv3d/bias_mBlogits/conv3d/gBlogits/conv3d/kernel_aBlogits/conv3d/v*
dtype0*
_output_shapes
:)
Ä
save/SaveV2/shape_and_slicesConst"/device:CPU:0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:)

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_steplayer_1/conv3d/bias_alayer_1/conv3d/bias_mlayer_1/conv3d/glayer_1/conv3d/kernel_alayer_1/conv3d/vlayer_2/conv3d/bias_alayer_2/conv3d/bias_mlayer_2/conv3d/glayer_2/conv3d/kernel_alayer_2/conv3d/vlayer_3/conv3d/bias_alayer_3/conv3d/bias_mlayer_3/conv3d/glayer_3/conv3d/kernel_alayer_3/conv3d/vlayer_4/conv3d/bias_alayer_4/conv3d/bias_mlayer_4/conv3d/glayer_4/conv3d/kernel_alayer_4/conv3d/vlayer_5/conv3d/bias_alayer_5/conv3d/bias_mlayer_5/conv3d/glayer_5/conv3d/kernel_alayer_5/conv3d/vlayer_6/conv3d/bias_alayer_6/conv3d/bias_mlayer_6/conv3d/glayer_6/conv3d/kernel_alayer_6/conv3d/vlayer_7/conv3d/bias_alayer_7/conv3d/bias_mlayer_7/conv3d/glayer_7/conv3d/kernel_alayer_7/conv3d/vlogits/conv3d/bias_alogits/conv3d/bias_mlogits/conv3d/glogits/conv3d/kernel_alogits/conv3d/v"/device:CPU:0*7
dtypes-
+2)	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
¬
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
N*
_output_shapes
:*
T0

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Ō
save/RestoreV2/tensor_namesConst"/device:CPU:0*õ
valueėBč)Bglobal_stepBlayer_1/conv3d/bias_aBlayer_1/conv3d/bias_mBlayer_1/conv3d/gBlayer_1/conv3d/kernel_aBlayer_1/conv3d/vBlayer_2/conv3d/bias_aBlayer_2/conv3d/bias_mBlayer_2/conv3d/gBlayer_2/conv3d/kernel_aBlayer_2/conv3d/vBlayer_3/conv3d/bias_aBlayer_3/conv3d/bias_mBlayer_3/conv3d/gBlayer_3/conv3d/kernel_aBlayer_3/conv3d/vBlayer_4/conv3d/bias_aBlayer_4/conv3d/bias_mBlayer_4/conv3d/gBlayer_4/conv3d/kernel_aBlayer_4/conv3d/vBlayer_5/conv3d/bias_aBlayer_5/conv3d/bias_mBlayer_5/conv3d/gBlayer_5/conv3d/kernel_aBlayer_5/conv3d/vBlayer_6/conv3d/bias_aBlayer_6/conv3d/bias_mBlayer_6/conv3d/gBlayer_6/conv3d/kernel_aBlayer_6/conv3d/vBlayer_7/conv3d/bias_aBlayer_7/conv3d/bias_mBlayer_7/conv3d/gBlayer_7/conv3d/kernel_aBlayer_7/conv3d/vBlogits/conv3d/bias_aBlogits/conv3d/bias_mBlogits/conv3d/gBlogits/conv3d/kernel_aBlogits/conv3d/v*
dtype0*
_output_shapes
:)
Ē
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ź
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*7
dtypes-
+2)	*ŗ
_output_shapes§
¤:::::::::::::::::::::::::::::::::::::::::

save/AssignAssignglobal_stepsave/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step
ø
save/Assign_1Assignlayer_1/conv3d/bias_asave/RestoreV2:1*
use_locking(*
T0*(
_class
loc:@layer_1/conv3d/bias_a*
validate_shape(*
_output_shapes
:`
ø
save/Assign_2Assignlayer_1/conv3d/bias_msave/RestoreV2:2*
use_locking(*
T0*(
_class
loc:@layer_1/conv3d/bias_m*
validate_shape(*
_output_shapes
:`
¾
save/Assign_3Assignlayer_1/conv3d/gsave/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@layer_1/conv3d/g*
validate_shape(**
_output_shapes
:`
Ģ
save/Assign_4Assignlayer_1/conv3d/kernel_asave/RestoreV2:4*
use_locking(*
T0**
_class 
loc:@layer_1/conv3d/kernel_a*
validate_shape(**
_output_shapes
:`
¾
save/Assign_5Assignlayer_1/conv3d/vsave/RestoreV2:5*#
_class
loc:@layer_1/conv3d/v*
validate_shape(**
_output_shapes
:`*
use_locking(*
T0
ø
save/Assign_6Assignlayer_2/conv3d/bias_asave/RestoreV2:6*
T0*(
_class
loc:@layer_2/conv3d/bias_a*
validate_shape(*
_output_shapes
:`*
use_locking(
ø
save/Assign_7Assignlayer_2/conv3d/bias_msave/RestoreV2:7*
use_locking(*
T0*(
_class
loc:@layer_2/conv3d/bias_m*
validate_shape(*
_output_shapes
:`
¾
save/Assign_8Assignlayer_2/conv3d/gsave/RestoreV2:8*#
_class
loc:@layer_2/conv3d/g*
validate_shape(**
_output_shapes
:`*
use_locking(*
T0
Ģ
save/Assign_9Assignlayer_2/conv3d/kernel_asave/RestoreV2:9*
validate_shape(**
_output_shapes
:``*
use_locking(*
T0**
_class 
loc:@layer_2/conv3d/kernel_a
Ą
save/Assign_10Assignlayer_2/conv3d/vsave/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@layer_2/conv3d/v*
validate_shape(**
_output_shapes
:``
ŗ
save/Assign_11Assignlayer_3/conv3d/bias_asave/RestoreV2:11*
validate_shape(*
_output_shapes
:`*
use_locking(*
T0*(
_class
loc:@layer_3/conv3d/bias_a
ŗ
save/Assign_12Assignlayer_3/conv3d/bias_msave/RestoreV2:12*
validate_shape(*
_output_shapes
:`*
use_locking(*
T0*(
_class
loc:@layer_3/conv3d/bias_m
Ą
save/Assign_13Assignlayer_3/conv3d/gsave/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@layer_3/conv3d/g*
validate_shape(**
_output_shapes
:`
Ī
save/Assign_14Assignlayer_3/conv3d/kernel_asave/RestoreV2:14*
use_locking(*
T0**
_class 
loc:@layer_3/conv3d/kernel_a*
validate_shape(**
_output_shapes
:``
Ą
save/Assign_15Assignlayer_3/conv3d/vsave/RestoreV2:15*#
_class
loc:@layer_3/conv3d/v*
validate_shape(**
_output_shapes
:``*
use_locking(*
T0
ŗ
save/Assign_16Assignlayer_4/conv3d/bias_asave/RestoreV2:16*
_output_shapes
:`*
use_locking(*
T0*(
_class
loc:@layer_4/conv3d/bias_a*
validate_shape(
ŗ
save/Assign_17Assignlayer_4/conv3d/bias_msave/RestoreV2:17*
use_locking(*
T0*(
_class
loc:@layer_4/conv3d/bias_m*
validate_shape(*
_output_shapes
:`
Ą
save/Assign_18Assignlayer_4/conv3d/gsave/RestoreV2:18*
T0*#
_class
loc:@layer_4/conv3d/g*
validate_shape(**
_output_shapes
:`*
use_locking(
Ī
save/Assign_19Assignlayer_4/conv3d/kernel_asave/RestoreV2:19**
_class 
loc:@layer_4/conv3d/kernel_a*
validate_shape(**
_output_shapes
:``*
use_locking(*
T0
Ą
save/Assign_20Assignlayer_4/conv3d/vsave/RestoreV2:20*#
_class
loc:@layer_4/conv3d/v*
validate_shape(**
_output_shapes
:``*
use_locking(*
T0
ŗ
save/Assign_21Assignlayer_5/conv3d/bias_asave/RestoreV2:21*
use_locking(*
T0*(
_class
loc:@layer_5/conv3d/bias_a*
validate_shape(*
_output_shapes
:`
ŗ
save/Assign_22Assignlayer_5/conv3d/bias_msave/RestoreV2:22*
T0*(
_class
loc:@layer_5/conv3d/bias_m*
validate_shape(*
_output_shapes
:`*
use_locking(
Ą
save/Assign_23Assignlayer_5/conv3d/gsave/RestoreV2:23*
use_locking(*
T0*#
_class
loc:@layer_5/conv3d/g*
validate_shape(**
_output_shapes
:`
Ī
save/Assign_24Assignlayer_5/conv3d/kernel_asave/RestoreV2:24*
use_locking(*
T0**
_class 
loc:@layer_5/conv3d/kernel_a*
validate_shape(**
_output_shapes
:``
Ą
save/Assign_25Assignlayer_5/conv3d/vsave/RestoreV2:25*
use_locking(*
T0*#
_class
loc:@layer_5/conv3d/v*
validate_shape(**
_output_shapes
:``
ŗ
save/Assign_26Assignlayer_6/conv3d/bias_asave/RestoreV2:26*
_output_shapes
:`*
use_locking(*
T0*(
_class
loc:@layer_6/conv3d/bias_a*
validate_shape(
ŗ
save/Assign_27Assignlayer_6/conv3d/bias_msave/RestoreV2:27*
validate_shape(*
_output_shapes
:`*
use_locking(*
T0*(
_class
loc:@layer_6/conv3d/bias_m
Ą
save/Assign_28Assignlayer_6/conv3d/gsave/RestoreV2:28*
use_locking(*
T0*#
_class
loc:@layer_6/conv3d/g*
validate_shape(**
_output_shapes
:`
Ī
save/Assign_29Assignlayer_6/conv3d/kernel_asave/RestoreV2:29*
validate_shape(**
_output_shapes
:``*
use_locking(*
T0**
_class 
loc:@layer_6/conv3d/kernel_a
Ą
save/Assign_30Assignlayer_6/conv3d/vsave/RestoreV2:30*
validate_shape(**
_output_shapes
:``*
use_locking(*
T0*#
_class
loc:@layer_6/conv3d/v
ŗ
save/Assign_31Assignlayer_7/conv3d/bias_asave/RestoreV2:31*
use_locking(*
T0*(
_class
loc:@layer_7/conv3d/bias_a*
validate_shape(*
_output_shapes
:`
ŗ
save/Assign_32Assignlayer_7/conv3d/bias_msave/RestoreV2:32*
use_locking(*
T0*(
_class
loc:@layer_7/conv3d/bias_m*
validate_shape(*
_output_shapes
:`
Ą
save/Assign_33Assignlayer_7/conv3d/gsave/RestoreV2:33*
use_locking(*
T0*#
_class
loc:@layer_7/conv3d/g*
validate_shape(**
_output_shapes
:`
Ī
save/Assign_34Assignlayer_7/conv3d/kernel_asave/RestoreV2:34*
use_locking(*
T0**
_class 
loc:@layer_7/conv3d/kernel_a*
validate_shape(**
_output_shapes
:``
Ą
save/Assign_35Assignlayer_7/conv3d/vsave/RestoreV2:35*
use_locking(*
T0*#
_class
loc:@layer_7/conv3d/v*
validate_shape(**
_output_shapes
:``
ø
save/Assign_36Assignlogits/conv3d/bias_asave/RestoreV2:36*
use_locking(*
T0*'
_class
loc:@logits/conv3d/bias_a*
validate_shape(*
_output_shapes
:2
ø
save/Assign_37Assignlogits/conv3d/bias_msave/RestoreV2:37*
T0*'
_class
loc:@logits/conv3d/bias_m*
validate_shape(*
_output_shapes
:2*
use_locking(
¾
save/Assign_38Assignlogits/conv3d/gsave/RestoreV2:38**
_output_shapes
:2*
use_locking(*
T0*"
_class
loc:@logits/conv3d/g*
validate_shape(
Ģ
save/Assign_39Assignlogits/conv3d/kernel_asave/RestoreV2:39*
validate_shape(**
_output_shapes
:`2*
use_locking(*
T0*)
_class
loc:@logits/conv3d/kernel_a
¾
save/Assign_40Assignlogits/conv3d/vsave/RestoreV2:40*
use_locking(*
T0*"
_class
loc:@logits/conv3d/v*
validate_shape(**
_output_shapes
:`2
Ē
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"v
cond_contextżuśu
š
layer_1/conv3d/cond/cond_textlayer_1/conv3d/cond/pred_id:0layer_1/conv3d/cond/switch_t:0 *
layer_1/conv3d/BiasAdd:0
layer_1/conv3d/BiasAdd_1:0
layer_1/conv3d/cond/Sqrt:0
 layer_1/conv3d/cond/add/Switch:1
layer_1/conv3d/cond/add/y:0
layer_1/conv3d/cond/add:0
"layer_1/conv3d/cond/add_1/Switch:1
layer_1/conv3d/cond/add_1:0
 layer_1/conv3d/cond/mul/Switch:1
layer_1/conv3d/cond/mul:0
layer_1/conv3d/cond/pred_id:0
layer_1/conv3d/cond/switch_t:0
layer_1/conv3d/random_normal:0>
layer_1/conv3d/BiasAdd_1:0 layer_1/conv3d/cond/add/Switch:1B
layer_1/conv3d/random_normal:0 layer_1/conv3d/cond/mul/Switch:1>
layer_1/conv3d/cond/pred_id:0layer_1/conv3d/cond/pred_id:0>
layer_1/conv3d/BiasAdd:0"layer_1/conv3d/cond/add_1/Switch:1
ų
layer_1/conv3d/cond/cond_text_1layer_1/conv3d/cond/pred_id:0layer_1/conv3d/cond/switch_f:0*
layer_1/conv3d/BiasAdd:0
layer_1/conv3d/cond/Switch_1:0
layer_1/conv3d/cond/Switch_1:1
layer_1/conv3d/cond/pred_id:0
layer_1/conv3d/cond/switch_f:0:
layer_1/conv3d/BiasAdd:0layer_1/conv3d/cond/Switch_1:0>
layer_1/conv3d/cond/pred_id:0layer_1/conv3d/cond/pred_id:0
ä
cond/cond_textcond/pred_id:0cond/switch_t:0 *®
cond/dropout/Floor:0
cond/dropout/Shape/Switch:1
cond/dropout/Shape:0
cond/dropout/add:0
cond/dropout/div:0
cond/dropout/keep_prob:0
cond/dropout/mul:0
+cond/dropout/random_uniform/RandomUniform:0
!cond/dropout/random_uniform/max:0
!cond/dropout/random_uniform/min:0
!cond/dropout/random_uniform/mul:0
!cond/dropout/random_uniform/sub:0
cond/dropout/random_uniform:0

cond/mul:0
cond/pred_id:0
cond/scalar:0
cond/switch_t:0
layer_1/conv3d/cond/Merge:0 
cond/pred_id:0cond/pred_id:0:
layer_1/conv3d/cond/Merge:0cond/dropout/Shape/Switch:1
¼
cond/cond_text_1cond/pred_id:0cond/switch_f:0*
cond/Switch_1:0
cond/Switch_1:1
cond/pred_id:0
cond/switch_f:0
mul:0
mul:0cond/Switch_1:0 
cond/pred_id:0cond/pred_id:0
š
layer_2/conv3d/cond/cond_textlayer_2/conv3d/cond/pred_id:0layer_2/conv3d/cond/switch_t:0 *
layer_2/conv3d/BiasAdd:0
layer_2/conv3d/BiasAdd_1:0
layer_2/conv3d/cond/Sqrt:0
 layer_2/conv3d/cond/add/Switch:1
layer_2/conv3d/cond/add/y:0
layer_2/conv3d/cond/add:0
"layer_2/conv3d/cond/add_1/Switch:1
layer_2/conv3d/cond/add_1:0
 layer_2/conv3d/cond/mul/Switch:1
layer_2/conv3d/cond/mul:0
layer_2/conv3d/cond/pred_id:0
layer_2/conv3d/cond/switch_t:0
layer_2/conv3d/random_normal:0>
layer_2/conv3d/cond/pred_id:0layer_2/conv3d/cond/pred_id:0>
layer_2/conv3d/BiasAdd_1:0 layer_2/conv3d/cond/add/Switch:1B
layer_2/conv3d/random_normal:0 layer_2/conv3d/cond/mul/Switch:1>
layer_2/conv3d/BiasAdd:0"layer_2/conv3d/cond/add_1/Switch:1
ų
layer_2/conv3d/cond/cond_text_1layer_2/conv3d/cond/pred_id:0layer_2/conv3d/cond/switch_f:0*
layer_2/conv3d/BiasAdd:0
layer_2/conv3d/cond/Switch_1:0
layer_2/conv3d/cond/Switch_1:1
layer_2/conv3d/cond/pred_id:0
layer_2/conv3d/cond/switch_f:0>
layer_2/conv3d/cond/pred_id:0layer_2/conv3d/cond/pred_id:0:
layer_2/conv3d/BiasAdd:0layer_2/conv3d/cond/Switch_1:0

cond_1/cond_textcond_1/pred_id:0cond_1/switch_t:0 *Ö
cond_1/dropout/Floor:0
cond_1/dropout/Shape/Switch:1
cond_1/dropout/Shape:0
cond_1/dropout/add:0
cond_1/dropout/div:0
cond_1/dropout/keep_prob:0
cond_1/dropout/mul:0
-cond_1/dropout/random_uniform/RandomUniform:0
#cond_1/dropout/random_uniform/max:0
#cond_1/dropout/random_uniform/min:0
#cond_1/dropout/random_uniform/mul:0
#cond_1/dropout/random_uniform/sub:0
cond_1/dropout/random_uniform:0
cond_1/mul:0
cond_1/pred_id:0
cond_1/scalar:0
cond_1/switch_t:0
layer_2/conv3d/cond/Merge:0<
layer_2/conv3d/cond/Merge:0cond_1/dropout/Shape/Switch:1$
cond_1/pred_id:0cond_1/pred_id:0
Ō
cond_1/cond_text_1cond_1/pred_id:0cond_1/switch_f:0*
cond_1/Switch_1:0
cond_1/Switch_1:1
cond_1/pred_id:0
cond_1/switch_f:0
mul_1:0
mul_1:0cond_1/Switch_1:0$
cond_1/pred_id:0cond_1/pred_id:0
š
layer_3/conv3d/cond/cond_textlayer_3/conv3d/cond/pred_id:0layer_3/conv3d/cond/switch_t:0 *
layer_3/conv3d/BiasAdd:0
layer_3/conv3d/BiasAdd_1:0
layer_3/conv3d/cond/Sqrt:0
 layer_3/conv3d/cond/add/Switch:1
layer_3/conv3d/cond/add/y:0
layer_3/conv3d/cond/add:0
"layer_3/conv3d/cond/add_1/Switch:1
layer_3/conv3d/cond/add_1:0
 layer_3/conv3d/cond/mul/Switch:1
layer_3/conv3d/cond/mul:0
layer_3/conv3d/cond/pred_id:0
layer_3/conv3d/cond/switch_t:0
layer_3/conv3d/random_normal:0>
layer_3/conv3d/BiasAdd_1:0 layer_3/conv3d/cond/add/Switch:1B
layer_3/conv3d/random_normal:0 layer_3/conv3d/cond/mul/Switch:1>
layer_3/conv3d/cond/pred_id:0layer_3/conv3d/cond/pred_id:0>
layer_3/conv3d/BiasAdd:0"layer_3/conv3d/cond/add_1/Switch:1
ų
layer_3/conv3d/cond/cond_text_1layer_3/conv3d/cond/pred_id:0layer_3/conv3d/cond/switch_f:0*
layer_3/conv3d/BiasAdd:0
layer_3/conv3d/cond/Switch_1:0
layer_3/conv3d/cond/Switch_1:1
layer_3/conv3d/cond/pred_id:0
layer_3/conv3d/cond/switch_f:0>
layer_3/conv3d/cond/pred_id:0layer_3/conv3d/cond/pred_id:0:
layer_3/conv3d/BiasAdd:0layer_3/conv3d/cond/Switch_1:0

cond_2/cond_textcond_2/pred_id:0cond_2/switch_t:0 *Ö
cond_2/dropout/Floor:0
cond_2/dropout/Shape/Switch:1
cond_2/dropout/Shape:0
cond_2/dropout/add:0
cond_2/dropout/div:0
cond_2/dropout/keep_prob:0
cond_2/dropout/mul:0
-cond_2/dropout/random_uniform/RandomUniform:0
#cond_2/dropout/random_uniform/max:0
#cond_2/dropout/random_uniform/min:0
#cond_2/dropout/random_uniform/mul:0
#cond_2/dropout/random_uniform/sub:0
cond_2/dropout/random_uniform:0
cond_2/mul:0
cond_2/pred_id:0
cond_2/scalar:0
cond_2/switch_t:0
layer_3/conv3d/cond/Merge:0$
cond_2/pred_id:0cond_2/pred_id:0<
layer_3/conv3d/cond/Merge:0cond_2/dropout/Shape/Switch:1
Ō
cond_2/cond_text_1cond_2/pred_id:0cond_2/switch_f:0*
cond_2/Switch_1:0
cond_2/Switch_1:1
cond_2/pred_id:0
cond_2/switch_f:0
mul_2:0$
cond_2/pred_id:0cond_2/pred_id:0
mul_2:0cond_2/Switch_1:0
š
layer_4/conv3d/cond/cond_textlayer_4/conv3d/cond/pred_id:0layer_4/conv3d/cond/switch_t:0 *
layer_4/conv3d/BiasAdd:0
layer_4/conv3d/BiasAdd_1:0
layer_4/conv3d/cond/Sqrt:0
 layer_4/conv3d/cond/add/Switch:1
layer_4/conv3d/cond/add/y:0
layer_4/conv3d/cond/add:0
"layer_4/conv3d/cond/add_1/Switch:1
layer_4/conv3d/cond/add_1:0
 layer_4/conv3d/cond/mul/Switch:1
layer_4/conv3d/cond/mul:0
layer_4/conv3d/cond/pred_id:0
layer_4/conv3d/cond/switch_t:0
layer_4/conv3d/random_normal:0>
layer_4/conv3d/BiasAdd_1:0 layer_4/conv3d/cond/add/Switch:1B
layer_4/conv3d/random_normal:0 layer_4/conv3d/cond/mul/Switch:1>
layer_4/conv3d/BiasAdd:0"layer_4/conv3d/cond/add_1/Switch:1>
layer_4/conv3d/cond/pred_id:0layer_4/conv3d/cond/pred_id:0
ų
layer_4/conv3d/cond/cond_text_1layer_4/conv3d/cond/pred_id:0layer_4/conv3d/cond/switch_f:0*
layer_4/conv3d/BiasAdd:0
layer_4/conv3d/cond/Switch_1:0
layer_4/conv3d/cond/Switch_1:1
layer_4/conv3d/cond/pred_id:0
layer_4/conv3d/cond/switch_f:0:
layer_4/conv3d/BiasAdd:0layer_4/conv3d/cond/Switch_1:0>
layer_4/conv3d/cond/pred_id:0layer_4/conv3d/cond/pred_id:0

cond_3/cond_textcond_3/pred_id:0cond_3/switch_t:0 *Ö
cond_3/dropout/Floor:0
cond_3/dropout/Shape/Switch:1
cond_3/dropout/Shape:0
cond_3/dropout/add:0
cond_3/dropout/div:0
cond_3/dropout/keep_prob:0
cond_3/dropout/mul:0
-cond_3/dropout/random_uniform/RandomUniform:0
#cond_3/dropout/random_uniform/max:0
#cond_3/dropout/random_uniform/min:0
#cond_3/dropout/random_uniform/mul:0
#cond_3/dropout/random_uniform/sub:0
cond_3/dropout/random_uniform:0
cond_3/mul:0
cond_3/pred_id:0
cond_3/scalar:0
cond_3/switch_t:0
layer_4/conv3d/cond/Merge:0$
cond_3/pred_id:0cond_3/pred_id:0<
layer_4/conv3d/cond/Merge:0cond_3/dropout/Shape/Switch:1
Ō
cond_3/cond_text_1cond_3/pred_id:0cond_3/switch_f:0*
cond_3/Switch_1:0
cond_3/Switch_1:1
cond_3/pred_id:0
cond_3/switch_f:0
mul_3:0
mul_3:0cond_3/Switch_1:0$
cond_3/pred_id:0cond_3/pred_id:0
š
layer_5/conv3d/cond/cond_textlayer_5/conv3d/cond/pred_id:0layer_5/conv3d/cond/switch_t:0 *
layer_5/conv3d/BiasAdd:0
layer_5/conv3d/BiasAdd_1:0
layer_5/conv3d/cond/Sqrt:0
 layer_5/conv3d/cond/add/Switch:1
layer_5/conv3d/cond/add/y:0
layer_5/conv3d/cond/add:0
"layer_5/conv3d/cond/add_1/Switch:1
layer_5/conv3d/cond/add_1:0
 layer_5/conv3d/cond/mul/Switch:1
layer_5/conv3d/cond/mul:0
layer_5/conv3d/cond/pred_id:0
layer_5/conv3d/cond/switch_t:0
layer_5/conv3d/random_normal:0>
layer_5/conv3d/BiasAdd:0"layer_5/conv3d/cond/add_1/Switch:1>
layer_5/conv3d/BiasAdd_1:0 layer_5/conv3d/cond/add/Switch:1B
layer_5/conv3d/random_normal:0 layer_5/conv3d/cond/mul/Switch:1>
layer_5/conv3d/cond/pred_id:0layer_5/conv3d/cond/pred_id:0
ų
layer_5/conv3d/cond/cond_text_1layer_5/conv3d/cond/pred_id:0layer_5/conv3d/cond/switch_f:0*
layer_5/conv3d/BiasAdd:0
layer_5/conv3d/cond/Switch_1:0
layer_5/conv3d/cond/Switch_1:1
layer_5/conv3d/cond/pred_id:0
layer_5/conv3d/cond/switch_f:0:
layer_5/conv3d/BiasAdd:0layer_5/conv3d/cond/Switch_1:0>
layer_5/conv3d/cond/pred_id:0layer_5/conv3d/cond/pred_id:0

cond_4/cond_textcond_4/pred_id:0cond_4/switch_t:0 *Ö
cond_4/dropout/Floor:0
cond_4/dropout/Shape/Switch:1
cond_4/dropout/Shape:0
cond_4/dropout/add:0
cond_4/dropout/div:0
cond_4/dropout/keep_prob:0
cond_4/dropout/mul:0
-cond_4/dropout/random_uniform/RandomUniform:0
#cond_4/dropout/random_uniform/max:0
#cond_4/dropout/random_uniform/min:0
#cond_4/dropout/random_uniform/mul:0
#cond_4/dropout/random_uniform/sub:0
cond_4/dropout/random_uniform:0
cond_4/mul:0
cond_4/pred_id:0
cond_4/scalar:0
cond_4/switch_t:0
layer_5/conv3d/cond/Merge:0<
layer_5/conv3d/cond/Merge:0cond_4/dropout/Shape/Switch:1$
cond_4/pred_id:0cond_4/pred_id:0
Ō
cond_4/cond_text_1cond_4/pred_id:0cond_4/switch_f:0*
cond_4/Switch_1:0
cond_4/Switch_1:1
cond_4/pred_id:0
cond_4/switch_f:0
mul_4:0
mul_4:0cond_4/Switch_1:0$
cond_4/pred_id:0cond_4/pred_id:0
š
layer_6/conv3d/cond/cond_textlayer_6/conv3d/cond/pred_id:0layer_6/conv3d/cond/switch_t:0 *
layer_6/conv3d/BiasAdd:0
layer_6/conv3d/BiasAdd_1:0
layer_6/conv3d/cond/Sqrt:0
 layer_6/conv3d/cond/add/Switch:1
layer_6/conv3d/cond/add/y:0
layer_6/conv3d/cond/add:0
"layer_6/conv3d/cond/add_1/Switch:1
layer_6/conv3d/cond/add_1:0
 layer_6/conv3d/cond/mul/Switch:1
layer_6/conv3d/cond/mul:0
layer_6/conv3d/cond/pred_id:0
layer_6/conv3d/cond/switch_t:0
layer_6/conv3d/random_normal:0>
layer_6/conv3d/cond/pred_id:0layer_6/conv3d/cond/pred_id:0>
layer_6/conv3d/BiasAdd_1:0 layer_6/conv3d/cond/add/Switch:1B
layer_6/conv3d/random_normal:0 layer_6/conv3d/cond/mul/Switch:1>
layer_6/conv3d/BiasAdd:0"layer_6/conv3d/cond/add_1/Switch:1
ų
layer_6/conv3d/cond/cond_text_1layer_6/conv3d/cond/pred_id:0layer_6/conv3d/cond/switch_f:0*
layer_6/conv3d/BiasAdd:0
layer_6/conv3d/cond/Switch_1:0
layer_6/conv3d/cond/Switch_1:1
layer_6/conv3d/cond/pred_id:0
layer_6/conv3d/cond/switch_f:0:
layer_6/conv3d/BiasAdd:0layer_6/conv3d/cond/Switch_1:0>
layer_6/conv3d/cond/pred_id:0layer_6/conv3d/cond/pred_id:0

cond_5/cond_textcond_5/pred_id:0cond_5/switch_t:0 *Ö
cond_5/dropout/Floor:0
cond_5/dropout/Shape/Switch:1
cond_5/dropout/Shape:0
cond_5/dropout/add:0
cond_5/dropout/div:0
cond_5/dropout/keep_prob:0
cond_5/dropout/mul:0
-cond_5/dropout/random_uniform/RandomUniform:0
#cond_5/dropout/random_uniform/max:0
#cond_5/dropout/random_uniform/min:0
#cond_5/dropout/random_uniform/mul:0
#cond_5/dropout/random_uniform/sub:0
cond_5/dropout/random_uniform:0
cond_5/mul:0
cond_5/pred_id:0
cond_5/scalar:0
cond_5/switch_t:0
layer_6/conv3d/cond/Merge:0<
layer_6/conv3d/cond/Merge:0cond_5/dropout/Shape/Switch:1$
cond_5/pred_id:0cond_5/pred_id:0
Ō
cond_5/cond_text_1cond_5/pred_id:0cond_5/switch_f:0*
cond_5/Switch_1:0
cond_5/Switch_1:1
cond_5/pred_id:0
cond_5/switch_f:0
mul_5:0
mul_5:0cond_5/Switch_1:0$
cond_5/pred_id:0cond_5/pred_id:0
š
layer_7/conv3d/cond/cond_textlayer_7/conv3d/cond/pred_id:0layer_7/conv3d/cond/switch_t:0 *
layer_7/conv3d/BiasAdd:0
layer_7/conv3d/BiasAdd_1:0
layer_7/conv3d/cond/Sqrt:0
 layer_7/conv3d/cond/add/Switch:1
layer_7/conv3d/cond/add/y:0
layer_7/conv3d/cond/add:0
"layer_7/conv3d/cond/add_1/Switch:1
layer_7/conv3d/cond/add_1:0
 layer_7/conv3d/cond/mul/Switch:1
layer_7/conv3d/cond/mul:0
layer_7/conv3d/cond/pred_id:0
layer_7/conv3d/cond/switch_t:0
layer_7/conv3d/random_normal:0B
layer_7/conv3d/random_normal:0 layer_7/conv3d/cond/mul/Switch:1>
layer_7/conv3d/cond/pred_id:0layer_7/conv3d/cond/pred_id:0>
layer_7/conv3d/BiasAdd:0"layer_7/conv3d/cond/add_1/Switch:1>
layer_7/conv3d/BiasAdd_1:0 layer_7/conv3d/cond/add/Switch:1
ų
layer_7/conv3d/cond/cond_text_1layer_7/conv3d/cond/pred_id:0layer_7/conv3d/cond/switch_f:0*
layer_7/conv3d/BiasAdd:0
layer_7/conv3d/cond/Switch_1:0
layer_7/conv3d/cond/Switch_1:1
layer_7/conv3d/cond/pred_id:0
layer_7/conv3d/cond/switch_f:0>
layer_7/conv3d/cond/pred_id:0layer_7/conv3d/cond/pred_id:0:
layer_7/conv3d/BiasAdd:0layer_7/conv3d/cond/Switch_1:0

cond_6/cond_textcond_6/pred_id:0cond_6/switch_t:0 *Ö
cond_6/dropout/Floor:0
cond_6/dropout/Shape/Switch:1
cond_6/dropout/Shape:0
cond_6/dropout/add:0
cond_6/dropout/div:0
cond_6/dropout/keep_prob:0
cond_6/dropout/mul:0
-cond_6/dropout/random_uniform/RandomUniform:0
#cond_6/dropout/random_uniform/max:0
#cond_6/dropout/random_uniform/min:0
#cond_6/dropout/random_uniform/mul:0
#cond_6/dropout/random_uniform/sub:0
cond_6/dropout/random_uniform:0
cond_6/mul:0
cond_6/pred_id:0
cond_6/scalar:0
cond_6/switch_t:0
layer_7/conv3d/cond/Merge:0<
layer_7/conv3d/cond/Merge:0cond_6/dropout/Shape/Switch:1$
cond_6/pred_id:0cond_6/pred_id:0
Ō
cond_6/cond_text_1cond_6/pred_id:0cond_6/switch_f:0*
cond_6/Switch_1:0
cond_6/Switch_1:1
cond_6/pred_id:0
cond_6/switch_f:0
mul_6:0
mul_6:0cond_6/Switch_1:0$
cond_6/pred_id:0cond_6/pred_id:0
Ų
logits/conv3d/cond/cond_textlogits/conv3d/cond/pred_id:0logits/conv3d/cond/switch_t:0 *ų
logits/conv3d/BiasAdd:0
logits/conv3d/BiasAdd_1:0
logits/conv3d/cond/Sqrt:0
logits/conv3d/cond/add/Switch:1
logits/conv3d/cond/add/y:0
logits/conv3d/cond/add:0
!logits/conv3d/cond/add_1/Switch:1
logits/conv3d/cond/add_1:0
logits/conv3d/cond/mul/Switch:1
logits/conv3d/cond/mul:0
logits/conv3d/cond/pred_id:0
logits/conv3d/cond/switch_t:0
logits/conv3d/random_normal:0<
logits/conv3d/cond/pred_id:0logits/conv3d/cond/pred_id:0<
logits/conv3d/BiasAdd_1:0logits/conv3d/cond/add/Switch:1@
logits/conv3d/random_normal:0logits/conv3d/cond/mul/Switch:1<
logits/conv3d/BiasAdd:0!logits/conv3d/cond/add_1/Switch:1
ģ
logits/conv3d/cond/cond_text_1logits/conv3d/cond/pred_id:0logits/conv3d/cond/switch_f:0*
logits/conv3d/BiasAdd:0
logits/conv3d/cond/Switch_1:0
logits/conv3d/cond/Switch_1:1
logits/conv3d/cond/pred_id:0
logits/conv3d/cond/switch_f:0<
logits/conv3d/cond/pred_id:0logits/conv3d/cond/pred_id:08
logits/conv3d/BiasAdd:0logits/conv3d/cond/Switch_1:0"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"%
saved_model_main_op


group_deps"ģ
sigmasį
Ž
layer_1/conv3d/kernel_sigma:0
layer_1/conv3d/bias_sigma:0
layer_2/conv3d/kernel_sigma:0
layer_2/conv3d/bias_sigma:0
layer_3/conv3d/kernel_sigma:0
layer_3/conv3d/bias_sigma:0
layer_4/conv3d/kernel_sigma:0
layer_4/conv3d/bias_sigma:0
layer_5/conv3d/kernel_sigma:0
layer_5/conv3d/bias_sigma:0
layer_6/conv3d/kernel_sigma:0
layer_6/conv3d/bias_sigma:0
layer_7/conv3d/kernel_sigma:0
layer_7/conv3d/bias_sigma:0
logits/conv3d/kernel_sigma:0
logits/conv3d/bias_sigma:0"(
trainable_variablesķ'ź'
w
layer_1/conv3d/v:0layer_1/conv3d/v/Assignlayer_1/conv3d/v/read:02-layer_1/conv3d/v/Initializer/random_uniform:08
n
layer_1/conv3d/g:0layer_1/conv3d/g/Assignlayer_1/conv3d/g/read:02$layer_1/conv3d/g/Initializer/Const:08

layer_1/conv3d/kernel_a:0layer_1/conv3d/kernel_a/Assignlayer_1/conv3d/kernel_a/read:02+layer_1/conv3d/kernel_a/Initializer/Const:08

layer_1/conv3d/bias_m:0layer_1/conv3d/bias_m/Assignlayer_1/conv3d/bias_m/read:02)layer_1/conv3d/bias_m/Initializer/zeros:08

layer_1/conv3d/bias_a:0layer_1/conv3d/bias_a/Assignlayer_1/conv3d/bias_a/read:02)layer_1/conv3d/bias_a/Initializer/Const:08
w
layer_2/conv3d/v:0layer_2/conv3d/v/Assignlayer_2/conv3d/v/read:02-layer_2/conv3d/v/Initializer/random_uniform:08
n
layer_2/conv3d/g:0layer_2/conv3d/g/Assignlayer_2/conv3d/g/read:02$layer_2/conv3d/g/Initializer/Const:08

layer_2/conv3d/kernel_a:0layer_2/conv3d/kernel_a/Assignlayer_2/conv3d/kernel_a/read:02+layer_2/conv3d/kernel_a/Initializer/Const:08

layer_2/conv3d/bias_m:0layer_2/conv3d/bias_m/Assignlayer_2/conv3d/bias_m/read:02)layer_2/conv3d/bias_m/Initializer/zeros:08

layer_2/conv3d/bias_a:0layer_2/conv3d/bias_a/Assignlayer_2/conv3d/bias_a/read:02)layer_2/conv3d/bias_a/Initializer/Const:08
w
layer_3/conv3d/v:0layer_3/conv3d/v/Assignlayer_3/conv3d/v/read:02-layer_3/conv3d/v/Initializer/random_uniform:08
n
layer_3/conv3d/g:0layer_3/conv3d/g/Assignlayer_3/conv3d/g/read:02$layer_3/conv3d/g/Initializer/Const:08

layer_3/conv3d/kernel_a:0layer_3/conv3d/kernel_a/Assignlayer_3/conv3d/kernel_a/read:02+layer_3/conv3d/kernel_a/Initializer/Const:08

layer_3/conv3d/bias_m:0layer_3/conv3d/bias_m/Assignlayer_3/conv3d/bias_m/read:02)layer_3/conv3d/bias_m/Initializer/zeros:08

layer_3/conv3d/bias_a:0layer_3/conv3d/bias_a/Assignlayer_3/conv3d/bias_a/read:02)layer_3/conv3d/bias_a/Initializer/Const:08
w
layer_4/conv3d/v:0layer_4/conv3d/v/Assignlayer_4/conv3d/v/read:02-layer_4/conv3d/v/Initializer/random_uniform:08
n
layer_4/conv3d/g:0layer_4/conv3d/g/Assignlayer_4/conv3d/g/read:02$layer_4/conv3d/g/Initializer/Const:08

layer_4/conv3d/kernel_a:0layer_4/conv3d/kernel_a/Assignlayer_4/conv3d/kernel_a/read:02+layer_4/conv3d/kernel_a/Initializer/Const:08

layer_4/conv3d/bias_m:0layer_4/conv3d/bias_m/Assignlayer_4/conv3d/bias_m/read:02)layer_4/conv3d/bias_m/Initializer/zeros:08

layer_4/conv3d/bias_a:0layer_4/conv3d/bias_a/Assignlayer_4/conv3d/bias_a/read:02)layer_4/conv3d/bias_a/Initializer/Const:08
w
layer_5/conv3d/v:0layer_5/conv3d/v/Assignlayer_5/conv3d/v/read:02-layer_5/conv3d/v/Initializer/random_uniform:08
n
layer_5/conv3d/g:0layer_5/conv3d/g/Assignlayer_5/conv3d/g/read:02$layer_5/conv3d/g/Initializer/Const:08

layer_5/conv3d/kernel_a:0layer_5/conv3d/kernel_a/Assignlayer_5/conv3d/kernel_a/read:02+layer_5/conv3d/kernel_a/Initializer/Const:08

layer_5/conv3d/bias_m:0layer_5/conv3d/bias_m/Assignlayer_5/conv3d/bias_m/read:02)layer_5/conv3d/bias_m/Initializer/zeros:08

layer_5/conv3d/bias_a:0layer_5/conv3d/bias_a/Assignlayer_5/conv3d/bias_a/read:02)layer_5/conv3d/bias_a/Initializer/Const:08
w
layer_6/conv3d/v:0layer_6/conv3d/v/Assignlayer_6/conv3d/v/read:02-layer_6/conv3d/v/Initializer/random_uniform:08
n
layer_6/conv3d/g:0layer_6/conv3d/g/Assignlayer_6/conv3d/g/read:02$layer_6/conv3d/g/Initializer/Const:08

layer_6/conv3d/kernel_a:0layer_6/conv3d/kernel_a/Assignlayer_6/conv3d/kernel_a/read:02+layer_6/conv3d/kernel_a/Initializer/Const:08

layer_6/conv3d/bias_m:0layer_6/conv3d/bias_m/Assignlayer_6/conv3d/bias_m/read:02)layer_6/conv3d/bias_m/Initializer/zeros:08

layer_6/conv3d/bias_a:0layer_6/conv3d/bias_a/Assignlayer_6/conv3d/bias_a/read:02)layer_6/conv3d/bias_a/Initializer/Const:08
w
layer_7/conv3d/v:0layer_7/conv3d/v/Assignlayer_7/conv3d/v/read:02-layer_7/conv3d/v/Initializer/random_uniform:08
n
layer_7/conv3d/g:0layer_7/conv3d/g/Assignlayer_7/conv3d/g/read:02$layer_7/conv3d/g/Initializer/Const:08

layer_7/conv3d/kernel_a:0layer_7/conv3d/kernel_a/Assignlayer_7/conv3d/kernel_a/read:02+layer_7/conv3d/kernel_a/Initializer/Const:08

layer_7/conv3d/bias_m:0layer_7/conv3d/bias_m/Assignlayer_7/conv3d/bias_m/read:02)layer_7/conv3d/bias_m/Initializer/zeros:08

layer_7/conv3d/bias_a:0layer_7/conv3d/bias_a/Assignlayer_7/conv3d/bias_a/read:02)layer_7/conv3d/bias_a/Initializer/Const:08
s
logits/conv3d/v:0logits/conv3d/v/Assignlogits/conv3d/v/read:02,logits/conv3d/v/Initializer/random_uniform:08
j
logits/conv3d/g:0logits/conv3d/g/Assignlogits/conv3d/g/read:02#logits/conv3d/g/Initializer/Const:08

logits/conv3d/kernel_a:0logits/conv3d/kernel_a/Assignlogits/conv3d/kernel_a/read:02*logits/conv3d/kernel_a/Initializer/Const:08
~
logits/conv3d/bias_m:0logits/conv3d/bias_m/Assignlogits/conv3d/bias_m/read:02(logits/conv3d/bias_m/Initializer/zeros:08
~
logits/conv3d/bias_a:0logits/conv3d/bias_a/Assignlogits/conv3d/bias_a/read:02(logits/conv3d/bias_a/Initializer/Const:08"­
	summaries

#layer_1/conv3d/layer_1/conv3d/v_0:0
#layer_1/conv3d/layer_1/conv3d/g_0:0
*layer_1/conv3d/layer_1/conv3d/kernel_m_0:0
*layer_1/conv3d/layer_1/conv3d/kernel_a_0:0
.layer_1/conv3d/layer_1/conv3d/kernel_sigma_0:0
0layer_1/conv3d/layer_1/conv3d/kernel_sigma_0_1:0
(layer_1/conv3d/layer_1/conv3d/bias_m_0:0
(layer_1/conv3d/layer_1/conv3d/bias_a_0:0
,layer_1/conv3d/layer_1/conv3d/bias_sigma_0:0
.layer_1/conv3d/layer_1/conv3d/bias_sigma_0_1:0
#layer_2/conv3d/layer_2/conv3d/v_0:0
#layer_2/conv3d/layer_2/conv3d/g_0:0
*layer_2/conv3d/layer_2/conv3d/kernel_m_0:0
*layer_2/conv3d/layer_2/conv3d/kernel_a_0:0
.layer_2/conv3d/layer_2/conv3d/kernel_sigma_0:0
0layer_2/conv3d/layer_2/conv3d/kernel_sigma_0_1:0
(layer_2/conv3d/layer_2/conv3d/bias_m_0:0
(layer_2/conv3d/layer_2/conv3d/bias_a_0:0
,layer_2/conv3d/layer_2/conv3d/bias_sigma_0:0
.layer_2/conv3d/layer_2/conv3d/bias_sigma_0_1:0
#layer_3/conv3d/layer_3/conv3d/v_0:0
#layer_3/conv3d/layer_3/conv3d/g_0:0
*layer_3/conv3d/layer_3/conv3d/kernel_m_0:0
*layer_3/conv3d/layer_3/conv3d/kernel_a_0:0
.layer_3/conv3d/layer_3/conv3d/kernel_sigma_0:0
0layer_3/conv3d/layer_3/conv3d/kernel_sigma_0_1:0
(layer_3/conv3d/layer_3/conv3d/bias_m_0:0
(layer_3/conv3d/layer_3/conv3d/bias_a_0:0
,layer_3/conv3d/layer_3/conv3d/bias_sigma_0:0
.layer_3/conv3d/layer_3/conv3d/bias_sigma_0_1:0
#layer_4/conv3d/layer_4/conv3d/v_0:0
#layer_4/conv3d/layer_4/conv3d/g_0:0
*layer_4/conv3d/layer_4/conv3d/kernel_m_0:0
*layer_4/conv3d/layer_4/conv3d/kernel_a_0:0
.layer_4/conv3d/layer_4/conv3d/kernel_sigma_0:0
0layer_4/conv3d/layer_4/conv3d/kernel_sigma_0_1:0
(layer_4/conv3d/layer_4/conv3d/bias_m_0:0
(layer_4/conv3d/layer_4/conv3d/bias_a_0:0
,layer_4/conv3d/layer_4/conv3d/bias_sigma_0:0
.layer_4/conv3d/layer_4/conv3d/bias_sigma_0_1:0
#layer_5/conv3d/layer_5/conv3d/v_0:0
#layer_5/conv3d/layer_5/conv3d/g_0:0
*layer_5/conv3d/layer_5/conv3d/kernel_m_0:0
*layer_5/conv3d/layer_5/conv3d/kernel_a_0:0
.layer_5/conv3d/layer_5/conv3d/kernel_sigma_0:0
0layer_5/conv3d/layer_5/conv3d/kernel_sigma_0_1:0
(layer_5/conv3d/layer_5/conv3d/bias_m_0:0
(layer_5/conv3d/layer_5/conv3d/bias_a_0:0
,layer_5/conv3d/layer_5/conv3d/bias_sigma_0:0
.layer_5/conv3d/layer_5/conv3d/bias_sigma_0_1:0
#layer_6/conv3d/layer_6/conv3d/v_0:0
#layer_6/conv3d/layer_6/conv3d/g_0:0
*layer_6/conv3d/layer_6/conv3d/kernel_m_0:0
*layer_6/conv3d/layer_6/conv3d/kernel_a_0:0
.layer_6/conv3d/layer_6/conv3d/kernel_sigma_0:0
0layer_6/conv3d/layer_6/conv3d/kernel_sigma_0_1:0
(layer_6/conv3d/layer_6/conv3d/bias_m_0:0
(layer_6/conv3d/layer_6/conv3d/bias_a_0:0
,layer_6/conv3d/layer_6/conv3d/bias_sigma_0:0
.layer_6/conv3d/layer_6/conv3d/bias_sigma_0_1:0
#layer_7/conv3d/layer_7/conv3d/v_0:0
#layer_7/conv3d/layer_7/conv3d/g_0:0
*layer_7/conv3d/layer_7/conv3d/kernel_m_0:0
*layer_7/conv3d/layer_7/conv3d/kernel_a_0:0
.layer_7/conv3d/layer_7/conv3d/kernel_sigma_0:0
0layer_7/conv3d/layer_7/conv3d/kernel_sigma_0_1:0
(layer_7/conv3d/layer_7/conv3d/bias_m_0:0
(layer_7/conv3d/layer_7/conv3d/bias_a_0:0
,layer_7/conv3d/layer_7/conv3d/bias_sigma_0:0
.layer_7/conv3d/layer_7/conv3d/bias_sigma_0_1:0
!logits/conv3d/logits/conv3d/v_0:0
!logits/conv3d/logits/conv3d/g_0:0
(logits/conv3d/logits/conv3d/kernel_m_0:0
(logits/conv3d/logits/conv3d/kernel_a_0:0
,logits/conv3d/logits/conv3d/kernel_sigma_0:0
.logits/conv3d/logits/conv3d/kernel_sigma_0_1:0
&logits/conv3d/logits/conv3d/bias_m_0:0
&logits/conv3d/logits/conv3d/bias_a_0:0
*logits/conv3d/logits/conv3d/bias_sigma_0:0
,logits/conv3d/logits/conv3d/bias_sigma_0_1:0"Ø
ms”

layer_1/conv3d/kernel_m:0
layer_1/conv3d/bias_m:0
layer_2/conv3d/kernel_m:0
layer_2/conv3d/bias_m:0
layer_3/conv3d/kernel_m:0
layer_3/conv3d/bias_m:0
layer_4/conv3d/kernel_m:0
layer_4/conv3d/bias_m:0
layer_5/conv3d/kernel_m:0
layer_5/conv3d/bias_m:0
layer_6/conv3d/kernel_m:0
layer_6/conv3d/bias_m:0
layer_7/conv3d/kernel_m:0
layer_7/conv3d/bias_m:0
logits/conv3d/kernel_m:0
logits/conv3d/bias_m:0"Õ(
	variablesĒ(Ä(
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
w
layer_1/conv3d/v:0layer_1/conv3d/v/Assignlayer_1/conv3d/v/read:02-layer_1/conv3d/v/Initializer/random_uniform:08
n
layer_1/conv3d/g:0layer_1/conv3d/g/Assignlayer_1/conv3d/g/read:02$layer_1/conv3d/g/Initializer/Const:08

layer_1/conv3d/kernel_a:0layer_1/conv3d/kernel_a/Assignlayer_1/conv3d/kernel_a/read:02+layer_1/conv3d/kernel_a/Initializer/Const:08

layer_1/conv3d/bias_m:0layer_1/conv3d/bias_m/Assignlayer_1/conv3d/bias_m/read:02)layer_1/conv3d/bias_m/Initializer/zeros:08

layer_1/conv3d/bias_a:0layer_1/conv3d/bias_a/Assignlayer_1/conv3d/bias_a/read:02)layer_1/conv3d/bias_a/Initializer/Const:08
w
layer_2/conv3d/v:0layer_2/conv3d/v/Assignlayer_2/conv3d/v/read:02-layer_2/conv3d/v/Initializer/random_uniform:08
n
layer_2/conv3d/g:0layer_2/conv3d/g/Assignlayer_2/conv3d/g/read:02$layer_2/conv3d/g/Initializer/Const:08

layer_2/conv3d/kernel_a:0layer_2/conv3d/kernel_a/Assignlayer_2/conv3d/kernel_a/read:02+layer_2/conv3d/kernel_a/Initializer/Const:08

layer_2/conv3d/bias_m:0layer_2/conv3d/bias_m/Assignlayer_2/conv3d/bias_m/read:02)layer_2/conv3d/bias_m/Initializer/zeros:08

layer_2/conv3d/bias_a:0layer_2/conv3d/bias_a/Assignlayer_2/conv3d/bias_a/read:02)layer_2/conv3d/bias_a/Initializer/Const:08
w
layer_3/conv3d/v:0layer_3/conv3d/v/Assignlayer_3/conv3d/v/read:02-layer_3/conv3d/v/Initializer/random_uniform:08
n
layer_3/conv3d/g:0layer_3/conv3d/g/Assignlayer_3/conv3d/g/read:02$layer_3/conv3d/g/Initializer/Const:08

layer_3/conv3d/kernel_a:0layer_3/conv3d/kernel_a/Assignlayer_3/conv3d/kernel_a/read:02+layer_3/conv3d/kernel_a/Initializer/Const:08

layer_3/conv3d/bias_m:0layer_3/conv3d/bias_m/Assignlayer_3/conv3d/bias_m/read:02)layer_3/conv3d/bias_m/Initializer/zeros:08

layer_3/conv3d/bias_a:0layer_3/conv3d/bias_a/Assignlayer_3/conv3d/bias_a/read:02)layer_3/conv3d/bias_a/Initializer/Const:08
w
layer_4/conv3d/v:0layer_4/conv3d/v/Assignlayer_4/conv3d/v/read:02-layer_4/conv3d/v/Initializer/random_uniform:08
n
layer_4/conv3d/g:0layer_4/conv3d/g/Assignlayer_4/conv3d/g/read:02$layer_4/conv3d/g/Initializer/Const:08

layer_4/conv3d/kernel_a:0layer_4/conv3d/kernel_a/Assignlayer_4/conv3d/kernel_a/read:02+layer_4/conv3d/kernel_a/Initializer/Const:08

layer_4/conv3d/bias_m:0layer_4/conv3d/bias_m/Assignlayer_4/conv3d/bias_m/read:02)layer_4/conv3d/bias_m/Initializer/zeros:08

layer_4/conv3d/bias_a:0layer_4/conv3d/bias_a/Assignlayer_4/conv3d/bias_a/read:02)layer_4/conv3d/bias_a/Initializer/Const:08
w
layer_5/conv3d/v:0layer_5/conv3d/v/Assignlayer_5/conv3d/v/read:02-layer_5/conv3d/v/Initializer/random_uniform:08
n
layer_5/conv3d/g:0layer_5/conv3d/g/Assignlayer_5/conv3d/g/read:02$layer_5/conv3d/g/Initializer/Const:08

layer_5/conv3d/kernel_a:0layer_5/conv3d/kernel_a/Assignlayer_5/conv3d/kernel_a/read:02+layer_5/conv3d/kernel_a/Initializer/Const:08

layer_5/conv3d/bias_m:0layer_5/conv3d/bias_m/Assignlayer_5/conv3d/bias_m/read:02)layer_5/conv3d/bias_m/Initializer/zeros:08

layer_5/conv3d/bias_a:0layer_5/conv3d/bias_a/Assignlayer_5/conv3d/bias_a/read:02)layer_5/conv3d/bias_a/Initializer/Const:08
w
layer_6/conv3d/v:0layer_6/conv3d/v/Assignlayer_6/conv3d/v/read:02-layer_6/conv3d/v/Initializer/random_uniform:08
n
layer_6/conv3d/g:0layer_6/conv3d/g/Assignlayer_6/conv3d/g/read:02$layer_6/conv3d/g/Initializer/Const:08

layer_6/conv3d/kernel_a:0layer_6/conv3d/kernel_a/Assignlayer_6/conv3d/kernel_a/read:02+layer_6/conv3d/kernel_a/Initializer/Const:08

layer_6/conv3d/bias_m:0layer_6/conv3d/bias_m/Assignlayer_6/conv3d/bias_m/read:02)layer_6/conv3d/bias_m/Initializer/zeros:08

layer_6/conv3d/bias_a:0layer_6/conv3d/bias_a/Assignlayer_6/conv3d/bias_a/read:02)layer_6/conv3d/bias_a/Initializer/Const:08
w
layer_7/conv3d/v:0layer_7/conv3d/v/Assignlayer_7/conv3d/v/read:02-layer_7/conv3d/v/Initializer/random_uniform:08
n
layer_7/conv3d/g:0layer_7/conv3d/g/Assignlayer_7/conv3d/g/read:02$layer_7/conv3d/g/Initializer/Const:08

layer_7/conv3d/kernel_a:0layer_7/conv3d/kernel_a/Assignlayer_7/conv3d/kernel_a/read:02+layer_7/conv3d/kernel_a/Initializer/Const:08

layer_7/conv3d/bias_m:0layer_7/conv3d/bias_m/Assignlayer_7/conv3d/bias_m/read:02)layer_7/conv3d/bias_m/Initializer/zeros:08

layer_7/conv3d/bias_a:0layer_7/conv3d/bias_a/Assignlayer_7/conv3d/bias_a/read:02)layer_7/conv3d/bias_a/Initializer/Const:08
s
logits/conv3d/v:0logits/conv3d/v/Assignlogits/conv3d/v/read:02,logits/conv3d/v/Initializer/random_uniform:08
j
logits/conv3d/g:0logits/conv3d/g/Assignlogits/conv3d/g/read:02#logits/conv3d/g/Initializer/Const:08

logits/conv3d/kernel_a:0logits/conv3d/kernel_a/Assignlogits/conv3d/kernel_a/read:02*logits/conv3d/kernel_a/Initializer/Const:08
~
logits/conv3d/bias_m:0logits/conv3d/bias_m/Assignlogits/conv3d/bias_m/read:02(logits/conv3d/bias_m/Initializer/zeros:08
~
logits/conv3d/bias_a:0logits/conv3d/bias_a/Assignlogits/conv3d/bias_a/read:02(logits/conv3d/bias_a/Initializer/Const:08*¢
outputs
:
volume0
Placeholder:0’’’’’’’’’   G
logits=
logits/conv3d/cond/Merge:0’’’’’’’’’   2=
probabilities,
	Softmax:0’’’’’’’’’   24
	class_ids'
ArgMax:0	’’’’’’’’’   tensorflow/serving/predict*Ŗ
serving_default
:
volume0
Placeholder:0’’’’’’’’’   =
probabilities,
	Softmax:0’’’’’’’’’   24
	class_ids'
ArgMax:0	’’’’’’’’’   G
logits=
logits/conv3d/cond/Merge:0’’’’’’’’’   2tensorflow/serving/predict