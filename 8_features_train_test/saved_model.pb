Гя 
ч╕
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68Лу
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	А*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
Г
gru/gru_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_namegru/gru_cell/kernel
|
'gru/gru_cell/kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/kernel*
_output_shapes
:	А*
dtype0
Ш
gru/gru_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*.
shared_namegru/gru_cell/recurrent_kernel
С
1gru/gru_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/recurrent_kernel* 
_output_shapes
:
АА*
dtype0

gru/gru_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*"
shared_namegru/gru_cell/bias
x
%gru/gru_cell/bias/Read/ReadVariableOpReadVariableOpgru/gru_cell/bias*
_output_shapes
:	А*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
Г
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	А*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
С
Adam/gru/gru_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*+
shared_nameAdam/gru/gru_cell/kernel/m
К
.Adam/gru/gru_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/kernel/m*
_output_shapes
:	А*
dtype0
ж
$Adam/gru/gru_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*5
shared_name&$Adam/gru/gru_cell/recurrent_kernel/m
Я
8Adam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp$Adam/gru/gru_cell/recurrent_kernel/m* 
_output_shapes
:
АА*
dtype0
Н
Adam/gru/gru_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*)
shared_nameAdam/gru/gru_cell/bias/m
Ж
,Adam/gru/gru_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/bias/m*
_output_shapes
:	А*
dtype0
Г
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	А*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
С
Adam/gru/gru_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*+
shared_nameAdam/gru/gru_cell/kernel/v
К
.Adam/gru/gru_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/kernel/v*
_output_shapes
:	А*
dtype0
ж
$Adam/gru/gru_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*5
shared_name&$Adam/gru/gru_cell/recurrent_kernel/v
Я
8Adam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp$Adam/gru/gru_cell/recurrent_kernel/v* 
_output_shapes
:
АА*
dtype0
Н
Adam/gru/gru_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*)
shared_nameAdam/gru/gru_cell/bias/v
Ж
,Adam/gru/gru_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/bias/v*
_output_shapes
:	А*
dtype0

NoOpNoOp
░.
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ы-
valueс-B▐- B╫-
┴
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 

	keras_api* 
┴
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
ж

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
Ю
'iter

(beta_1

)beta_2
	*decay
+learning_ratem\ m],m^-m_.m`va vb,vc-vd.ve*
'
,0
-1
.2
3
 4*
'
,0
-1
.2
3
 4*
* 
░
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

4serving_default* 
* 
╙

,kernel
-recurrent_kernel
.bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9_random_generator
:__call__
*;&call_and_return_all_conditional_losses*
* 

,0
-1
.2*

,0
-1
.2*
* 
Я

<states
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
С
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 
У
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEgru/gru_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEgru/gru_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEgru/gru_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

L0
M1*
* 
* 
* 

,0
-1
.2*

,0
-1
.2*
* 
У
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
5	variables
6trainable_variables
7regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	Stotal
	Tcount
U	variables
V	keras_api*
H
	Wtotal
	Xcount
Y
_fn_kwargs
Z	variables
[	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

S0
T1*

U	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

W0
X1*

Z	variables*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/gru/gru_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE$Adam/gru/gru_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/gru/gru_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/gru/gru_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE$Adam/gru/gru_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/gru/gru_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_1Placeholder*'
_output_shapes
:         	*
dtype0*
shape:         	
Э
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1gru/gru_cell/biasgru/gru_cell/kernelgru/gru_cell/recurrent_kerneldense/kernel
dense/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_190656
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
с	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp'gru/gru_cell/kernel/Read/ReadVariableOp1gru/gru_cell/recurrent_kernel/Read/ReadVariableOp%gru/gru_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp.Adam/gru/gru_cell/kernel/m/Read/ReadVariableOp8Adam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOp,Adam/gru/gru_cell/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp.Adam/gru/gru_cell/kernel/v/Read/ReadVariableOp8Adam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOp,Adam/gru/gru_cell/bias/v/Read/ReadVariableOpConst*%
Tin
2	*
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
GPU 2J 8В *(
f#R!
__inference__traced_save_192234
№
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/biastotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/gru/gru_cell/kernel/m$Adam/gru/gru_cell/recurrent_kernel/mAdam/gru/gru_cell/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/gru/gru_cell/kernel/v$Adam/gru/gru_cell/recurrent_kernel/vAdam/gru/gru_cell/bias/v*$
Tin
2*
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_192316°ё
┌
╣
A__inference_model_layer_call_and_return_conditional_losses_189531

inputs

gru_189498:	А

gru_189500:	А

gru_189502:
АА
dense_189525:	А
dense_189527:
identityИвdense/StatefulPartitionedCallвgru/StatefulPartitionedCall_
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Н
tf.expand_dims/ExpandDims
ExpandDimsinputs&tf.expand_dims/ExpandDims/dim:output:0*
T0*+
_output_shapes
:         	Л
gru/StatefulPartitionedCallStatefulPartitionedCall"tf.expand_dims/ExpandDims:output:0
gru_189498
gru_189500
gru_189502*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         	А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_189497╒
flatten/PartitionedCallPartitionedCall$gru/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_189511■
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_189525dense_189527*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_189524u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Д
NoOpNoOp^dense/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs
▄
к
while_cond_191402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_191402___redundant_placeholder04
0while_while_cond_191402___redundant_placeholder14
0while_while_cond_191402___redundant_placeholder24
0while_while_cond_191402___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
▄
к
while_cond_191693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_191693___redundant_placeholder04
0while_while_cond_191693___redundant_placeholder14
0while_while_cond_191693___redundant_placeholder24
0while_while_cond_191693___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
и
╕
$__inference_gru_layer_call_fn_190678
inputs_0
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_189213}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
ы	
ш
model_gru_while_cond_1885900
,model_gru_while_model_gru_while_loop_counter6
2model_gru_while_model_gru_while_maximum_iterations
model_gru_while_placeholder!
model_gru_while_placeholder_1!
model_gru_while_placeholder_22
.model_gru_while_less_model_gru_strided_slice_1H
Dmodel_gru_while_model_gru_while_cond_188590___redundant_placeholder0H
Dmodel_gru_while_model_gru_while_cond_188590___redundant_placeholder1H
Dmodel_gru_while_model_gru_while_cond_188590___redundant_placeholder2H
Dmodel_gru_while_model_gru_while_cond_188590___redundant_placeholder3
model_gru_while_identity
К
model/gru/while/LessLessmodel_gru_while_placeholder.model_gru_while_less_model_gru_strided_slice_1*
T0*
_output_shapes
: _
model/gru/while/IdentityIdentitymodel/gru/while/Less:z:0*
T0
*
_output_shapes
: "=
model_gru_while_identity!model/gru/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
╚
Ё
&__inference_model_layer_call_fn_189544
input_1
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_189531o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         	
!
_user_specified_name	input_1
╚
Ў
gru_while_cond_190459$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2&
"gru_while_less_gru_strided_slice_1<
8gru_while_gru_while_cond_190459___redundant_placeholder0<
8gru_while_gru_while_cond_190459___redundant_placeholder1<
8gru_while_gru_while_cond_190459___redundant_placeholder2<
8gru_while_gru_while_cond_190459___redundant_placeholder3
gru_while_identity
r
gru/while/LessLessgru_while_placeholder"gru_while_less_gru_strided_slice_1*
T0*
_output_shapes
: S
gru/while/IdentityIdentitygru/while/Less:z:0*
T0
*
_output_shapes
: "1
gru_while_identitygru/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
з
D
(__inference_flatten_layer_call_fn_191869

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_189511a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         	А:T P
,
_output_shapes
:         	А
 
_user_specified_nameinputs
ХЛ
╙
while_body_189351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	А=
*while_gru_cell_readvariableop_1_resource_0:	А>
*while_gru_cell_readvariableop_4_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	А;
(while_gru_cell_readvariableop_1_resource:	А<
(while_gru_cell_readvariableop_4_resource:
ААИвwhile/gru_cell/ReadVariableOpвwhile/gru_cell/ReadVariableOp_1вwhile/gru_cell/ReadVariableOp_2вwhile/gru_cell/ReadVariableOp_3вwhile/gru_cell/ReadVariableOp_4вwhile/gru_cell/ReadVariableOp_5вwhile/gru_cell/ReadVariableOp_6И
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0a
while/gru_cell/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:c
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?е
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         АЗ
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЛ
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0s
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╣
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskл
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         АЛ
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0u
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┴
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskп
while/gru_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         АЛ
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0u
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┴
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskп
while/gru_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аn
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: q
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskЮ
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ав
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskв
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         АД
while/gru_cell/mulMulwhile_placeholder_2!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АЖ
while/gru_cell/mul_1Mulwhile_placeholder_2!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АЖ
while/gru_cell/mul_2Mulwhile_placeholder_2!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0u
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        w
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┬
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskХ
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul:z:0'while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0u
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┬
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЧ
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аn
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: q
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskв
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ав
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АТ
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         Аl
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:         АЦ
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аp
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0v
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╞
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskШ
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_2:z:0(while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аp
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskг
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         АП
while/gru_cell/mul_3Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         АН
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         Аh
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:         А
while/gru_cell/mul_4Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:         АY
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         А
while/gru_cell/mul_5Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         АД
while/gru_cell/add_3AddV2while/gru_cell/mul_4:z:0while/gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         А┴
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         А╕

while/NoOpNoOp^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
 ж
╙
while_body_191112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	А=
*while_gru_cell_readvariableop_1_resource_0:	А>
*while_gru_cell_readvariableop_4_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	А;
(while_gru_cell_readvariableop_1_resource:	А<
(while_gru_cell_readvariableop_4_resource:
ААИвwhile/gru_cell/ReadVariableOpвwhile/gru_cell/ReadVariableOp_1вwhile/gru_cell/ReadVariableOp_2вwhile/gru_cell/ReadVariableOp_3вwhile/gru_cell/ReadVariableOp_4вwhile/gru_cell/ReadVariableOp_5вwhile/gru_cell/ReadVariableOp_6И
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0a
while/gru_cell/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:c
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?е
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         Аa
while/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ю
while/gru_cell/dropout/MulMul!while/gru_cell/ones_like:output:0%while/gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         Аm
while/gru_cell/dropout/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:л
3while/gru_cell/dropout/random_uniform/RandomUniformRandomUniform%while/gru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0j
%while/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╘
#while/gru_cell/dropout/GreaterEqualGreaterEqual<while/gru_cell/dropout/random_uniform/RandomUniform:output:0.while/gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АО
while/gru_cell/dropout/CastCast'while/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЧ
while/gru_cell/dropout/Mul_1Mulwhile/gru_cell/dropout/Mul:z:0while/gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:         Аc
while/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?в
while/gru_cell/dropout_1/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         Аo
while/gru_cell/dropout_1/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:п
5while/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0l
'while/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>┌
%while/gru_cell/dropout_1/GreaterEqualGreaterEqual>while/gru_cell/dropout_1/random_uniform/RandomUniform:output:00while/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АТ
while/gru_cell/dropout_1/CastCast)while/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЭ
while/gru_cell/dropout_1/Mul_1Mul while/gru_cell/dropout_1/Mul:z:0!while/gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         Аc
while/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?в
while/gru_cell/dropout_2/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         Аo
while/gru_cell/dropout_2/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:п
5while/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0l
'while/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>┌
%while/gru_cell/dropout_2/GreaterEqualGreaterEqual>while/gru_cell/dropout_2/random_uniform/RandomUniform:output:00while/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АТ
while/gru_cell/dropout_2/CastCast)while/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЭ
while/gru_cell/dropout_2/Mul_1Mul while/gru_cell/dropout_2/Mul:z:0!while/gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         АЗ
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЛ
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0s
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╣
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskл
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         АЛ
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0u
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┴
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskп
while/gru_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         АЛ
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0u
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┴
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskп
while/gru_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аn
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: q
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskЮ
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ав
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskв
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         АГ
while/gru_cell/mulMulwhile_placeholder_2 while/gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         АЗ
while/gru_cell/mul_1Mulwhile_placeholder_2"while/gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         АЗ
while/gru_cell/mul_2Mulwhile_placeholder_2"while/gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0u
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        w
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┬
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskХ
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul:z:0'while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0u
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┬
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЧ
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аn
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: q
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskв
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ав
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АТ
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         Аl
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:         АЦ
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аp
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0v
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╞
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskШ
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_2:z:0(while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аp
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskг
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         АП
while/gru_cell/mul_3Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         АН
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         Аh
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:         А
while/gru_cell/mul_4Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:         АY
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         А
while/gru_cell/mul_5Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         АД
while/gru_cell/add_3AddV2while/gru_cell/mul_4:z:0while/gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         А┴
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         А╕

while/NoOpNoOp^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
х─
е
A__inference_model_layer_call_and_return_conditional_losses_190639

inputs7
$gru_gru_cell_readvariableop_resource:	А9
&gru_gru_cell_readvariableop_1_resource:	А:
&gru_gru_cell_readvariableop_4_resource:
АА7
$dense_matmul_readvariableop_resource:	А3
%dense_biasadd_readvariableop_resource:
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвgru/gru_cell/ReadVariableOpвgru/gru_cell/ReadVariableOp_1вgru/gru_cell/ReadVariableOp_2вgru/gru_cell/ReadVariableOp_3вgru/gru_cell/ReadVariableOp_4вgru/gru_cell/ReadVariableOp_5вgru/gru_cell/ReadVariableOp_6в	gru/while_
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Н
tf.expand_dims/ExpandDims
ExpandDimsinputs&tf.expand_dims/ExpandDims/dim:output:0*
T0*+
_output_shapes
:         	[
	gru/ShapeShape"tf.expand_dims/ExpandDims:output:0*
T0*
_output_shapes
:a
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    y
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*(
_output_shapes
:         Аg
gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          С
gru/transpose	Transpose"tf.expand_dims/ExpandDims:output:0gru/transpose/perm:output:0*
T0*+
_output_shapes
:	         L
gru/Shape_1Shapegru/transpose:y:0*
T0*
_output_shapes
:c
gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
gru/strided_slice_1StridedSlicegru/Shape_1:output:0"gru/strided_slice_1/stack:output:0$gru/strided_slice_1/stack_1:output:0$gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         └
gru/TensorArrayV2TensorListReserve(gru/TensorArrayV2/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥К
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ь
+gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru/transpose:y:0Bgru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥c
gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
gru/strided_slice_2StridedSlicegru/transpose:y:0"gru/strided_slice_2/stack:output:0$gru/strided_slice_2/stack_1:output:0$gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask^
gru/gru_cell/ones_like/ShapeShapegru/zeros:output:0*
T0*
_output_shapes
:a
gru/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
gru/gru_cell/ones_likeFill%gru/gru_cell/ones_like/Shape:output:0%gru/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         А_
gru/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ш
gru/gru_cell/dropout/MulMulgru/gru_cell/ones_like:output:0#gru/gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         Аi
gru/gru_cell/dropout/ShapeShapegru/gru_cell/ones_like:output:0*
T0*
_output_shapes
:з
1gru/gru_cell/dropout/random_uniform/RandomUniformRandomUniform#gru/gru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0h
#gru/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╬
!gru/gru_cell/dropout/GreaterEqualGreaterEqual:gru/gru_cell/dropout/random_uniform/RandomUniform:output:0,gru/gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АК
gru/gru_cell/dropout/CastCast%gru/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АС
gru/gru_cell/dropout/Mul_1Mulgru/gru_cell/dropout/Mul:z:0gru/gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:         Аa
gru/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ь
gru/gru_cell/dropout_1/MulMulgru/gru_cell/ones_like:output:0%gru/gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         Аk
gru/gru_cell/dropout_1/ShapeShapegru/gru_cell/ones_like:output:0*
T0*
_output_shapes
:л
3gru/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform%gru/gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0j
%gru/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╘
#gru/gru_cell/dropout_1/GreaterEqualGreaterEqual<gru/gru_cell/dropout_1/random_uniform/RandomUniform:output:0.gru/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АО
gru/gru_cell/dropout_1/CastCast'gru/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЧ
gru/gru_cell/dropout_1/Mul_1Mulgru/gru_cell/dropout_1/Mul:z:0gru/gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         Аa
gru/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ь
gru/gru_cell/dropout_2/MulMulgru/gru_cell/ones_like:output:0%gru/gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         Аk
gru/gru_cell/dropout_2/ShapeShapegru/gru_cell/ones_like:output:0*
T0*
_output_shapes
:л
3gru/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform%gru/gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0j
%gru/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╘
#gru/gru_cell/dropout_2/GreaterEqualGreaterEqual<gru/gru_cell/dropout_2/random_uniform/RandomUniform:output:0.gru/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АО
gru/gru_cell/dropout_2/CastCast'gru/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЧ
gru/gru_cell/dropout_2/Mul_1Mulgru/gru_cell/dropout_2/Mul:z:0gru/gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         АБ
gru/gru_cell/ReadVariableOpReadVariableOp$gru_gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0{
gru/gru_cell/unstackUnpack#gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЕ
gru/gru_cell/ReadVariableOp_1ReadVariableOp&gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0q
 gru/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"gru/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       s
"gru/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      п
gru/gru_cell/strided_sliceStridedSlice%gru/gru_cell/ReadVariableOp_1:value:0)gru/gru_cell/strided_slice/stack:output:0+gru/gru_cell/strided_slice/stack_1:output:0+gru/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskУ
gru/gru_cell/MatMulMatMulgru/strided_slice_2:output:0#gru/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         АЕ
gru/gru_cell/ReadVariableOp_2ReadVariableOp&gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0s
"gru/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$gru/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$gru/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╖
gru/gru_cell/strided_slice_1StridedSlice%gru/gru_cell/ReadVariableOp_2:value:0+gru/gru_cell/strided_slice_1/stack:output:0-gru/gru_cell/strided_slice_1/stack_1:output:0-gru/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЧ
gru/gru_cell/MatMul_1MatMulgru/strided_slice_2:output:0%gru/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         АЕ
gru/gru_cell/ReadVariableOp_3ReadVariableOp&gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0s
"gru/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$gru/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$gru/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╖
gru/gru_cell/strided_slice_2StridedSlice%gru/gru_cell/ReadVariableOp_3:value:0+gru/gru_cell/strided_slice_2/stack:output:0-gru/gru_cell/strided_slice_2/stack_1:output:0-gru/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЧ
gru/gru_cell/MatMul_2MatMulgru/strided_slice_2:output:0%gru/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аl
"gru/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: o
$gru/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аn
$gru/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
gru/gru_cell/strided_slice_3StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_3/stack:output:0-gru/gru_cell/strided_slice_3/stack_1:output:0-gru/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskШ
gru/gru_cell/BiasAddBiasAddgru/gru_cell/MatMul:product:0%gru/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аm
"gru/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аo
$gru/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аn
$gru/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
gru/gru_cell/strided_slice_4StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_4/stack:output:0-gru/gru_cell/strided_slice_4/stack_1:output:0-gru/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АЬ
gru/gru_cell/BiasAdd_1BiasAddgru/gru_cell/MatMul_1:product:0%gru/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аm
"gru/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аn
$gru/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$gru/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
gru/gru_cell/strided_slice_5StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_5/stack:output:0-gru/gru_cell/strided_slice_5/stack_1:output:0-gru/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskЬ
gru/gru_cell/BiasAdd_2BiasAddgru/gru_cell/MatMul_2:product:0%gru/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         А~
gru/gru_cell/mulMulgru/zeros:output:0gru/gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         АВ
gru/gru_cell/mul_1Mulgru/zeros:output:0 gru/gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         АВ
gru/gru_cell/mul_2Mulgru/zeros:output:0 gru/gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         АЖ
gru/gru_cell/ReadVariableOp_4ReadVariableOp&gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0s
"gru/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$gru/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$gru/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
gru/gru_cell/strided_slice_6StridedSlice%gru/gru_cell/ReadVariableOp_4:value:0+gru/gru_cell/strided_slice_6/stack:output:0-gru/gru_cell/strided_slice_6/stack_1:output:0-gru/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskП
gru/gru_cell/MatMul_3MatMulgru/gru_cell/mul:z:0%gru/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         АЖ
gru/gru_cell/ReadVariableOp_5ReadVariableOp&gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0s
"gru/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$gru/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$gru/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
gru/gru_cell/strided_slice_7StridedSlice%gru/gru_cell/ReadVariableOp_5:value:0+gru/gru_cell/strided_slice_7/stack:output:0-gru/gru_cell/strided_slice_7/stack_1:output:0-gru/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskС
gru/gru_cell/MatMul_4MatMulgru/gru_cell/mul_1:z:0%gru/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аl
"gru/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: o
$gru/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аn
$gru/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
gru/gru_cell/strided_slice_8StridedSlicegru/gru_cell/unstack:output:1+gru/gru_cell/strided_slice_8/stack:output:0-gru/gru_cell/strided_slice_8/stack_1:output:0-gru/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskЬ
gru/gru_cell/BiasAdd_3BiasAddgru/gru_cell/MatMul_3:product:0%gru/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аm
"gru/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аo
$gru/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аn
$gru/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
gru/gru_cell/strided_slice_9StridedSlicegru/gru_cell/unstack:output:1+gru/gru_cell/strided_slice_9/stack:output:0-gru/gru_cell/strided_slice_9/stack_1:output:0-gru/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АЬ
gru/gru_cell/BiasAdd_4BiasAddgru/gru_cell/MatMul_4:product:0%gru/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АМ
gru/gru_cell/addAddV2gru/gru_cell/BiasAdd:output:0gru/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         Аh
gru/gru_cell/SigmoidSigmoidgru/gru_cell/add:z:0*
T0*(
_output_shapes
:         АР
gru/gru_cell/add_1AddV2gru/gru_cell/BiasAdd_1:output:0gru/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аl
gru/gru_cell/Sigmoid_1Sigmoidgru/gru_cell/add_1:z:0*
T0*(
_output_shapes
:         АЖ
gru/gru_cell/ReadVariableOp_6ReadVariableOp&gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0t
#gru/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       v
%gru/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        v
%gru/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╝
gru/gru_cell/strided_slice_10StridedSlice%gru/gru_cell/ReadVariableOp_6:value:0,gru/gru_cell/strided_slice_10/stack:output:0.gru/gru_cell/strided_slice_10/stack_1:output:0.gru/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskТ
gru/gru_cell/MatMul_5MatMulgru/gru_cell/mul_2:z:0&gru/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аn
#gru/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аo
%gru/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%gru/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Э
gru/gru_cell/strided_slice_11StridedSlicegru/gru_cell/unstack:output:1,gru/gru_cell/strided_slice_11/stack:output:0.gru/gru_cell/strided_slice_11/stack_1:output:0.gru/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskЭ
gru/gru_cell/BiasAdd_5BiasAddgru/gru_cell/MatMul_5:product:0&gru/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         АЙ
gru/gru_cell/mul_3Mulgru/gru_cell/Sigmoid_1:y:0gru/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         АЗ
gru/gru_cell/add_2AddV2gru/gru_cell/BiasAdd_2:output:0gru/gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         Аd
gru/gru_cell/TanhTanhgru/gru_cell/add_2:z:0*
T0*(
_output_shapes
:         Аz
gru/gru_cell/mul_4Mulgru/gru_cell/Sigmoid:y:0gru/zeros:output:0*
T0*(
_output_shapes
:         АW
gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Б
gru/gru_cell/subSubgru/gru_cell/sub/x:output:0gru/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         Аy
gru/gru_cell/mul_5Mulgru/gru_cell/sub:z:0gru/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         А~
gru/gru_cell/add_3AddV2gru/gru_cell/mul_4:z:0gru/gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         Аr
!gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ─
gru/TensorArrayV2_1TensorListReserve*gru/TensorArrayV2_1/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥J
gru/timeConst*
_output_shapes
: *
dtype0*
value	B : g
gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         X
gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▀
	gru/whileWhilegru/while/loop_counter:output:0%gru/while/maximum_iterations:output:0gru/time:output:0gru/TensorArrayV2_1:handle:0gru/zeros:output:0gru/strided_slice_1:output:0;gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_gru_cell_readvariableop_resource&gru_gru_cell_readvariableop_1_resource&gru_gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *!
bodyR
gru_while_body_190460*!
condR
gru_while_cond_190459*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Е
4gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╧
&gru/TensorArrayV2Stack/TensorListStackTensorListStackgru/while:output:3=gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:	         А*
element_dtype0l
gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         e
gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
gru/strided_slice_3StridedSlice/gru/TensorArrayV2Stack/TensorListStack:tensor:0"gru/strided_slice_3/stack:output:0$gru/strided_slice_3/stack_1:output:0$gru/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maski
gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          г
gru/transpose_1	Transpose/gru/TensorArrayV2Stack/TensorListStack:tensor:0gru/transpose_1/perm:output:0*
T0*,
_output_shapes
:         	А_
gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  z
flatten/ReshapeReshapegru/transpose_1:y:0flatten/Const:output:0*
T0*(
_output_shapes
:         АБ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0З
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:         f
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         э
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^gru/gru_cell/ReadVariableOp^gru/gru_cell/ReadVariableOp_1^gru/gru_cell/ReadVariableOp_2^gru/gru_cell/ReadVariableOp_3^gru/gru_cell/ReadVariableOp_4^gru/gru_cell/ReadVariableOp_5^gru/gru_cell/ReadVariableOp_6
^gru/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2:
gru/gru_cell/ReadVariableOpgru/gru_cell/ReadVariableOp2>
gru/gru_cell/ReadVariableOp_1gru/gru_cell/ReadVariableOp_12>
gru/gru_cell/ReadVariableOp_2gru/gru_cell/ReadVariableOp_22>
gru/gru_cell/ReadVariableOp_3gru/gru_cell/ReadVariableOp_32>
gru/gru_cell/ReadVariableOp_4gru/gru_cell/ReadVariableOp_42>
gru/gru_cell/ReadVariableOp_5gru/gru_cell/ReadVariableOp_52>
gru/gru_cell/ReadVariableOp_6gru/gru_cell/ReadVariableOp_62
	gru/while	gru/while:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs
б

є
A__inference_dense_layer_call_and_return_conditional_losses_191895

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╟н
╠
?__inference_gru_layer_call_and_return_conditional_losses_189888

inputs3
 gru_cell_readvariableop_resource:	А5
"gru_cell_readvariableop_1_resource:	А6
"gru_cell_readvariableop_4_resource:
АА
identityИвgru_cell/ReadVariableOpвgru_cell/ReadVariableOp_1вgru_cell/ReadVariableOp_2вgru_cell/ReadVariableOp_3вgru_cell/ReadVariableOp_4вgru_cell/ReadVariableOp_5вgru_cell/ReadVariableOp_6вwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskV
gru_cell/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:]
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         А[
gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?М
gru_cell/dropout/MulMulgru_cell/ones_like:output:0gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         Аa
gru_cell/dropout/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:Я
-gru_cell/dropout/random_uniform/RandomUniformRandomUniformgru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0d
gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>┬
gru_cell/dropout/GreaterEqualGreaterEqual6gru_cell/dropout/random_uniform/RandomUniform:output:0(gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АВ
gru_cell/dropout/CastCast!gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЕ
gru_cell/dropout/Mul_1Mulgru_cell/dropout/Mul:z:0gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:         А]
gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Р
gru_cell/dropout_1/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         Аc
gru_cell/dropout_1/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:г
/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╚
gru_cell/dropout_1/GreaterEqualGreaterEqual8gru_cell/dropout_1/random_uniform/RandomUniform:output:0*gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЖ
gru_cell/dropout_1/CastCast#gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЛ
gru_cell/dropout_1/Mul_1Mulgru_cell/dropout_1/Mul:z:0gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         А]
gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Р
gru_cell/dropout_2/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         Аc
gru_cell/dropout_2/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:г
/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╚
gru_cell/dropout_2/GreaterEqualGreaterEqual8gru_cell/dropout_2/random_uniform/RandomUniform:output:0*gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЖ
gru_cell/dropout_2/CastCast#gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЛ
gru_cell/dropout_2/Mul_1Mulgru_cell/dropout_2/Mul:z:0gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         Аy
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
num}
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0m
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        o
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       o
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ы
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЗ
gru_cell/MatMulMatMulstrided_slice_2:output:0gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         А}
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0o
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      г
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЛ
gru_cell/MatMul_1MatMulstrided_slice_2:output:0!gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         А}
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0o
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        q
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      г
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЛ
gru_cell/MatMul_2MatMulstrided_slice_2:output:0!gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аh
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: k
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskМ
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АР
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskР
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         Аr
gru_cell/mulMulzeros:output:0gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         Аv
gru_cell/mul_1Mulzeros:output:0gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         Аv
gru_cell/mul_2Mulzeros:output:0gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0o
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        q
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskГ
gru_cell/MatMul_3MatMulgru_cell/mul:z:0!gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0o
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЕ
gru_cell/MatMul_4MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аh
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: k
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskР
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АР
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АА
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         А`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:         АД
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аd
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0p
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      и
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЖ
gru_cell/MatMul_5MatMulgru_cell/mul_2:z:0"gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аj
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: k
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskС
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         А}
gru_cell/mul_3Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         А{
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         А\
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:         Аn
gru_cell/mul_4Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:         АS
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         Аm
gru_cell/mul_5Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         Аr
gru_cell/add_3AddV2gru_cell/mul_4:z:0gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_189718*
condR
while_cond_189717*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:	         А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         	А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         	АР
NoOpNoOp^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
▄
к
while_cond_191111
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_191111___redundant_placeholder04
0while_while_cond_191111___redundant_placeholder14
0while_while_cond_191111___redundant_placeholder24
0while_while_cond_191111___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
ПФ
╠
?__inference_gru_layer_call_and_return_conditional_losses_191549

inputs3
 gru_cell_readvariableop_resource:	А5
"gru_cell_readvariableop_1_resource:	А6
"gru_cell_readvariableop_4_resource:
АА
identityИвgru_cell/ReadVariableOpвgru_cell/ReadVariableOp_1вgru_cell/ReadVariableOp_2вgru_cell/ReadVariableOp_3вgru_cell/ReadVariableOp_4вgru_cell/ReadVariableOp_5вgru_cell/ReadVariableOp_6вwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskV
gru_cell/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:]
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         Аy
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
num}
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0m
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        o
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       o
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ы
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЗ
gru_cell/MatMulMatMulstrided_slice_2:output:0gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         А}
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0o
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      г
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЛ
gru_cell/MatMul_1MatMulstrided_slice_2:output:0!gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         А}
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0o
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        q
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      г
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЛ
gru_cell/MatMul_2MatMulstrided_slice_2:output:0!gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аh
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: k
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskМ
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АР
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskР
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         Аs
gru_cell/mulMulzeros:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         Аu
gru_cell/mul_1Mulzeros:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         Аu
gru_cell/mul_2Mulzeros:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0o
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        q
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskГ
gru_cell/MatMul_3MatMulgru_cell/mul:z:0!gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0o
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЕ
gru_cell/MatMul_4MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аh
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: k
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskР
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АР
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АА
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         А`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:         АД
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аd
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0p
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      и
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЖ
gru_cell/MatMul_5MatMulgru_cell/mul_2:z:0"gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аj
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: k
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskС
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         А}
gru_cell/mul_3Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         А{
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         А\
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:         Аn
gru_cell/mul_4Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:         АS
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         Аm
gru_cell/mul_5Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         Аr
gru_cell/add_3AddV2gru_cell/mul_4:z:0gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_191403*
condR
while_cond_191402*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:	         А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         	А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         	АР
NoOpNoOp^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
┌
╣
A__inference_model_layer_call_and_return_conditional_losses_189933

inputs

gru_189919:	А

gru_189921:	А

gru_189923:
АА
dense_189927:	А
dense_189929:
identityИвdense/StatefulPartitionedCallвgru/StatefulPartitionedCall_
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Н
tf.expand_dims/ExpandDims
ExpandDimsinputs&tf.expand_dims/ExpandDims/dim:output:0*
T0*+
_output_shapes
:         	Л
gru/StatefulPartitionedCallStatefulPartitionedCall"tf.expand_dims/ExpandDims:output:0
gru_189919
gru_189921
gru_189923*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         	А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_189888╒
flatten/PartitionedCallPartitionedCall$gru/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_189511■
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_189927dense_189929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_189524u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Д
NoOpNoOp^dense/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs
■
╢
$__inference_gru_layer_call_fn_190700

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         	А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_189888t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         	А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
╡

┘
)__inference_gru_cell_layer_call_fn_191909

inputs
states_0
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identity

identity_1ИвStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_gru_cell_layer_call_and_return_conditional_losses_188873p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         :         А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0
сй
е
A__inference_model_layer_call_and_return_conditional_losses_190313

inputs7
$gru_gru_cell_readvariableop_resource:	А9
&gru_gru_cell_readvariableop_1_resource:	А:
&gru_gru_cell_readvariableop_4_resource:
АА7
$dense_matmul_readvariableop_resource:	А3
%dense_biasadd_readvariableop_resource:
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвgru/gru_cell/ReadVariableOpвgru/gru_cell/ReadVariableOp_1вgru/gru_cell/ReadVariableOp_2вgru/gru_cell/ReadVariableOp_3вgru/gru_cell/ReadVariableOp_4вgru/gru_cell/ReadVariableOp_5вgru/gru_cell/ReadVariableOp_6в	gru/while_
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Н
tf.expand_dims/ExpandDims
ExpandDimsinputs&tf.expand_dims/ExpandDims/dim:output:0*
T0*+
_output_shapes
:         	[
	gru/ShapeShape"tf.expand_dims/ExpandDims:output:0*
T0*
_output_shapes
:a
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    y
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*(
_output_shapes
:         Аg
gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          С
gru/transpose	Transpose"tf.expand_dims/ExpandDims:output:0gru/transpose/perm:output:0*
T0*+
_output_shapes
:	         L
gru/Shape_1Shapegru/transpose:y:0*
T0*
_output_shapes
:c
gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
gru/strided_slice_1StridedSlicegru/Shape_1:output:0"gru/strided_slice_1/stack:output:0$gru/strided_slice_1/stack_1:output:0$gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         └
gru/TensorArrayV2TensorListReserve(gru/TensorArrayV2/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥К
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ь
+gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru/transpose:y:0Bgru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥c
gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
gru/strided_slice_2StridedSlicegru/transpose:y:0"gru/strided_slice_2/stack:output:0$gru/strided_slice_2/stack_1:output:0$gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask^
gru/gru_cell/ones_like/ShapeShapegru/zeros:output:0*
T0*
_output_shapes
:a
gru/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
gru/gru_cell/ones_likeFill%gru/gru_cell/ones_like/Shape:output:0%gru/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         АБ
gru/gru_cell/ReadVariableOpReadVariableOp$gru_gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0{
gru/gru_cell/unstackUnpack#gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЕ
gru/gru_cell/ReadVariableOp_1ReadVariableOp&gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0q
 gru/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"gru/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       s
"gru/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      п
gru/gru_cell/strided_sliceStridedSlice%gru/gru_cell/ReadVariableOp_1:value:0)gru/gru_cell/strided_slice/stack:output:0+gru/gru_cell/strided_slice/stack_1:output:0+gru/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskУ
gru/gru_cell/MatMulMatMulgru/strided_slice_2:output:0#gru/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         АЕ
gru/gru_cell/ReadVariableOp_2ReadVariableOp&gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0s
"gru/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$gru/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$gru/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╖
gru/gru_cell/strided_slice_1StridedSlice%gru/gru_cell/ReadVariableOp_2:value:0+gru/gru_cell/strided_slice_1/stack:output:0-gru/gru_cell/strided_slice_1/stack_1:output:0-gru/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЧ
gru/gru_cell/MatMul_1MatMulgru/strided_slice_2:output:0%gru/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         АЕ
gru/gru_cell/ReadVariableOp_3ReadVariableOp&gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0s
"gru/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$gru/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$gru/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╖
gru/gru_cell/strided_slice_2StridedSlice%gru/gru_cell/ReadVariableOp_3:value:0+gru/gru_cell/strided_slice_2/stack:output:0-gru/gru_cell/strided_slice_2/stack_1:output:0-gru/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЧ
gru/gru_cell/MatMul_2MatMulgru/strided_slice_2:output:0%gru/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аl
"gru/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: o
$gru/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аn
$gru/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
gru/gru_cell/strided_slice_3StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_3/stack:output:0-gru/gru_cell/strided_slice_3/stack_1:output:0-gru/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskШ
gru/gru_cell/BiasAddBiasAddgru/gru_cell/MatMul:product:0%gru/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аm
"gru/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аo
$gru/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аn
$gru/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
gru/gru_cell/strided_slice_4StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_4/stack:output:0-gru/gru_cell/strided_slice_4/stack_1:output:0-gru/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АЬ
gru/gru_cell/BiasAdd_1BiasAddgru/gru_cell/MatMul_1:product:0%gru/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аm
"gru/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аn
$gru/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$gru/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
gru/gru_cell/strided_slice_5StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_5/stack:output:0-gru/gru_cell/strided_slice_5/stack_1:output:0-gru/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskЬ
gru/gru_cell/BiasAdd_2BiasAddgru/gru_cell/MatMul_2:product:0%gru/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         А
gru/gru_cell/mulMulgru/zeros:output:0gru/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АБ
gru/gru_cell/mul_1Mulgru/zeros:output:0gru/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АБ
gru/gru_cell/mul_2Mulgru/zeros:output:0gru/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АЖ
gru/gru_cell/ReadVariableOp_4ReadVariableOp&gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0s
"gru/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$gru/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$gru/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
gru/gru_cell/strided_slice_6StridedSlice%gru/gru_cell/ReadVariableOp_4:value:0+gru/gru_cell/strided_slice_6/stack:output:0-gru/gru_cell/strided_slice_6/stack_1:output:0-gru/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskП
gru/gru_cell/MatMul_3MatMulgru/gru_cell/mul:z:0%gru/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         АЖ
gru/gru_cell/ReadVariableOp_5ReadVariableOp&gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0s
"gru/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$gru/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$gru/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
gru/gru_cell/strided_slice_7StridedSlice%gru/gru_cell/ReadVariableOp_5:value:0+gru/gru_cell/strided_slice_7/stack:output:0-gru/gru_cell/strided_slice_7/stack_1:output:0-gru/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskС
gru/gru_cell/MatMul_4MatMulgru/gru_cell/mul_1:z:0%gru/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аl
"gru/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: o
$gru/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аn
$gru/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
gru/gru_cell/strided_slice_8StridedSlicegru/gru_cell/unstack:output:1+gru/gru_cell/strided_slice_8/stack:output:0-gru/gru_cell/strided_slice_8/stack_1:output:0-gru/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskЬ
gru/gru_cell/BiasAdd_3BiasAddgru/gru_cell/MatMul_3:product:0%gru/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аm
"gru/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аo
$gru/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аn
$gru/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
gru/gru_cell/strided_slice_9StridedSlicegru/gru_cell/unstack:output:1+gru/gru_cell/strided_slice_9/stack:output:0-gru/gru_cell/strided_slice_9/stack_1:output:0-gru/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АЬ
gru/gru_cell/BiasAdd_4BiasAddgru/gru_cell/MatMul_4:product:0%gru/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АМ
gru/gru_cell/addAddV2gru/gru_cell/BiasAdd:output:0gru/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         Аh
gru/gru_cell/SigmoidSigmoidgru/gru_cell/add:z:0*
T0*(
_output_shapes
:         АР
gru/gru_cell/add_1AddV2gru/gru_cell/BiasAdd_1:output:0gru/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аl
gru/gru_cell/Sigmoid_1Sigmoidgru/gru_cell/add_1:z:0*
T0*(
_output_shapes
:         АЖ
gru/gru_cell/ReadVariableOp_6ReadVariableOp&gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0t
#gru/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       v
%gru/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        v
%gru/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╝
gru/gru_cell/strided_slice_10StridedSlice%gru/gru_cell/ReadVariableOp_6:value:0,gru/gru_cell/strided_slice_10/stack:output:0.gru/gru_cell/strided_slice_10/stack_1:output:0.gru/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskТ
gru/gru_cell/MatMul_5MatMulgru/gru_cell/mul_2:z:0&gru/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аn
#gru/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аo
%gru/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%gru/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Э
gru/gru_cell/strided_slice_11StridedSlicegru/gru_cell/unstack:output:1,gru/gru_cell/strided_slice_11/stack:output:0.gru/gru_cell/strided_slice_11/stack_1:output:0.gru/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskЭ
gru/gru_cell/BiasAdd_5BiasAddgru/gru_cell/MatMul_5:product:0&gru/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         АЙ
gru/gru_cell/mul_3Mulgru/gru_cell/Sigmoid_1:y:0gru/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         АЗ
gru/gru_cell/add_2AddV2gru/gru_cell/BiasAdd_2:output:0gru/gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         Аd
gru/gru_cell/TanhTanhgru/gru_cell/add_2:z:0*
T0*(
_output_shapes
:         Аz
gru/gru_cell/mul_4Mulgru/gru_cell/Sigmoid:y:0gru/zeros:output:0*
T0*(
_output_shapes
:         АW
gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Б
gru/gru_cell/subSubgru/gru_cell/sub/x:output:0gru/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         Аy
gru/gru_cell/mul_5Mulgru/gru_cell/sub:z:0gru/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         А~
gru/gru_cell/add_3AddV2gru/gru_cell/mul_4:z:0gru/gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         Аr
!gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ─
gru/TensorArrayV2_1TensorListReserve*gru/TensorArrayV2_1/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥J
gru/timeConst*
_output_shapes
: *
dtype0*
value	B : g
gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         X
gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▀
	gru/whileWhilegru/while/loop_counter:output:0%gru/while/maximum_iterations:output:0gru/time:output:0gru/TensorArrayV2_1:handle:0gru/zeros:output:0gru/strided_slice_1:output:0;gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_gru_cell_readvariableop_resource&gru_gru_cell_readvariableop_1_resource&gru_gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *!
bodyR
gru_while_body_190158*!
condR
gru_while_cond_190157*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Е
4gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╧
&gru/TensorArrayV2Stack/TensorListStackTensorListStackgru/while:output:3=gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:	         А*
element_dtype0l
gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         e
gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
gru/strided_slice_3StridedSlice/gru/TensorArrayV2Stack/TensorListStack:tensor:0"gru/strided_slice_3/stack:output:0$gru/strided_slice_3/stack_1:output:0$gru/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maski
gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          г
gru/transpose_1	Transpose/gru/TensorArrayV2Stack/TensorListStack:tensor:0gru/transpose_1/perm:output:0*
T0*,
_output_shapes
:         	А_
gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  z
flatten/ReshapeReshapegru/transpose_1:y:0flatten/Const:output:0*
T0*(
_output_shapes
:         АБ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0З
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:         f
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         э
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^gru/gru_cell/ReadVariableOp^gru/gru_cell/ReadVariableOp_1^gru/gru_cell/ReadVariableOp_2^gru/gru_cell/ReadVariableOp_3^gru/gru_cell/ReadVariableOp_4^gru/gru_cell/ReadVariableOp_5^gru/gru_cell/ReadVariableOp_6
^gru/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2:
gru/gru_cell/ReadVariableOpgru/gru_cell/ReadVariableOp2>
gru/gru_cell/ReadVariableOp_1gru/gru_cell/ReadVariableOp_12>
gru/gru_cell/ReadVariableOp_2gru/gru_cell/ReadVariableOp_22>
gru/gru_cell/ReadVariableOp_3gru/gru_cell/ReadVariableOp_32>
gru/gru_cell/ReadVariableOp_4gru/gru_cell/ReadVariableOp_42>
gru/gru_cell/ReadVariableOp_5gru/gru_cell/ReadVariableOp_52>
gru/gru_cell/ReadVariableOp_6gru/gru_cell/ReadVariableOp_62
	gru/while	gru/while:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs
╚
Ў
gru_while_cond_190157$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2&
"gru_while_less_gru_strided_slice_1<
8gru_while_gru_while_cond_190157___redundant_placeholder0<
8gru_while_gru_while_cond_190157___redundant_placeholder1<
8gru_while_gru_while_cond_190157___redundant_placeholder2<
8gru_while_gru_while_cond_190157___redundant_placeholder3
gru_while_identity
r
gru/while/LessLessgru_while_placeholder"gru_while_less_gru_strided_slice_1*
T0*
_output_shapes
: S
gru/while/IdentityIdentitygru/while/Less:z:0*
T0
*
_output_shapes
: "1
gru_while_identitygru/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
 ж
╙
while_body_189718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	А=
*while_gru_cell_readvariableop_1_resource_0:	А>
*while_gru_cell_readvariableop_4_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	А;
(while_gru_cell_readvariableop_1_resource:	А<
(while_gru_cell_readvariableop_4_resource:
ААИвwhile/gru_cell/ReadVariableOpвwhile/gru_cell/ReadVariableOp_1вwhile/gru_cell/ReadVariableOp_2вwhile/gru_cell/ReadVariableOp_3вwhile/gru_cell/ReadVariableOp_4вwhile/gru_cell/ReadVariableOp_5вwhile/gru_cell/ReadVariableOp_6И
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0a
while/gru_cell/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:c
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?е
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         Аa
while/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ю
while/gru_cell/dropout/MulMul!while/gru_cell/ones_like:output:0%while/gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         Аm
while/gru_cell/dropout/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:л
3while/gru_cell/dropout/random_uniform/RandomUniformRandomUniform%while/gru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0j
%while/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╘
#while/gru_cell/dropout/GreaterEqualGreaterEqual<while/gru_cell/dropout/random_uniform/RandomUniform:output:0.while/gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АО
while/gru_cell/dropout/CastCast'while/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЧ
while/gru_cell/dropout/Mul_1Mulwhile/gru_cell/dropout/Mul:z:0while/gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:         Аc
while/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?в
while/gru_cell/dropout_1/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         Аo
while/gru_cell/dropout_1/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:п
5while/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0l
'while/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>┌
%while/gru_cell/dropout_1/GreaterEqualGreaterEqual>while/gru_cell/dropout_1/random_uniform/RandomUniform:output:00while/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АТ
while/gru_cell/dropout_1/CastCast)while/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЭ
while/gru_cell/dropout_1/Mul_1Mul while/gru_cell/dropout_1/Mul:z:0!while/gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         Аc
while/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?в
while/gru_cell/dropout_2/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         Аo
while/gru_cell/dropout_2/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:п
5while/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0l
'while/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>┌
%while/gru_cell/dropout_2/GreaterEqualGreaterEqual>while/gru_cell/dropout_2/random_uniform/RandomUniform:output:00while/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АТ
while/gru_cell/dropout_2/CastCast)while/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЭ
while/gru_cell/dropout_2/Mul_1Mul while/gru_cell/dropout_2/Mul:z:0!while/gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         АЗ
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЛ
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0s
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╣
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskл
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         АЛ
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0u
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┴
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskп
while/gru_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         АЛ
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0u
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┴
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskп
while/gru_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аn
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: q
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskЮ
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ав
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskв
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         АГ
while/gru_cell/mulMulwhile_placeholder_2 while/gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         АЗ
while/gru_cell/mul_1Mulwhile_placeholder_2"while/gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         АЗ
while/gru_cell/mul_2Mulwhile_placeholder_2"while/gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0u
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        w
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┬
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskХ
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul:z:0'while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0u
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┬
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЧ
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аn
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: q
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskв
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ав
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АТ
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         Аl
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:         АЦ
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аp
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0v
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╞
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskШ
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_2:z:0(while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аp
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskг
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         АП
while/gru_cell/mul_3Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         АН
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         Аh
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:         А
while/gru_cell/mul_4Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:         АY
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         А
while/gru_cell/mul_5Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         АД
while/gru_cell/add_3AddV2while/gru_cell/mul_4:z:0while/gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         А┴
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         А╕

while/NoOpNoOp^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
Ео
╬
?__inference_gru_layer_call_and_return_conditional_losses_191282
inputs_03
 gru_cell_readvariableop_resource:	А5
"gru_cell_readvariableop_1_resource:	А6
"gru_cell_readvariableop_4_resource:
АА
identityИвgru_cell/ReadVariableOpвgru_cell/ReadVariableOp_1вgru_cell/ReadVariableOp_2вgru_cell/ReadVariableOp_3вgru_cell/ReadVariableOp_4вgru_cell/ReadVariableOp_5вgru_cell/ReadVariableOp_6вwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskV
gru_cell/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:]
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         А[
gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?М
gru_cell/dropout/MulMulgru_cell/ones_like:output:0gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         Аa
gru_cell/dropout/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:Я
-gru_cell/dropout/random_uniform/RandomUniformRandomUniformgru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0d
gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>┬
gru_cell/dropout/GreaterEqualGreaterEqual6gru_cell/dropout/random_uniform/RandomUniform:output:0(gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АВ
gru_cell/dropout/CastCast!gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЕ
gru_cell/dropout/Mul_1Mulgru_cell/dropout/Mul:z:0gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:         А]
gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Р
gru_cell/dropout_1/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         Аc
gru_cell/dropout_1/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:г
/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╚
gru_cell/dropout_1/GreaterEqualGreaterEqual8gru_cell/dropout_1/random_uniform/RandomUniform:output:0*gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЖ
gru_cell/dropout_1/CastCast#gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЛ
gru_cell/dropout_1/Mul_1Mulgru_cell/dropout_1/Mul:z:0gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         А]
gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Р
gru_cell/dropout_2/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         Аc
gru_cell/dropout_2/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:г
/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╚
gru_cell/dropout_2/GreaterEqualGreaterEqual8gru_cell/dropout_2/random_uniform/RandomUniform:output:0*gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЖ
gru_cell/dropout_2/CastCast#gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЛ
gru_cell/dropout_2/Mul_1Mulgru_cell/dropout_2/Mul:z:0gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         Аy
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
num}
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0m
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        o
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       o
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ы
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЗ
gru_cell/MatMulMatMulstrided_slice_2:output:0gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         А}
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0o
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      г
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЛ
gru_cell/MatMul_1MatMulstrided_slice_2:output:0!gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         А}
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0o
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        q
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      г
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЛ
gru_cell/MatMul_2MatMulstrided_slice_2:output:0!gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аh
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: k
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskМ
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АР
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskР
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         Аr
gru_cell/mulMulzeros:output:0gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         Аv
gru_cell/mul_1Mulzeros:output:0gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         Аv
gru_cell/mul_2Mulzeros:output:0gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0o
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        q
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskГ
gru_cell/MatMul_3MatMulgru_cell/mul:z:0!gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0o
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЕ
gru_cell/MatMul_4MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аh
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: k
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskР
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АР
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АА
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         А`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:         АД
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аd
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0p
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      и
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЖ
gru_cell/MatMul_5MatMulgru_cell/mul_2:z:0"gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аj
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: k
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskС
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         А}
gru_cell/mul_3Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         А{
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         А\
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:         Аn
gru_cell/mul_4Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:         АS
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         Аm
gru_cell/mul_5Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         Аr
gru_cell/add_3AddV2gru_cell/mul_4:z:0gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_191112*
condR
while_cond_191111*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  АР
NoOpNoOp^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
┐
Ф
&__inference_dense_layer_call_fn_191884

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall╓
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_189524o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
н[
Н
D__inference_gru_cell_layer_call_and_return_conditional_losses_192019

inputs
states_0*
readvariableop_resource:	А,
readvariableop_1_resource:	А-
readvariableop_4_resource:
АА
identity

identity_1ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вReadVariableOp_4вReadVariableOp_5вReadVariableOp_6G
ones_like/ShapeShapestates_0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:         Аg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	А*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numk
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	А*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ю
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskc
MatMulMatMulinputsstrided_slice:output:0*
T0*(
_output_shapes
:         Аk
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	А*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ў
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskg
MatMul_1MatMulinputsstrided_slice_1:output:0*
T0*(
_output_shapes
:         Аk
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	А*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ў
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskg
MatMul_2MatMulinputsstrided_slice_2:output:0*
T0*(
_output_shapes
:         А_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┌
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskq
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*(
_output_shapes
:         А`
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аb
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╚
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Аu
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*(
_output_shapes
:         А`
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╪
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_masku
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*(
_output_shapes
:         А[
mulMulstates_0ones_like:output:0*
T0*(
_output_shapes
:         А]
mul_1Mulstates_0ones_like:output:0*
T0*(
_output_shapes
:         А]
mul_2Mulstates_0ones_like:output:0*
T0*(
_output_shapes
:         Аl
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
АА*
dtype0f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskh
MatMul_3MatMulmul:z:0strided_slice_6:output:0*
T0*(
_output_shapes
:         Аl
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
АА*
dtype0f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskj
MatMul_4MatMul	mul_1:z:0strided_slice_7:output:0*
T0*(
_output_shapes
:         А_
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┌
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_masku
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*(
_output_shapes
:         А`
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аb
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╚
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Аu
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*(
_output_shapes
:         Аe
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*(
_output_shapes
:         АN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         Аi
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*(
_output_shapes
:         АR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         Аl
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
АА*
dtype0g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      √
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskk
MatMul_5MatMul	mul_2:z:0strided_slice_10:output:0*
T0*(
_output_shapes
:         Аa
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аb
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskv
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*(
_output_shapes
:         Аb
mul_3MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*(
_output_shapes
:         А`
add_2AddV2BiasAdd_2:output:0	mul_3:z:0*
T0*(
_output_shapes
:         АJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:         АV
mul_4MulSigmoid:y:0states_0*
T0*(
_output_shapes
:         АJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:         АR
mul_5Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:         АW
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*(
_output_shapes
:         АY
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         А[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         А╔
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         :         А: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0
ХЛ
╙
while_body_190821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	А=
*while_gru_cell_readvariableop_1_resource_0:	А>
*while_gru_cell_readvariableop_4_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	А;
(while_gru_cell_readvariableop_1_resource:	А<
(while_gru_cell_readvariableop_4_resource:
ААИвwhile/gru_cell/ReadVariableOpвwhile/gru_cell/ReadVariableOp_1вwhile/gru_cell/ReadVariableOp_2вwhile/gru_cell/ReadVariableOp_3вwhile/gru_cell/ReadVariableOp_4вwhile/gru_cell/ReadVariableOp_5вwhile/gru_cell/ReadVariableOp_6И
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0a
while/gru_cell/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:c
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?е
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         АЗ
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЛ
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0s
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╣
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskл
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         АЛ
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0u
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┴
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskп
while/gru_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         АЛ
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0u
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┴
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskп
while/gru_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аn
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: q
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskЮ
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ав
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskв
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         АД
while/gru_cell/mulMulwhile_placeholder_2!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АЖ
while/gru_cell/mul_1Mulwhile_placeholder_2!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АЖ
while/gru_cell/mul_2Mulwhile_placeholder_2!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0u
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        w
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┬
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskХ
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul:z:0'while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0u
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┬
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЧ
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аn
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: q
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskв
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ав
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АТ
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         Аl
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:         АЦ
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аp
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0v
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╞
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskШ
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_2:z:0(while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аp
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskг
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         АП
while/gru_cell/mul_3Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         АН
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         Аh
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:         А
while/gru_cell/mul_4Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:         АY
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         А
while/gru_cell/mul_5Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         АД
while/gru_cell/add_3AddV2while/gru_cell/mul_4:z:0while/gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         А┴
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         А╕

while/NoOpNoOp^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
ж
ю
$__inference_signature_wrapper_190656
input_1
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_188746o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         	
!
_user_specified_name	input_1
б

є
A__inference_dense_layer_call_and_return_conditional_losses_189524

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ПФ
╠
?__inference_gru_layer_call_and_return_conditional_losses_189497

inputs3
 gru_cell_readvariableop_resource:	А5
"gru_cell_readvariableop_1_resource:	А6
"gru_cell_readvariableop_4_resource:
АА
identityИвgru_cell/ReadVariableOpвgru_cell/ReadVariableOp_1вgru_cell/ReadVariableOp_2вgru_cell/ReadVariableOp_3вgru_cell/ReadVariableOp_4вgru_cell/ReadVariableOp_5вgru_cell/ReadVariableOp_6вwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskV
gru_cell/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:]
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         Аy
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
num}
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0m
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        o
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       o
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ы
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЗ
gru_cell/MatMulMatMulstrided_slice_2:output:0gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         А}
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0o
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      г
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЛ
gru_cell/MatMul_1MatMulstrided_slice_2:output:0!gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         А}
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0o
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        q
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      г
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЛ
gru_cell/MatMul_2MatMulstrided_slice_2:output:0!gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аh
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: k
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskМ
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АР
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskР
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         Аs
gru_cell/mulMulzeros:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         Аu
gru_cell/mul_1Mulzeros:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         Аu
gru_cell/mul_2Mulzeros:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0o
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        q
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskГ
gru_cell/MatMul_3MatMulgru_cell/mul:z:0!gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0o
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЕ
gru_cell/MatMul_4MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аh
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: k
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskР
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АР
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АА
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         А`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:         АД
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аd
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0p
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      и
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЖ
gru_cell/MatMul_5MatMulgru_cell/mul_2:z:0"gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аj
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: k
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskС
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         А}
gru_cell/mul_3Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         А{
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         А\
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:         Аn
gru_cell/mul_4Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:         АS
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         Аm
gru_cell/mul_5Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         Аr
gru_cell/add_3AddV2gru_cell/mul_4:z:0gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_189351*
condR
while_cond_189350*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:	         А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         	А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         	АР
NoOpNoOp^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
▄
к
while_cond_189350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_189350___redundant_placeholder04
0while_while_cond_189350___redundant_placeholder14
0while_while_cond_189350___redundant_placeholder24
0while_while_cond_189350___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
ь3
Ў
?__inference_gru_layer_call_and_return_conditional_losses_189213

inputs"
gru_cell_189137:	А"
gru_cell_189139:	А#
gru_cell_189141:
АА
identityИв gru_cell/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask╝
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_189137gru_cell_189139gru_cell_189141*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_gru_cell_layer_call_and_return_conditional_losses_189097n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ї
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_189137gru_cell_189139gru_cell_189141*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_189149*
condR
while_cond_189148*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  Аq
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
╧
в
while_body_189149
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_gru_cell_189171_0:	А*
while_gru_cell_189173_0:	А+
while_gru_cell_189175_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_gru_cell_189171:	А(
while_gru_cell_189173:	А)
while_gru_cell_189175:
ААИв&while/gru_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ў
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_189171_0while_gru_cell_189173_0while_gru_cell_189175_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_gru_cell_layer_call_and_return_conditional_losses_189097╪
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥Н
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         Аu

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "0
while_gru_cell_189171while_gru_cell_189171_0"0
while_gru_cell_189173while_gru_cell_189173_0"0
while_gru_cell_189175while_gru_cell_189175_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
Я[
Л
D__inference_gru_cell_layer_call_and_return_conditional_losses_188873

inputs

states*
readvariableop_resource:	А,
readvariableop_1_resource:	А-
readvariableop_4_resource:
АА
identity

identity_1ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вReadVariableOp_4вReadVariableOp_5вReadVariableOp_6E
ones_like/ShapeShapestates*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:         Аg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	А*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numk
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	А*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ю
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskc
MatMulMatMulinputsstrided_slice:output:0*
T0*(
_output_shapes
:         Аk
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	А*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ў
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskg
MatMul_1MatMulinputsstrided_slice_1:output:0*
T0*(
_output_shapes
:         Аk
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	А*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ў
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskg
MatMul_2MatMulinputsstrided_slice_2:output:0*
T0*(
_output_shapes
:         А_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┌
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskq
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*(
_output_shapes
:         А`
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аb
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╚
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Аu
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*(
_output_shapes
:         А`
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╪
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_masku
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*(
_output_shapes
:         АY
mulMulstatesones_like:output:0*
T0*(
_output_shapes
:         А[
mul_1Mulstatesones_like:output:0*
T0*(
_output_shapes
:         А[
mul_2Mulstatesones_like:output:0*
T0*(
_output_shapes
:         Аl
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
АА*
dtype0f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskh
MatMul_3MatMulmul:z:0strided_slice_6:output:0*
T0*(
_output_shapes
:         Аl
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
АА*
dtype0f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskj
MatMul_4MatMul	mul_1:z:0strided_slice_7:output:0*
T0*(
_output_shapes
:         А_
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┌
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_masku
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*(
_output_shapes
:         А`
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аb
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╚
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Аu
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*(
_output_shapes
:         Аe
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*(
_output_shapes
:         АN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         Аi
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*(
_output_shapes
:         АR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         Аl
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
АА*
dtype0g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      √
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskk
MatMul_5MatMul	mul_2:z:0strided_slice_10:output:0*
T0*(
_output_shapes
:         Аa
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аb
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskv
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*(
_output_shapes
:         Аb
mul_3MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*(
_output_shapes
:         А`
add_2AddV2BiasAdd_2:output:0	mul_3:z:0*
T0*(
_output_shapes
:         АJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:         АT
mul_4MulSigmoid:y:0states*
T0*(
_output_shapes
:         АJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:         АR
mul_5Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:         АW
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*(
_output_shapes
:         АY
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         А[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         А╔
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         :         А: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_namestates
ХЛ
╙
while_body_191403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	А=
*while_gru_cell_readvariableop_1_resource_0:	А>
*while_gru_cell_readvariableop_4_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	А;
(while_gru_cell_readvariableop_1_resource:	А<
(while_gru_cell_readvariableop_4_resource:
ААИвwhile/gru_cell/ReadVariableOpвwhile/gru_cell/ReadVariableOp_1вwhile/gru_cell/ReadVariableOp_2вwhile/gru_cell/ReadVariableOp_3вwhile/gru_cell/ReadVariableOp_4вwhile/gru_cell/ReadVariableOp_5вwhile/gru_cell/ReadVariableOp_6И
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0a
while/gru_cell/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:c
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?е
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         АЗ
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЛ
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0s
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╣
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskл
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         АЛ
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0u
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┴
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskп
while/gru_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         АЛ
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0u
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┴
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskп
while/gru_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аn
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: q
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskЮ
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ав
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskв
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         АД
while/gru_cell/mulMulwhile_placeholder_2!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АЖ
while/gru_cell/mul_1Mulwhile_placeholder_2!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АЖ
while/gru_cell/mul_2Mulwhile_placeholder_2!while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0u
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        w
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┬
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskХ
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul:z:0'while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0u
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┬
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЧ
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аn
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: q
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskв
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ав
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АТ
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         Аl
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:         АЦ
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аp
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0v
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╞
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskШ
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_2:z:0(while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аp
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskг
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         АП
while/gru_cell/mul_3Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         АН
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         Аh
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:         А
while/gru_cell/mul_4Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:         АY
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         А
while/gru_cell/mul_5Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         АД
while/gru_cell/add_3AddV2while/gru_cell/mul_4:z:0while/gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         А┴
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         А╕

while/NoOpNoOp^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
╟н
╠
?__inference_gru_layer_call_and_return_conditional_losses_191864

inputs3
 gru_cell_readvariableop_resource:	А5
"gru_cell_readvariableop_1_resource:	А6
"gru_cell_readvariableop_4_resource:
АА
identityИвgru_cell/ReadVariableOpвgru_cell/ReadVariableOp_1вgru_cell/ReadVariableOp_2вgru_cell/ReadVariableOp_3вgru_cell/ReadVariableOp_4вgru_cell/ReadVariableOp_5вgru_cell/ReadVariableOp_6вwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:	         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskV
gru_cell/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:]
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         А[
gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?М
gru_cell/dropout/MulMulgru_cell/ones_like:output:0gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         Аa
gru_cell/dropout/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:Я
-gru_cell/dropout/random_uniform/RandomUniformRandomUniformgru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0d
gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>┬
gru_cell/dropout/GreaterEqualGreaterEqual6gru_cell/dropout/random_uniform/RandomUniform:output:0(gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АВ
gru_cell/dropout/CastCast!gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЕ
gru_cell/dropout/Mul_1Mulgru_cell/dropout/Mul:z:0gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:         А]
gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Р
gru_cell/dropout_1/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         Аc
gru_cell/dropout_1/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:г
/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╚
gru_cell/dropout_1/GreaterEqualGreaterEqual8gru_cell/dropout_1/random_uniform/RandomUniform:output:0*gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЖ
gru_cell/dropout_1/CastCast#gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЛ
gru_cell/dropout_1/Mul_1Mulgru_cell/dropout_1/Mul:z:0gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         А]
gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Р
gru_cell/dropout_2/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         Аc
gru_cell/dropout_2/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:г
/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╚
gru_cell/dropout_2/GreaterEqualGreaterEqual8gru_cell/dropout_2/random_uniform/RandomUniform:output:0*gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЖ
gru_cell/dropout_2/CastCast#gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЛ
gru_cell/dropout_2/Mul_1Mulgru_cell/dropout_2/Mul:z:0gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         Аy
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
num}
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0m
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        o
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       o
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ы
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЗ
gru_cell/MatMulMatMulstrided_slice_2:output:0gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         А}
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0o
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      г
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЛ
gru_cell/MatMul_1MatMulstrided_slice_2:output:0!gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         А}
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0o
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        q
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      г
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЛ
gru_cell/MatMul_2MatMulstrided_slice_2:output:0!gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аh
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: k
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskМ
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АР
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskР
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         Аr
gru_cell/mulMulzeros:output:0gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         Аv
gru_cell/mul_1Mulzeros:output:0gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         Аv
gru_cell/mul_2Mulzeros:output:0gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0o
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        q
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskГ
gru_cell/MatMul_3MatMulgru_cell/mul:z:0!gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0o
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЕ
gru_cell/MatMul_4MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аh
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: k
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskР
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АР
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АА
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         А`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:         АД
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аd
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0p
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      и
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЖ
gru_cell/MatMul_5MatMulgru_cell/mul_2:z:0"gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аj
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: k
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskС
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         А}
gru_cell/mul_3Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         А{
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         А\
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:         Аn
gru_cell/mul_4Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:         АS
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         Аm
gru_cell/mul_5Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         Аr
gru_cell/add_3AddV2gru_cell/mul_4:z:0gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_191694*
condR
while_cond_191693*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:	         А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         	А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         	АР
NoOpNoOp^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
эФ
█	
gru_while_body_190158$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2#
gru_while_gru_strided_slice_1_0_
[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0?
,gru_while_gru_cell_readvariableop_resource_0:	АA
.gru_while_gru_cell_readvariableop_1_resource_0:	АB
.gru_while_gru_cell_readvariableop_4_resource_0:
АА
gru_while_identity
gru_while_identity_1
gru_while_identity_2
gru_while_identity_3
gru_while_identity_4!
gru_while_gru_strided_slice_1]
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor=
*gru_while_gru_cell_readvariableop_resource:	А?
,gru_while_gru_cell_readvariableop_1_resource:	А@
,gru_while_gru_cell_readvariableop_4_resource:
ААИв!gru/while/gru_cell/ReadVariableOpв#gru/while/gru_cell/ReadVariableOp_1в#gru/while/gru_cell/ReadVariableOp_2в#gru/while/gru_cell/ReadVariableOp_3в#gru/while/gru_cell/ReadVariableOp_4в#gru/while/gru_cell/ReadVariableOp_5в#gru/while/gru_cell/ReadVariableOp_6М
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ║
-gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0gru_while_placeholderDgru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0i
"gru/while/gru_cell/ones_like/ShapeShapegru_while_placeholder_2*
T0*
_output_shapes
:g
"gru/while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▒
gru/while/gru_cell/ones_likeFill+gru/while/gru_cell/ones_like/Shape:output:0+gru/while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         АП
!gru/while/gru_cell/ReadVariableOpReadVariableOp,gru_while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0З
gru/while/gru_cell/unstackUnpack)gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numУ
#gru/while/gru_cell/ReadVariableOp_1ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0w
&gru/while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(gru/while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       y
(gru/while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ═
 gru/while/gru_cell/strided_sliceStridedSlice+gru/while/gru_cell/ReadVariableOp_1:value:0/gru/while/gru_cell/strided_slice/stack:output:01gru/while/gru_cell/strided_slice/stack_1:output:01gru/while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_mask╖
gru/while/gru_cell/MatMulMatMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0)gru/while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         АУ
#gru/while/gru_cell/ReadVariableOp_2ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0y
(gru/while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*gru/while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*gru/while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╒
"gru/while/gru_cell/strided_slice_1StridedSlice+gru/while/gru_cell/ReadVariableOp_2:value:01gru/while/gru_cell/strided_slice_1/stack:output:03gru/while/gru_cell/strided_slice_1/stack_1:output:03gru/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_mask╗
gru/while/gru_cell/MatMul_1MatMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0+gru/while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         АУ
#gru/while/gru_cell/ReadVariableOp_3ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0y
(gru/while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*gru/while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*gru/while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╒
"gru/while/gru_cell/strided_slice_2StridedSlice+gru/while/gru_cell/ReadVariableOp_3:value:01gru/while/gru_cell/strided_slice_2/stack:output:03gru/while/gru_cell/strided_slice_2/stack_1:output:03gru/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_mask╗
gru/while/gru_cell/MatMul_2MatMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0+gru/while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аr
(gru/while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: u
*gru/while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аt
*gru/while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╣
"gru/while/gru_cell/strided_slice_3StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_3/stack:output:03gru/while/gru_cell/strided_slice_3/stack_1:output:03gru/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskк
gru/while/gru_cell/BiasAddBiasAdd#gru/while/gru_cell/MatMul:product:0+gru/while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аs
(gru/while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аu
*gru/while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аt
*gru/while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
"gru/while/gru_cell/strided_slice_4StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_4/stack:output:03gru/while/gru_cell/strided_slice_4/stack_1:output:03gru/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ао
gru/while/gru_cell/BiasAdd_1BiasAdd%gru/while/gru_cell/MatMul_1:product:0+gru/while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аs
(gru/while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аt
*gru/while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: t
*gru/while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╖
"gru/while/gru_cell/strided_slice_5StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_5/stack:output:03gru/while/gru_cell/strided_slice_5/stack_1:output:03gru/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskо
gru/while/gru_cell/BiasAdd_2BiasAdd%gru/while/gru_cell/MatMul_2:product:0+gru/while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         АР
gru/while/gru_cell/mulMulgru_while_placeholder_2%gru/while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АТ
gru/while/gru_cell/mul_1Mulgru_while_placeholder_2%gru/while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АТ
gru/while/gru_cell/mul_2Mulgru_while_placeholder_2%gru/while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АФ
#gru/while/gru_cell/ReadVariableOp_4ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0y
(gru/while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*gru/while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*gru/while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"gru/while/gru_cell/strided_slice_6StridedSlice+gru/while/gru_cell/ReadVariableOp_4:value:01gru/while/gru_cell/strided_slice_6/stack:output:03gru/while/gru_cell/strided_slice_6/stack_1:output:03gru/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskб
gru/while/gru_cell/MatMul_3MatMulgru/while/gru_cell/mul:z:0+gru/while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         АФ
#gru/while/gru_cell/ReadVariableOp_5ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0y
(gru/while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*gru/while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*gru/while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"gru/while/gru_cell/strided_slice_7StridedSlice+gru/while/gru_cell/ReadVariableOp_5:value:01gru/while/gru_cell/strided_slice_7/stack:output:03gru/while/gru_cell/strided_slice_7/stack_1:output:03gru/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskг
gru/while/gru_cell/MatMul_4MatMulgru/while/gru_cell/mul_1:z:0+gru/while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аr
(gru/while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: u
*gru/while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аt
*gru/while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╣
"gru/while/gru_cell/strided_slice_8StridedSlice#gru/while/gru_cell/unstack:output:11gru/while/gru_cell/strided_slice_8/stack:output:03gru/while/gru_cell/strided_slice_8/stack_1:output:03gru/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskо
gru/while/gru_cell/BiasAdd_3BiasAdd%gru/while/gru_cell/MatMul_3:product:0+gru/while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аs
(gru/while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аu
*gru/while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аt
*gru/while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
"gru/while/gru_cell/strided_slice_9StridedSlice#gru/while/gru_cell/unstack:output:11gru/while/gru_cell/strided_slice_9/stack:output:03gru/while/gru_cell/strided_slice_9/stack_1:output:03gru/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ао
gru/while/gru_cell/BiasAdd_4BiasAdd%gru/while/gru_cell/MatMul_4:product:0+gru/while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АЮ
gru/while/gru_cell/addAddV2#gru/while/gru_cell/BiasAdd:output:0%gru/while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         Аt
gru/while/gru_cell/SigmoidSigmoidgru/while/gru_cell/add:z:0*
T0*(
_output_shapes
:         Ав
gru/while/gru_cell/add_1AddV2%gru/while/gru_cell/BiasAdd_1:output:0%gru/while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аx
gru/while/gru_cell/Sigmoid_1Sigmoidgru/while/gru_cell/add_1:z:0*
T0*(
_output_shapes
:         АФ
#gru/while/gru_cell/ReadVariableOp_6ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0z
)gru/while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       |
+gru/while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        |
+gru/while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┌
#gru/while/gru_cell/strided_slice_10StridedSlice+gru/while/gru_cell/ReadVariableOp_6:value:02gru/while/gru_cell/strided_slice_10/stack:output:04gru/while/gru_cell/strided_slice_10/stack_1:output:04gru/while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskд
gru/while/gru_cell/MatMul_5MatMulgru/while/gru_cell/mul_2:z:0,gru/while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аt
)gru/while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аu
+gru/while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+gru/while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╗
#gru/while/gru_cell/strided_slice_11StridedSlice#gru/while/gru_cell/unstack:output:12gru/while/gru_cell/strided_slice_11/stack:output:04gru/while/gru_cell/strided_slice_11/stack_1:output:04gru/while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskп
gru/while/gru_cell/BiasAdd_5BiasAdd%gru/while/gru_cell/MatMul_5:product:0,gru/while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         АЫ
gru/while/gru_cell/mul_3Mul gru/while/gru_cell/Sigmoid_1:y:0%gru/while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         АЩ
gru/while/gru_cell/add_2AddV2%gru/while/gru_cell/BiasAdd_2:output:0gru/while/gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         Аp
gru/while/gru_cell/TanhTanhgru/while/gru_cell/add_2:z:0*
T0*(
_output_shapes
:         АЛ
gru/while/gru_cell/mul_4Mulgru/while/gru_cell/Sigmoid:y:0gru_while_placeholder_2*
T0*(
_output_shapes
:         А]
gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
gru/while/gru_cell/subSub!gru/while/gru_cell/sub/x:output:0gru/while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         АЛ
gru/while/gru_cell/mul_5Mulgru/while/gru_cell/sub:z:0gru/while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         АР
gru/while/gru_cell/add_3AddV2gru/while/gru_cell/mul_4:z:0gru/while/gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         А╤
.gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_while_placeholder_1gru_while_placeholdergru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥Q
gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
gru/while/addAddV2gru_while_placeholdergru/while/add/y:output:0*
T0*
_output_shapes
: S
gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
gru/while/add_1AddV2 gru_while_gru_while_loop_countergru/while/add_1/y:output:0*
T0*
_output_shapes
: e
gru/while/IdentityIdentitygru/while/add_1:z:0^gru/while/NoOp*
T0*
_output_shapes
: z
gru/while/Identity_1Identity&gru_while_gru_while_maximum_iterations^gru/while/NoOp*
T0*
_output_shapes
: e
gru/while/Identity_2Identitygru/while/add:z:0^gru/while/NoOp*
T0*
_output_shapes
: е
gru/while/Identity_3Identity>gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru/while/NoOp*
T0*
_output_shapes
: :щш╥В
gru/while/Identity_4Identitygru/while/gru_cell/add_3:z:0^gru/while/NoOp*
T0*(
_output_shapes
:         А╪
gru/while/NoOpNoOp"^gru/while/gru_cell/ReadVariableOp$^gru/while/gru_cell/ReadVariableOp_1$^gru/while/gru_cell/ReadVariableOp_2$^gru/while/gru_cell/ReadVariableOp_3$^gru/while/gru_cell/ReadVariableOp_4$^gru/while/gru_cell/ReadVariableOp_5$^gru/while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "^
,gru_while_gru_cell_readvariableop_1_resource.gru_while_gru_cell_readvariableop_1_resource_0"^
,gru_while_gru_cell_readvariableop_4_resource.gru_while_gru_cell_readvariableop_4_resource_0"Z
*gru_while_gru_cell_readvariableop_resource,gru_while_gru_cell_readvariableop_resource_0"@
gru_while_gru_strided_slice_1gru_while_gru_strided_slice_1_0"1
gru_while_identitygru/while/Identity:output:0"5
gru_while_identity_1gru/while/Identity_1:output:0"5
gru_while_identity_2gru/while/Identity_2:output:0"5
gru_while_identity_3gru/while/Identity_3:output:0"5
gru_while_identity_4gru/while/Identity_4:output:0"╕
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2F
!gru/while/gru_cell/ReadVariableOp!gru/while/gru_cell/ReadVariableOp2J
#gru/while/gru_cell/ReadVariableOp_1#gru/while/gru_cell/ReadVariableOp_12J
#gru/while/gru_cell/ReadVariableOp_2#gru/while/gru_cell/ReadVariableOp_22J
#gru/while/gru_cell/ReadVariableOp_3#gru/while/gru_cell/ReadVariableOp_32J
#gru/while/gru_cell/ReadVariableOp_4#gru/while/gru_cell/ReadVariableOp_42J
#gru/while/gru_cell/ReadVariableOp_5#gru/while/gru_cell/ReadVariableOp_52J
#gru/while/gru_cell/ReadVariableOp_6#gru/while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
▄
к
while_cond_188885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_188885___redundant_placeholder04
0while_while_cond_188885___redundant_placeholder14
0while_while_cond_188885___redundant_placeholder24
0while_while_cond_188885___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
╧
в
while_body_188886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_gru_cell_188908_0:	А*
while_gru_cell_188910_0:	А+
while_gru_cell_188912_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_gru_cell_188908:	А(
while_gru_cell_188910:	А)
while_gru_cell_188912:
ААИв&while/gru_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ў
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_188908_0while_gru_cell_188910_0while_gru_cell_188912_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_gru_cell_layer_call_and_return_conditional_losses_188873╪
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥Н
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         Аu

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "0
while_gru_cell_188908while_gru_cell_188908_0"0
while_gru_cell_188910while_gru_cell_188910_0"0
while_gru_cell_188912while_gru_cell_188912_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
▄
к
while_cond_189717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_189717___redundant_placeholder04
0while_while_cond_189717___redundant_placeholder14
0while_while_cond_189717___redundant_placeholder24
0while_while_cond_189717___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
■
╢
$__inference_gru_layer_call_fn_190689

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         	А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_189497t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         	А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
▄
к
while_cond_189148
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_189148___redundant_placeholder04
0while_while_cond_189148___redundant_placeholder14
0while_while_cond_189148___redundant_placeholder24
0while_while_cond_189148___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
┐
_
C__inference_flatten_layer_call_and_return_conditional_losses_189511

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         	А:T P
,
_output_shapes
:         	А
 
_user_specified_nameinputs
и
╕
$__inference_gru_layer_call_fn_190667
inputs_0
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_188950}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
ь3
Ў
?__inference_gru_layer_call_and_return_conditional_losses_188950

inputs"
gru_cell_188874:	А"
gru_cell_188876:	А#
gru_cell_188878:
АА
identityИв gru_cell/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask╝
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_188874gru_cell_188876gru_cell_188878*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_gru_cell_layer_call_and_return_conditional_losses_188873n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ї
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_188874gru_cell_188876gru_cell_188878*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_188886*
condR
while_cond_188885*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  Аq
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
╡

┘
)__inference_gru_cell_layer_call_fn_191923

inputs
states_0
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identity

identity_1ИвStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_gru_cell_layer_call_and_return_conditional_losses_189097p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         :         А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0
┐
_
C__inference_flatten_layer_call_and_return_conditional_losses_191875

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         	А:T P
,
_output_shapes
:         	А
 
_user_specified_nameinputs
┼
я
&__inference_model_layer_call_fn_190020

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_189531o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs
г▓
█	
gru_while_body_190460$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2#
gru_while_gru_strided_slice_1_0_
[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0?
,gru_while_gru_cell_readvariableop_resource_0:	АA
.gru_while_gru_cell_readvariableop_1_resource_0:	АB
.gru_while_gru_cell_readvariableop_4_resource_0:
АА
gru_while_identity
gru_while_identity_1
gru_while_identity_2
gru_while_identity_3
gru_while_identity_4!
gru_while_gru_strided_slice_1]
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor=
*gru_while_gru_cell_readvariableop_resource:	А?
,gru_while_gru_cell_readvariableop_1_resource:	А@
,gru_while_gru_cell_readvariableop_4_resource:
ААИв!gru/while/gru_cell/ReadVariableOpв#gru/while/gru_cell/ReadVariableOp_1в#gru/while/gru_cell/ReadVariableOp_2в#gru/while/gru_cell/ReadVariableOp_3в#gru/while/gru_cell/ReadVariableOp_4в#gru/while/gru_cell/ReadVariableOp_5в#gru/while/gru_cell/ReadVariableOp_6М
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ║
-gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0gru_while_placeholderDgru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0i
"gru/while/gru_cell/ones_like/ShapeShapegru_while_placeholder_2*
T0*
_output_shapes
:g
"gru/while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▒
gru/while/gru_cell/ones_likeFill+gru/while/gru_cell/ones_like/Shape:output:0+gru/while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         Аe
 gru/while/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?к
gru/while/gru_cell/dropout/MulMul%gru/while/gru_cell/ones_like:output:0)gru/while/gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         Аu
 gru/while/gru_cell/dropout/ShapeShape%gru/while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:│
7gru/while/gru_cell/dropout/random_uniform/RandomUniformRandomUniform)gru/while/gru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0n
)gru/while/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>р
'gru/while/gru_cell/dropout/GreaterEqualGreaterEqual@gru/while/gru_cell/dropout/random_uniform/RandomUniform:output:02gru/while/gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЦ
gru/while/gru_cell/dropout/CastCast+gru/while/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аг
 gru/while/gru_cell/dropout/Mul_1Mul"gru/while/gru_cell/dropout/Mul:z:0#gru/while/gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:         Аg
"gru/while/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?о
 gru/while/gru_cell/dropout_1/MulMul%gru/while/gru_cell/ones_like:output:0+gru/while/gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         Аw
"gru/while/gru_cell/dropout_1/ShapeShape%gru/while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:╖
9gru/while/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform+gru/while/gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0p
+gru/while/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>ц
)gru/while/gru_cell/dropout_1/GreaterEqualGreaterEqualBgru/while/gru_cell/dropout_1/random_uniform/RandomUniform:output:04gru/while/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЪ
!gru/while/gru_cell/dropout_1/CastCast-gru/while/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Ай
"gru/while/gru_cell/dropout_1/Mul_1Mul$gru/while/gru_cell/dropout_1/Mul:z:0%gru/while/gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         Аg
"gru/while/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?о
 gru/while/gru_cell/dropout_2/MulMul%gru/while/gru_cell/ones_like:output:0+gru/while/gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         Аw
"gru/while/gru_cell/dropout_2/ShapeShape%gru/while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:╖
9gru/while/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform+gru/while/gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0p
+gru/while/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>ц
)gru/while/gru_cell/dropout_2/GreaterEqualGreaterEqualBgru/while/gru_cell/dropout_2/random_uniform/RandomUniform:output:04gru/while/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЪ
!gru/while/gru_cell/dropout_2/CastCast-gru/while/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Ай
"gru/while/gru_cell/dropout_2/Mul_1Mul$gru/while/gru_cell/dropout_2/Mul:z:0%gru/while/gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         АП
!gru/while/gru_cell/ReadVariableOpReadVariableOp,gru_while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0З
gru/while/gru_cell/unstackUnpack)gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numУ
#gru/while/gru_cell/ReadVariableOp_1ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0w
&gru/while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(gru/while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       y
(gru/while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ═
 gru/while/gru_cell/strided_sliceStridedSlice+gru/while/gru_cell/ReadVariableOp_1:value:0/gru/while/gru_cell/strided_slice/stack:output:01gru/while/gru_cell/strided_slice/stack_1:output:01gru/while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_mask╖
gru/while/gru_cell/MatMulMatMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0)gru/while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         АУ
#gru/while/gru_cell/ReadVariableOp_2ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0y
(gru/while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*gru/while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*gru/while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╒
"gru/while/gru_cell/strided_slice_1StridedSlice+gru/while/gru_cell/ReadVariableOp_2:value:01gru/while/gru_cell/strided_slice_1/stack:output:03gru/while/gru_cell/strided_slice_1/stack_1:output:03gru/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_mask╗
gru/while/gru_cell/MatMul_1MatMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0+gru/while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         АУ
#gru/while/gru_cell/ReadVariableOp_3ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0y
(gru/while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*gru/while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*gru/while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╒
"gru/while/gru_cell/strided_slice_2StridedSlice+gru/while/gru_cell/ReadVariableOp_3:value:01gru/while/gru_cell/strided_slice_2/stack:output:03gru/while/gru_cell/strided_slice_2/stack_1:output:03gru/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_mask╗
gru/while/gru_cell/MatMul_2MatMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0+gru/while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аr
(gru/while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: u
*gru/while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аt
*gru/while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╣
"gru/while/gru_cell/strided_slice_3StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_3/stack:output:03gru/while/gru_cell/strided_slice_3/stack_1:output:03gru/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskк
gru/while/gru_cell/BiasAddBiasAdd#gru/while/gru_cell/MatMul:product:0+gru/while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аs
(gru/while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аu
*gru/while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аt
*gru/while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
"gru/while/gru_cell/strided_slice_4StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_4/stack:output:03gru/while/gru_cell/strided_slice_4/stack_1:output:03gru/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ао
gru/while/gru_cell/BiasAdd_1BiasAdd%gru/while/gru_cell/MatMul_1:product:0+gru/while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аs
(gru/while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аt
*gru/while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: t
*gru/while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╖
"gru/while/gru_cell/strided_slice_5StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_5/stack:output:03gru/while/gru_cell/strided_slice_5/stack_1:output:03gru/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskо
gru/while/gru_cell/BiasAdd_2BiasAdd%gru/while/gru_cell/MatMul_2:product:0+gru/while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         АП
gru/while/gru_cell/mulMulgru_while_placeholder_2$gru/while/gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         АУ
gru/while/gru_cell/mul_1Mulgru_while_placeholder_2&gru/while/gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         АУ
gru/while/gru_cell/mul_2Mulgru_while_placeholder_2&gru/while/gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         АФ
#gru/while/gru_cell/ReadVariableOp_4ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0y
(gru/while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*gru/while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*gru/while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"gru/while/gru_cell/strided_slice_6StridedSlice+gru/while/gru_cell/ReadVariableOp_4:value:01gru/while/gru_cell/strided_slice_6/stack:output:03gru/while/gru_cell/strided_slice_6/stack_1:output:03gru/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskб
gru/while/gru_cell/MatMul_3MatMulgru/while/gru_cell/mul:z:0+gru/while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         АФ
#gru/while/gru_cell/ReadVariableOp_5ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0y
(gru/while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*gru/while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*gru/while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"gru/while/gru_cell/strided_slice_7StridedSlice+gru/while/gru_cell/ReadVariableOp_5:value:01gru/while/gru_cell/strided_slice_7/stack:output:03gru/while/gru_cell/strided_slice_7/stack_1:output:03gru/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskг
gru/while/gru_cell/MatMul_4MatMulgru/while/gru_cell/mul_1:z:0+gru/while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аr
(gru/while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: u
*gru/while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аt
*gru/while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╣
"gru/while/gru_cell/strided_slice_8StridedSlice#gru/while/gru_cell/unstack:output:11gru/while/gru_cell/strided_slice_8/stack:output:03gru/while/gru_cell/strided_slice_8/stack_1:output:03gru/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskо
gru/while/gru_cell/BiasAdd_3BiasAdd%gru/while/gru_cell/MatMul_3:product:0+gru/while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аs
(gru/while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аu
*gru/while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аt
*gru/while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
"gru/while/gru_cell/strided_slice_9StridedSlice#gru/while/gru_cell/unstack:output:11gru/while/gru_cell/strided_slice_9/stack:output:03gru/while/gru_cell/strided_slice_9/stack_1:output:03gru/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ао
gru/while/gru_cell/BiasAdd_4BiasAdd%gru/while/gru_cell/MatMul_4:product:0+gru/while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АЮ
gru/while/gru_cell/addAddV2#gru/while/gru_cell/BiasAdd:output:0%gru/while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         Аt
gru/while/gru_cell/SigmoidSigmoidgru/while/gru_cell/add:z:0*
T0*(
_output_shapes
:         Ав
gru/while/gru_cell/add_1AddV2%gru/while/gru_cell/BiasAdd_1:output:0%gru/while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аx
gru/while/gru_cell/Sigmoid_1Sigmoidgru/while/gru_cell/add_1:z:0*
T0*(
_output_shapes
:         АФ
#gru/while/gru_cell/ReadVariableOp_6ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0z
)gru/while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       |
+gru/while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        |
+gru/while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┌
#gru/while/gru_cell/strided_slice_10StridedSlice+gru/while/gru_cell/ReadVariableOp_6:value:02gru/while/gru_cell/strided_slice_10/stack:output:04gru/while/gru_cell/strided_slice_10/stack_1:output:04gru/while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskд
gru/while/gru_cell/MatMul_5MatMulgru/while/gru_cell/mul_2:z:0,gru/while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аt
)gru/while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аu
+gru/while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+gru/while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╗
#gru/while/gru_cell/strided_slice_11StridedSlice#gru/while/gru_cell/unstack:output:12gru/while/gru_cell/strided_slice_11/stack:output:04gru/while/gru_cell/strided_slice_11/stack_1:output:04gru/while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskп
gru/while/gru_cell/BiasAdd_5BiasAdd%gru/while/gru_cell/MatMul_5:product:0,gru/while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         АЫ
gru/while/gru_cell/mul_3Mul gru/while/gru_cell/Sigmoid_1:y:0%gru/while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         АЩ
gru/while/gru_cell/add_2AddV2%gru/while/gru_cell/BiasAdd_2:output:0gru/while/gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         Аp
gru/while/gru_cell/TanhTanhgru/while/gru_cell/add_2:z:0*
T0*(
_output_shapes
:         АЛ
gru/while/gru_cell/mul_4Mulgru/while/gru_cell/Sigmoid:y:0gru_while_placeholder_2*
T0*(
_output_shapes
:         А]
gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
gru/while/gru_cell/subSub!gru/while/gru_cell/sub/x:output:0gru/while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         АЛ
gru/while/gru_cell/mul_5Mulgru/while/gru_cell/sub:z:0gru/while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         АР
gru/while/gru_cell/add_3AddV2gru/while/gru_cell/mul_4:z:0gru/while/gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         А╤
.gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_while_placeholder_1gru_while_placeholdergru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥Q
gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
gru/while/addAddV2gru_while_placeholdergru/while/add/y:output:0*
T0*
_output_shapes
: S
gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
gru/while/add_1AddV2 gru_while_gru_while_loop_countergru/while/add_1/y:output:0*
T0*
_output_shapes
: e
gru/while/IdentityIdentitygru/while/add_1:z:0^gru/while/NoOp*
T0*
_output_shapes
: z
gru/while/Identity_1Identity&gru_while_gru_while_maximum_iterations^gru/while/NoOp*
T0*
_output_shapes
: e
gru/while/Identity_2Identitygru/while/add:z:0^gru/while/NoOp*
T0*
_output_shapes
: е
gru/while/Identity_3Identity>gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru/while/NoOp*
T0*
_output_shapes
: :щш╥В
gru/while/Identity_4Identitygru/while/gru_cell/add_3:z:0^gru/while/NoOp*
T0*(
_output_shapes
:         А╪
gru/while/NoOpNoOp"^gru/while/gru_cell/ReadVariableOp$^gru/while/gru_cell/ReadVariableOp_1$^gru/while/gru_cell/ReadVariableOp_2$^gru/while/gru_cell/ReadVariableOp_3$^gru/while/gru_cell/ReadVariableOp_4$^gru/while/gru_cell/ReadVariableOp_5$^gru/while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "^
,gru_while_gru_cell_readvariableop_1_resource.gru_while_gru_cell_readvariableop_1_resource_0"^
,gru_while_gru_cell_readvariableop_4_resource.gru_while_gru_cell_readvariableop_4_resource_0"Z
*gru_while_gru_cell_readvariableop_resource,gru_while_gru_cell_readvariableop_resource_0"@
gru_while_gru_strided_slice_1gru_while_gru_strided_slice_1_0"1
gru_while_identitygru/while/Identity:output:0"5
gru_while_identity_1gru/while/Identity_1:output:0"5
gru_while_identity_2gru/while/Identity_2:output:0"5
gru_while_identity_3gru/while/Identity_3:output:0"5
gru_while_identity_4gru/while/Identity_4:output:0"╕
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2F
!gru/while/gru_cell/ReadVariableOp!gru/while/gru_cell/ReadVariableOp2J
#gru/while/gru_cell/ReadVariableOp_1#gru/while/gru_cell/ReadVariableOp_12J
#gru/while/gru_cell/ReadVariableOp_2#gru/while/gru_cell/ReadVariableOp_22J
#gru/while/gru_cell/ReadVariableOp_3#gru/while/gru_cell/ReadVariableOp_32J
#gru/while/gru_cell/ReadVariableOp_4#gru/while/gru_cell/ReadVariableOp_42J
#gru/while/gru_cell/ReadVariableOp_5#gru/while/gru_cell/ReadVariableOp_52J
#gru/while/gru_cell/ReadVariableOp_6#gru/while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
┼
я
&__inference_model_layer_call_fn_190035

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_189933o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs
▄
к
while_cond_190820
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_190820___redundant_placeholder04
0while_while_cond_190820___redundant_placeholder14
0while_while_cond_190820___redundant_placeholder24
0while_while_cond_190820___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
 ж
╙
while_body_191694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	А=
*while_gru_cell_readvariableop_1_resource_0:	А>
*while_gru_cell_readvariableop_4_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	А;
(while_gru_cell_readvariableop_1_resource:	А<
(while_gru_cell_readvariableop_4_resource:
ААИвwhile/gru_cell/ReadVariableOpвwhile/gru_cell/ReadVariableOp_1вwhile/gru_cell/ReadVariableOp_2вwhile/gru_cell/ReadVariableOp_3вwhile/gru_cell/ReadVariableOp_4вwhile/gru_cell/ReadVariableOp_5вwhile/gru_cell/ReadVariableOp_6И
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0a
while/gru_cell/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:c
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?е
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         Аa
while/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ю
while/gru_cell/dropout/MulMul!while/gru_cell/ones_like:output:0%while/gru_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         Аm
while/gru_cell/dropout/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:л
3while/gru_cell/dropout/random_uniform/RandomUniformRandomUniform%while/gru_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0j
%while/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╘
#while/gru_cell/dropout/GreaterEqualGreaterEqual<while/gru_cell/dropout/random_uniform/RandomUniform:output:0.while/gru_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АО
while/gru_cell/dropout/CastCast'while/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЧ
while/gru_cell/dropout/Mul_1Mulwhile/gru_cell/dropout/Mul:z:0while/gru_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:         Аc
while/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?в
while/gru_cell/dropout_1/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         Аo
while/gru_cell/dropout_1/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:п
5while/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0l
'while/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>┌
%while/gru_cell/dropout_1/GreaterEqualGreaterEqual>while/gru_cell/dropout_1/random_uniform/RandomUniform:output:00while/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АТ
while/gru_cell/dropout_1/CastCast)while/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЭ
while/gru_cell/dropout_1/Mul_1Mul while/gru_cell/dropout_1/Mul:z:0!while/gru_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         Аc
while/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?в
while/gru_cell/dropout_2/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         Аo
while/gru_cell/dropout_2/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:п
5while/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0l
'while/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>┌
%while/gru_cell/dropout_2/GreaterEqualGreaterEqual>while/gru_cell/dropout_2/random_uniform/RandomUniform:output:00while/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АТ
while/gru_cell/dropout_2/CastCast)while/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЭ
while/gru_cell/dropout_2/Mul_1Mul while/gru_cell/dropout_2/Mul:z:0!while/gru_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         АЗ
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЛ
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0s
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╣
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskл
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         АЛ
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0u
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┴
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskп
while/gru_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         АЛ
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0u
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┴
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskп
while/gru_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аn
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: q
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskЮ
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ав
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskв
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         АГ
while/gru_cell/mulMulwhile_placeholder_2 while/gru_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         АЗ
while/gru_cell/mul_1Mulwhile_placeholder_2"while/gru_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         АЗ
while/gru_cell/mul_2Mulwhile_placeholder_2"while/gru_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0u
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        w
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┬
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskХ
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul:z:0'while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0u
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┬
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЧ
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аn
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: q
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskв
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аo
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аp
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ав
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АТ
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         Аl
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:         АЦ
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аp
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:         АМ
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0v
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╞
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskШ
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_2:z:0(while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аp
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аq
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskг
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         АП
while/gru_cell/mul_3Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         АН
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         Аh
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:         А
while/gru_cell/mul_4Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:         АY
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         А
while/gru_cell/mul_5Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         АД
while/gru_cell/add_3AddV2while/gru_cell/mul_4:z:0while/gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         А┴
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         А╕

while/NoOpNoOp^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
щ`
┌
"__inference__traced_restore_192316
file_prefix0
assignvariableop_dense_kernel:	А+
assignvariableop_1_dense_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: 9
&assignvariableop_7_gru_gru_cell_kernel:	АD
0assignvariableop_8_gru_gru_cell_recurrent_kernel:
АА7
$assignvariableop_9_gru_gru_cell_bias:	А#
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: :
'assignvariableop_14_adam_dense_kernel_m:	А3
%assignvariableop_15_adam_dense_bias_m:A
.assignvariableop_16_adam_gru_gru_cell_kernel_m:	АL
8assignvariableop_17_adam_gru_gru_cell_recurrent_kernel_m:
АА?
,assignvariableop_18_adam_gru_gru_cell_bias_m:	А:
'assignvariableop_19_adam_dense_kernel_v:	А3
%assignvariableop_20_adam_dense_bias_v:A
.assignvariableop_21_adam_gru_gru_cell_kernel_v:	АL
8assignvariableop_22_adam_gru_gru_cell_recurrent_kernel_v:
АА?
,assignvariableop_23_adam_gru_gru_cell_bias_v:	А
identity_25ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Ф
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*║
value░BнB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHв
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B Ы
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:Л
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_7AssignVariableOp&assignvariableop_7_gru_gru_cell_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_8AssignVariableOp0assignvariableop_8_gru_gru_cell_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_9AssignVariableOp$assignvariableop_9_gru_gru_cell_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adam_dense_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_15AssignVariableOp%assignvariableop_15_adam_dense_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_16AssignVariableOp.assignvariableop_16_adam_gru_gru_cell_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_17AssignVariableOp8assignvariableop_17_adam_gru_gru_cell_recurrent_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_18AssignVariableOp,assignvariableop_18_adam_gru_gru_cell_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_20AssignVariableOp%assignvariableop_20_adam_dense_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_21AssignVariableOp.assignvariableop_21_adam_gru_gru_cell_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_22AssignVariableOp8assignvariableop_22_adam_gru_gru_cell_recurrent_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_gru_gru_cell_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ▀
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: ╠
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╚
Ё
&__inference_model_layer_call_fn_189961
input_1
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_189933o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         	
!
_user_specified_name	input_1
▌
║
A__inference_model_layer_call_and_return_conditional_losses_189980
input_1

gru_189966:	А

gru_189968:	А

gru_189970:
АА
dense_189974:	А
dense_189976:
identityИвdense/StatefulPartitionedCallвgru/StatefulPartitionedCall_
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :О
tf.expand_dims/ExpandDims
ExpandDimsinput_1&tf.expand_dims/ExpandDims/dim:output:0*
T0*+
_output_shapes
:         	Л
gru/StatefulPartitionedCallStatefulPartitionedCall"tf.expand_dims/ExpandDims:output:0
gru_189966
gru_189968
gru_189970*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         	А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_189497╒
flatten/PartitionedCallPartitionedCall$gru/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_189511■
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_189974dense_189976*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_189524u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Д
NoOpNoOp^dense/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:P L
'
_output_shapes
:         	
!
_user_specified_name	input_1
▌╣
р
!__inference__wrapped_model_188746
input_1=
*model_gru_gru_cell_readvariableop_resource:	А?
,model_gru_gru_cell_readvariableop_1_resource:	А@
,model_gru_gru_cell_readvariableop_4_resource:
АА=
*model_dense_matmul_readvariableop_resource:	А9
+model_dense_biasadd_readvariableop_resource:
identityИв"model/dense/BiasAdd/ReadVariableOpв!model/dense/MatMul/ReadVariableOpв!model/gru/gru_cell/ReadVariableOpв#model/gru/gru_cell/ReadVariableOp_1в#model/gru/gru_cell/ReadVariableOp_2в#model/gru/gru_cell/ReadVariableOp_3в#model/gru/gru_cell/ReadVariableOp_4в#model/gru/gru_cell/ReadVariableOp_5в#model/gru/gru_cell/ReadVariableOp_6вmodel/gru/whilee
#model/tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
model/tf.expand_dims/ExpandDims
ExpandDimsinput_1,model/tf.expand_dims/ExpandDims/dim:output:0*
T0*+
_output_shapes
:         	g
model/gru/ShapeShape(model/tf.expand_dims/ExpandDims:output:0*
T0*
_output_shapes
:g
model/gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
model/gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
model/gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
model/gru/strided_sliceStridedSlicemodel/gru/Shape:output:0&model/gru/strided_slice/stack:output:0(model/gru/strided_slice/stack_1:output:0(model/gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
model/gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :АС
model/gru/zeros/packedPack model/gru/strided_slice:output:0!model/gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Z
model/gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
model/gru/zerosFillmodel/gru/zeros/packed:output:0model/gru/zeros/Const:output:0*
T0*(
_output_shapes
:         Аm
model/gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          г
model/gru/transpose	Transpose(model/tf.expand_dims/ExpandDims:output:0!model/gru/transpose/perm:output:0*
T0*+
_output_shapes
:	         X
model/gru/Shape_1Shapemodel/gru/transpose:y:0*
T0*
_output_shapes
:i
model/gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!model/gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!model/gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
model/gru/strided_slice_1StridedSlicemodel/gru/Shape_1:output:0(model/gru/strided_slice_1/stack:output:0*model/gru/strided_slice_1/stack_1:output:0*model/gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
%model/gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╥
model/gru/TensorArrayV2TensorListReserve.model/gru/TensorArrayV2/element_shape:output:0"model/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Р
?model/gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ■
1model/gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel/gru/transpose:y:0Hmodel/gru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥i
model/gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!model/gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!model/gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
model/gru/strided_slice_2StridedSlicemodel/gru/transpose:y:0(model/gru/strided_slice_2/stack:output:0*model/gru/strided_slice_2/stack_1:output:0*model/gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskj
"model/gru/gru_cell/ones_like/ShapeShapemodel/gru/zeros:output:0*
T0*
_output_shapes
:g
"model/gru/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▒
model/gru/gru_cell/ones_likeFill+model/gru/gru_cell/ones_like/Shape:output:0+model/gru/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         АН
!model/gru/gru_cell/ReadVariableOpReadVariableOp*model_gru_gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0З
model/gru/gru_cell/unstackUnpack)model/gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numС
#model/gru/gru_cell/ReadVariableOp_1ReadVariableOp,model_gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0w
&model/gru/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(model/gru/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       y
(model/gru/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ═
 model/gru/gru_cell/strided_sliceStridedSlice+model/gru/gru_cell/ReadVariableOp_1:value:0/model/gru/gru_cell/strided_slice/stack:output:01model/gru/gru_cell/strided_slice/stack_1:output:01model/gru/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskе
model/gru/gru_cell/MatMulMatMul"model/gru/strided_slice_2:output:0)model/gru/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         АС
#model/gru/gru_cell/ReadVariableOp_2ReadVariableOp,model_gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0y
(model/gru/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*model/gru/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*model/gru/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╒
"model/gru/gru_cell/strided_slice_1StridedSlice+model/gru/gru_cell/ReadVariableOp_2:value:01model/gru/gru_cell/strided_slice_1/stack:output:03model/gru/gru_cell/strided_slice_1/stack_1:output:03model/gru/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskй
model/gru/gru_cell/MatMul_1MatMul"model/gru/strided_slice_2:output:0+model/gru/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         АС
#model/gru/gru_cell/ReadVariableOp_3ReadVariableOp,model_gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0y
(model/gru/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*model/gru/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*model/gru/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╒
"model/gru/gru_cell/strided_slice_2StridedSlice+model/gru/gru_cell/ReadVariableOp_3:value:01model/gru/gru_cell/strided_slice_2/stack:output:03model/gru/gru_cell/strided_slice_2/stack_1:output:03model/gru/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskй
model/gru/gru_cell/MatMul_2MatMul"model/gru/strided_slice_2:output:0+model/gru/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аr
(model/gru/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: u
*model/gru/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аt
*model/gru/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╣
"model/gru/gru_cell/strided_slice_3StridedSlice#model/gru/gru_cell/unstack:output:01model/gru/gru_cell/strided_slice_3/stack:output:03model/gru/gru_cell/strided_slice_3/stack_1:output:03model/gru/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskк
model/gru/gru_cell/BiasAddBiasAdd#model/gru/gru_cell/MatMul:product:0+model/gru/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аs
(model/gru/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аu
*model/gru/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аt
*model/gru/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
"model/gru/gru_cell/strided_slice_4StridedSlice#model/gru/gru_cell/unstack:output:01model/gru/gru_cell/strided_slice_4/stack:output:03model/gru/gru_cell/strided_slice_4/stack_1:output:03model/gru/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ао
model/gru/gru_cell/BiasAdd_1BiasAdd%model/gru/gru_cell/MatMul_1:product:0+model/gru/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аs
(model/gru/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аt
*model/gru/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: t
*model/gru/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╖
"model/gru/gru_cell/strided_slice_5StridedSlice#model/gru/gru_cell/unstack:output:01model/gru/gru_cell/strided_slice_5/stack:output:03model/gru/gru_cell/strided_slice_5/stack_1:output:03model/gru/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskо
model/gru/gru_cell/BiasAdd_2BiasAdd%model/gru/gru_cell/MatMul_2:product:0+model/gru/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         АС
model/gru/gru_cell/mulMulmodel/gru/zeros:output:0%model/gru/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АУ
model/gru/gru_cell/mul_1Mulmodel/gru/zeros:output:0%model/gru/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АУ
model/gru/gru_cell/mul_2Mulmodel/gru/zeros:output:0%model/gru/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         АТ
#model/gru/gru_cell/ReadVariableOp_4ReadVariableOp,model_gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0y
(model/gru/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*model/gru/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*model/gru/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"model/gru/gru_cell/strided_slice_6StridedSlice+model/gru/gru_cell/ReadVariableOp_4:value:01model/gru/gru_cell/strided_slice_6/stack:output:03model/gru/gru_cell/strided_slice_6/stack_1:output:03model/gru/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskб
model/gru/gru_cell/MatMul_3MatMulmodel/gru/gru_cell/mul:z:0+model/gru/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         АТ
#model/gru/gru_cell/ReadVariableOp_5ReadVariableOp,model_gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0y
(model/gru/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*model/gru/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*model/gru/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"model/gru/gru_cell/strided_slice_7StridedSlice+model/gru/gru_cell/ReadVariableOp_5:value:01model/gru/gru_cell/strided_slice_7/stack:output:03model/gru/gru_cell/strided_slice_7/stack_1:output:03model/gru/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskг
model/gru/gru_cell/MatMul_4MatMulmodel/gru/gru_cell/mul_1:z:0+model/gru/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аr
(model/gru/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: u
*model/gru/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аt
*model/gru/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╣
"model/gru/gru_cell/strided_slice_8StridedSlice#model/gru/gru_cell/unstack:output:11model/gru/gru_cell/strided_slice_8/stack:output:03model/gru/gru_cell/strided_slice_8/stack_1:output:03model/gru/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskо
model/gru/gru_cell/BiasAdd_3BiasAdd%model/gru/gru_cell/MatMul_3:product:0+model/gru/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аs
(model/gru/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аu
*model/gru/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аt
*model/gru/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
"model/gru/gru_cell/strided_slice_9StridedSlice#model/gru/gru_cell/unstack:output:11model/gru/gru_cell/strided_slice_9/stack:output:03model/gru/gru_cell/strided_slice_9/stack_1:output:03model/gru/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ао
model/gru/gru_cell/BiasAdd_4BiasAdd%model/gru/gru_cell/MatMul_4:product:0+model/gru/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АЮ
model/gru/gru_cell/addAddV2#model/gru/gru_cell/BiasAdd:output:0%model/gru/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         Аt
model/gru/gru_cell/SigmoidSigmoidmodel/gru/gru_cell/add:z:0*
T0*(
_output_shapes
:         Ав
model/gru/gru_cell/add_1AddV2%model/gru/gru_cell/BiasAdd_1:output:0%model/gru/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аx
model/gru/gru_cell/Sigmoid_1Sigmoidmodel/gru/gru_cell/add_1:z:0*
T0*(
_output_shapes
:         АТ
#model/gru/gru_cell/ReadVariableOp_6ReadVariableOp,model_gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0z
)model/gru/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       |
+model/gru/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        |
+model/gru/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┌
#model/gru/gru_cell/strided_slice_10StridedSlice+model/gru/gru_cell/ReadVariableOp_6:value:02model/gru/gru_cell/strided_slice_10/stack:output:04model/gru/gru_cell/strided_slice_10/stack_1:output:04model/gru/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskд
model/gru/gru_cell/MatMul_5MatMulmodel/gru/gru_cell/mul_2:z:0,model/gru/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аt
)model/gru/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аu
+model/gru/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+model/gru/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╗
#model/gru/gru_cell/strided_slice_11StridedSlice#model/gru/gru_cell/unstack:output:12model/gru/gru_cell/strided_slice_11/stack:output:04model/gru/gru_cell/strided_slice_11/stack_1:output:04model/gru/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskп
model/gru/gru_cell/BiasAdd_5BiasAdd%model/gru/gru_cell/MatMul_5:product:0,model/gru/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         АЫ
model/gru/gru_cell/mul_3Mul model/gru/gru_cell/Sigmoid_1:y:0%model/gru/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         АЩ
model/gru/gru_cell/add_2AddV2%model/gru/gru_cell/BiasAdd_2:output:0model/gru/gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         Аp
model/gru/gru_cell/TanhTanhmodel/gru/gru_cell/add_2:z:0*
T0*(
_output_shapes
:         АМ
model/gru/gru_cell/mul_4Mulmodel/gru/gru_cell/Sigmoid:y:0model/gru/zeros:output:0*
T0*(
_output_shapes
:         А]
model/gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
model/gru/gru_cell/subSub!model/gru/gru_cell/sub/x:output:0model/gru/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         АЛ
model/gru/gru_cell/mul_5Mulmodel/gru/gru_cell/sub:z:0model/gru/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         АР
model/gru/gru_cell/add_3AddV2model/gru/gru_cell/mul_4:z:0model/gru/gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         Аx
'model/gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╓
model/gru/TensorArrayV2_1TensorListReserve0model/gru/TensorArrayV2_1/element_shape:output:0"model/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥P
model/gru/timeConst*
_output_shapes
: *
dtype0*
value	B : m
"model/gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ^
model/gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : н
model/gru/whileWhile%model/gru/while/loop_counter:output:0+model/gru/while/maximum_iterations:output:0model/gru/time:output:0"model/gru/TensorArrayV2_1:handle:0model/gru/zeros:output:0"model/gru/strided_slice_1:output:0Amodel/gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0*model_gru_gru_cell_readvariableop_resource,model_gru_gru_cell_readvariableop_1_resource,model_gru_gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *'
bodyR
model_gru_while_body_188591*'
condR
model_gru_while_cond_188590*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Л
:model/gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       с
,model/gru/TensorArrayV2Stack/TensorListStackTensorListStackmodel/gru/while:output:3Cmodel/gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:	         А*
element_dtype0r
model/gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         k
!model/gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: k
!model/gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:║
model/gru/strided_slice_3StridedSlice5model/gru/TensorArrayV2Stack/TensorListStack:tensor:0(model/gru/strided_slice_3/stack:output:0*model/gru/strided_slice_3/stack_1:output:0*model/gru/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_masko
model/gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╡
model/gru/transpose_1	Transpose5model/gru/TensorArrayV2Stack/TensorListStack:tensor:0#model/gru/transpose_1/perm:output:0*
T0*,
_output_shapes
:         	Аe
model/gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  М
model/flatten/ReshapeReshapemodel/gru/transpose_1:y:0model/flatten/Const:output:0*
T0*(
_output_shapes
:         АН
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Щ
model/dense/MatMulMatMulmodel/flatten/Reshape:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         К
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ъ
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n
model/dense/SoftmaxSoftmaxmodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         l
IdentityIdentitymodel/dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         й
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp"^model/gru/gru_cell/ReadVariableOp$^model/gru/gru_cell/ReadVariableOp_1$^model/gru/gru_cell/ReadVariableOp_2$^model/gru/gru_cell/ReadVariableOp_3$^model/gru/gru_cell/ReadVariableOp_4$^model/gru/gru_cell/ReadVariableOp_5$^model/gru/gru_cell/ReadVariableOp_6^model/gru/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2F
!model/gru/gru_cell/ReadVariableOp!model/gru/gru_cell/ReadVariableOp2J
#model/gru/gru_cell/ReadVariableOp_1#model/gru/gru_cell/ReadVariableOp_12J
#model/gru/gru_cell/ReadVariableOp_2#model/gru/gru_cell/ReadVariableOp_22J
#model/gru/gru_cell/ReadVariableOp_3#model/gru/gru_cell/ReadVariableOp_32J
#model/gru/gru_cell/ReadVariableOp_4#model/gru/gru_cell/ReadVariableOp_42J
#model/gru/gru_cell/ReadVariableOp_5#model/gru/gru_cell/ReadVariableOp_52J
#model/gru/gru_cell/ReadVariableOp_6#model/gru/gru_cell/ReadVariableOp_62"
model/gru/whilemodel/gru/while:P L
'
_output_shapes
:         	
!
_user_specified_name	input_1
ч6
в

__inference__traced_save_192234
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop2
.savev2_gru_gru_cell_kernel_read_readvariableop<
8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop0
,savev2_gru_gru_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop9
5savev2_adam_gru_gru_cell_kernel_m_read_readvariableopC
?savev2_adam_gru_gru_cell_recurrent_kernel_m_read_readvariableop7
3savev2_adam_gru_gru_cell_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop9
5savev2_adam_gru_gru_cell_kernel_v_read_readvariableopC
?savev2_adam_gru_gru_cell_recurrent_kernel_v_read_readvariableop7
3savev2_adam_gru_gru_cell_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
: С
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*║
value░BнB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЯ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B Ю

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop.savev2_gru_gru_cell_kernel_read_readvariableop8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop,savev2_gru_gru_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop5savev2_adam_gru_gru_cell_kernel_m_read_readvariableop?savev2_adam_gru_gru_cell_recurrent_kernel_m_read_readvariableop3savev2_adam_gru_gru_cell_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop5savev2_adam_gru_gru_cell_kernel_v_read_readvariableop?savev2_adam_gru_gru_cell_recurrent_kernel_v_read_readvariableop3savev2_adam_gru_gru_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*─
_input_shapes▓
п: :	А:: : : : : :	А:
АА:	А: : : : :	А::	А:
АА:	А:	А::	А:
АА:	А: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	А:&	"
 
_output_shapes
:
АА:%
!

_output_shapes
:	А:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	А: 

_output_shapes
::%!

_output_shapes
:	А:&"
 
_output_shapes
:
АА:%!

_output_shapes
:	А:%!

_output_shapes
:	А: 

_output_shapes
::%!

_output_shapes
:	А:&"
 
_output_shapes
:
АА:%!

_output_shapes
:	А:

_output_shapes
: 
Гq
Л
D__inference_gru_cell_layer_call_and_return_conditional_losses_189097

inputs

states*
readvariableop_resource:	А,
readvariableop_1_resource:	А-
readvariableop_4_resource:
АА
identity

identity_1ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вReadVariableOp_4вReadVariableOp_5вReadVariableOp_6E
ones_like/ShapeShapestates*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:         АR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?q
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:         АO
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?u
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:         АQ
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:С
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>н
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аt
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аp
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:         АT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?u
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:         АQ
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:С
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>н
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аt
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аp
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:         Аg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	А*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numk
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	А*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ю
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskc
MatMulMatMulinputsstrided_slice:output:0*
T0*(
_output_shapes
:         Аk
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	А*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ў
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskg
MatMul_1MatMulinputsstrided_slice_1:output:0*
T0*(
_output_shapes
:         Аk
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	А*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ў
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskg
MatMul_2MatMulinputsstrided_slice_2:output:0*
T0*(
_output_shapes
:         А_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┌
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskq
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*(
_output_shapes
:         А`
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аb
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╚
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Аu
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*(
_output_shapes
:         А`
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╪
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_masku
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*(
_output_shapes
:         АX
mulMulstatesdropout/Mul_1:z:0*
T0*(
_output_shapes
:         А\
mul_1Mulstatesdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         А\
mul_2Mulstatesdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         Аl
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
АА*
dtype0f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskh
MatMul_3MatMulmul:z:0strided_slice_6:output:0*
T0*(
_output_shapes
:         Аl
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
АА*
dtype0f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskj
MatMul_4MatMul	mul_1:z:0strided_slice_7:output:0*
T0*(
_output_shapes
:         А_
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┌
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_masku
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*(
_output_shapes
:         А`
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аb
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╚
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Аu
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*(
_output_shapes
:         Аe
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*(
_output_shapes
:         АN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         Аi
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*(
_output_shapes
:         АR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         Аl
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
АА*
dtype0g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      √
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskk
MatMul_5MatMul	mul_2:z:0strided_slice_10:output:0*
T0*(
_output_shapes
:         Аa
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аb
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskv
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*(
_output_shapes
:         Аb
mul_3MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*(
_output_shapes
:         А`
add_2AddV2BiasAdd_2:output:0	mul_3:z:0*
T0*(
_output_shapes
:         АJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:         АT
mul_4MulSigmoid:y:0states*
T0*(
_output_shapes
:         АJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:         АR
mul_5Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:         АW
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*(
_output_shapes
:         АY
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         А[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         А╔
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         :         А: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_namestates
═Ф
╬
?__inference_gru_layer_call_and_return_conditional_losses_190967
inputs_03
 gru_cell_readvariableop_resource:	А5
"gru_cell_readvariableop_1_resource:	А6
"gru_cell_readvariableop_4_resource:
АА
identityИвgru_cell/ReadVariableOpвgru_cell/ReadVariableOp_1вgru_cell/ReadVariableOp_2вgru_cell/ReadVariableOp_3вgru_cell/ReadVariableOp_4вgru_cell/ReadVariableOp_5вgru_cell/ReadVariableOp_6вwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskV
gru_cell/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:]
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         Аy
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
num}
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0m
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        o
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       o
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ы
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЗ
gru_cell/MatMulMatMulstrided_slice_2:output:0gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         А}
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0o
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      г
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЛ
gru_cell/MatMul_1MatMulstrided_slice_2:output:0!gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         А}
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	А*
dtype0o
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        q
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      г
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskЛ
gru_cell/MatMul_2MatMulstrided_slice_2:output:0!gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аh
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: k
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskМ
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АР
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskР
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         Аs
gru_cell/mulMulzeros:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         Аu
gru_cell/mul_1Mulzeros:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         Аu
gru_cell/mul_2Mulzeros:output:0gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0o
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        q
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskГ
gru_cell/MatMul_3MatMulgru_cell/mul:z:0!gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0o
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       q
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЕ
gru_cell/MatMul_4MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аh
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: k
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskР
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аi
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аj
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:АР
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         АА
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         А`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:         АД
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         Аd
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:         А~
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
АА*
dtype0p
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      и
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskЖ
gru_cell/MatMul_5MatMulgru_cell/mul_2:z:0"gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аj
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аk
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: k
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskС
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         А}
gru_cell/mul_3Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         А{
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         А\
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:         Аn
gru_cell/mul_4Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:         АS
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         Аm
gru_cell/mul_5Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         Аr
gru_cell/add_3AddV2gru_cell/mul_4:z:0gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_190821*
condR
while_cond_190820*9
output_shapes(
&: : : : :         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  АР
NoOpNoOp^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Сq
Н
D__inference_gru_cell_layer_call_and_return_conditional_losses_192139

inputs
states_0*
readvariableop_resource:	А,
readvariableop_1_resource:	А-
readvariableop_4_resource:
АА
identity

identity_1ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вReadVariableOp_4вReadVariableOp_5вReadVariableOp_6G
ones_like/ShapeShapestates_0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:         АR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?q
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:         АO
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?u
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:         АQ
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:С
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>н
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аt
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аp
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:         АT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?u
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:         АQ
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:С
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>н
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аt
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аp
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:         Аg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	А*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numk
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	А*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ю
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskc
MatMulMatMulinputsstrided_slice:output:0*
T0*(
_output_shapes
:         Аk
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	А*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ў
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskg
MatMul_1MatMulinputsstrided_slice_1:output:0*
T0*(
_output_shapes
:         Аk
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	А*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ў
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_maskg
MatMul_2MatMulinputsstrided_slice_2:output:0*
T0*(
_output_shapes
:         А_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┌
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_maskq
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*(
_output_shapes
:         А`
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Аb
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╚
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Аu
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*(
_output_shapes
:         А`
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╪
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_masku
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*(
_output_shapes
:         АZ
mulMulstates_0dropout/Mul_1:z:0*
T0*(
_output_shapes
:         А^
mul_1Mulstates_0dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         А^
mul_2Mulstates_0dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         Аl
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
АА*
dtype0f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskh
MatMul_3MatMulmul:z:0strided_slice_6:output:0*
T0*(
_output_shapes
:         Аl
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
АА*
dtype0f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskj
MatMul_4MatMul	mul_1:z:0strided_slice_7:output:0*
T0*(
_output_shapes
:         А_
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┌
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_masku
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*(
_output_shapes
:         А`
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Аb
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аa
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╚
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Аu
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*(
_output_shapes
:         Аe
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*(
_output_shapes
:         АN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         Аi
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*(
_output_shapes
:         АR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         Аl
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
АА*
dtype0g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      √
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_maskk
MatMul_5MatMul	mul_2:z:0strided_slice_10:output:0*
T0*(
_output_shapes
:         Аa
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:Аb
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: b
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_maskv
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*(
_output_shapes
:         Аb
mul_3MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*(
_output_shapes
:         А`
add_2AddV2BiasAdd_2:output:0	mul_3:z:0*
T0*(
_output_shapes
:         АJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:         АV
mul_4MulSigmoid:y:0states_0*
T0*(
_output_shapes
:         АJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:         АR
mul_5Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:         АW
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*(
_output_shapes
:         АY
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         А[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         А╔
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         :         А: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0
▌
║
A__inference_model_layer_call_and_return_conditional_losses_189999
input_1

gru_189985:	А

gru_189987:	А

gru_189989:
АА
dense_189993:	А
dense_189995:
identityИвdense/StatefulPartitionedCallвgru/StatefulPartitionedCall_
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :О
tf.expand_dims/ExpandDims
ExpandDimsinput_1&tf.expand_dims/ExpandDims/dim:output:0*
T0*+
_output_shapes
:         	Л
gru/StatefulPartitionedCallStatefulPartitionedCall"tf.expand_dims/ExpandDims:output:0
gru_189985
gru_189987
gru_189989*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         	А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_189888╒
flatten/PartitionedCallPartitionedCall$gru/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_189511■
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_189993dense_189995*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_189524u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Д
NoOpNoOp^dense/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:P L
'
_output_shapes
:         	
!
_user_specified_name	input_1
║г
з
model_gru_while_body_1885910
,model_gru_while_model_gru_while_loop_counter6
2model_gru_while_model_gru_while_maximum_iterations
model_gru_while_placeholder!
model_gru_while_placeholder_1!
model_gru_while_placeholder_2/
+model_gru_while_model_gru_strided_slice_1_0k
gmodel_gru_while_tensorarrayv2read_tensorlistgetitem_model_gru_tensorarrayunstack_tensorlistfromtensor_0E
2model_gru_while_gru_cell_readvariableop_resource_0:	АG
4model_gru_while_gru_cell_readvariableop_1_resource_0:	АH
4model_gru_while_gru_cell_readvariableop_4_resource_0:
АА
model_gru_while_identity
model_gru_while_identity_1
model_gru_while_identity_2
model_gru_while_identity_3
model_gru_while_identity_4-
)model_gru_while_model_gru_strided_slice_1i
emodel_gru_while_tensorarrayv2read_tensorlistgetitem_model_gru_tensorarrayunstack_tensorlistfromtensorC
0model_gru_while_gru_cell_readvariableop_resource:	АE
2model_gru_while_gru_cell_readvariableop_1_resource:	АF
2model_gru_while_gru_cell_readvariableop_4_resource:
ААИв'model/gru/while/gru_cell/ReadVariableOpв)model/gru/while/gru_cell/ReadVariableOp_1в)model/gru/while/gru_cell/ReadVariableOp_2в)model/gru/while/gru_cell/ReadVariableOp_3в)model/gru/while/gru_cell/ReadVariableOp_4в)model/gru/while/gru_cell/ReadVariableOp_5в)model/gru/while/gru_cell/ReadVariableOp_6Т
Amodel/gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╪
3model/gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemgmodel_gru_while_tensorarrayv2read_tensorlistgetitem_model_gru_tensorarrayunstack_tensorlistfromtensor_0model_gru_while_placeholderJmodel/gru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0u
(model/gru/while/gru_cell/ones_like/ShapeShapemodel_gru_while_placeholder_2*
T0*
_output_shapes
:m
(model/gru/while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?├
"model/gru/while/gru_cell/ones_likeFill1model/gru/while/gru_cell/ones_like/Shape:output:01model/gru/while/gru_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         АЫ
'model/gru/while/gru_cell/ReadVariableOpReadVariableOp2model_gru_while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0У
 model/gru/while/gru_cell/unstackUnpack/model/gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЯ
)model/gru/while/gru_cell/ReadVariableOp_1ReadVariableOp4model_gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0}
,model/gru/while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.model/gru/while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.model/gru/while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
&model/gru/while/gru_cell/strided_sliceStridedSlice1model/gru/while/gru_cell/ReadVariableOp_1:value:05model/gru/while/gru_cell/strided_slice/stack:output:07model/gru/while/gru_cell/strided_slice/stack_1:output:07model/gru/while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_mask╔
model/gru/while/gru_cell/MatMulMatMul:model/gru/while/TensorArrayV2Read/TensorListGetItem:item:0/model/gru/while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:         АЯ
)model/gru/while/gru_cell/ReadVariableOp_2ReadVariableOp4model_gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0
.model/gru/while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       Б
0model/gru/while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0model/gru/while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      є
(model/gru/while/gru_cell/strided_slice_1StridedSlice1model/gru/while/gru_cell/ReadVariableOp_2:value:07model/gru/while/gru_cell/strided_slice_1/stack:output:09model/gru/while/gru_cell/strided_slice_1/stack_1:output:09model/gru/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_mask═
!model/gru/while/gru_cell/MatMul_1MatMul:model/gru/while/TensorArrayV2Read/TensorListGetItem:item:01model/gru/while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         АЯ
)model/gru/while/gru_cell/ReadVariableOp_3ReadVariableOp4model_gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	А*
dtype0
.model/gru/while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       Б
0model/gru/while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Б
0model/gru/while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      є
(model/gru/while/gru_cell/strided_slice_2StridedSlice1model/gru/while/gru_cell/ReadVariableOp_3:value:07model/gru/while/gru_cell/strided_slice_2/stack:output:09model/gru/while/gru_cell/strided_slice_2/stack_1:output:09model/gru/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*

begin_mask*
end_mask═
!model/gru/while/gru_cell/MatMul_2MatMul:model/gru/while/TensorArrayV2Read/TensorListGetItem:item:01model/gru/while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         Аx
.model/gru/while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: {
0model/gru/while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аz
0model/gru/while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╫
(model/gru/while/gru_cell/strided_slice_3StridedSlice)model/gru/while/gru_cell/unstack:output:07model/gru/while/gru_cell/strided_slice_3/stack:output:09model/gru/while/gru_cell/strided_slice_3/stack_1:output:09model/gru/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_mask╝
 model/gru/while/gru_cell/BiasAddBiasAdd)model/gru/while/gru_cell/MatMul:product:01model/gru/while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         Аy
.model/gru/while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:А{
0model/gru/while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аz
0model/gru/while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┼
(model/gru/while/gru_cell/strided_slice_4StridedSlice)model/gru/while/gru_cell/unstack:output:07model/gru/while/gru_cell/strided_slice_4/stack:output:09model/gru/while/gru_cell/strided_slice_4/stack_1:output:09model/gru/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А└
"model/gru/while/gru_cell/BiasAdd_1BiasAdd+model/gru/while/gru_cell/MatMul_1:product:01model/gru/while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:         Аy
.model/gru/while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:Аz
0model/gru/while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: z
0model/gru/while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╒
(model/gru/while/gru_cell/strided_slice_5StridedSlice)model/gru/while/gru_cell/unstack:output:07model/gru/while/gru_cell/strided_slice_5/stack:output:09model/gru/while/gru_cell/strided_slice_5/stack_1:output:09model/gru/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_mask└
"model/gru/while/gru_cell/BiasAdd_2BiasAdd+model/gru/while/gru_cell/MatMul_2:product:01model/gru/while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:         Ав
model/gru/while/gru_cell/mulMulmodel_gru_while_placeholder_2+model/gru/while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         Ад
model/gru/while/gru_cell/mul_1Mulmodel_gru_while_placeholder_2+model/gru/while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         Ад
model/gru/while/gru_cell/mul_2Mulmodel_gru_while_placeholder_2+model/gru/while/gru_cell/ones_like:output:0*
T0*(
_output_shapes
:         Аа
)model/gru/while/gru_cell/ReadVariableOp_4ReadVariableOp4model_gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0
.model/gru/while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0model/gru/while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0model/gru/while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
(model/gru/while/gru_cell/strided_slice_6StridedSlice1model/gru/while/gru_cell/ReadVariableOp_4:value:07model/gru/while/gru_cell/strided_slice_6/stack:output:09model/gru/while/gru_cell/strided_slice_6/stack_1:output:09model/gru/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_mask│
!model/gru/while/gru_cell/MatMul_3MatMul model/gru/while/gru_cell/mul:z:01model/gru/while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:         Аа
)model/gru/while/gru_cell/ReadVariableOp_5ReadVariableOp4model_gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0
.model/gru/while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       Б
0model/gru/while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0model/gru/while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
(model/gru/while/gru_cell/strided_slice_7StridedSlice1model/gru/while/gru_cell/ReadVariableOp_5:value:07model/gru/while/gru_cell/strided_slice_7/stack:output:09model/gru/while/gru_cell/strided_slice_7/stack_1:output:09model/gru/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_mask╡
!model/gru/while/gru_cell/MatMul_4MatMul"model/gru/while/gru_cell/mul_1:z:01model/gru/while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:         Аx
.model/gru/while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: {
0model/gru/while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аz
0model/gru/while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╫
(model/gru/while/gru_cell/strided_slice_8StridedSlice)model/gru/while/gru_cell/unstack:output:17model/gru/while/gru_cell/strided_slice_8/stack:output:09model/gru/while/gru_cell/strided_slice_8/stack_1:output:09model/gru/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*

begin_mask└
"model/gru/while/gru_cell/BiasAdd_3BiasAdd+model/gru/while/gru_cell/MatMul_3:product:01model/gru/while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:         Аy
.model/gru/while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:А{
0model/gru/while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Аz
0model/gru/while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┼
(model/gru/while/gru_cell/strided_slice_9StridedSlice)model/gru/while/gru_cell/unstack:output:17model/gru/while/gru_cell/strided_slice_9/stack:output:09model/gru/while/gru_cell/strided_slice_9/stack_1:output:09model/gru/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А└
"model/gru/while/gru_cell/BiasAdd_4BiasAdd+model/gru/while/gru_cell/MatMul_4:product:01model/gru/while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:         А░
model/gru/while/gru_cell/addAddV2)model/gru/while/gru_cell/BiasAdd:output:0+model/gru/while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:         АА
 model/gru/while/gru_cell/SigmoidSigmoid model/gru/while/gru_cell/add:z:0*
T0*(
_output_shapes
:         А┤
model/gru/while/gru_cell/add_1AddV2+model/gru/while/gru_cell/BiasAdd_1:output:0+model/gru/while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:         АД
"model/gru/while/gru_cell/Sigmoid_1Sigmoid"model/gru/while/gru_cell/add_1:z:0*
T0*(
_output_shapes
:         Аа
)model/gru/while/gru_cell/ReadVariableOp_6ReadVariableOp4model_gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
АА*
dtype0А
/model/gru/while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       В
1model/gru/while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        В
1model/gru/while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      °
)model/gru/while/gru_cell/strided_slice_10StridedSlice1model/gru/while/gru_cell/ReadVariableOp_6:value:08model/gru/while/gru_cell/strided_slice_10/stack:output:0:model/gru/while/gru_cell/strided_slice_10/stack_1:output:0:model/gru/while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
АА*

begin_mask*
end_mask╢
!model/gru/while/gru_cell/MatMul_5MatMul"model/gru/while/gru_cell/mul_2:z:02model/gru/while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:         Аz
/model/gru/while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:А{
1model/gru/while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1model/gru/while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
)model/gru/while/gru_cell/strided_slice_11StridedSlice)model/gru/while/gru_cell/unstack:output:18model/gru/while/gru_cell/strided_slice_11/stack:output:0:model/gru/while/gru_cell/strided_slice_11/stack_1:output:0:model/gru/while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:А*
end_mask┴
"model/gru/while/gru_cell/BiasAdd_5BiasAdd+model/gru/while/gru_cell/MatMul_5:product:02model/gru/while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:         Ан
model/gru/while/gru_cell/mul_3Mul&model/gru/while/gru_cell/Sigmoid_1:y:0+model/gru/while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:         Ал
model/gru/while/gru_cell/add_2AddV2+model/gru/while/gru_cell/BiasAdd_2:output:0"model/gru/while/gru_cell/mul_3:z:0*
T0*(
_output_shapes
:         А|
model/gru/while/gru_cell/TanhTanh"model/gru/while/gru_cell/add_2:z:0*
T0*(
_output_shapes
:         АЭ
model/gru/while/gru_cell/mul_4Mul$model/gru/while/gru_cell/Sigmoid:y:0model_gru_while_placeholder_2*
T0*(
_output_shapes
:         Аc
model/gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?е
model/gru/while/gru_cell/subSub'model/gru/while/gru_cell/sub/x:output:0$model/gru/while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:         АЭ
model/gru/while/gru_cell/mul_5Mul model/gru/while/gru_cell/sub:z:0!model/gru/while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:         Ав
model/gru/while/gru_cell/add_3AddV2"model/gru/while/gru_cell/mul_4:z:0"model/gru/while/gru_cell/mul_5:z:0*
T0*(
_output_shapes
:         Ащ
4model/gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmodel_gru_while_placeholder_1model_gru_while_placeholder"model/gru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥W
model/gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :z
model/gru/while/addAddV2model_gru_while_placeholdermodel/gru/while/add/y:output:0*
T0*
_output_shapes
: Y
model/gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
model/gru/while/add_1AddV2,model_gru_while_model_gru_while_loop_counter model/gru/while/add_1/y:output:0*
T0*
_output_shapes
: w
model/gru/while/IdentityIdentitymodel/gru/while/add_1:z:0^model/gru/while/NoOp*
T0*
_output_shapes
: Т
model/gru/while/Identity_1Identity2model_gru_while_model_gru_while_maximum_iterations^model/gru/while/NoOp*
T0*
_output_shapes
: w
model/gru/while/Identity_2Identitymodel/gru/while/add:z:0^model/gru/while/NoOp*
T0*
_output_shapes
: ╖
model/gru/while/Identity_3IdentityDmodel/gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model/gru/while/NoOp*
T0*
_output_shapes
: :щш╥Ф
model/gru/while/Identity_4Identity"model/gru/while/gru_cell/add_3:z:0^model/gru/while/NoOp*
T0*(
_output_shapes
:         АИ
model/gru/while/NoOpNoOp(^model/gru/while/gru_cell/ReadVariableOp*^model/gru/while/gru_cell/ReadVariableOp_1*^model/gru/while/gru_cell/ReadVariableOp_2*^model/gru/while/gru_cell/ReadVariableOp_3*^model/gru/while/gru_cell/ReadVariableOp_4*^model/gru/while/gru_cell/ReadVariableOp_5*^model/gru/while/gru_cell/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "j
2model_gru_while_gru_cell_readvariableop_1_resource4model_gru_while_gru_cell_readvariableop_1_resource_0"j
2model_gru_while_gru_cell_readvariableop_4_resource4model_gru_while_gru_cell_readvariableop_4_resource_0"f
0model_gru_while_gru_cell_readvariableop_resource2model_gru_while_gru_cell_readvariableop_resource_0"=
model_gru_while_identity!model/gru/while/Identity:output:0"A
model_gru_while_identity_1#model/gru/while/Identity_1:output:0"A
model_gru_while_identity_2#model/gru/while/Identity_2:output:0"A
model_gru_while_identity_3#model/gru/while/Identity_3:output:0"A
model_gru_while_identity_4#model/gru/while/Identity_4:output:0"X
)model_gru_while_model_gru_strided_slice_1+model_gru_while_model_gru_strided_slice_1_0"╨
emodel_gru_while_tensorarrayv2read_tensorlistgetitem_model_gru_tensorarrayunstack_tensorlistfromtensorgmodel_gru_while_tensorarrayv2read_tensorlistgetitem_model_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         А: : : : : 2R
'model/gru/while/gru_cell/ReadVariableOp'model/gru/while/gru_cell/ReadVariableOp2V
)model/gru/while/gru_cell/ReadVariableOp_1)model/gru/while/gru_cell/ReadVariableOp_12V
)model/gru/while/gru_cell/ReadVariableOp_2)model/gru/while/gru_cell/ReadVariableOp_22V
)model/gru/while/gru_cell/ReadVariableOp_3)model/gru/while/gru_cell/ReadVariableOp_32V
)model/gru/while/gru_cell/ReadVariableOp_4)model/gru/while/gru_cell/ReadVariableOp_42V
)model/gru/while/gru_cell/ReadVariableOp_5)model/gru/while/gru_cell/ReadVariableOp_52V
)model/gru/while/gru_cell/ReadVariableOp_6)model/gru/while/gru_cell/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: "█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*и
serving_defaultФ
;
input_10
serving_default_input_1:0         	9
dense0
StatefulPartitionedCall:0         tensorflow/serving/predict:нn
╪
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
┌
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
н
'iter

(beta_1

)beta_2
	*decay
+learning_ratem\ m],m^-m_.m`va vb,vc-vd.ve"
	optimizer
C
,0
-1
.2
3
 4"
trackable_list_wrapper
C
,0
-1
.2
3
 4"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ц2у
&__inference_model_layer_call_fn_189544
&__inference_model_layer_call_fn_190020
&__inference_model_layer_call_fn_190035
&__inference_model_layer_call_fn_189961└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╥2╧
A__inference_model_layer_call_and_return_conditional_losses_190313
A__inference_model_layer_call_and_return_conditional_losses_190639
A__inference_model_layer_call_and_return_conditional_losses_189980
A__inference_model_layer_call_and_return_conditional_losses_189999└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╠B╔
!__inference__wrapped_model_188746input_1"Ш
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
 
,
4serving_default"
signature_map
"
_generic_user_object
ш

,kernel
-recurrent_kernel
.bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9_random_generator
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

<states
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
є2Ё
$__inference_gru_layer_call_fn_190667
$__inference_gru_layer_call_fn_190678
$__inference_gru_layer_call_fn_190689
$__inference_gru_layer_call_fn_190700╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▀2▄
?__inference_gru_layer_call_and_return_conditional_losses_190967
?__inference_gru_layer_call_and_return_conditional_losses_191282
?__inference_gru_layer_call_and_return_conditional_losses_191549
?__inference_gru_layer_call_and_return_conditional_losses_191864╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╥2╧
(__inference_flatten_layer_call_fn_191869в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
э2ъ
C__inference_flatten_layer_call_and_return_conditional_losses_191875в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
:	А2dense/kernel
:2
dense/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
╨2═
&__inference_dense_layer_call_fn_191884в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
ы2ш
A__inference_dense_layer_call_and_return_conditional_losses_191895в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
&:$	А2gru/gru_cell/kernel
1:/
АА2gru/gru_cell/recurrent_kernel
$:"	А2gru/gru_cell/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╦B╚
$__inference_signature_wrapper_190656input_1"Ф
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
 
5
,0
-1
.2"
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
5	variables
6trainable_variables
7regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ъ2Ч
)__inference_gru_cell_layer_call_fn_191909
)__inference_gru_cell_layer_call_fn_191923╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╨2═
D__inference_gru_cell_layer_call_and_return_conditional_losses_192019
D__inference_gru_cell_layer_call_and_return_conditional_losses_192139╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
N
	Stotal
	Tcount
U	variables
V	keras_api"
_tf_keras_metric
^
	Wtotal
	Xcount
Y
_fn_kwargs
Z	variables
[	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
S0
T1"
trackable_list_wrapper
-
U	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
W0
X1"
trackable_list_wrapper
-
Z	variables"
_generic_user_object
$:"	А2Adam/dense/kernel/m
:2Adam/dense/bias/m
+:)	А2Adam/gru/gru_cell/kernel/m
6:4
АА2$Adam/gru/gru_cell/recurrent_kernel/m
):'	А2Adam/gru/gru_cell/bias/m
$:"	А2Adam/dense/kernel/v
:2Adam/dense/bias/v
+:)	А2Adam/gru/gru_cell/kernel/v
6:4
АА2$Adam/gru/gru_cell/recurrent_kernel/v
):'	А2Adam/gru/gru_cell/bias/vН
!__inference__wrapped_model_188746h.,- 0в-
&в#
!К
input_1         	
к "-к*
(
denseК
dense         в
A__inference_dense_layer_call_and_return_conditional_losses_191895] 0в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ z
&__inference_dense_layer_call_fn_191884P 0в-
&в#
!К
inputs         А
к "К         е
C__inference_flatten_layer_call_and_return_conditional_losses_191875^4в1
*в'
%К"
inputs         	А
к "&в#
К
0         А
Ъ }
(__inference_flatten_layer_call_fn_191869Q4в1
*в'
%К"
inputs         	А
к "К         АГ
D__inference_gru_cell_layer_call_and_return_conditional_losses_192019║.,-]вZ
SвP
 К
inputs         
(в%
#К 
states/0         А
p 
к "TвQ
JвG
К
0/0         А
%Ъ"
 К
0/1/0         А
Ъ Г
D__inference_gru_cell_layer_call_and_return_conditional_losses_192139║.,-]вZ
SвP
 К
inputs         
(в%
#К 
states/0         А
p
к "TвQ
JвG
К
0/0         А
%Ъ"
 К
0/1/0         А
Ъ ┌
)__inference_gru_cell_layer_call_fn_191909м.,-]вZ
SвP
 К
inputs         
(в%
#К 
states/0         А
p 
к "FвC
К
0         А
#Ъ 
К
1/0         А┌
)__inference_gru_cell_layer_call_fn_191923м.,-]вZ
SвP
 К
inputs         
(в%
#К 
states/0         А
p
к "FвC
К
0         А
#Ъ 
К
1/0         А╧
?__inference_gru_layer_call_and_return_conditional_losses_190967Л.,-OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "3в0
)К&
0                  А
Ъ ╧
?__inference_gru_layer_call_and_return_conditional_losses_191282Л.,-OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "3в0
)К&
0                  А
Ъ ╡
?__inference_gru_layer_call_and_return_conditional_losses_191549r.,-?в<
5в2
$К!
inputs         	

 
p 

 
к "*в'
 К
0         	А
Ъ ╡
?__inference_gru_layer_call_and_return_conditional_losses_191864r.,-?в<
5в2
$К!
inputs         	

 
p

 
к "*в'
 К
0         	А
Ъ ж
$__inference_gru_layer_call_fn_190667~.,-OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "&К#                  Аж
$__inference_gru_layer_call_fn_190678~.,-OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "&К#                  АН
$__inference_gru_layer_call_fn_190689e.,-?в<
5в2
$К!
inputs         	

 
p 

 
к "К         	АН
$__inference_gru_layer_call_fn_190700e.,-?в<
5в2
$К!
inputs         	

 
p

 
к "К         	Ан
A__inference_model_layer_call_and_return_conditional_losses_189980h.,- 8в5
.в+
!К
input_1         	
p 

 
к "%в"
К
0         
Ъ н
A__inference_model_layer_call_and_return_conditional_losses_189999h.,- 8в5
.в+
!К
input_1         	
p

 
к "%в"
К
0         
Ъ м
A__inference_model_layer_call_and_return_conditional_losses_190313g.,- 7в4
-в*
 К
inputs         	
p 

 
к "%в"
К
0         
Ъ м
A__inference_model_layer_call_and_return_conditional_losses_190639g.,- 7в4
-в*
 К
inputs         	
p

 
к "%в"
К
0         
Ъ Е
&__inference_model_layer_call_fn_189544[.,- 8в5
.в+
!К
input_1         	
p 

 
к "К         Е
&__inference_model_layer_call_fn_189961[.,- 8в5
.в+
!К
input_1         	
p

 
к "К         Д
&__inference_model_layer_call_fn_190020Z.,- 7в4
-в*
 К
inputs         	
p 

 
к "К         Д
&__inference_model_layer_call_fn_190035Z.,- 7в4
-в*
 К
inputs         	
p

 
к "К         Ы
$__inference_signature_wrapper_190656s.,- ;в8
в 
1к.
,
input_1!К
input_1         	"-к*
(
denseК
dense         