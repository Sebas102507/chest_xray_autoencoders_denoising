��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
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
�
Adam/v/conv2d_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_47/bias
{
)Adam/v/conv2d_47/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_47/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_47/bias
{
)Adam/m/conv2d_47/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_47/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_47/kernel
�
+Adam/v/conv2d_47/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_47/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_47/kernel
�
+Adam/m/conv2d_47/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_47/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_transpose_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/v/conv2d_transpose_39/bias
�
3Adam/v/conv2d_transpose_39/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_transpose_39/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_transpose_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/m/conv2d_transpose_39/bias
�
3Adam/m/conv2d_transpose_39/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_transpose_39/bias*
_output_shapes
:*
dtype0
�
!Adam/v/conv2d_transpose_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/v/conv2d_transpose_39/kernel
�
5Adam/v/conv2d_transpose_39/kernel/Read/ReadVariableOpReadVariableOp!Adam/v/conv2d_transpose_39/kernel*&
_output_shapes
:*
dtype0
�
!Adam/m/conv2d_transpose_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/m/conv2d_transpose_39/kernel
�
5Adam/m/conv2d_transpose_39/kernel/Read/ReadVariableOpReadVariableOp!Adam/m/conv2d_transpose_39/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_transpose_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/v/conv2d_transpose_38/bias
�
3Adam/v/conv2d_transpose_38/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_transpose_38/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_transpose_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/m/conv2d_transpose_38/bias
�
3Adam/m/conv2d_transpose_38/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_transpose_38/bias*
_output_shapes
:*
dtype0
�
!Adam/v/conv2d_transpose_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/v/conv2d_transpose_38/kernel
�
5Adam/v/conv2d_transpose_38/kernel/Read/ReadVariableOpReadVariableOp!Adam/v/conv2d_transpose_38/kernel*&
_output_shapes
:*
dtype0
�
!Adam/m/conv2d_transpose_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/m/conv2d_transpose_38/kernel
�
5Adam/m/conv2d_transpose_38/kernel/Read/ReadVariableOpReadVariableOp!Adam/m/conv2d_transpose_38/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_transpose_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/v/conv2d_transpose_37/bias
�
3Adam/v/conv2d_transpose_37/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_transpose_37/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_transpose_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/m/conv2d_transpose_37/bias
�
3Adam/m/conv2d_transpose_37/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_transpose_37/bias*
_output_shapes
:*
dtype0
�
!Adam/v/conv2d_transpose_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/v/conv2d_transpose_37/kernel
�
5Adam/v/conv2d_transpose_37/kernel/Read/ReadVariableOpReadVariableOp!Adam/v/conv2d_transpose_37/kernel*&
_output_shapes
: *
dtype0
�
!Adam/m/conv2d_transpose_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/m/conv2d_transpose_37/kernel
�
5Adam/m/conv2d_transpose_37/kernel/Read/ReadVariableOpReadVariableOp!Adam/m/conv2d_transpose_37/kernel*&
_output_shapes
: *
dtype0
�
Adam/v/conv2d_transpose_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/v/conv2d_transpose_36/bias
�
3Adam/v/conv2d_transpose_36/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_transpose_36/bias*
_output_shapes
: *
dtype0
�
Adam/m/conv2d_transpose_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/m/conv2d_transpose_36/bias
�
3Adam/m/conv2d_transpose_36/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_transpose_36/bias*
_output_shapes
: *
dtype0
�
!Adam/v/conv2d_transpose_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/v/conv2d_transpose_36/kernel
�
5Adam/v/conv2d_transpose_36/kernel/Read/ReadVariableOpReadVariableOp!Adam/v/conv2d_transpose_36/kernel*&
_output_shapes
: @*
dtype0
�
!Adam/m/conv2d_transpose_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/m/conv2d_transpose_36/kernel
�
5Adam/m/conv2d_transpose_36/kernel/Read/ReadVariableOpReadVariableOp!Adam/m/conv2d_transpose_36/kernel*&
_output_shapes
: @*
dtype0
�
Adam/v/conv2d_transpose_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/v/conv2d_transpose_35/bias
�
3Adam/v/conv2d_transpose_35/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_transpose_35/bias*
_output_shapes
:@*
dtype0
�
Adam/m/conv2d_transpose_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/m/conv2d_transpose_35/bias
�
3Adam/m/conv2d_transpose_35/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_transpose_35/bias*
_output_shapes
:@*
dtype0
�
!Adam/v/conv2d_transpose_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*2
shared_name#!Adam/v/conv2d_transpose_35/kernel
�
5Adam/v/conv2d_transpose_35/kernel/Read/ReadVariableOpReadVariableOp!Adam/v/conv2d_transpose_35/kernel*&
_output_shapes
:@@*
dtype0
�
!Adam/m/conv2d_transpose_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*2
shared_name#!Adam/m/conv2d_transpose_35/kernel
�
5Adam/m/conv2d_transpose_35/kernel/Read/ReadVariableOpReadVariableOp!Adam/m/conv2d_transpose_35/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/v/conv2d_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_46/bias
{
)Adam/v/conv2d_46/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_46/bias*
_output_shapes
:@*
dtype0
�
Adam/m/conv2d_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_46/bias
{
)Adam/m/conv2d_46/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_46/bias*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/v/conv2d_46/kernel
�
+Adam/v/conv2d_46/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_46/kernel*&
_output_shapes
: @*
dtype0
�
Adam/m/conv2d_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/m/conv2d_46/kernel
�
+Adam/m/conv2d_46/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_46/kernel*&
_output_shapes
: @*
dtype0
�
Adam/v/conv2d_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/v/conv2d_45/bias
{
)Adam/v/conv2d_45/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_45/bias*
_output_shapes
: *
dtype0
�
Adam/m/conv2d_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/m/conv2d_45/bias
{
)Adam/m/conv2d_45/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_45/bias*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/v/conv2d_45/kernel
�
+Adam/v/conv2d_45/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_45/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/conv2d_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/m/conv2d_45/kernel
�
+Adam/m/conv2d_45/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_45/kernel*&
_output_shapes
: *
dtype0
�
Adam/v/conv2d_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_44/bias
{
)Adam/v/conv2d_44/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_44/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_44/bias
{
)Adam/m/conv2d_44/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_44/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_44/kernel
�
+Adam/v/conv2d_44/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_44/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_44/kernel
�
+Adam/m/conv2d_44/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_44/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_43/bias
{
)Adam/v/conv2d_43/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_43/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_43/bias
{
)Adam/m/conv2d_43/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_43/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_43/kernel
�
+Adam/v/conv2d_43/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_43/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_43/kernel
�
+Adam/m/conv2d_43/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_43/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_42/bias
{
)Adam/v/conv2d_42/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_42/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_42/bias
{
)Adam/m/conv2d_42/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_42/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_42/kernel
�
+Adam/v/conv2d_42/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_42/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_42/kernel
�
+Adam/m/conv2d_42/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_42/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
t
conv2d_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_47/bias
m
"conv2d_47/bias/Read/ReadVariableOpReadVariableOpconv2d_47/bias*
_output_shapes
:*
dtype0
�
conv2d_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_47/kernel
}
$conv2d_47/kernel/Read/ReadVariableOpReadVariableOpconv2d_47/kernel*&
_output_shapes
:*
dtype0
�
conv2d_transpose_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_39/bias
�
,conv2d_transpose_39/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_39/bias*
_output_shapes
:*
dtype0
�
conv2d_transpose_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv2d_transpose_39/kernel
�
.conv2d_transpose_39/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_39/kernel*&
_output_shapes
:*
dtype0
�
conv2d_transpose_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_38/bias
�
,conv2d_transpose_38/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_38/bias*
_output_shapes
:*
dtype0
�
conv2d_transpose_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv2d_transpose_38/kernel
�
.conv2d_transpose_38/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_38/kernel*&
_output_shapes
:*
dtype0
�
conv2d_transpose_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_37/bias
�
,conv2d_transpose_37/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_37/bias*
_output_shapes
:*
dtype0
�
conv2d_transpose_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv2d_transpose_37/kernel
�
.conv2d_transpose_37/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_37/kernel*&
_output_shapes
: *
dtype0
�
conv2d_transpose_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv2d_transpose_36/bias
�
,conv2d_transpose_36/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_36/bias*
_output_shapes
: *
dtype0
�
conv2d_transpose_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv2d_transpose_36/kernel
�
.conv2d_transpose_36/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_36/kernel*&
_output_shapes
: @*
dtype0
�
conv2d_transpose_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv2d_transpose_35/bias
�
,conv2d_transpose_35/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_35/bias*
_output_shapes
:@*
dtype0
�
conv2d_transpose_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*+
shared_nameconv2d_transpose_35/kernel
�
.conv2d_transpose_35/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_35/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_46/bias
m
"conv2d_46/bias/Read/ReadVariableOpReadVariableOpconv2d_46/bias*
_output_shapes
:@*
dtype0
�
conv2d_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_46/kernel
}
$conv2d_46/kernel/Read/ReadVariableOpReadVariableOpconv2d_46/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_45/bias
m
"conv2d_45/bias/Read/ReadVariableOpReadVariableOpconv2d_45/bias*
_output_shapes
: *
dtype0
�
conv2d_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_45/kernel
}
$conv2d_45/kernel/Read/ReadVariableOpReadVariableOpconv2d_45/kernel*&
_output_shapes
: *
dtype0
t
conv2d_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_44/bias
m
"conv2d_44/bias/Read/ReadVariableOpReadVariableOpconv2d_44/bias*
_output_shapes
:*
dtype0
�
conv2d_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_44/kernel
}
$conv2d_44/kernel/Read/ReadVariableOpReadVariableOpconv2d_44/kernel*&
_output_shapes
:*
dtype0
t
conv2d_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_43/bias
m
"conv2d_43/bias/Read/ReadVariableOpReadVariableOpconv2d_43/bias*
_output_shapes
:*
dtype0
�
conv2d_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_43/kernel
}
$conv2d_43/kernel/Read/ReadVariableOpReadVariableOpconv2d_43/kernel*&
_output_shapes
:*
dtype0
t
conv2d_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_42/bias
m
"conv2d_42/bias/Read/ReadVariableOpReadVariableOpconv2d_42/bias*
_output_shapes
:*
dtype0
�
conv2d_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_42/kernel
}
$conv2d_42/kernel/Read/ReadVariableOpReadVariableOpconv2d_42/kernel*&
_output_shapes
:*
dtype0
�
serving_default_input_1Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d_42/kernelconv2d_42/biasconv2d_43/kernelconv2d_43/biasconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasconv2d_46/kernelconv2d_46/biasconv2d_transpose_35/kernelconv2d_transpose_35/biasconv2d_transpose_36/kernelconv2d_transpose_36/biasconv2d_transpose_37/kernelconv2d_transpose_37/biasconv2d_transpose_38/kernelconv2d_transpose_38/biasconv2d_transpose_39/kernelconv2d_transpose_39/biasconv2d_47/kernelconv2d_47/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_80413

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	decoder

	optimizer

signatures*
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
!21*
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
!21*
* 
�
"non_trainable_variables

#layers
$metrics
%layer_regularization_losses
&layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
'trace_0
(trace_1
)trace_2
*trace_3* 
6
+trace_0
,trace_1
-trace_2
.trace_3* 
* 
�
/layer_with_weights-0
/layer-0
0layer_with_weights-1
0layer-1
1layer_with_weights-2
1layer-2
2layer_with_weights-3
2layer-3
3layer_with_weights-4
3layer-4
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses*
�
:layer_with_weights-0
:layer-0
;layer_with_weights-1
;layer-1
<layer_with_weights-2
<layer-2
=layer_with_weights-3
=layer-3
>layer_with_weights-4
>layer-4
?layer_with_weights-5
?layer-5
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses*
�
F
_variables
G_iterations
H_learning_rate
I_index_dict
J
_momentums
K_velocities
L_update_step_xla*

Mserving_default* 
PJ
VARIABLE_VALUEconv2d_42/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_42/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_43/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_43/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_44/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_44/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_45/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_45/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_46/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_46/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_transpose_35/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_35/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_transpose_36/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_36/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_transpose_37/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_37/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_transpose_38/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_38/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_transpose_39/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_39/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_47/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_47/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
	1*

N0*
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
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

kernel
bias
 U_jit_compiled_convolution_op*
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

kernel
bias
 \_jit_compiled_convolution_op*
�
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

kernel
bias
 c_jit_compiled_convolution_op*
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

kernel
bias
 j_jit_compiled_convolution_op*
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

kernel
bias
 q_jit_compiled_convolution_op*
J
0
1
2
3
4
5
6
7
8
9*
J
0
1
2
3
4
5
6
7
8
9*
* 
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*
6
wtrace_0
xtrace_1
ytrace_2
ztrace_3* 
6
{trace_0
|trace_1
}trace_2
~trace_3* 
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

 kernel
!bias
!�_jit_compiled_convolution_op*
Z
0
1
2
3
4
5
6
7
8
9
 10
!11*
Z
0
1
2
3
4
5
6
7
8
9
 10
!11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
�
G0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21*
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15
�trace_16
�trace_17
�trace_18
�trace_19
�trace_20
�trace_21* 
* 
<
�	variables
�	keras_api

�total

�count*

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
'
/0
01
12
23
34*
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

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

 0
!1*

 0
!1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
.
:0
;1
<2
=3
>4
?5*
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
b\
VARIABLE_VALUEAdam/m/conv2d_42/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_42/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_42/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_42/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_43/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_43/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_43/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_43/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_44/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_44/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_44/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_44/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_45/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_45/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_45/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_45/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_46/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_46/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_46/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_46/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/conv2d_transpose_35/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/conv2d_transpose_35/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/m/conv2d_transpose_35/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/v/conv2d_transpose_35/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/conv2d_transpose_36/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/conv2d_transpose_36/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/m/conv2d_transpose_36/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/v/conv2d_transpose_36/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/conv2d_transpose_37/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/conv2d_transpose_37/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/m/conv2d_transpose_37/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/v/conv2d_transpose_37/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/conv2d_transpose_38/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/conv2d_transpose_38/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/m/conv2d_transpose_38/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/v/conv2d_transpose_38/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/conv2d_transpose_39/kernel2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/conv2d_transpose_39/kernel2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/m/conv2d_transpose_39/bias2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/v/conv2d_transpose_39/bias2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_47/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_47/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_47/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_47/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
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
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
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
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_42/kernelconv2d_42/biasconv2d_43/kernelconv2d_43/biasconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasconv2d_46/kernelconv2d_46/biasconv2d_transpose_35/kernelconv2d_transpose_35/biasconv2d_transpose_36/kernelconv2d_transpose_36/biasconv2d_transpose_37/kernelconv2d_transpose_37/biasconv2d_transpose_38/kernelconv2d_transpose_38/biasconv2d_transpose_39/kernelconv2d_transpose_39/biasconv2d_47/kernelconv2d_47/bias	iterationlearning_rateAdam/m/conv2d_42/kernelAdam/v/conv2d_42/kernelAdam/m/conv2d_42/biasAdam/v/conv2d_42/biasAdam/m/conv2d_43/kernelAdam/v/conv2d_43/kernelAdam/m/conv2d_43/biasAdam/v/conv2d_43/biasAdam/m/conv2d_44/kernelAdam/v/conv2d_44/kernelAdam/m/conv2d_44/biasAdam/v/conv2d_44/biasAdam/m/conv2d_45/kernelAdam/v/conv2d_45/kernelAdam/m/conv2d_45/biasAdam/v/conv2d_45/biasAdam/m/conv2d_46/kernelAdam/v/conv2d_46/kernelAdam/m/conv2d_46/biasAdam/v/conv2d_46/bias!Adam/m/conv2d_transpose_35/kernel!Adam/v/conv2d_transpose_35/kernelAdam/m/conv2d_transpose_35/biasAdam/v/conv2d_transpose_35/bias!Adam/m/conv2d_transpose_36/kernel!Adam/v/conv2d_transpose_36/kernelAdam/m/conv2d_transpose_36/biasAdam/v/conv2d_transpose_36/bias!Adam/m/conv2d_transpose_37/kernel!Adam/v/conv2d_transpose_37/kernelAdam/m/conv2d_transpose_37/biasAdam/v/conv2d_transpose_37/bias!Adam/m/conv2d_transpose_38/kernel!Adam/v/conv2d_transpose_38/kernelAdam/m/conv2d_transpose_38/biasAdam/v/conv2d_transpose_38/bias!Adam/m/conv2d_transpose_39/kernel!Adam/v/conv2d_transpose_39/kernelAdam/m/conv2d_transpose_39/biasAdam/v/conv2d_transpose_39/biasAdam/m/conv2d_47/kernelAdam/v/conv2d_47/kernelAdam/m/conv2d_47/biasAdam/v/conv2d_47/biastotalcountConst*S
TinL
J2H*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference__traced_save_81989
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_42/kernelconv2d_42/biasconv2d_43/kernelconv2d_43/biasconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasconv2d_46/kernelconv2d_46/biasconv2d_transpose_35/kernelconv2d_transpose_35/biasconv2d_transpose_36/kernelconv2d_transpose_36/biasconv2d_transpose_37/kernelconv2d_transpose_37/biasconv2d_transpose_38/kernelconv2d_transpose_38/biasconv2d_transpose_39/kernelconv2d_transpose_39/biasconv2d_47/kernelconv2d_47/bias	iterationlearning_rateAdam/m/conv2d_42/kernelAdam/v/conv2d_42/kernelAdam/m/conv2d_42/biasAdam/v/conv2d_42/biasAdam/m/conv2d_43/kernelAdam/v/conv2d_43/kernelAdam/m/conv2d_43/biasAdam/v/conv2d_43/biasAdam/m/conv2d_44/kernelAdam/v/conv2d_44/kernelAdam/m/conv2d_44/biasAdam/v/conv2d_44/biasAdam/m/conv2d_45/kernelAdam/v/conv2d_45/kernelAdam/m/conv2d_45/biasAdam/v/conv2d_45/biasAdam/m/conv2d_46/kernelAdam/v/conv2d_46/kernelAdam/m/conv2d_46/biasAdam/v/conv2d_46/bias!Adam/m/conv2d_transpose_35/kernel!Adam/v/conv2d_transpose_35/kernelAdam/m/conv2d_transpose_35/biasAdam/v/conv2d_transpose_35/bias!Adam/m/conv2d_transpose_36/kernel!Adam/v/conv2d_transpose_36/kernelAdam/m/conv2d_transpose_36/biasAdam/v/conv2d_transpose_36/bias!Adam/m/conv2d_transpose_37/kernel!Adam/v/conv2d_transpose_37/kernelAdam/m/conv2d_transpose_37/biasAdam/v/conv2d_transpose_37/bias!Adam/m/conv2d_transpose_38/kernel!Adam/v/conv2d_transpose_38/kernelAdam/m/conv2d_transpose_38/biasAdam/v/conv2d_transpose_38/bias!Adam/m/conv2d_transpose_39/kernel!Adam/v/conv2d_transpose_39/kernelAdam/m/conv2d_transpose_39/biasAdam/v/conv2d_transpose_39/biasAdam/m/conv2d_47/kernelAdam/v/conv2d_47/kernelAdam/m/conv2d_47/biasAdam/v/conv2d_47/biastotalcount*R
TinK
I2G*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__traced_restore_82209��
�!
�
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_79496

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
-__inference_sequential_14_layer_call_fn_80828

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_79284w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_46_layer_call_fn_81300

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_46_layer_call_and_return_conditional_losses_79216w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
)__inference_conv2d_44_layer_call_fn_81260

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_79182w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
H__inference_sequential_15_layer_call_and_return_conditional_losses_81211

inputsV
<conv2d_transpose_35_conv2d_transpose_readvariableop_resource:@@A
3conv2d_transpose_35_biasadd_readvariableop_resource:@V
<conv2d_transpose_36_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_36_biasadd_readvariableop_resource: V
<conv2d_transpose_37_conv2d_transpose_readvariableop_resource: A
3conv2d_transpose_37_biasadd_readvariableop_resource:V
<conv2d_transpose_38_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_38_biasadd_readvariableop_resource:V
<conv2d_transpose_39_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_39_biasadd_readvariableop_resource:B
(conv2d_47_conv2d_readvariableop_resource:7
)conv2d_47_biasadd_readvariableop_resource:
identity�� conv2d_47/BiasAdd/ReadVariableOp�conv2d_47/Conv2D/ReadVariableOp�*conv2d_transpose_35/BiasAdd/ReadVariableOp�3conv2d_transpose_35/conv2d_transpose/ReadVariableOp�*conv2d_transpose_36/BiasAdd/ReadVariableOp�3conv2d_transpose_36/conv2d_transpose/ReadVariableOp�*conv2d_transpose_37/BiasAdd/ReadVariableOp�3conv2d_transpose_37/conv2d_transpose/ReadVariableOp�*conv2d_transpose_38/BiasAdd/ReadVariableOp�3conv2d_transpose_38/conv2d_transpose/ReadVariableOp�*conv2d_transpose_39/BiasAdd/ReadVariableOp�3conv2d_transpose_39/conv2d_transpose/ReadVariableOp]
conv2d_transpose_35/ShapeShapeinputs*
T0*
_output_shapes
::��q
'conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_35/strided_sliceStridedSlice"conv2d_transpose_35/Shape:output:00conv2d_transpose_35/strided_slice/stack:output:02conv2d_transpose_35/strided_slice/stack_1:output:02conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ]
conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ]
conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
conv2d_transpose_35/stackPack*conv2d_transpose_35/strided_slice:output:0$conv2d_transpose_35/stack/1:output:0$conv2d_transpose_35/stack/2:output:0$conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_35/strided_slice_1StridedSlice"conv2d_transpose_35/stack:output:02conv2d_transpose_35/strided_slice_1/stack:output:04conv2d_transpose_35/strided_slice_1/stack_1:output:04conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
$conv2d_transpose_35/conv2d_transposeConv2DBackpropInput"conv2d_transpose_35/stack:output:0;conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
*conv2d_transpose_35/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_35_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_transpose_35/BiasAddBiasAdd-conv2d_transpose_35/conv2d_transpose:output:02conv2d_transpose_35/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @�
conv2d_transpose_35/ReluRelu$conv2d_transpose_35/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @}
conv2d_transpose_36/ShapeShape&conv2d_transpose_35/Relu:activations:0*
T0*
_output_shapes
::��q
'conv2d_transpose_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_36/strided_sliceStridedSlice"conv2d_transpose_36/Shape:output:00conv2d_transpose_36/strided_slice/stack:output:02conv2d_transpose_36/strided_slice/stack_1:output:02conv2d_transpose_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_36/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_36/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_36/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
conv2d_transpose_36/stackPack*conv2d_transpose_36/strided_slice:output:0$conv2d_transpose_36/stack/1:output:0$conv2d_transpose_36/stack/2:output:0$conv2d_transpose_36/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_36/strided_slice_1StridedSlice"conv2d_transpose_36/stack:output:02conv2d_transpose_36/strided_slice_1/stack:output:04conv2d_transpose_36/strided_slice_1/stack_1:output:04conv2d_transpose_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_36/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_36_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
$conv2d_transpose_36/conv2d_transposeConv2DBackpropInput"conv2d_transpose_36/stack:output:0;conv2d_transpose_36/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_35/Relu:activations:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
*conv2d_transpose_36/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_transpose_36/BiasAddBiasAdd-conv2d_transpose_36/conv2d_transpose:output:02conv2d_transpose_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ �
conv2d_transpose_36/ReluRelu$conv2d_transpose_36/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@ }
conv2d_transpose_37/ShapeShape&conv2d_transpose_36/Relu:activations:0*
T0*
_output_shapes
::��q
'conv2d_transpose_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_37/strided_sliceStridedSlice"conv2d_transpose_37/Shape:output:00conv2d_transpose_37/strided_slice/stack:output:02conv2d_transpose_37/strided_slice/stack_1:output:02conv2d_transpose_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_37/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�^
conv2d_transpose_37/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�]
conv2d_transpose_37/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_37/stackPack*conv2d_transpose_37/strided_slice:output:0$conv2d_transpose_37/stack/1:output:0$conv2d_transpose_37/stack/2:output:0$conv2d_transpose_37/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_37/strided_slice_1StridedSlice"conv2d_transpose_37/stack:output:02conv2d_transpose_37/strided_slice_1/stack:output:04conv2d_transpose_37/strided_slice_1/stack_1:output:04conv2d_transpose_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_37/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_37_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
$conv2d_transpose_37/conv2d_transposeConv2DBackpropInput"conv2d_transpose_37/stack:output:0;conv2d_transpose_37/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_36/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*conv2d_transpose_37/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_37/BiasAddBiasAdd-conv2d_transpose_37/conv2d_transpose:output:02conv2d_transpose_37/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
conv2d_transpose_37/ReluRelu$conv2d_transpose_37/BiasAdd:output:0*
T0*1
_output_shapes
:�����������}
conv2d_transpose_38/ShapeShape&conv2d_transpose_37/Relu:activations:0*
T0*
_output_shapes
::��q
'conv2d_transpose_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_38/strided_sliceStridedSlice"conv2d_transpose_38/Shape:output:00conv2d_transpose_38/strided_slice/stack:output:02conv2d_transpose_38/strided_slice/stack_1:output:02conv2d_transpose_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_38/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�^
conv2d_transpose_38/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�]
conv2d_transpose_38/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_38/stackPack*conv2d_transpose_38/strided_slice:output:0$conv2d_transpose_38/stack/1:output:0$conv2d_transpose_38/stack/2:output:0$conv2d_transpose_38/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_38/strided_slice_1StridedSlice"conv2d_transpose_38/stack:output:02conv2d_transpose_38/strided_slice_1/stack:output:04conv2d_transpose_38/strided_slice_1/stack_1:output:04conv2d_transpose_38/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_38/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_38_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_38/conv2d_transposeConv2DBackpropInput"conv2d_transpose_38/stack:output:0;conv2d_transpose_38/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_37/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*conv2d_transpose_38/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_38/BiasAddBiasAdd-conv2d_transpose_38/conv2d_transpose:output:02conv2d_transpose_38/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
conv2d_transpose_38/ReluRelu$conv2d_transpose_38/BiasAdd:output:0*
T0*1
_output_shapes
:�����������}
conv2d_transpose_39/ShapeShape&conv2d_transpose_38/Relu:activations:0*
T0*
_output_shapes
::��q
'conv2d_transpose_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_39/strided_sliceStridedSlice"conv2d_transpose_39/Shape:output:00conv2d_transpose_39/strided_slice/stack:output:02conv2d_transpose_39/strided_slice/stack_1:output:02conv2d_transpose_39/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_39/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�^
conv2d_transpose_39/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�]
conv2d_transpose_39/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_39/stackPack*conv2d_transpose_39/strided_slice:output:0$conv2d_transpose_39/stack/1:output:0$conv2d_transpose_39/stack/2:output:0$conv2d_transpose_39/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_39/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_39/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_39/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_39/strided_slice_1StridedSlice"conv2d_transpose_39/stack:output:02conv2d_transpose_39/strided_slice_1/stack:output:04conv2d_transpose_39/strided_slice_1/stack_1:output:04conv2d_transpose_39/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_39/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_39_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_39/conv2d_transposeConv2DBackpropInput"conv2d_transpose_39/stack:output:0;conv2d_transpose_39/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_38/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*conv2d_transpose_39/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_39/BiasAddBiasAdd-conv2d_transpose_39/conv2d_transpose:output:02conv2d_transpose_39/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
conv2d_transpose_39/ReluRelu$conv2d_transpose_39/BiasAdd:output:0*
T0*1
_output_shapes
:������������
conv2d_47/Conv2D/ReadVariableOpReadVariableOp(conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_47/Conv2DConv2D&conv2d_transpose_39/Relu:activations:0'conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
 conv2d_47/BiasAdd/ReadVariableOpReadVariableOp)conv2d_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_47/BiasAddBiasAddconv2d_47/Conv2D:output:0(conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������t
conv2d_47/SigmoidSigmoidconv2d_47/BiasAdd:output:0*
T0*1
_output_shapes
:�����������n
IdentityIdentityconv2d_47/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp!^conv2d_47/BiasAdd/ReadVariableOp ^conv2d_47/Conv2D/ReadVariableOp+^conv2d_transpose_35/BiasAdd/ReadVariableOp4^conv2d_transpose_35/conv2d_transpose/ReadVariableOp+^conv2d_transpose_36/BiasAdd/ReadVariableOp4^conv2d_transpose_36/conv2d_transpose/ReadVariableOp+^conv2d_transpose_37/BiasAdd/ReadVariableOp4^conv2d_transpose_37/conv2d_transpose/ReadVariableOp+^conv2d_transpose_38/BiasAdd/ReadVariableOp4^conv2d_transpose_38/conv2d_transpose/ReadVariableOp+^conv2d_transpose_39/BiasAdd/ReadVariableOp4^conv2d_transpose_39/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@: : : : : : : : : : : : 2D
 conv2d_47/BiasAdd/ReadVariableOp conv2d_47/BiasAdd/ReadVariableOp2B
conv2d_47/Conv2D/ReadVariableOpconv2d_47/Conv2D/ReadVariableOp2X
*conv2d_transpose_35/BiasAdd/ReadVariableOp*conv2d_transpose_35/BiasAdd/ReadVariableOp2j
3conv2d_transpose_35/conv2d_transpose/ReadVariableOp3conv2d_transpose_35/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_36/BiasAdd/ReadVariableOp*conv2d_transpose_36/BiasAdd/ReadVariableOp2j
3conv2d_transpose_36/conv2d_transpose/ReadVariableOp3conv2d_transpose_36/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_37/BiasAdd/ReadVariableOp*conv2d_transpose_37/BiasAdd/ReadVariableOp2j
3conv2d_transpose_37/conv2d_transpose/ReadVariableOp3conv2d_transpose_37/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_38/BiasAdd/ReadVariableOp*conv2d_transpose_38/BiasAdd/ReadVariableOp2j
3conv2d_transpose_38/conv2d_transpose/ReadVariableOp3conv2d_transpose_38/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_39/BiasAdd/ReadVariableOp*conv2d_transpose_39/BiasAdd/ReadVariableOp2j
3conv2d_transpose_39/conv2d_transpose/ReadVariableOp3conv2d_transpose_39/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_70765
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:P L
&
_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
V
"__inference__update_step_xla_70685
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:P L
&
_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�1
�
H__inference_sequential_14_layer_call_and_return_conditional_losses_80931

inputsB
(conv2d_42_conv2d_readvariableop_resource:7
)conv2d_42_biasadd_readvariableop_resource:B
(conv2d_43_conv2d_readvariableop_resource:7
)conv2d_43_biasadd_readvariableop_resource:B
(conv2d_44_conv2d_readvariableop_resource:7
)conv2d_44_biasadd_readvariableop_resource:B
(conv2d_45_conv2d_readvariableop_resource: 7
)conv2d_45_biasadd_readvariableop_resource: B
(conv2d_46_conv2d_readvariableop_resource: @7
)conv2d_46_biasadd_readvariableop_resource:@
identity�� conv2d_42/BiasAdd/ReadVariableOp�conv2d_42/Conv2D/ReadVariableOp� conv2d_43/BiasAdd/ReadVariableOp�conv2d_43/Conv2D/ReadVariableOp� conv2d_44/BiasAdd/ReadVariableOp�conv2d_44/Conv2D/ReadVariableOp� conv2d_45/BiasAdd/ReadVariableOp�conv2d_45/Conv2D/ReadVariableOp� conv2d_46/BiasAdd/ReadVariableOp�conv2d_46/Conv2D/ReadVariableOp�
conv2d_42/Conv2D/ReadVariableOpReadVariableOp(conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_42/Conv2DConv2Dinputs'conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
 conv2d_42/BiasAdd/ReadVariableOpReadVariableOp)conv2d_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_42/BiasAddBiasAddconv2d_42/Conv2D:output:0(conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������n
conv2d_42/ReluReluconv2d_42/BiasAdd:output:0*
T0*1
_output_shapes
:������������
conv2d_43/Conv2D/ReadVariableOpReadVariableOp(conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_43/Conv2DConv2Dconv2d_42/Relu:activations:0'conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
 conv2d_43/BiasAdd/ReadVariableOpReadVariableOp)conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_43/BiasAddBiasAddconv2d_43/Conv2D:output:0(conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������n
conv2d_43/ReluReluconv2d_43/BiasAdd:output:0*
T0*1
_output_shapes
:������������
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_44/Conv2DConv2Dconv2d_43/Relu:activations:0'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@l
conv2d_44/ReluReluconv2d_44/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_45/Conv2DConv2Dconv2d_44/Relu:activations:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   l
conv2d_45/ReluReluconv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
conv2d_46/Conv2D/ReadVariableOpReadVariableOp(conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_46/Conv2DConv2Dconv2d_45/Relu:activations:0'conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
 conv2d_46/BiasAdd/ReadVariableOpReadVariableOp)conv2d_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_46/BiasAddBiasAddconv2d_46/Conv2D:output:0(conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_46/ReluReluconv2d_46/BiasAdd:output:0*
T0*/
_output_shapes
:���������@s
IdentityIdentityconv2d_46/Relu:activations:0^NoOp*
T0*/
_output_shapes
:���������@�
NoOpNoOp!^conv2d_42/BiasAdd/ReadVariableOp ^conv2d_42/Conv2D/ReadVariableOp!^conv2d_43/BiasAdd/ReadVariableOp ^conv2d_43/Conv2D/ReadVariableOp!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp!^conv2d_46/BiasAdd/ReadVariableOp ^conv2d_46/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2D
 conv2d_42/BiasAdd/ReadVariableOp conv2d_42/BiasAdd/ReadVariableOp2B
conv2d_42/Conv2D/ReadVariableOpconv2d_42/Conv2D/ReadVariableOp2D
 conv2d_43/BiasAdd/ReadVariableOp conv2d_43/BiasAdd/ReadVariableOp2B
conv2d_43/Conv2D/ReadVariableOpconv2d_43/Conv2D/ReadVariableOp2D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2D
 conv2d_46/BiasAdd/ReadVariableOp conv2d_46/BiasAdd/ReadVariableOp2B
conv2d_46/Conv2D/ReadVariableOpconv2d_46/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�1
�
H__inference_sequential_14_layer_call_and_return_conditional_losses_80892

inputsB
(conv2d_42_conv2d_readvariableop_resource:7
)conv2d_42_biasadd_readvariableop_resource:B
(conv2d_43_conv2d_readvariableop_resource:7
)conv2d_43_biasadd_readvariableop_resource:B
(conv2d_44_conv2d_readvariableop_resource:7
)conv2d_44_biasadd_readvariableop_resource:B
(conv2d_45_conv2d_readvariableop_resource: 7
)conv2d_45_biasadd_readvariableop_resource: B
(conv2d_46_conv2d_readvariableop_resource: @7
)conv2d_46_biasadd_readvariableop_resource:@
identity�� conv2d_42/BiasAdd/ReadVariableOp�conv2d_42/Conv2D/ReadVariableOp� conv2d_43/BiasAdd/ReadVariableOp�conv2d_43/Conv2D/ReadVariableOp� conv2d_44/BiasAdd/ReadVariableOp�conv2d_44/Conv2D/ReadVariableOp� conv2d_45/BiasAdd/ReadVariableOp�conv2d_45/Conv2D/ReadVariableOp� conv2d_46/BiasAdd/ReadVariableOp�conv2d_46/Conv2D/ReadVariableOp�
conv2d_42/Conv2D/ReadVariableOpReadVariableOp(conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_42/Conv2DConv2Dinputs'conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
 conv2d_42/BiasAdd/ReadVariableOpReadVariableOp)conv2d_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_42/BiasAddBiasAddconv2d_42/Conv2D:output:0(conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������n
conv2d_42/ReluReluconv2d_42/BiasAdd:output:0*
T0*1
_output_shapes
:������������
conv2d_43/Conv2D/ReadVariableOpReadVariableOp(conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_43/Conv2DConv2Dconv2d_42/Relu:activations:0'conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
 conv2d_43/BiasAdd/ReadVariableOpReadVariableOp)conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_43/BiasAddBiasAddconv2d_43/Conv2D:output:0(conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������n
conv2d_43/ReluReluconv2d_43/BiasAdd:output:0*
T0*1
_output_shapes
:������������
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_44/Conv2DConv2Dconv2d_43/Relu:activations:0'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@l
conv2d_44/ReluReluconv2d_44/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_45/Conv2DConv2Dconv2d_44/Relu:activations:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   l
conv2d_45/ReluReluconv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
conv2d_46/Conv2D/ReadVariableOpReadVariableOp(conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_46/Conv2DConv2Dconv2d_45/Relu:activations:0'conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
 conv2d_46/BiasAdd/ReadVariableOpReadVariableOp)conv2d_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_46/BiasAddBiasAddconv2d_46/Conv2D:output:0(conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_46/ReluReluconv2d_46/BiasAdd:output:0*
T0*/
_output_shapes
:���������@s
IdentityIdentityconv2d_46/Relu:activations:0^NoOp*
T0*/
_output_shapes
:���������@�
NoOpNoOp!^conv2d_42/BiasAdd/ReadVariableOp ^conv2d_42/Conv2D/ReadVariableOp!^conv2d_43/BiasAdd/ReadVariableOp ^conv2d_43/Conv2D/ReadVariableOp!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp!^conv2d_46/BiasAdd/ReadVariableOp ^conv2d_46/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2D
 conv2d_42/BiasAdd/ReadVariableOp conv2d_42/BiasAdd/ReadVariableOp2B
conv2d_42/Conv2D/ReadVariableOpconv2d_42/Conv2D/ReadVariableOp2D
 conv2d_43/BiasAdd/ReadVariableOp conv2d_43/BiasAdd/ReadVariableOp2B
conv2d_43/Conv2D/ReadVariableOpconv2d_43/Conv2D/ReadVariableOp2D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2D
 conv2d_46/BiasAdd/ReadVariableOp conv2d_46/BiasAdd/ReadVariableOp2B
conv2d_46/Conv2D/ReadVariableOpconv2d_46/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
/__inference_denoise_model_7_layer_call_fn_80511
x!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11: @

unknown_12: $

unknown_13: 

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80215y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�
J
"__inference__update_step_xla_70690
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
V
"__inference__update_step_xla_70745
gradient"
variable: @*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: @: *
	_noinline(:P L
&
_output_shapes
: @
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
D__inference_conv2d_42_layer_call_and_return_conditional_losses_81231

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_44_layer_call_and_return_conditional_losses_79182

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�&
�
H__inference_sequential_15_layer_call_and_return_conditional_losses_79733
input_163
conv2d_transpose_35_79690:@@'
conv2d_transpose_35_79692:@3
conv2d_transpose_36_79695: @'
conv2d_transpose_36_79697: 3
conv2d_transpose_37_79700: '
conv2d_transpose_37_79702:3
conv2d_transpose_38_79705:'
conv2d_transpose_38_79707:3
conv2d_transpose_39_79710:'
conv2d_transpose_39_79712:)
conv2d_47_79727:
conv2d_47_79729:
identity��!conv2d_47/StatefulPartitionedCall�+conv2d_transpose_35/StatefulPartitionedCall�+conv2d_transpose_36/StatefulPartitionedCall�+conv2d_transpose_37/StatefulPartitionedCall�+conv2d_transpose_38/StatefulPartitionedCall�+conv2d_transpose_39/StatefulPartitionedCall�
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCallinput_16conv2d_transpose_35_79690conv2d_transpose_35_79692*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_79496�
+conv2d_transpose_36/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_35/StatefulPartitionedCall:output:0conv2d_transpose_36_79695conv2d_transpose_36_79697*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_36_layer_call_and_return_conditional_losses_79541�
+conv2d_transpose_37/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_36/StatefulPartitionedCall:output:0conv2d_transpose_37_79700conv2d_transpose_37_79702*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_37_layer_call_and_return_conditional_losses_79586�
+conv2d_transpose_38/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_37/StatefulPartitionedCall:output:0conv2d_transpose_38_79705conv2d_transpose_38_79707*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_38_layer_call_and_return_conditional_losses_79631�
+conv2d_transpose_39/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_38/StatefulPartitionedCall:output:0conv2d_transpose_39_79710conv2d_transpose_39_79712*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_39_layer_call_and_return_conditional_losses_79676�
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_39/StatefulPartitionedCall:output:0conv2d_47_79727conv2d_47_79729*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_47_layer_call_and_return_conditional_losses_79726�
IdentityIdentity*conv2d_47/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp"^conv2d_47/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall,^conv2d_transpose_36/StatefulPartitionedCall,^conv2d_transpose_37/StatefulPartitionedCall,^conv2d_transpose_38/StatefulPartitionedCall,^conv2d_transpose_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@: : : : : : : : : : : : 2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall2Z
+conv2d_transpose_36/StatefulPartitionedCall+conv2d_transpose_36/StatefulPartitionedCall2Z
+conv2d_transpose_37/StatefulPartitionedCall+conv2d_transpose_37/StatefulPartitionedCall2Z
+conv2d_transpose_38/StatefulPartitionedCall+conv2d_transpose_38/StatefulPartitionedCall2Z
+conv2d_transpose_39/StatefulPartitionedCall+conv2d_transpose_39/StatefulPartitionedCall:Y U
/
_output_shapes
:���������@
"
_user_specified_name
input_16
�!
�
N__inference_conv2d_transpose_39_layer_call_and_return_conditional_losses_79676

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_43_layer_call_and_return_conditional_losses_79165

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�!
�
N__inference_conv2d_transpose_38_layer_call_and_return_conditional_losses_79631

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�

�
-__inference_sequential_14_layer_call_fn_79307
input_15!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_15unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_79284w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:�����������
"
_user_specified_name
input_15
�
�
H__inference_sequential_14_layer_call_and_return_conditional_losses_79338

inputs)
conv2d_42_79312:
conv2d_42_79314:)
conv2d_43_79317:
conv2d_43_79319:)
conv2d_44_79322:
conv2d_44_79324:)
conv2d_45_79327: 
conv2d_45_79329: )
conv2d_46_79332: @
conv2d_46_79334:@
identity��!conv2d_42/StatefulPartitionedCall�!conv2d_43/StatefulPartitionedCall�!conv2d_44/StatefulPartitionedCall�!conv2d_45/StatefulPartitionedCall�!conv2d_46/StatefulPartitionedCall�
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_42_79312conv2d_42_79314*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_42_layer_call_and_return_conditional_losses_79148�
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_79317conv2d_43_79319*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_43_layer_call_and_return_conditional_losses_79165�
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0conv2d_44_79322conv2d_44_79324*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_79182�
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0conv2d_45_79327conv2d_45_79329*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_45_layer_call_and_return_conditional_losses_79199�
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0conv2d_46_79332conv2d_46_79334*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_46_layer_call_and_return_conditional_losses_79216�
IdentityIdentity*conv2d_46/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@�
NoOpNoOp"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
3__inference_conv2d_transpose_36_layer_call_fn_81363

inputs!
unknown: @
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_36_layer_call_and_return_conditional_losses_79541�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
H__inference_sequential_14_layer_call_and_return_conditional_losses_79252
input_15)
conv2d_42_79226:
conv2d_42_79228:)
conv2d_43_79231:
conv2d_43_79233:)
conv2d_44_79236:
conv2d_44_79238:)
conv2d_45_79241: 
conv2d_45_79243: )
conv2d_46_79246: @
conv2d_46_79248:@
identity��!conv2d_42/StatefulPartitionedCall�!conv2d_43/StatefulPartitionedCall�!conv2d_44/StatefulPartitionedCall�!conv2d_45/StatefulPartitionedCall�!conv2d_46/StatefulPartitionedCall�
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCallinput_15conv2d_42_79226conv2d_42_79228*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_42_layer_call_and_return_conditional_losses_79148�
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_79231conv2d_43_79233*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_43_layer_call_and_return_conditional_losses_79165�
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0conv2d_44_79236conv2d_44_79238*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_79182�
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0conv2d_45_79241conv2d_45_79243*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_45_layer_call_and_return_conditional_losses_79199�
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0conv2d_46_79246conv2d_46_79248*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_46_layer_call_and_return_conditional_losses_79216�
IdentityIdentity*conv2d_46/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@�
NoOpNoOp"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall:[ W
1
_output_shapes
:�����������
"
_user_specified_name
input_15
�
�
/__inference_denoise_model_7_layer_call_fn_80163
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11: @

unknown_12: $

unknown_13: 

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80116y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
)__inference_conv2d_45_layer_call_fn_81280

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_45_layer_call_and_return_conditional_losses_79199w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������   `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
3__inference_conv2d_transpose_39_layer_call_fn_81492

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_39_layer_call_and_return_conditional_losses_79676�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_43_layer_call_and_return_conditional_losses_81251

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
3__inference_conv2d_transpose_35_layer_call_fn_81320

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_79496�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�!
�
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_81354

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
3__inference_conv2d_transpose_38_layer_call_fn_81449

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_38_layer_call_and_return_conditional_losses_79631�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_70705
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:P L
&
_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�&
�
H__inference_sequential_15_layer_call_and_return_conditional_losses_79804

inputs3
conv2d_transpose_35_79773:@@'
conv2d_transpose_35_79775:@3
conv2d_transpose_36_79778: @'
conv2d_transpose_36_79780: 3
conv2d_transpose_37_79783: '
conv2d_transpose_37_79785:3
conv2d_transpose_38_79788:'
conv2d_transpose_38_79790:3
conv2d_transpose_39_79793:'
conv2d_transpose_39_79795:)
conv2d_47_79798:
conv2d_47_79800:
identity��!conv2d_47/StatefulPartitionedCall�+conv2d_transpose_35/StatefulPartitionedCall�+conv2d_transpose_36/StatefulPartitionedCall�+conv2d_transpose_37/StatefulPartitionedCall�+conv2d_transpose_38/StatefulPartitionedCall�+conv2d_transpose_39/StatefulPartitionedCall�
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_35_79773conv2d_transpose_35_79775*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_79496�
+conv2d_transpose_36/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_35/StatefulPartitionedCall:output:0conv2d_transpose_36_79778conv2d_transpose_36_79780*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_36_layer_call_and_return_conditional_losses_79541�
+conv2d_transpose_37/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_36/StatefulPartitionedCall:output:0conv2d_transpose_37_79783conv2d_transpose_37_79785*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_37_layer_call_and_return_conditional_losses_79586�
+conv2d_transpose_38/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_37/StatefulPartitionedCall:output:0conv2d_transpose_38_79788conv2d_transpose_38_79790*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_38_layer_call_and_return_conditional_losses_79631�
+conv2d_transpose_39/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_38/StatefulPartitionedCall:output:0conv2d_transpose_39_79793conv2d_transpose_39_79795*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_39_layer_call_and_return_conditional_losses_79676�
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_39/StatefulPartitionedCall:output:0conv2d_47_79798conv2d_47_79800*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_47_layer_call_and_return_conditional_losses_79726�
IdentityIdentity*conv2d_47/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp"^conv2d_47/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall,^conv2d_transpose_36/StatefulPartitionedCall,^conv2d_transpose_37/StatefulPartitionedCall,^conv2d_transpose_38/StatefulPartitionedCall,^conv2d_transpose_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@: : : : : : : : : : : : 2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall2Z
+conv2d_transpose_36/StatefulPartitionedCall+conv2d_transpose_36/StatefulPartitionedCall2Z
+conv2d_transpose_37/StatefulPartitionedCall+conv2d_transpose_37/StatefulPartitionedCall2Z
+conv2d_transpose_38/StatefulPartitionedCall+conv2d_transpose_38/StatefulPartitionedCall2Z
+conv2d_transpose_39/StatefulPartitionedCall+conv2d_transpose_39/StatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
-__inference_sequential_15_layer_call_fn_79894
input_16!
unknown:@@
	unknown_0:@#
	unknown_1: @
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_16unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_79867y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:���������@
"
_user_specified_name
input_16
�
�
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80215
x-
sequential_14_80168:!
sequential_14_80170:-
sequential_14_80172:!
sequential_14_80174:-
sequential_14_80176:!
sequential_14_80178:-
sequential_14_80180: !
sequential_14_80182: -
sequential_14_80184: @!
sequential_14_80186:@-
sequential_15_80189:@@!
sequential_15_80191:@-
sequential_15_80193: @!
sequential_15_80195: -
sequential_15_80197: !
sequential_15_80199:-
sequential_15_80201:!
sequential_15_80203:-
sequential_15_80205:!
sequential_15_80207:-
sequential_15_80209:!
sequential_15_80211:
identity��%sequential_14/StatefulPartitionedCall�%sequential_15/StatefulPartitionedCall�
%sequential_14/StatefulPartitionedCallStatefulPartitionedCallxsequential_14_80168sequential_14_80170sequential_14_80172sequential_14_80174sequential_14_80176sequential_14_80178sequential_14_80180sequential_14_80182sequential_14_80184sequential_14_80186*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_79338�
%sequential_15/StatefulPartitionedCallStatefulPartitionedCall.sequential_14/StatefulPartitionedCall:output:0sequential_15_80189sequential_15_80191sequential_15_80193sequential_15_80195sequential_15_80197sequential_15_80199sequential_15_80201sequential_15_80203sequential_15_80205sequential_15_80207sequential_15_80209sequential_15_80211*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_79867�
IdentityIdentity.sequential_15/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp&^sequential_14/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 2N
%sequential_14/StatefulPartitionedCall%sequential_14/StatefulPartitionedCall2N
%sequential_15/StatefulPartitionedCall%sequential_15/StatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�
J
"__inference__update_step_xla_70790
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
J
"__inference__update_step_xla_70730
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
H__inference_sequential_14_layer_call_and_return_conditional_losses_79223
input_15)
conv2d_42_79149:
conv2d_42_79151:)
conv2d_43_79166:
conv2d_43_79168:)
conv2d_44_79183:
conv2d_44_79185:)
conv2d_45_79200: 
conv2d_45_79202: )
conv2d_46_79217: @
conv2d_46_79219:@
identity��!conv2d_42/StatefulPartitionedCall�!conv2d_43/StatefulPartitionedCall�!conv2d_44/StatefulPartitionedCall�!conv2d_45/StatefulPartitionedCall�!conv2d_46/StatefulPartitionedCall�
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCallinput_15conv2d_42_79149conv2d_42_79151*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_42_layer_call_and_return_conditional_losses_79148�
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_79166conv2d_43_79168*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_43_layer_call_and_return_conditional_losses_79165�
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0conv2d_44_79183conv2d_44_79185*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_79182�
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0conv2d_45_79200conv2d_45_79202*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_45_layer_call_and_return_conditional_losses_79199�
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0conv2d_46_79217conv2d_46_79219*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_46_layer_call_and_return_conditional_losses_79216�
IdentityIdentity*conv2d_46/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@�
NoOpNoOp"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall:[ W
1
_output_shapes
:�����������
"
_user_specified_name
input_15
�
V
"__inference__update_step_xla_70695
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:P L
&
_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
J
"__inference__update_step_xla_70700
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ѧ
�/
!__inference__traced_restore_82209
file_prefix;
!assignvariableop_conv2d_42_kernel:/
!assignvariableop_1_conv2d_42_bias:=
#assignvariableop_2_conv2d_43_kernel:/
!assignvariableop_3_conv2d_43_bias:=
#assignvariableop_4_conv2d_44_kernel:/
!assignvariableop_5_conv2d_44_bias:=
#assignvariableop_6_conv2d_45_kernel: /
!assignvariableop_7_conv2d_45_bias: =
#assignvariableop_8_conv2d_46_kernel: @/
!assignvariableop_9_conv2d_46_bias:@H
.assignvariableop_10_conv2d_transpose_35_kernel:@@:
,assignvariableop_11_conv2d_transpose_35_bias:@H
.assignvariableop_12_conv2d_transpose_36_kernel: @:
,assignvariableop_13_conv2d_transpose_36_bias: H
.assignvariableop_14_conv2d_transpose_37_kernel: :
,assignvariableop_15_conv2d_transpose_37_bias:H
.assignvariableop_16_conv2d_transpose_38_kernel::
,assignvariableop_17_conv2d_transpose_38_bias:H
.assignvariableop_18_conv2d_transpose_39_kernel::
,assignvariableop_19_conv2d_transpose_39_bias:>
$assignvariableop_20_conv2d_47_kernel:0
"assignvariableop_21_conv2d_47_bias:'
assignvariableop_22_iteration:	 +
!assignvariableop_23_learning_rate: E
+assignvariableop_24_adam_m_conv2d_42_kernel:E
+assignvariableop_25_adam_v_conv2d_42_kernel:7
)assignvariableop_26_adam_m_conv2d_42_bias:7
)assignvariableop_27_adam_v_conv2d_42_bias:E
+assignvariableop_28_adam_m_conv2d_43_kernel:E
+assignvariableop_29_adam_v_conv2d_43_kernel:7
)assignvariableop_30_adam_m_conv2d_43_bias:7
)assignvariableop_31_adam_v_conv2d_43_bias:E
+assignvariableop_32_adam_m_conv2d_44_kernel:E
+assignvariableop_33_adam_v_conv2d_44_kernel:7
)assignvariableop_34_adam_m_conv2d_44_bias:7
)assignvariableop_35_adam_v_conv2d_44_bias:E
+assignvariableop_36_adam_m_conv2d_45_kernel: E
+assignvariableop_37_adam_v_conv2d_45_kernel: 7
)assignvariableop_38_adam_m_conv2d_45_bias: 7
)assignvariableop_39_adam_v_conv2d_45_bias: E
+assignvariableop_40_adam_m_conv2d_46_kernel: @E
+assignvariableop_41_adam_v_conv2d_46_kernel: @7
)assignvariableop_42_adam_m_conv2d_46_bias:@7
)assignvariableop_43_adam_v_conv2d_46_bias:@O
5assignvariableop_44_adam_m_conv2d_transpose_35_kernel:@@O
5assignvariableop_45_adam_v_conv2d_transpose_35_kernel:@@A
3assignvariableop_46_adam_m_conv2d_transpose_35_bias:@A
3assignvariableop_47_adam_v_conv2d_transpose_35_bias:@O
5assignvariableop_48_adam_m_conv2d_transpose_36_kernel: @O
5assignvariableop_49_adam_v_conv2d_transpose_36_kernel: @A
3assignvariableop_50_adam_m_conv2d_transpose_36_bias: A
3assignvariableop_51_adam_v_conv2d_transpose_36_bias: O
5assignvariableop_52_adam_m_conv2d_transpose_37_kernel: O
5assignvariableop_53_adam_v_conv2d_transpose_37_kernel: A
3assignvariableop_54_adam_m_conv2d_transpose_37_bias:A
3assignvariableop_55_adam_v_conv2d_transpose_37_bias:O
5assignvariableop_56_adam_m_conv2d_transpose_38_kernel:O
5assignvariableop_57_adam_v_conv2d_transpose_38_kernel:A
3assignvariableop_58_adam_m_conv2d_transpose_38_bias:A
3assignvariableop_59_adam_v_conv2d_transpose_38_bias:O
5assignvariableop_60_adam_m_conv2d_transpose_39_kernel:O
5assignvariableop_61_adam_v_conv2d_transpose_39_kernel:A
3assignvariableop_62_adam_m_conv2d_transpose_39_bias:A
3assignvariableop_63_adam_v_conv2d_transpose_39_bias:E
+assignvariableop_64_adam_m_conv2d_47_kernel:E
+assignvariableop_65_adam_v_conv2d_47_kernel:7
)assignvariableop_66_adam_m_conv2d_47_bias:7
)assignvariableop_67_adam_v_conv2d_47_bias:#
assignvariableop_68_total: #
assignvariableop_69_count: 
identity_71��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*�
value�B�GB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*�
value�B�GB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*U
dtypesK
I2G	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_42_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_42_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_43_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_43_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_44_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_44_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_45_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_45_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_46_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_46_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp.assignvariableop_10_conv2d_transpose_35_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp,assignvariableop_11_conv2d_transpose_35_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp.assignvariableop_12_conv2d_transpose_36_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp,assignvariableop_13_conv2d_transpose_36_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp.assignvariableop_14_conv2d_transpose_37_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp,assignvariableop_15_conv2d_transpose_37_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp.assignvariableop_16_conv2d_transpose_38_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp,assignvariableop_17_conv2d_transpose_38_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp.assignvariableop_18_conv2d_transpose_39_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp,assignvariableop_19_conv2d_transpose_39_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp$assignvariableop_20_conv2d_47_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp"assignvariableop_21_conv2d_47_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_iterationIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp!assignvariableop_23_learning_rateIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_m_conv2d_42_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_v_conv2d_42_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_m_conv2d_42_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_v_conv2d_42_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_m_conv2d_43_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_v_conv2d_43_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_m_conv2d_43_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_v_conv2d_43_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_m_conv2d_44_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_v_conv2d_44_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_m_conv2d_44_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_v_conv2d_44_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_m_conv2d_45_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_v_conv2d_45_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_m_conv2d_45_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_v_conv2d_45_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_m_conv2d_46_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_v_conv2d_46_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_m_conv2d_46_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_v_conv2d_46_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp5assignvariableop_44_adam_m_conv2d_transpose_35_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp5assignvariableop_45_adam_v_conv2d_transpose_35_kernelIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp3assignvariableop_46_adam_m_conv2d_transpose_35_biasIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp3assignvariableop_47_adam_v_conv2d_transpose_35_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp5assignvariableop_48_adam_m_conv2d_transpose_36_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp5assignvariableop_49_adam_v_conv2d_transpose_36_kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp3assignvariableop_50_adam_m_conv2d_transpose_36_biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp3assignvariableop_51_adam_v_conv2d_transpose_36_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp5assignvariableop_52_adam_m_conv2d_transpose_37_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp5assignvariableop_53_adam_v_conv2d_transpose_37_kernelIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp3assignvariableop_54_adam_m_conv2d_transpose_37_biasIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp3assignvariableop_55_adam_v_conv2d_transpose_37_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp5assignvariableop_56_adam_m_conv2d_transpose_38_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp5assignvariableop_57_adam_v_conv2d_transpose_38_kernelIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp3assignvariableop_58_adam_m_conv2d_transpose_38_biasIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp3assignvariableop_59_adam_v_conv2d_transpose_38_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp5assignvariableop_60_adam_m_conv2d_transpose_39_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp5assignvariableop_61_adam_v_conv2d_transpose_39_kernelIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp3assignvariableop_62_adam_m_conv2d_transpose_39_biasIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp3assignvariableop_63_adam_v_conv2d_transpose_39_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp+assignvariableop_64_adam_m_conv2d_47_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_v_conv2d_47_kernelIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_m_conv2d_47_biasIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_v_conv2d_47_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOpassignvariableop_68_totalIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOpassignvariableop_69_countIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_70Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_71IdentityIdentity_70:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_71Identity_71:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�!
�
N__inference_conv2d_transpose_37_layer_call_and_return_conditional_losses_81440

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_70740
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
-__inference_sequential_14_layer_call_fn_79361
input_15!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_15unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_79338w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:�����������
"
_user_specified_name
input_15
��
�D
__inference__traced_save_81989
file_prefixA
'read_disablecopyonread_conv2d_42_kernel:5
'read_1_disablecopyonread_conv2d_42_bias:C
)read_2_disablecopyonread_conv2d_43_kernel:5
'read_3_disablecopyonread_conv2d_43_bias:C
)read_4_disablecopyonread_conv2d_44_kernel:5
'read_5_disablecopyonread_conv2d_44_bias:C
)read_6_disablecopyonread_conv2d_45_kernel: 5
'read_7_disablecopyonread_conv2d_45_bias: C
)read_8_disablecopyonread_conv2d_46_kernel: @5
'read_9_disablecopyonread_conv2d_46_bias:@N
4read_10_disablecopyonread_conv2d_transpose_35_kernel:@@@
2read_11_disablecopyonread_conv2d_transpose_35_bias:@N
4read_12_disablecopyonread_conv2d_transpose_36_kernel: @@
2read_13_disablecopyonread_conv2d_transpose_36_bias: N
4read_14_disablecopyonread_conv2d_transpose_37_kernel: @
2read_15_disablecopyonread_conv2d_transpose_37_bias:N
4read_16_disablecopyonread_conv2d_transpose_38_kernel:@
2read_17_disablecopyonread_conv2d_transpose_38_bias:N
4read_18_disablecopyonread_conv2d_transpose_39_kernel:@
2read_19_disablecopyonread_conv2d_transpose_39_bias:D
*read_20_disablecopyonread_conv2d_47_kernel:6
(read_21_disablecopyonread_conv2d_47_bias:-
#read_22_disablecopyonread_iteration:	 1
'read_23_disablecopyonread_learning_rate: K
1read_24_disablecopyonread_adam_m_conv2d_42_kernel:K
1read_25_disablecopyonread_adam_v_conv2d_42_kernel:=
/read_26_disablecopyonread_adam_m_conv2d_42_bias:=
/read_27_disablecopyonread_adam_v_conv2d_42_bias:K
1read_28_disablecopyonread_adam_m_conv2d_43_kernel:K
1read_29_disablecopyonread_adam_v_conv2d_43_kernel:=
/read_30_disablecopyonread_adam_m_conv2d_43_bias:=
/read_31_disablecopyonread_adam_v_conv2d_43_bias:K
1read_32_disablecopyonread_adam_m_conv2d_44_kernel:K
1read_33_disablecopyonread_adam_v_conv2d_44_kernel:=
/read_34_disablecopyonread_adam_m_conv2d_44_bias:=
/read_35_disablecopyonread_adam_v_conv2d_44_bias:K
1read_36_disablecopyonread_adam_m_conv2d_45_kernel: K
1read_37_disablecopyonread_adam_v_conv2d_45_kernel: =
/read_38_disablecopyonread_adam_m_conv2d_45_bias: =
/read_39_disablecopyonread_adam_v_conv2d_45_bias: K
1read_40_disablecopyonread_adam_m_conv2d_46_kernel: @K
1read_41_disablecopyonread_adam_v_conv2d_46_kernel: @=
/read_42_disablecopyonread_adam_m_conv2d_46_bias:@=
/read_43_disablecopyonread_adam_v_conv2d_46_bias:@U
;read_44_disablecopyonread_adam_m_conv2d_transpose_35_kernel:@@U
;read_45_disablecopyonread_adam_v_conv2d_transpose_35_kernel:@@G
9read_46_disablecopyonread_adam_m_conv2d_transpose_35_bias:@G
9read_47_disablecopyonread_adam_v_conv2d_transpose_35_bias:@U
;read_48_disablecopyonread_adam_m_conv2d_transpose_36_kernel: @U
;read_49_disablecopyonread_adam_v_conv2d_transpose_36_kernel: @G
9read_50_disablecopyonread_adam_m_conv2d_transpose_36_bias: G
9read_51_disablecopyonread_adam_v_conv2d_transpose_36_bias: U
;read_52_disablecopyonread_adam_m_conv2d_transpose_37_kernel: U
;read_53_disablecopyonread_adam_v_conv2d_transpose_37_kernel: G
9read_54_disablecopyonread_adam_m_conv2d_transpose_37_bias:G
9read_55_disablecopyonread_adam_v_conv2d_transpose_37_bias:U
;read_56_disablecopyonread_adam_m_conv2d_transpose_38_kernel:U
;read_57_disablecopyonread_adam_v_conv2d_transpose_38_kernel:G
9read_58_disablecopyonread_adam_m_conv2d_transpose_38_bias:G
9read_59_disablecopyonread_adam_v_conv2d_transpose_38_bias:U
;read_60_disablecopyonread_adam_m_conv2d_transpose_39_kernel:U
;read_61_disablecopyonread_adam_v_conv2d_transpose_39_kernel:G
9read_62_disablecopyonread_adam_m_conv2d_transpose_39_bias:G
9read_63_disablecopyonread_adam_v_conv2d_transpose_39_bias:K
1read_64_disablecopyonread_adam_m_conv2d_47_kernel:K
1read_65_disablecopyonread_adam_v_conv2d_47_kernel:=
/read_66_disablecopyonread_adam_m_conv2d_47_bias:=
/read_67_disablecopyonread_adam_v_conv2d_47_bias:)
read_68_disablecopyonread_total: )
read_69_disablecopyonread_count: 
savev2_const
identity_141��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_42_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_42_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_42_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_42_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_conv2d_43_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_conv2d_43_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_conv2d_43_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_conv2d_43_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_conv2d_44_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_conv2d_44_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_conv2d_44_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_conv2d_44_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_45_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_45_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_45_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_45_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_conv2d_46_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_conv2d_46_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
: @{
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_conv2d_46_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_conv2d_46_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_10/DisableCopyOnReadDisableCopyOnRead4read_10_disablecopyonread_conv2d_transpose_35_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp4read_10_disablecopyonread_conv2d_transpose_35_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_11/DisableCopyOnReadDisableCopyOnRead2read_11_disablecopyonread_conv2d_transpose_35_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp2read_11_disablecopyonread_conv2d_transpose_35_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_12/DisableCopyOnReadDisableCopyOnRead4read_12_disablecopyonread_conv2d_transpose_36_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp4read_12_disablecopyonread_conv2d_transpose_36_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_13/DisableCopyOnReadDisableCopyOnRead2read_13_disablecopyonread_conv2d_transpose_36_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp2read_13_disablecopyonread_conv2d_transpose_36_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_14/DisableCopyOnReadDisableCopyOnRead4read_14_disablecopyonread_conv2d_transpose_37_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp4read_14_disablecopyonread_conv2d_transpose_37_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_15/DisableCopyOnReadDisableCopyOnRead2read_15_disablecopyonread_conv2d_transpose_37_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp2read_15_disablecopyonread_conv2d_transpose_37_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_16/DisableCopyOnReadDisableCopyOnRead4read_16_disablecopyonread_conv2d_transpose_38_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp4read_16_disablecopyonread_conv2d_transpose_38_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_17/DisableCopyOnReadDisableCopyOnRead2read_17_disablecopyonread_conv2d_transpose_38_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp2read_17_disablecopyonread_conv2d_transpose_38_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_18/DisableCopyOnReadDisableCopyOnRead4read_18_disablecopyonread_conv2d_transpose_39_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp4read_18_disablecopyonread_conv2d_transpose_39_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_19/DisableCopyOnReadDisableCopyOnRead2read_19_disablecopyonread_conv2d_transpose_39_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp2read_19_disablecopyonread_conv2d_transpose_39_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_20/DisableCopyOnReadDisableCopyOnRead*read_20_disablecopyonread_conv2d_47_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp*read_20_disablecopyonread_conv2d_47_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_21/DisableCopyOnReadDisableCopyOnRead(read_21_disablecopyonread_conv2d_47_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp(read_21_disablecopyonread_conv2d_47_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_22/DisableCopyOnReadDisableCopyOnRead#read_22_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp#read_22_disablecopyonread_iteration^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_23/DisableCopyOnReadDisableCopyOnRead'read_23_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp'read_23_disablecopyonread_learning_rate^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_24/DisableCopyOnReadDisableCopyOnRead1read_24_disablecopyonread_adam_m_conv2d_42_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp1read_24_disablecopyonread_adam_m_conv2d_42_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_25/DisableCopyOnReadDisableCopyOnRead1read_25_disablecopyonread_adam_v_conv2d_42_kernel"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp1read_25_disablecopyonread_adam_v_conv2d_42_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_26/DisableCopyOnReadDisableCopyOnRead/read_26_disablecopyonread_adam_m_conv2d_42_bias"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp/read_26_disablecopyonread_adam_m_conv2d_42_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_27/DisableCopyOnReadDisableCopyOnRead/read_27_disablecopyonread_adam_v_conv2d_42_bias"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp/read_27_disablecopyonread_adam_v_conv2d_42_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_28/DisableCopyOnReadDisableCopyOnRead1read_28_disablecopyonread_adam_m_conv2d_43_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp1read_28_disablecopyonread_adam_m_conv2d_43_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_29/DisableCopyOnReadDisableCopyOnRead1read_29_disablecopyonread_adam_v_conv2d_43_kernel"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp1read_29_disablecopyonread_adam_v_conv2d_43_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_30/DisableCopyOnReadDisableCopyOnRead/read_30_disablecopyonread_adam_m_conv2d_43_bias"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp/read_30_disablecopyonread_adam_m_conv2d_43_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_31/DisableCopyOnReadDisableCopyOnRead/read_31_disablecopyonread_adam_v_conv2d_43_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp/read_31_disablecopyonread_adam_v_conv2d_43_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_32/DisableCopyOnReadDisableCopyOnRead1read_32_disablecopyonread_adam_m_conv2d_44_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp1read_32_disablecopyonread_adam_m_conv2d_44_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_33/DisableCopyOnReadDisableCopyOnRead1read_33_disablecopyonread_adam_v_conv2d_44_kernel"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp1read_33_disablecopyonread_adam_v_conv2d_44_kernel^Read_33/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_34/DisableCopyOnReadDisableCopyOnRead/read_34_disablecopyonread_adam_m_conv2d_44_bias"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp/read_34_disablecopyonread_adam_m_conv2d_44_bias^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_35/DisableCopyOnReadDisableCopyOnRead/read_35_disablecopyonread_adam_v_conv2d_44_bias"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp/read_35_disablecopyonread_adam_v_conv2d_44_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_36/DisableCopyOnReadDisableCopyOnRead1read_36_disablecopyonread_adam_m_conv2d_45_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp1read_36_disablecopyonread_adam_m_conv2d_45_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_37/DisableCopyOnReadDisableCopyOnRead1read_37_disablecopyonread_adam_v_conv2d_45_kernel"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp1read_37_disablecopyonread_adam_v_conv2d_45_kernel^Read_37/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_38/DisableCopyOnReadDisableCopyOnRead/read_38_disablecopyonread_adam_m_conv2d_45_bias"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp/read_38_disablecopyonread_adam_m_conv2d_45_bias^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_39/DisableCopyOnReadDisableCopyOnRead/read_39_disablecopyonread_adam_v_conv2d_45_bias"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp/read_39_disablecopyonread_adam_v_conv2d_45_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_40/DisableCopyOnReadDisableCopyOnRead1read_40_disablecopyonread_adam_m_conv2d_46_kernel"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp1read_40_disablecopyonread_adam_m_conv2d_46_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_41/DisableCopyOnReadDisableCopyOnRead1read_41_disablecopyonread_adam_v_conv2d_46_kernel"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp1read_41_disablecopyonread_adam_v_conv2d_46_kernel^Read_41/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_42/DisableCopyOnReadDisableCopyOnRead/read_42_disablecopyonread_adam_m_conv2d_46_bias"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp/read_42_disablecopyonread_adam_m_conv2d_46_bias^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_43/DisableCopyOnReadDisableCopyOnRead/read_43_disablecopyonread_adam_v_conv2d_46_bias"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp/read_43_disablecopyonread_adam_v_conv2d_46_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_44/DisableCopyOnReadDisableCopyOnRead;read_44_disablecopyonread_adam_m_conv2d_transpose_35_kernel"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp;read_44_disablecopyonread_adam_m_conv2d_transpose_35_kernel^Read_44/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_45/DisableCopyOnReadDisableCopyOnRead;read_45_disablecopyonread_adam_v_conv2d_transpose_35_kernel"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp;read_45_disablecopyonread_adam_v_conv2d_transpose_35_kernel^Read_45/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_46/DisableCopyOnReadDisableCopyOnRead9read_46_disablecopyonread_adam_m_conv2d_transpose_35_bias"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp9read_46_disablecopyonread_adam_m_conv2d_transpose_35_bias^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_47/DisableCopyOnReadDisableCopyOnRead9read_47_disablecopyonread_adam_v_conv2d_transpose_35_bias"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp9read_47_disablecopyonread_adam_v_conv2d_transpose_35_bias^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_48/DisableCopyOnReadDisableCopyOnRead;read_48_disablecopyonread_adam_m_conv2d_transpose_36_kernel"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp;read_48_disablecopyonread_adam_m_conv2d_transpose_36_kernel^Read_48/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_49/DisableCopyOnReadDisableCopyOnRead;read_49_disablecopyonread_adam_v_conv2d_transpose_36_kernel"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp;read_49_disablecopyonread_adam_v_conv2d_transpose_36_kernel^Read_49/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_50/DisableCopyOnReadDisableCopyOnRead9read_50_disablecopyonread_adam_m_conv2d_transpose_36_bias"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp9read_50_disablecopyonread_adam_m_conv2d_transpose_36_bias^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_51/DisableCopyOnReadDisableCopyOnRead9read_51_disablecopyonread_adam_v_conv2d_transpose_36_bias"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp9read_51_disablecopyonread_adam_v_conv2d_transpose_36_bias^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_52/DisableCopyOnReadDisableCopyOnRead;read_52_disablecopyonread_adam_m_conv2d_transpose_37_kernel"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp;read_52_disablecopyonread_adam_m_conv2d_transpose_37_kernel^Read_52/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_53/DisableCopyOnReadDisableCopyOnRead;read_53_disablecopyonread_adam_v_conv2d_transpose_37_kernel"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp;read_53_disablecopyonread_adam_v_conv2d_transpose_37_kernel^Read_53/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_54/DisableCopyOnReadDisableCopyOnRead9read_54_disablecopyonread_adam_m_conv2d_transpose_37_bias"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp9read_54_disablecopyonread_adam_m_conv2d_transpose_37_bias^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_55/DisableCopyOnReadDisableCopyOnRead9read_55_disablecopyonread_adam_v_conv2d_transpose_37_bias"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp9read_55_disablecopyonread_adam_v_conv2d_transpose_37_bias^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_56/DisableCopyOnReadDisableCopyOnRead;read_56_disablecopyonread_adam_m_conv2d_transpose_38_kernel"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp;read_56_disablecopyonread_adam_m_conv2d_transpose_38_kernel^Read_56/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_57/DisableCopyOnReadDisableCopyOnRead;read_57_disablecopyonread_adam_v_conv2d_transpose_38_kernel"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp;read_57_disablecopyonread_adam_v_conv2d_transpose_38_kernel^Read_57/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_58/DisableCopyOnReadDisableCopyOnRead9read_58_disablecopyonread_adam_m_conv2d_transpose_38_bias"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp9read_58_disablecopyonread_adam_m_conv2d_transpose_38_bias^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_59/DisableCopyOnReadDisableCopyOnRead9read_59_disablecopyonread_adam_v_conv2d_transpose_38_bias"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp9read_59_disablecopyonread_adam_v_conv2d_transpose_38_bias^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_60/DisableCopyOnReadDisableCopyOnRead;read_60_disablecopyonread_adam_m_conv2d_transpose_39_kernel"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp;read_60_disablecopyonread_adam_m_conv2d_transpose_39_kernel^Read_60/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_61/DisableCopyOnReadDisableCopyOnRead;read_61_disablecopyonread_adam_v_conv2d_transpose_39_kernel"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp;read_61_disablecopyonread_adam_v_conv2d_transpose_39_kernel^Read_61/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_62/DisableCopyOnReadDisableCopyOnRead9read_62_disablecopyonread_adam_m_conv2d_transpose_39_bias"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp9read_62_disablecopyonread_adam_m_conv2d_transpose_39_bias^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_63/DisableCopyOnReadDisableCopyOnRead9read_63_disablecopyonread_adam_v_conv2d_transpose_39_bias"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp9read_63_disablecopyonread_adam_v_conv2d_transpose_39_bias^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_64/DisableCopyOnReadDisableCopyOnRead1read_64_disablecopyonread_adam_m_conv2d_47_kernel"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp1read_64_disablecopyonread_adam_m_conv2d_47_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_65/DisableCopyOnReadDisableCopyOnRead1read_65_disablecopyonread_adam_v_conv2d_47_kernel"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp1read_65_disablecopyonread_adam_v_conv2d_47_kernel^Read_65/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_66/DisableCopyOnReadDisableCopyOnRead/read_66_disablecopyonread_adam_m_conv2d_47_bias"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp/read_66_disablecopyonread_adam_m_conv2d_47_bias^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_67/DisableCopyOnReadDisableCopyOnRead/read_67_disablecopyonread_adam_v_conv2d_47_bias"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp/read_67_disablecopyonread_adam_v_conv2d_47_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_68/DisableCopyOnReadDisableCopyOnReadread_68_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOpread_68_disablecopyonread_total^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_69/DisableCopyOnReadDisableCopyOnReadread_69_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOpread_69_disablecopyonread_count^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*�
value�B�GB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*�
value�B�GB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *U
dtypesK
I2G	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_140Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_141IdentityIdentity_140:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "%
identity_141Identity_141:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:G

_output_shapes
: 
��
�
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80657
xP
6sequential_14_conv2d_42_conv2d_readvariableop_resource:E
7sequential_14_conv2d_42_biasadd_readvariableop_resource:P
6sequential_14_conv2d_43_conv2d_readvariableop_resource:E
7sequential_14_conv2d_43_biasadd_readvariableop_resource:P
6sequential_14_conv2d_44_conv2d_readvariableop_resource:E
7sequential_14_conv2d_44_biasadd_readvariableop_resource:P
6sequential_14_conv2d_45_conv2d_readvariableop_resource: E
7sequential_14_conv2d_45_biasadd_readvariableop_resource: P
6sequential_14_conv2d_46_conv2d_readvariableop_resource: @E
7sequential_14_conv2d_46_biasadd_readvariableop_resource:@d
Jsequential_15_conv2d_transpose_35_conv2d_transpose_readvariableop_resource:@@O
Asequential_15_conv2d_transpose_35_biasadd_readvariableop_resource:@d
Jsequential_15_conv2d_transpose_36_conv2d_transpose_readvariableop_resource: @O
Asequential_15_conv2d_transpose_36_biasadd_readvariableop_resource: d
Jsequential_15_conv2d_transpose_37_conv2d_transpose_readvariableop_resource: O
Asequential_15_conv2d_transpose_37_biasadd_readvariableop_resource:d
Jsequential_15_conv2d_transpose_38_conv2d_transpose_readvariableop_resource:O
Asequential_15_conv2d_transpose_38_biasadd_readvariableop_resource:d
Jsequential_15_conv2d_transpose_39_conv2d_transpose_readvariableop_resource:O
Asequential_15_conv2d_transpose_39_biasadd_readvariableop_resource:P
6sequential_15_conv2d_47_conv2d_readvariableop_resource:E
7sequential_15_conv2d_47_biasadd_readvariableop_resource:
identity��.sequential_14/conv2d_42/BiasAdd/ReadVariableOp�-sequential_14/conv2d_42/Conv2D/ReadVariableOp�.sequential_14/conv2d_43/BiasAdd/ReadVariableOp�-sequential_14/conv2d_43/Conv2D/ReadVariableOp�.sequential_14/conv2d_44/BiasAdd/ReadVariableOp�-sequential_14/conv2d_44/Conv2D/ReadVariableOp�.sequential_14/conv2d_45/BiasAdd/ReadVariableOp�-sequential_14/conv2d_45/Conv2D/ReadVariableOp�.sequential_14/conv2d_46/BiasAdd/ReadVariableOp�-sequential_14/conv2d_46/Conv2D/ReadVariableOp�.sequential_15/conv2d_47/BiasAdd/ReadVariableOp�-sequential_15/conv2d_47/Conv2D/ReadVariableOp�8sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOp�Asequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOp�8sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOp�Asequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOp�8sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOp�Asequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOp�8sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOp�Asequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOp�8sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOp�Asequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOp�
-sequential_14/conv2d_42/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_14/conv2d_42/Conv2DConv2Dx5sequential_14/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
.sequential_14/conv2d_42/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_14/conv2d_42/BiasAddBiasAdd'sequential_14/conv2d_42/Conv2D:output:06sequential_14/conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential_14/conv2d_42/ReluRelu(sequential_14/conv2d_42/BiasAdd:output:0*
T0*1
_output_shapes
:������������
-sequential_14/conv2d_43/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_14/conv2d_43/Conv2DConv2D*sequential_14/conv2d_42/Relu:activations:05sequential_14/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
.sequential_14/conv2d_43/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_14/conv2d_43/BiasAddBiasAdd'sequential_14/conv2d_43/Conv2D:output:06sequential_14/conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential_14/conv2d_43/ReluRelu(sequential_14/conv2d_43/BiasAdd:output:0*
T0*1
_output_shapes
:������������
-sequential_14/conv2d_44/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_14/conv2d_44/Conv2DConv2D*sequential_14/conv2d_43/Relu:activations:05sequential_14/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
.sequential_14/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_14/conv2d_44/BiasAddBiasAdd'sequential_14/conv2d_44/Conv2D:output:06sequential_14/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@�
sequential_14/conv2d_44/ReluRelu(sequential_14/conv2d_44/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
-sequential_14/conv2d_45/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
sequential_14/conv2d_45/Conv2DConv2D*sequential_14/conv2d_44/Relu:activations:05sequential_14/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
.sequential_14/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_45_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_14/conv2d_45/BiasAddBiasAdd'sequential_14/conv2d_45/Conv2D:output:06sequential_14/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   �
sequential_14/conv2d_45/ReluRelu(sequential_14/conv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
-sequential_14/conv2d_46/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
sequential_14/conv2d_46/Conv2DConv2D*sequential_14/conv2d_45/Relu:activations:05sequential_14/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
.sequential_14/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_14/conv2d_46/BiasAddBiasAdd'sequential_14/conv2d_46/Conv2D:output:06sequential_14/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential_14/conv2d_46/ReluRelu(sequential_14/conv2d_46/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
'sequential_15/conv2d_transpose_35/ShapeShape*sequential_14/conv2d_46/Relu:activations:0*
T0*
_output_shapes
::��
5sequential_15/conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_15/conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_15/conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_15/conv2d_transpose_35/strided_sliceStridedSlice0sequential_15/conv2d_transpose_35/Shape:output:0>sequential_15/conv2d_transpose_35/strided_slice/stack:output:0@sequential_15/conv2d_transpose_35/strided_slice/stack_1:output:0@sequential_15/conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_15/conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value	B : k
)sequential_15/conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value	B : k
)sequential_15/conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
'sequential_15/conv2d_transpose_35/stackPack8sequential_15/conv2d_transpose_35/strided_slice:output:02sequential_15/conv2d_transpose_35/stack/1:output:02sequential_15/conv2d_transpose_35/stack/2:output:02sequential_15/conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_15/conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_15/conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_15/conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_15/conv2d_transpose_35/strided_slice_1StridedSlice0sequential_15/conv2d_transpose_35/stack:output:0@sequential_15/conv2d_transpose_35/strided_slice_1/stack:output:0Bsequential_15/conv2d_transpose_35/strided_slice_1/stack_1:output:0Bsequential_15/conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_15_conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
2sequential_15/conv2d_transpose_35/conv2d_transposeConv2DBackpropInput0sequential_15/conv2d_transpose_35/stack:output:0Isequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:0*sequential_14/conv2d_46/Relu:activations:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
8sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOpReadVariableOpAsequential_15_conv2d_transpose_35_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)sequential_15/conv2d_transpose_35/BiasAddBiasAdd;sequential_15/conv2d_transpose_35/conv2d_transpose:output:0@sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @�
&sequential_15/conv2d_transpose_35/ReluRelu2sequential_15/conv2d_transpose_35/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @�
'sequential_15/conv2d_transpose_36/ShapeShape4sequential_15/conv2d_transpose_35/Relu:activations:0*
T0*
_output_shapes
::��
5sequential_15/conv2d_transpose_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_15/conv2d_transpose_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_15/conv2d_transpose_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_15/conv2d_transpose_36/strided_sliceStridedSlice0sequential_15/conv2d_transpose_36/Shape:output:0>sequential_15/conv2d_transpose_36/strided_slice/stack:output:0@sequential_15/conv2d_transpose_36/strided_slice/stack_1:output:0@sequential_15/conv2d_transpose_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_15/conv2d_transpose_36/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@k
)sequential_15/conv2d_transpose_36/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@k
)sequential_15/conv2d_transpose_36/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
'sequential_15/conv2d_transpose_36/stackPack8sequential_15/conv2d_transpose_36/strided_slice:output:02sequential_15/conv2d_transpose_36/stack/1:output:02sequential_15/conv2d_transpose_36/stack/2:output:02sequential_15/conv2d_transpose_36/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_15/conv2d_transpose_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_15/conv2d_transpose_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_15/conv2d_transpose_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_15/conv2d_transpose_36/strided_slice_1StridedSlice0sequential_15/conv2d_transpose_36/stack:output:0@sequential_15/conv2d_transpose_36/strided_slice_1/stack:output:0Bsequential_15/conv2d_transpose_36/strided_slice_1/stack_1:output:0Bsequential_15/conv2d_transpose_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_15_conv2d_transpose_36_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
2sequential_15/conv2d_transpose_36/conv2d_transposeConv2DBackpropInput0sequential_15/conv2d_transpose_36/stack:output:0Isequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOp:value:04sequential_15/conv2d_transpose_35/Relu:activations:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
8sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOpReadVariableOpAsequential_15_conv2d_transpose_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
)sequential_15/conv2d_transpose_36/BiasAddBiasAdd;sequential_15/conv2d_transpose_36/conv2d_transpose:output:0@sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ �
&sequential_15/conv2d_transpose_36/ReluRelu2sequential_15/conv2d_transpose_36/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@ �
'sequential_15/conv2d_transpose_37/ShapeShape4sequential_15/conv2d_transpose_36/Relu:activations:0*
T0*
_output_shapes
::��
5sequential_15/conv2d_transpose_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_15/conv2d_transpose_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_15/conv2d_transpose_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_15/conv2d_transpose_37/strided_sliceStridedSlice0sequential_15/conv2d_transpose_37/Shape:output:0>sequential_15/conv2d_transpose_37/strided_slice/stack:output:0@sequential_15/conv2d_transpose_37/strided_slice/stack_1:output:0@sequential_15/conv2d_transpose_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
)sequential_15/conv2d_transpose_37/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�l
)sequential_15/conv2d_transpose_37/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�k
)sequential_15/conv2d_transpose_37/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
'sequential_15/conv2d_transpose_37/stackPack8sequential_15/conv2d_transpose_37/strided_slice:output:02sequential_15/conv2d_transpose_37/stack/1:output:02sequential_15/conv2d_transpose_37/stack/2:output:02sequential_15/conv2d_transpose_37/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_15/conv2d_transpose_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_15/conv2d_transpose_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_15/conv2d_transpose_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_15/conv2d_transpose_37/strided_slice_1StridedSlice0sequential_15/conv2d_transpose_37/stack:output:0@sequential_15/conv2d_transpose_37/strided_slice_1/stack:output:0Bsequential_15/conv2d_transpose_37/strided_slice_1/stack_1:output:0Bsequential_15/conv2d_transpose_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_15_conv2d_transpose_37_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
2sequential_15/conv2d_transpose_37/conv2d_transposeConv2DBackpropInput0sequential_15/conv2d_transpose_37/stack:output:0Isequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOp:value:04sequential_15/conv2d_transpose_36/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
8sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOpReadVariableOpAsequential_15_conv2d_transpose_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
)sequential_15/conv2d_transpose_37/BiasAddBiasAdd;sequential_15/conv2d_transpose_37/conv2d_transpose:output:0@sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
&sequential_15/conv2d_transpose_37/ReluRelu2sequential_15/conv2d_transpose_37/BiasAdd:output:0*
T0*1
_output_shapes
:������������
'sequential_15/conv2d_transpose_38/ShapeShape4sequential_15/conv2d_transpose_37/Relu:activations:0*
T0*
_output_shapes
::��
5sequential_15/conv2d_transpose_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_15/conv2d_transpose_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_15/conv2d_transpose_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_15/conv2d_transpose_38/strided_sliceStridedSlice0sequential_15/conv2d_transpose_38/Shape:output:0>sequential_15/conv2d_transpose_38/strided_slice/stack:output:0@sequential_15/conv2d_transpose_38/strided_slice/stack_1:output:0@sequential_15/conv2d_transpose_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
)sequential_15/conv2d_transpose_38/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�l
)sequential_15/conv2d_transpose_38/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�k
)sequential_15/conv2d_transpose_38/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
'sequential_15/conv2d_transpose_38/stackPack8sequential_15/conv2d_transpose_38/strided_slice:output:02sequential_15/conv2d_transpose_38/stack/1:output:02sequential_15/conv2d_transpose_38/stack/2:output:02sequential_15/conv2d_transpose_38/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_15/conv2d_transpose_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_15/conv2d_transpose_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_15/conv2d_transpose_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_15/conv2d_transpose_38/strided_slice_1StridedSlice0sequential_15/conv2d_transpose_38/stack:output:0@sequential_15/conv2d_transpose_38/strided_slice_1/stack:output:0Bsequential_15/conv2d_transpose_38/strided_slice_1/stack_1:output:0Bsequential_15/conv2d_transpose_38/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_15_conv2d_transpose_38_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
2sequential_15/conv2d_transpose_38/conv2d_transposeConv2DBackpropInput0sequential_15/conv2d_transpose_38/stack:output:0Isequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOp:value:04sequential_15/conv2d_transpose_37/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
8sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOpReadVariableOpAsequential_15_conv2d_transpose_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
)sequential_15/conv2d_transpose_38/BiasAddBiasAdd;sequential_15/conv2d_transpose_38/conv2d_transpose:output:0@sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
&sequential_15/conv2d_transpose_38/ReluRelu2sequential_15/conv2d_transpose_38/BiasAdd:output:0*
T0*1
_output_shapes
:������������
'sequential_15/conv2d_transpose_39/ShapeShape4sequential_15/conv2d_transpose_38/Relu:activations:0*
T0*
_output_shapes
::��
5sequential_15/conv2d_transpose_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_15/conv2d_transpose_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_15/conv2d_transpose_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_15/conv2d_transpose_39/strided_sliceStridedSlice0sequential_15/conv2d_transpose_39/Shape:output:0>sequential_15/conv2d_transpose_39/strided_slice/stack:output:0@sequential_15/conv2d_transpose_39/strided_slice/stack_1:output:0@sequential_15/conv2d_transpose_39/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
)sequential_15/conv2d_transpose_39/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�l
)sequential_15/conv2d_transpose_39/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�k
)sequential_15/conv2d_transpose_39/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
'sequential_15/conv2d_transpose_39/stackPack8sequential_15/conv2d_transpose_39/strided_slice:output:02sequential_15/conv2d_transpose_39/stack/1:output:02sequential_15/conv2d_transpose_39/stack/2:output:02sequential_15/conv2d_transpose_39/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_15/conv2d_transpose_39/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_15/conv2d_transpose_39/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_15/conv2d_transpose_39/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_15/conv2d_transpose_39/strided_slice_1StridedSlice0sequential_15/conv2d_transpose_39/stack:output:0@sequential_15/conv2d_transpose_39/strided_slice_1/stack:output:0Bsequential_15/conv2d_transpose_39/strided_slice_1/stack_1:output:0Bsequential_15/conv2d_transpose_39/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_15_conv2d_transpose_39_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
2sequential_15/conv2d_transpose_39/conv2d_transposeConv2DBackpropInput0sequential_15/conv2d_transpose_39/stack:output:0Isequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOp:value:04sequential_15/conv2d_transpose_38/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
8sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOpReadVariableOpAsequential_15_conv2d_transpose_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
)sequential_15/conv2d_transpose_39/BiasAddBiasAdd;sequential_15/conv2d_transpose_39/conv2d_transpose:output:0@sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
&sequential_15/conv2d_transpose_39/ReluRelu2sequential_15/conv2d_transpose_39/BiasAdd:output:0*
T0*1
_output_shapes
:������������
-sequential_15/conv2d_47/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_15/conv2d_47/Conv2DConv2D4sequential_15/conv2d_transpose_39/Relu:activations:05sequential_15/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
.sequential_15/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_15/conv2d_47/BiasAddBiasAdd'sequential_15/conv2d_47/Conv2D:output:06sequential_15/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential_15/conv2d_47/SigmoidSigmoid(sequential_15/conv2d_47/BiasAdd:output:0*
T0*1
_output_shapes
:�����������|
IdentityIdentity#sequential_15/conv2d_47/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:������������

NoOpNoOp/^sequential_14/conv2d_42/BiasAdd/ReadVariableOp.^sequential_14/conv2d_42/Conv2D/ReadVariableOp/^sequential_14/conv2d_43/BiasAdd/ReadVariableOp.^sequential_14/conv2d_43/Conv2D/ReadVariableOp/^sequential_14/conv2d_44/BiasAdd/ReadVariableOp.^sequential_14/conv2d_44/Conv2D/ReadVariableOp/^sequential_14/conv2d_45/BiasAdd/ReadVariableOp.^sequential_14/conv2d_45/Conv2D/ReadVariableOp/^sequential_14/conv2d_46/BiasAdd/ReadVariableOp.^sequential_14/conv2d_46/Conv2D/ReadVariableOp/^sequential_15/conv2d_47/BiasAdd/ReadVariableOp.^sequential_15/conv2d_47/Conv2D/ReadVariableOp9^sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOpB^sequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOp9^sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOpB^sequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOp9^sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOpB^sequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOp9^sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOpB^sequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOp9^sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOpB^sequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 2`
.sequential_14/conv2d_42/BiasAdd/ReadVariableOp.sequential_14/conv2d_42/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_42/Conv2D/ReadVariableOp-sequential_14/conv2d_42/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_43/BiasAdd/ReadVariableOp.sequential_14/conv2d_43/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_43/Conv2D/ReadVariableOp-sequential_14/conv2d_43/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_44/BiasAdd/ReadVariableOp.sequential_14/conv2d_44/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_44/Conv2D/ReadVariableOp-sequential_14/conv2d_44/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_45/BiasAdd/ReadVariableOp.sequential_14/conv2d_45/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_45/Conv2D/ReadVariableOp-sequential_14/conv2d_45/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_46/BiasAdd/ReadVariableOp.sequential_14/conv2d_46/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_46/Conv2D/ReadVariableOp-sequential_14/conv2d_46/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_47/BiasAdd/ReadVariableOp.sequential_15/conv2d_47/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_47/Conv2D/ReadVariableOp-sequential_15/conv2d_47/Conv2D/ReadVariableOp2t
8sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOp8sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOp2�
Asequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOpAsequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOp2t
8sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOp8sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOp2�
Asequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOpAsequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOp2t
8sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOp8sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOp2�
Asequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOpAsequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOp2t
8sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOp8sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOp2�
Asequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOpAsequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOp2t
8sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOp8sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOp2�
Asequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOpAsequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOp:T P
1
_output_shapes
:�����������

_user_specified_namex
��
�
 __inference__wrapped_model_79133
input_1`
Fdenoise_model_7_sequential_14_conv2d_42_conv2d_readvariableop_resource:U
Gdenoise_model_7_sequential_14_conv2d_42_biasadd_readvariableop_resource:`
Fdenoise_model_7_sequential_14_conv2d_43_conv2d_readvariableop_resource:U
Gdenoise_model_7_sequential_14_conv2d_43_biasadd_readvariableop_resource:`
Fdenoise_model_7_sequential_14_conv2d_44_conv2d_readvariableop_resource:U
Gdenoise_model_7_sequential_14_conv2d_44_biasadd_readvariableop_resource:`
Fdenoise_model_7_sequential_14_conv2d_45_conv2d_readvariableop_resource: U
Gdenoise_model_7_sequential_14_conv2d_45_biasadd_readvariableop_resource: `
Fdenoise_model_7_sequential_14_conv2d_46_conv2d_readvariableop_resource: @U
Gdenoise_model_7_sequential_14_conv2d_46_biasadd_readvariableop_resource:@t
Zdenoise_model_7_sequential_15_conv2d_transpose_35_conv2d_transpose_readvariableop_resource:@@_
Qdenoise_model_7_sequential_15_conv2d_transpose_35_biasadd_readvariableop_resource:@t
Zdenoise_model_7_sequential_15_conv2d_transpose_36_conv2d_transpose_readvariableop_resource: @_
Qdenoise_model_7_sequential_15_conv2d_transpose_36_biasadd_readvariableop_resource: t
Zdenoise_model_7_sequential_15_conv2d_transpose_37_conv2d_transpose_readvariableop_resource: _
Qdenoise_model_7_sequential_15_conv2d_transpose_37_biasadd_readvariableop_resource:t
Zdenoise_model_7_sequential_15_conv2d_transpose_38_conv2d_transpose_readvariableop_resource:_
Qdenoise_model_7_sequential_15_conv2d_transpose_38_biasadd_readvariableop_resource:t
Zdenoise_model_7_sequential_15_conv2d_transpose_39_conv2d_transpose_readvariableop_resource:_
Qdenoise_model_7_sequential_15_conv2d_transpose_39_biasadd_readvariableop_resource:`
Fdenoise_model_7_sequential_15_conv2d_47_conv2d_readvariableop_resource:U
Gdenoise_model_7_sequential_15_conv2d_47_biasadd_readvariableop_resource:
identity��>denoise_model_7/sequential_14/conv2d_42/BiasAdd/ReadVariableOp�=denoise_model_7/sequential_14/conv2d_42/Conv2D/ReadVariableOp�>denoise_model_7/sequential_14/conv2d_43/BiasAdd/ReadVariableOp�=denoise_model_7/sequential_14/conv2d_43/Conv2D/ReadVariableOp�>denoise_model_7/sequential_14/conv2d_44/BiasAdd/ReadVariableOp�=denoise_model_7/sequential_14/conv2d_44/Conv2D/ReadVariableOp�>denoise_model_7/sequential_14/conv2d_45/BiasAdd/ReadVariableOp�=denoise_model_7/sequential_14/conv2d_45/Conv2D/ReadVariableOp�>denoise_model_7/sequential_14/conv2d_46/BiasAdd/ReadVariableOp�=denoise_model_7/sequential_14/conv2d_46/Conv2D/ReadVariableOp�>denoise_model_7/sequential_15/conv2d_47/BiasAdd/ReadVariableOp�=denoise_model_7/sequential_15/conv2d_47/Conv2D/ReadVariableOp�Hdenoise_model_7/sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOp�Qdenoise_model_7/sequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOp�Hdenoise_model_7/sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOp�Qdenoise_model_7/sequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOp�Hdenoise_model_7/sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOp�Qdenoise_model_7/sequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOp�Hdenoise_model_7/sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOp�Qdenoise_model_7/sequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOp�Hdenoise_model_7/sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOp�Qdenoise_model_7/sequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOp�
=denoise_model_7/sequential_14/conv2d_42/Conv2D/ReadVariableOpReadVariableOpFdenoise_model_7_sequential_14_conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
.denoise_model_7/sequential_14/conv2d_42/Conv2DConv2Dinput_1Edenoise_model_7/sequential_14/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
>denoise_model_7/sequential_14/conv2d_42/BiasAdd/ReadVariableOpReadVariableOpGdenoise_model_7_sequential_14_conv2d_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
/denoise_model_7/sequential_14/conv2d_42/BiasAddBiasAdd7denoise_model_7/sequential_14/conv2d_42/Conv2D:output:0Fdenoise_model_7/sequential_14/conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
,denoise_model_7/sequential_14/conv2d_42/ReluRelu8denoise_model_7/sequential_14/conv2d_42/BiasAdd:output:0*
T0*1
_output_shapes
:������������
=denoise_model_7/sequential_14/conv2d_43/Conv2D/ReadVariableOpReadVariableOpFdenoise_model_7_sequential_14_conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
.denoise_model_7/sequential_14/conv2d_43/Conv2DConv2D:denoise_model_7/sequential_14/conv2d_42/Relu:activations:0Edenoise_model_7/sequential_14/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
>denoise_model_7/sequential_14/conv2d_43/BiasAdd/ReadVariableOpReadVariableOpGdenoise_model_7_sequential_14_conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
/denoise_model_7/sequential_14/conv2d_43/BiasAddBiasAdd7denoise_model_7/sequential_14/conv2d_43/Conv2D:output:0Fdenoise_model_7/sequential_14/conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
,denoise_model_7/sequential_14/conv2d_43/ReluRelu8denoise_model_7/sequential_14/conv2d_43/BiasAdd:output:0*
T0*1
_output_shapes
:������������
=denoise_model_7/sequential_14/conv2d_44/Conv2D/ReadVariableOpReadVariableOpFdenoise_model_7_sequential_14_conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
.denoise_model_7/sequential_14/conv2d_44/Conv2DConv2D:denoise_model_7/sequential_14/conv2d_43/Relu:activations:0Edenoise_model_7/sequential_14/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
>denoise_model_7/sequential_14/conv2d_44/BiasAdd/ReadVariableOpReadVariableOpGdenoise_model_7_sequential_14_conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
/denoise_model_7/sequential_14/conv2d_44/BiasAddBiasAdd7denoise_model_7/sequential_14/conv2d_44/Conv2D:output:0Fdenoise_model_7/sequential_14/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@�
,denoise_model_7/sequential_14/conv2d_44/ReluRelu8denoise_model_7/sequential_14/conv2d_44/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
=denoise_model_7/sequential_14/conv2d_45/Conv2D/ReadVariableOpReadVariableOpFdenoise_model_7_sequential_14_conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
.denoise_model_7/sequential_14/conv2d_45/Conv2DConv2D:denoise_model_7/sequential_14/conv2d_44/Relu:activations:0Edenoise_model_7/sequential_14/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
>denoise_model_7/sequential_14/conv2d_45/BiasAdd/ReadVariableOpReadVariableOpGdenoise_model_7_sequential_14_conv2d_45_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
/denoise_model_7/sequential_14/conv2d_45/BiasAddBiasAdd7denoise_model_7/sequential_14/conv2d_45/Conv2D:output:0Fdenoise_model_7/sequential_14/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   �
,denoise_model_7/sequential_14/conv2d_45/ReluRelu8denoise_model_7/sequential_14/conv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
=denoise_model_7/sequential_14/conv2d_46/Conv2D/ReadVariableOpReadVariableOpFdenoise_model_7_sequential_14_conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
.denoise_model_7/sequential_14/conv2d_46/Conv2DConv2D:denoise_model_7/sequential_14/conv2d_45/Relu:activations:0Edenoise_model_7/sequential_14/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
>denoise_model_7/sequential_14/conv2d_46/BiasAdd/ReadVariableOpReadVariableOpGdenoise_model_7_sequential_14_conv2d_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
/denoise_model_7/sequential_14/conv2d_46/BiasAddBiasAdd7denoise_model_7/sequential_14/conv2d_46/Conv2D:output:0Fdenoise_model_7/sequential_14/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
,denoise_model_7/sequential_14/conv2d_46/ReluRelu8denoise_model_7/sequential_14/conv2d_46/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
7denoise_model_7/sequential_15/conv2d_transpose_35/ShapeShape:denoise_model_7/sequential_14/conv2d_46/Relu:activations:0*
T0*
_output_shapes
::���
Edenoise_model_7/sequential_15/conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Gdenoise_model_7/sequential_15/conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Gdenoise_model_7/sequential_15/conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?denoise_model_7/sequential_15/conv2d_transpose_35/strided_sliceStridedSlice@denoise_model_7/sequential_15/conv2d_transpose_35/Shape:output:0Ndenoise_model_7/sequential_15/conv2d_transpose_35/strided_slice/stack:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_35/strided_slice/stack_1:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9denoise_model_7/sequential_15/conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value	B : {
9denoise_model_7/sequential_15/conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value	B : {
9denoise_model_7/sequential_15/conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
7denoise_model_7/sequential_15/conv2d_transpose_35/stackPackHdenoise_model_7/sequential_15/conv2d_transpose_35/strided_slice:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_35/stack/1:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_35/stack/2:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:�
Gdenoise_model_7/sequential_15/conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Idenoise_model_7/sequential_15/conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Idenoise_model_7/sequential_15/conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Adenoise_model_7/sequential_15/conv2d_transpose_35/strided_slice_1StridedSlice@denoise_model_7/sequential_15/conv2d_transpose_35/stack:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_35/strided_slice_1/stack:output:0Rdenoise_model_7/sequential_15/conv2d_transpose_35/strided_slice_1/stack_1:output:0Rdenoise_model_7/sequential_15/conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Qdenoise_model_7/sequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOpZdenoise_model_7_sequential_15_conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Bdenoise_model_7/sequential_15/conv2d_transpose_35/conv2d_transposeConv2DBackpropInput@denoise_model_7/sequential_15/conv2d_transpose_35/stack:output:0Ydenoise_model_7/sequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:0:denoise_model_7/sequential_14/conv2d_46/Relu:activations:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
Hdenoise_model_7/sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOpReadVariableOpQdenoise_model_7_sequential_15_conv2d_transpose_35_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
9denoise_model_7/sequential_15/conv2d_transpose_35/BiasAddBiasAddKdenoise_model_7/sequential_15/conv2d_transpose_35/conv2d_transpose:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @�
6denoise_model_7/sequential_15/conv2d_transpose_35/ReluReluBdenoise_model_7/sequential_15/conv2d_transpose_35/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @�
7denoise_model_7/sequential_15/conv2d_transpose_36/ShapeShapeDdenoise_model_7/sequential_15/conv2d_transpose_35/Relu:activations:0*
T0*
_output_shapes
::���
Edenoise_model_7/sequential_15/conv2d_transpose_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Gdenoise_model_7/sequential_15/conv2d_transpose_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Gdenoise_model_7/sequential_15/conv2d_transpose_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?denoise_model_7/sequential_15/conv2d_transpose_36/strided_sliceStridedSlice@denoise_model_7/sequential_15/conv2d_transpose_36/Shape:output:0Ndenoise_model_7/sequential_15/conv2d_transpose_36/strided_slice/stack:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_36/strided_slice/stack_1:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9denoise_model_7/sequential_15/conv2d_transpose_36/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@{
9denoise_model_7/sequential_15/conv2d_transpose_36/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@{
9denoise_model_7/sequential_15/conv2d_transpose_36/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
7denoise_model_7/sequential_15/conv2d_transpose_36/stackPackHdenoise_model_7/sequential_15/conv2d_transpose_36/strided_slice:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_36/stack/1:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_36/stack/2:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_36/stack/3:output:0*
N*
T0*
_output_shapes
:�
Gdenoise_model_7/sequential_15/conv2d_transpose_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Idenoise_model_7/sequential_15/conv2d_transpose_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Idenoise_model_7/sequential_15/conv2d_transpose_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Adenoise_model_7/sequential_15/conv2d_transpose_36/strided_slice_1StridedSlice@denoise_model_7/sequential_15/conv2d_transpose_36/stack:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_36/strided_slice_1/stack:output:0Rdenoise_model_7/sequential_15/conv2d_transpose_36/strided_slice_1/stack_1:output:0Rdenoise_model_7/sequential_15/conv2d_transpose_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Qdenoise_model_7/sequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOpReadVariableOpZdenoise_model_7_sequential_15_conv2d_transpose_36_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Bdenoise_model_7/sequential_15/conv2d_transpose_36/conv2d_transposeConv2DBackpropInput@denoise_model_7/sequential_15/conv2d_transpose_36/stack:output:0Ydenoise_model_7/sequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOp:value:0Ddenoise_model_7/sequential_15/conv2d_transpose_35/Relu:activations:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
Hdenoise_model_7/sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOpReadVariableOpQdenoise_model_7_sequential_15_conv2d_transpose_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
9denoise_model_7/sequential_15/conv2d_transpose_36/BiasAddBiasAddKdenoise_model_7/sequential_15/conv2d_transpose_36/conv2d_transpose:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ �
6denoise_model_7/sequential_15/conv2d_transpose_36/ReluReluBdenoise_model_7/sequential_15/conv2d_transpose_36/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@ �
7denoise_model_7/sequential_15/conv2d_transpose_37/ShapeShapeDdenoise_model_7/sequential_15/conv2d_transpose_36/Relu:activations:0*
T0*
_output_shapes
::���
Edenoise_model_7/sequential_15/conv2d_transpose_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Gdenoise_model_7/sequential_15/conv2d_transpose_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Gdenoise_model_7/sequential_15/conv2d_transpose_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?denoise_model_7/sequential_15/conv2d_transpose_37/strided_sliceStridedSlice@denoise_model_7/sequential_15/conv2d_transpose_37/Shape:output:0Ndenoise_model_7/sequential_15/conv2d_transpose_37/strided_slice/stack:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_37/strided_slice/stack_1:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
9denoise_model_7/sequential_15/conv2d_transpose_37/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�|
9denoise_model_7/sequential_15/conv2d_transpose_37/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�{
9denoise_model_7/sequential_15/conv2d_transpose_37/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
7denoise_model_7/sequential_15/conv2d_transpose_37/stackPackHdenoise_model_7/sequential_15/conv2d_transpose_37/strided_slice:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_37/stack/1:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_37/stack/2:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_37/stack/3:output:0*
N*
T0*
_output_shapes
:�
Gdenoise_model_7/sequential_15/conv2d_transpose_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Idenoise_model_7/sequential_15/conv2d_transpose_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Idenoise_model_7/sequential_15/conv2d_transpose_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Adenoise_model_7/sequential_15/conv2d_transpose_37/strided_slice_1StridedSlice@denoise_model_7/sequential_15/conv2d_transpose_37/stack:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_37/strided_slice_1/stack:output:0Rdenoise_model_7/sequential_15/conv2d_transpose_37/strided_slice_1/stack_1:output:0Rdenoise_model_7/sequential_15/conv2d_transpose_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Qdenoise_model_7/sequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOpReadVariableOpZdenoise_model_7_sequential_15_conv2d_transpose_37_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
Bdenoise_model_7/sequential_15/conv2d_transpose_37/conv2d_transposeConv2DBackpropInput@denoise_model_7/sequential_15/conv2d_transpose_37/stack:output:0Ydenoise_model_7/sequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOp:value:0Ddenoise_model_7/sequential_15/conv2d_transpose_36/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Hdenoise_model_7/sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOpReadVariableOpQdenoise_model_7_sequential_15_conv2d_transpose_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
9denoise_model_7/sequential_15/conv2d_transpose_37/BiasAddBiasAddKdenoise_model_7/sequential_15/conv2d_transpose_37/conv2d_transpose:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
6denoise_model_7/sequential_15/conv2d_transpose_37/ReluReluBdenoise_model_7/sequential_15/conv2d_transpose_37/BiasAdd:output:0*
T0*1
_output_shapes
:������������
7denoise_model_7/sequential_15/conv2d_transpose_38/ShapeShapeDdenoise_model_7/sequential_15/conv2d_transpose_37/Relu:activations:0*
T0*
_output_shapes
::���
Edenoise_model_7/sequential_15/conv2d_transpose_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Gdenoise_model_7/sequential_15/conv2d_transpose_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Gdenoise_model_7/sequential_15/conv2d_transpose_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?denoise_model_7/sequential_15/conv2d_transpose_38/strided_sliceStridedSlice@denoise_model_7/sequential_15/conv2d_transpose_38/Shape:output:0Ndenoise_model_7/sequential_15/conv2d_transpose_38/strided_slice/stack:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_38/strided_slice/stack_1:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
9denoise_model_7/sequential_15/conv2d_transpose_38/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�|
9denoise_model_7/sequential_15/conv2d_transpose_38/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�{
9denoise_model_7/sequential_15/conv2d_transpose_38/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
7denoise_model_7/sequential_15/conv2d_transpose_38/stackPackHdenoise_model_7/sequential_15/conv2d_transpose_38/strided_slice:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_38/stack/1:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_38/stack/2:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_38/stack/3:output:0*
N*
T0*
_output_shapes
:�
Gdenoise_model_7/sequential_15/conv2d_transpose_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Idenoise_model_7/sequential_15/conv2d_transpose_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Idenoise_model_7/sequential_15/conv2d_transpose_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Adenoise_model_7/sequential_15/conv2d_transpose_38/strided_slice_1StridedSlice@denoise_model_7/sequential_15/conv2d_transpose_38/stack:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_38/strided_slice_1/stack:output:0Rdenoise_model_7/sequential_15/conv2d_transpose_38/strided_slice_1/stack_1:output:0Rdenoise_model_7/sequential_15/conv2d_transpose_38/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Qdenoise_model_7/sequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOpReadVariableOpZdenoise_model_7_sequential_15_conv2d_transpose_38_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
Bdenoise_model_7/sequential_15/conv2d_transpose_38/conv2d_transposeConv2DBackpropInput@denoise_model_7/sequential_15/conv2d_transpose_38/stack:output:0Ydenoise_model_7/sequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOp:value:0Ddenoise_model_7/sequential_15/conv2d_transpose_37/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Hdenoise_model_7/sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOpReadVariableOpQdenoise_model_7_sequential_15_conv2d_transpose_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
9denoise_model_7/sequential_15/conv2d_transpose_38/BiasAddBiasAddKdenoise_model_7/sequential_15/conv2d_transpose_38/conv2d_transpose:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
6denoise_model_7/sequential_15/conv2d_transpose_38/ReluReluBdenoise_model_7/sequential_15/conv2d_transpose_38/BiasAdd:output:0*
T0*1
_output_shapes
:������������
7denoise_model_7/sequential_15/conv2d_transpose_39/ShapeShapeDdenoise_model_7/sequential_15/conv2d_transpose_38/Relu:activations:0*
T0*
_output_shapes
::���
Edenoise_model_7/sequential_15/conv2d_transpose_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Gdenoise_model_7/sequential_15/conv2d_transpose_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Gdenoise_model_7/sequential_15/conv2d_transpose_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?denoise_model_7/sequential_15/conv2d_transpose_39/strided_sliceStridedSlice@denoise_model_7/sequential_15/conv2d_transpose_39/Shape:output:0Ndenoise_model_7/sequential_15/conv2d_transpose_39/strided_slice/stack:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_39/strided_slice/stack_1:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_39/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
9denoise_model_7/sequential_15/conv2d_transpose_39/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�|
9denoise_model_7/sequential_15/conv2d_transpose_39/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�{
9denoise_model_7/sequential_15/conv2d_transpose_39/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
7denoise_model_7/sequential_15/conv2d_transpose_39/stackPackHdenoise_model_7/sequential_15/conv2d_transpose_39/strided_slice:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_39/stack/1:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_39/stack/2:output:0Bdenoise_model_7/sequential_15/conv2d_transpose_39/stack/3:output:0*
N*
T0*
_output_shapes
:�
Gdenoise_model_7/sequential_15/conv2d_transpose_39/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Idenoise_model_7/sequential_15/conv2d_transpose_39/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Idenoise_model_7/sequential_15/conv2d_transpose_39/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Adenoise_model_7/sequential_15/conv2d_transpose_39/strided_slice_1StridedSlice@denoise_model_7/sequential_15/conv2d_transpose_39/stack:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_39/strided_slice_1/stack:output:0Rdenoise_model_7/sequential_15/conv2d_transpose_39/strided_slice_1/stack_1:output:0Rdenoise_model_7/sequential_15/conv2d_transpose_39/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Qdenoise_model_7/sequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOpReadVariableOpZdenoise_model_7_sequential_15_conv2d_transpose_39_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
Bdenoise_model_7/sequential_15/conv2d_transpose_39/conv2d_transposeConv2DBackpropInput@denoise_model_7/sequential_15/conv2d_transpose_39/stack:output:0Ydenoise_model_7/sequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOp:value:0Ddenoise_model_7/sequential_15/conv2d_transpose_38/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Hdenoise_model_7/sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOpReadVariableOpQdenoise_model_7_sequential_15_conv2d_transpose_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
9denoise_model_7/sequential_15/conv2d_transpose_39/BiasAddBiasAddKdenoise_model_7/sequential_15/conv2d_transpose_39/conv2d_transpose:output:0Pdenoise_model_7/sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
6denoise_model_7/sequential_15/conv2d_transpose_39/ReluReluBdenoise_model_7/sequential_15/conv2d_transpose_39/BiasAdd:output:0*
T0*1
_output_shapes
:������������
=denoise_model_7/sequential_15/conv2d_47/Conv2D/ReadVariableOpReadVariableOpFdenoise_model_7_sequential_15_conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
.denoise_model_7/sequential_15/conv2d_47/Conv2DConv2DDdenoise_model_7/sequential_15/conv2d_transpose_39/Relu:activations:0Edenoise_model_7/sequential_15/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
>denoise_model_7/sequential_15/conv2d_47/BiasAdd/ReadVariableOpReadVariableOpGdenoise_model_7_sequential_15_conv2d_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
/denoise_model_7/sequential_15/conv2d_47/BiasAddBiasAdd7denoise_model_7/sequential_15/conv2d_47/Conv2D:output:0Fdenoise_model_7/sequential_15/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
/denoise_model_7/sequential_15/conv2d_47/SigmoidSigmoid8denoise_model_7/sequential_15/conv2d_47/BiasAdd:output:0*
T0*1
_output_shapes
:������������
IdentityIdentity3denoise_model_7/sequential_15/conv2d_47/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp?^denoise_model_7/sequential_14/conv2d_42/BiasAdd/ReadVariableOp>^denoise_model_7/sequential_14/conv2d_42/Conv2D/ReadVariableOp?^denoise_model_7/sequential_14/conv2d_43/BiasAdd/ReadVariableOp>^denoise_model_7/sequential_14/conv2d_43/Conv2D/ReadVariableOp?^denoise_model_7/sequential_14/conv2d_44/BiasAdd/ReadVariableOp>^denoise_model_7/sequential_14/conv2d_44/Conv2D/ReadVariableOp?^denoise_model_7/sequential_14/conv2d_45/BiasAdd/ReadVariableOp>^denoise_model_7/sequential_14/conv2d_45/Conv2D/ReadVariableOp?^denoise_model_7/sequential_14/conv2d_46/BiasAdd/ReadVariableOp>^denoise_model_7/sequential_14/conv2d_46/Conv2D/ReadVariableOp?^denoise_model_7/sequential_15/conv2d_47/BiasAdd/ReadVariableOp>^denoise_model_7/sequential_15/conv2d_47/Conv2D/ReadVariableOpI^denoise_model_7/sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOpR^denoise_model_7/sequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOpI^denoise_model_7/sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOpR^denoise_model_7/sequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOpI^denoise_model_7/sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOpR^denoise_model_7/sequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOpI^denoise_model_7/sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOpR^denoise_model_7/sequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOpI^denoise_model_7/sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOpR^denoise_model_7/sequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 2�
>denoise_model_7/sequential_14/conv2d_42/BiasAdd/ReadVariableOp>denoise_model_7/sequential_14/conv2d_42/BiasAdd/ReadVariableOp2~
=denoise_model_7/sequential_14/conv2d_42/Conv2D/ReadVariableOp=denoise_model_7/sequential_14/conv2d_42/Conv2D/ReadVariableOp2�
>denoise_model_7/sequential_14/conv2d_43/BiasAdd/ReadVariableOp>denoise_model_7/sequential_14/conv2d_43/BiasAdd/ReadVariableOp2~
=denoise_model_7/sequential_14/conv2d_43/Conv2D/ReadVariableOp=denoise_model_7/sequential_14/conv2d_43/Conv2D/ReadVariableOp2�
>denoise_model_7/sequential_14/conv2d_44/BiasAdd/ReadVariableOp>denoise_model_7/sequential_14/conv2d_44/BiasAdd/ReadVariableOp2~
=denoise_model_7/sequential_14/conv2d_44/Conv2D/ReadVariableOp=denoise_model_7/sequential_14/conv2d_44/Conv2D/ReadVariableOp2�
>denoise_model_7/sequential_14/conv2d_45/BiasAdd/ReadVariableOp>denoise_model_7/sequential_14/conv2d_45/BiasAdd/ReadVariableOp2~
=denoise_model_7/sequential_14/conv2d_45/Conv2D/ReadVariableOp=denoise_model_7/sequential_14/conv2d_45/Conv2D/ReadVariableOp2�
>denoise_model_7/sequential_14/conv2d_46/BiasAdd/ReadVariableOp>denoise_model_7/sequential_14/conv2d_46/BiasAdd/ReadVariableOp2~
=denoise_model_7/sequential_14/conv2d_46/Conv2D/ReadVariableOp=denoise_model_7/sequential_14/conv2d_46/Conv2D/ReadVariableOp2�
>denoise_model_7/sequential_15/conv2d_47/BiasAdd/ReadVariableOp>denoise_model_7/sequential_15/conv2d_47/BiasAdd/ReadVariableOp2~
=denoise_model_7/sequential_15/conv2d_47/Conv2D/ReadVariableOp=denoise_model_7/sequential_15/conv2d_47/Conv2D/ReadVariableOp2�
Hdenoise_model_7/sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOpHdenoise_model_7/sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOp2�
Qdenoise_model_7/sequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOpQdenoise_model_7/sequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOp2�
Hdenoise_model_7/sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOpHdenoise_model_7/sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOp2�
Qdenoise_model_7/sequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOpQdenoise_model_7/sequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOp2�
Hdenoise_model_7/sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOpHdenoise_model_7/sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOp2�
Qdenoise_model_7/sequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOpQdenoise_model_7/sequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOp2�
Hdenoise_model_7/sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOpHdenoise_model_7/sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOp2�
Qdenoise_model_7/sequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOpQdenoise_model_7/sequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOp2�
Hdenoise_model_7/sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOpHdenoise_model_7/sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOp2�
Qdenoise_model_7/sequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOpQdenoise_model_7/sequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOp:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�!
�
N__inference_conv2d_transpose_39_layer_call_and_return_conditional_losses_81526

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_70770
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
D__inference_conv2d_45_layer_call_and_return_conditional_losses_81291

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������   i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������   w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_70785
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:P L
&
_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80116
x-
sequential_14_80069:!
sequential_14_80071:-
sequential_14_80073:!
sequential_14_80075:-
sequential_14_80077:!
sequential_14_80079:-
sequential_14_80081: !
sequential_14_80083: -
sequential_14_80085: @!
sequential_14_80087:@-
sequential_15_80090:@@!
sequential_15_80092:@-
sequential_15_80094: @!
sequential_15_80096: -
sequential_15_80098: !
sequential_15_80100:-
sequential_15_80102:!
sequential_15_80104:-
sequential_15_80106:!
sequential_15_80108:-
sequential_15_80110:!
sequential_15_80112:
identity��%sequential_14/StatefulPartitionedCall�%sequential_15/StatefulPartitionedCall�
%sequential_14/StatefulPartitionedCallStatefulPartitionedCallxsequential_14_80069sequential_14_80071sequential_14_80073sequential_14_80075sequential_14_80077sequential_14_80079sequential_14_80081sequential_14_80083sequential_14_80085sequential_14_80087*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_79284�
%sequential_15/StatefulPartitionedCallStatefulPartitionedCall.sequential_14/StatefulPartitionedCall:output:0sequential_15_80090sequential_15_80092sequential_15_80094sequential_15_80096sequential_15_80098sequential_15_80100sequential_15_80102sequential_15_80104sequential_15_80106sequential_15_80108sequential_15_80110sequential_15_80112*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_79804�
IdentityIdentity.sequential_15/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp&^sequential_14/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 2N
%sequential_14/StatefulPartitionedCall%sequential_14/StatefulPartitionedCall2N
%sequential_15/StatefulPartitionedCall%sequential_15/StatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�
�
-__inference_sequential_15_layer_call_fn_80989

inputs!
unknown:@@
	unknown_0:@#
	unknown_1: @
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_79867y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
D__inference_conv2d_45_layer_call_and_return_conditional_losses_79199

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������   i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������   w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
D__inference_conv2d_47_layer_call_and_return_conditional_losses_81546

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������`
SigmoidSigmoidBiasAdd:output:0*
T0*1
_output_shapes
:�����������d
IdentityIdentitySigmoid:y:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�!
�
N__inference_conv2d_transpose_38_layer_call_and_return_conditional_losses_81483

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_70760
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
J
"__inference__update_step_xla_70780
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
-__inference_sequential_14_layer_call_fn_80853

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_79338w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�!
�
N__inference_conv2d_transpose_36_layer_call_and_return_conditional_losses_79541

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+��������������������������� j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_70725
gradient"
variable: @*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: @: *
	_noinline(:P L
&
_output_shapes
: @
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
/__inference_denoise_model_7_layer_call_fn_80262
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11: @

unknown_12: $

unknown_13: 

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80215y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
)__inference_conv2d_42_layer_call_fn_81220

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_42_layer_call_and_return_conditional_losses_79148y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�&
�
H__inference_sequential_15_layer_call_and_return_conditional_losses_79867

inputs3
conv2d_transpose_35_79836:@@'
conv2d_transpose_35_79838:@3
conv2d_transpose_36_79841: @'
conv2d_transpose_36_79843: 3
conv2d_transpose_37_79846: '
conv2d_transpose_37_79848:3
conv2d_transpose_38_79851:'
conv2d_transpose_38_79853:3
conv2d_transpose_39_79856:'
conv2d_transpose_39_79858:)
conv2d_47_79861:
conv2d_47_79863:
identity��!conv2d_47/StatefulPartitionedCall�+conv2d_transpose_35/StatefulPartitionedCall�+conv2d_transpose_36/StatefulPartitionedCall�+conv2d_transpose_37/StatefulPartitionedCall�+conv2d_transpose_38/StatefulPartitionedCall�+conv2d_transpose_39/StatefulPartitionedCall�
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_35_79836conv2d_transpose_35_79838*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_79496�
+conv2d_transpose_36/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_35/StatefulPartitionedCall:output:0conv2d_transpose_36_79841conv2d_transpose_36_79843*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_36_layer_call_and_return_conditional_losses_79541�
+conv2d_transpose_37/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_36/StatefulPartitionedCall:output:0conv2d_transpose_37_79846conv2d_transpose_37_79848*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_37_layer_call_and_return_conditional_losses_79586�
+conv2d_transpose_38/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_37/StatefulPartitionedCall:output:0conv2d_transpose_38_79851conv2d_transpose_38_79853*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_38_layer_call_and_return_conditional_losses_79631�
+conv2d_transpose_39/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_38/StatefulPartitionedCall:output:0conv2d_transpose_39_79856conv2d_transpose_39_79858*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_39_layer_call_and_return_conditional_losses_79676�
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_39/StatefulPartitionedCall:output:0conv2d_47_79861conv2d_47_79863*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_47_layer_call_and_return_conditional_losses_79726�
IdentityIdentity*conv2d_47/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp"^conv2d_47/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall,^conv2d_transpose_36/StatefulPartitionedCall,^conv2d_transpose_37/StatefulPartitionedCall,^conv2d_transpose_38/StatefulPartitionedCall,^conv2d_transpose_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@: : : : : : : : : : : : 2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall2Z
+conv2d_transpose_36/StatefulPartitionedCall+conv2d_transpose_36/StatefulPartitionedCall2Z
+conv2d_transpose_37/StatefulPartitionedCall+conv2d_transpose_37/StatefulPartitionedCall2Z
+conv2d_transpose_38/StatefulPartitionedCall+conv2d_transpose_38/StatefulPartitionedCall2Z
+conv2d_transpose_39/StatefulPartitionedCall+conv2d_transpose_39/StatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_70710
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
��
�
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80803
xP
6sequential_14_conv2d_42_conv2d_readvariableop_resource:E
7sequential_14_conv2d_42_biasadd_readvariableop_resource:P
6sequential_14_conv2d_43_conv2d_readvariableop_resource:E
7sequential_14_conv2d_43_biasadd_readvariableop_resource:P
6sequential_14_conv2d_44_conv2d_readvariableop_resource:E
7sequential_14_conv2d_44_biasadd_readvariableop_resource:P
6sequential_14_conv2d_45_conv2d_readvariableop_resource: E
7sequential_14_conv2d_45_biasadd_readvariableop_resource: P
6sequential_14_conv2d_46_conv2d_readvariableop_resource: @E
7sequential_14_conv2d_46_biasadd_readvariableop_resource:@d
Jsequential_15_conv2d_transpose_35_conv2d_transpose_readvariableop_resource:@@O
Asequential_15_conv2d_transpose_35_biasadd_readvariableop_resource:@d
Jsequential_15_conv2d_transpose_36_conv2d_transpose_readvariableop_resource: @O
Asequential_15_conv2d_transpose_36_biasadd_readvariableop_resource: d
Jsequential_15_conv2d_transpose_37_conv2d_transpose_readvariableop_resource: O
Asequential_15_conv2d_transpose_37_biasadd_readvariableop_resource:d
Jsequential_15_conv2d_transpose_38_conv2d_transpose_readvariableop_resource:O
Asequential_15_conv2d_transpose_38_biasadd_readvariableop_resource:d
Jsequential_15_conv2d_transpose_39_conv2d_transpose_readvariableop_resource:O
Asequential_15_conv2d_transpose_39_biasadd_readvariableop_resource:P
6sequential_15_conv2d_47_conv2d_readvariableop_resource:E
7sequential_15_conv2d_47_biasadd_readvariableop_resource:
identity��.sequential_14/conv2d_42/BiasAdd/ReadVariableOp�-sequential_14/conv2d_42/Conv2D/ReadVariableOp�.sequential_14/conv2d_43/BiasAdd/ReadVariableOp�-sequential_14/conv2d_43/Conv2D/ReadVariableOp�.sequential_14/conv2d_44/BiasAdd/ReadVariableOp�-sequential_14/conv2d_44/Conv2D/ReadVariableOp�.sequential_14/conv2d_45/BiasAdd/ReadVariableOp�-sequential_14/conv2d_45/Conv2D/ReadVariableOp�.sequential_14/conv2d_46/BiasAdd/ReadVariableOp�-sequential_14/conv2d_46/Conv2D/ReadVariableOp�.sequential_15/conv2d_47/BiasAdd/ReadVariableOp�-sequential_15/conv2d_47/Conv2D/ReadVariableOp�8sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOp�Asequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOp�8sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOp�Asequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOp�8sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOp�Asequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOp�8sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOp�Asequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOp�8sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOp�Asequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOp�
-sequential_14/conv2d_42/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_14/conv2d_42/Conv2DConv2Dx5sequential_14/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
.sequential_14/conv2d_42/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_14/conv2d_42/BiasAddBiasAdd'sequential_14/conv2d_42/Conv2D:output:06sequential_14/conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential_14/conv2d_42/ReluRelu(sequential_14/conv2d_42/BiasAdd:output:0*
T0*1
_output_shapes
:������������
-sequential_14/conv2d_43/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_14/conv2d_43/Conv2DConv2D*sequential_14/conv2d_42/Relu:activations:05sequential_14/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
.sequential_14/conv2d_43/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_14/conv2d_43/BiasAddBiasAdd'sequential_14/conv2d_43/Conv2D:output:06sequential_14/conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential_14/conv2d_43/ReluRelu(sequential_14/conv2d_43/BiasAdd:output:0*
T0*1
_output_shapes
:������������
-sequential_14/conv2d_44/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_14/conv2d_44/Conv2DConv2D*sequential_14/conv2d_43/Relu:activations:05sequential_14/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
.sequential_14/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_14/conv2d_44/BiasAddBiasAdd'sequential_14/conv2d_44/Conv2D:output:06sequential_14/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@�
sequential_14/conv2d_44/ReluRelu(sequential_14/conv2d_44/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
-sequential_14/conv2d_45/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
sequential_14/conv2d_45/Conv2DConv2D*sequential_14/conv2d_44/Relu:activations:05sequential_14/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
.sequential_14/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_45_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_14/conv2d_45/BiasAddBiasAdd'sequential_14/conv2d_45/Conv2D:output:06sequential_14/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   �
sequential_14/conv2d_45/ReluRelu(sequential_14/conv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
-sequential_14/conv2d_46/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
sequential_14/conv2d_46/Conv2DConv2D*sequential_14/conv2d_45/Relu:activations:05sequential_14/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
.sequential_14/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_14/conv2d_46/BiasAddBiasAdd'sequential_14/conv2d_46/Conv2D:output:06sequential_14/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential_14/conv2d_46/ReluRelu(sequential_14/conv2d_46/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
'sequential_15/conv2d_transpose_35/ShapeShape*sequential_14/conv2d_46/Relu:activations:0*
T0*
_output_shapes
::��
5sequential_15/conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_15/conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_15/conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_15/conv2d_transpose_35/strided_sliceStridedSlice0sequential_15/conv2d_transpose_35/Shape:output:0>sequential_15/conv2d_transpose_35/strided_slice/stack:output:0@sequential_15/conv2d_transpose_35/strided_slice/stack_1:output:0@sequential_15/conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_15/conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value	B : k
)sequential_15/conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value	B : k
)sequential_15/conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
'sequential_15/conv2d_transpose_35/stackPack8sequential_15/conv2d_transpose_35/strided_slice:output:02sequential_15/conv2d_transpose_35/stack/1:output:02sequential_15/conv2d_transpose_35/stack/2:output:02sequential_15/conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_15/conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_15/conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_15/conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_15/conv2d_transpose_35/strided_slice_1StridedSlice0sequential_15/conv2d_transpose_35/stack:output:0@sequential_15/conv2d_transpose_35/strided_slice_1/stack:output:0Bsequential_15/conv2d_transpose_35/strided_slice_1/stack_1:output:0Bsequential_15/conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_15_conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
2sequential_15/conv2d_transpose_35/conv2d_transposeConv2DBackpropInput0sequential_15/conv2d_transpose_35/stack:output:0Isequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:0*sequential_14/conv2d_46/Relu:activations:0*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
8sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOpReadVariableOpAsequential_15_conv2d_transpose_35_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)sequential_15/conv2d_transpose_35/BiasAddBiasAdd;sequential_15/conv2d_transpose_35/conv2d_transpose:output:0@sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @�
&sequential_15/conv2d_transpose_35/ReluRelu2sequential_15/conv2d_transpose_35/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @�
'sequential_15/conv2d_transpose_36/ShapeShape4sequential_15/conv2d_transpose_35/Relu:activations:0*
T0*
_output_shapes
::��
5sequential_15/conv2d_transpose_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_15/conv2d_transpose_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_15/conv2d_transpose_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_15/conv2d_transpose_36/strided_sliceStridedSlice0sequential_15/conv2d_transpose_36/Shape:output:0>sequential_15/conv2d_transpose_36/strided_slice/stack:output:0@sequential_15/conv2d_transpose_36/strided_slice/stack_1:output:0@sequential_15/conv2d_transpose_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_15/conv2d_transpose_36/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@k
)sequential_15/conv2d_transpose_36/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@k
)sequential_15/conv2d_transpose_36/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
'sequential_15/conv2d_transpose_36/stackPack8sequential_15/conv2d_transpose_36/strided_slice:output:02sequential_15/conv2d_transpose_36/stack/1:output:02sequential_15/conv2d_transpose_36/stack/2:output:02sequential_15/conv2d_transpose_36/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_15/conv2d_transpose_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_15/conv2d_transpose_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_15/conv2d_transpose_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_15/conv2d_transpose_36/strided_slice_1StridedSlice0sequential_15/conv2d_transpose_36/stack:output:0@sequential_15/conv2d_transpose_36/strided_slice_1/stack:output:0Bsequential_15/conv2d_transpose_36/strided_slice_1/stack_1:output:0Bsequential_15/conv2d_transpose_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_15_conv2d_transpose_36_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
2sequential_15/conv2d_transpose_36/conv2d_transposeConv2DBackpropInput0sequential_15/conv2d_transpose_36/stack:output:0Isequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOp:value:04sequential_15/conv2d_transpose_35/Relu:activations:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
8sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOpReadVariableOpAsequential_15_conv2d_transpose_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
)sequential_15/conv2d_transpose_36/BiasAddBiasAdd;sequential_15/conv2d_transpose_36/conv2d_transpose:output:0@sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ �
&sequential_15/conv2d_transpose_36/ReluRelu2sequential_15/conv2d_transpose_36/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@ �
'sequential_15/conv2d_transpose_37/ShapeShape4sequential_15/conv2d_transpose_36/Relu:activations:0*
T0*
_output_shapes
::��
5sequential_15/conv2d_transpose_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_15/conv2d_transpose_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_15/conv2d_transpose_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_15/conv2d_transpose_37/strided_sliceStridedSlice0sequential_15/conv2d_transpose_37/Shape:output:0>sequential_15/conv2d_transpose_37/strided_slice/stack:output:0@sequential_15/conv2d_transpose_37/strided_slice/stack_1:output:0@sequential_15/conv2d_transpose_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
)sequential_15/conv2d_transpose_37/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�l
)sequential_15/conv2d_transpose_37/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�k
)sequential_15/conv2d_transpose_37/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
'sequential_15/conv2d_transpose_37/stackPack8sequential_15/conv2d_transpose_37/strided_slice:output:02sequential_15/conv2d_transpose_37/stack/1:output:02sequential_15/conv2d_transpose_37/stack/2:output:02sequential_15/conv2d_transpose_37/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_15/conv2d_transpose_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_15/conv2d_transpose_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_15/conv2d_transpose_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_15/conv2d_transpose_37/strided_slice_1StridedSlice0sequential_15/conv2d_transpose_37/stack:output:0@sequential_15/conv2d_transpose_37/strided_slice_1/stack:output:0Bsequential_15/conv2d_transpose_37/strided_slice_1/stack_1:output:0Bsequential_15/conv2d_transpose_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_15_conv2d_transpose_37_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
2sequential_15/conv2d_transpose_37/conv2d_transposeConv2DBackpropInput0sequential_15/conv2d_transpose_37/stack:output:0Isequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOp:value:04sequential_15/conv2d_transpose_36/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
8sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOpReadVariableOpAsequential_15_conv2d_transpose_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
)sequential_15/conv2d_transpose_37/BiasAddBiasAdd;sequential_15/conv2d_transpose_37/conv2d_transpose:output:0@sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
&sequential_15/conv2d_transpose_37/ReluRelu2sequential_15/conv2d_transpose_37/BiasAdd:output:0*
T0*1
_output_shapes
:������������
'sequential_15/conv2d_transpose_38/ShapeShape4sequential_15/conv2d_transpose_37/Relu:activations:0*
T0*
_output_shapes
::��
5sequential_15/conv2d_transpose_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_15/conv2d_transpose_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_15/conv2d_transpose_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_15/conv2d_transpose_38/strided_sliceStridedSlice0sequential_15/conv2d_transpose_38/Shape:output:0>sequential_15/conv2d_transpose_38/strided_slice/stack:output:0@sequential_15/conv2d_transpose_38/strided_slice/stack_1:output:0@sequential_15/conv2d_transpose_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
)sequential_15/conv2d_transpose_38/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�l
)sequential_15/conv2d_transpose_38/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�k
)sequential_15/conv2d_transpose_38/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
'sequential_15/conv2d_transpose_38/stackPack8sequential_15/conv2d_transpose_38/strided_slice:output:02sequential_15/conv2d_transpose_38/stack/1:output:02sequential_15/conv2d_transpose_38/stack/2:output:02sequential_15/conv2d_transpose_38/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_15/conv2d_transpose_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_15/conv2d_transpose_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_15/conv2d_transpose_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_15/conv2d_transpose_38/strided_slice_1StridedSlice0sequential_15/conv2d_transpose_38/stack:output:0@sequential_15/conv2d_transpose_38/strided_slice_1/stack:output:0Bsequential_15/conv2d_transpose_38/strided_slice_1/stack_1:output:0Bsequential_15/conv2d_transpose_38/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_15_conv2d_transpose_38_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
2sequential_15/conv2d_transpose_38/conv2d_transposeConv2DBackpropInput0sequential_15/conv2d_transpose_38/stack:output:0Isequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOp:value:04sequential_15/conv2d_transpose_37/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
8sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOpReadVariableOpAsequential_15_conv2d_transpose_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
)sequential_15/conv2d_transpose_38/BiasAddBiasAdd;sequential_15/conv2d_transpose_38/conv2d_transpose:output:0@sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
&sequential_15/conv2d_transpose_38/ReluRelu2sequential_15/conv2d_transpose_38/BiasAdd:output:0*
T0*1
_output_shapes
:������������
'sequential_15/conv2d_transpose_39/ShapeShape4sequential_15/conv2d_transpose_38/Relu:activations:0*
T0*
_output_shapes
::��
5sequential_15/conv2d_transpose_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_15/conv2d_transpose_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_15/conv2d_transpose_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_15/conv2d_transpose_39/strided_sliceStridedSlice0sequential_15/conv2d_transpose_39/Shape:output:0>sequential_15/conv2d_transpose_39/strided_slice/stack:output:0@sequential_15/conv2d_transpose_39/strided_slice/stack_1:output:0@sequential_15/conv2d_transpose_39/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
)sequential_15/conv2d_transpose_39/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�l
)sequential_15/conv2d_transpose_39/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�k
)sequential_15/conv2d_transpose_39/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
'sequential_15/conv2d_transpose_39/stackPack8sequential_15/conv2d_transpose_39/strided_slice:output:02sequential_15/conv2d_transpose_39/stack/1:output:02sequential_15/conv2d_transpose_39/stack/2:output:02sequential_15/conv2d_transpose_39/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_15/conv2d_transpose_39/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_15/conv2d_transpose_39/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_15/conv2d_transpose_39/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_15/conv2d_transpose_39/strided_slice_1StridedSlice0sequential_15/conv2d_transpose_39/stack:output:0@sequential_15/conv2d_transpose_39/strided_slice_1/stack:output:0Bsequential_15/conv2d_transpose_39/strided_slice_1/stack_1:output:0Bsequential_15/conv2d_transpose_39/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_15_conv2d_transpose_39_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
2sequential_15/conv2d_transpose_39/conv2d_transposeConv2DBackpropInput0sequential_15/conv2d_transpose_39/stack:output:0Isequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOp:value:04sequential_15/conv2d_transpose_38/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
8sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOpReadVariableOpAsequential_15_conv2d_transpose_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
)sequential_15/conv2d_transpose_39/BiasAddBiasAdd;sequential_15/conv2d_transpose_39/conv2d_transpose:output:0@sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
&sequential_15/conv2d_transpose_39/ReluRelu2sequential_15/conv2d_transpose_39/BiasAdd:output:0*
T0*1
_output_shapes
:������������
-sequential_15/conv2d_47/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_15/conv2d_47/Conv2DConv2D4sequential_15/conv2d_transpose_39/Relu:activations:05sequential_15/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
.sequential_15/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_15/conv2d_47/BiasAddBiasAdd'sequential_15/conv2d_47/Conv2D:output:06sequential_15/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential_15/conv2d_47/SigmoidSigmoid(sequential_15/conv2d_47/BiasAdd:output:0*
T0*1
_output_shapes
:�����������|
IdentityIdentity#sequential_15/conv2d_47/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:������������

NoOpNoOp/^sequential_14/conv2d_42/BiasAdd/ReadVariableOp.^sequential_14/conv2d_42/Conv2D/ReadVariableOp/^sequential_14/conv2d_43/BiasAdd/ReadVariableOp.^sequential_14/conv2d_43/Conv2D/ReadVariableOp/^sequential_14/conv2d_44/BiasAdd/ReadVariableOp.^sequential_14/conv2d_44/Conv2D/ReadVariableOp/^sequential_14/conv2d_45/BiasAdd/ReadVariableOp.^sequential_14/conv2d_45/Conv2D/ReadVariableOp/^sequential_14/conv2d_46/BiasAdd/ReadVariableOp.^sequential_14/conv2d_46/Conv2D/ReadVariableOp/^sequential_15/conv2d_47/BiasAdd/ReadVariableOp.^sequential_15/conv2d_47/Conv2D/ReadVariableOp9^sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOpB^sequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOp9^sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOpB^sequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOp9^sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOpB^sequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOp9^sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOpB^sequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOp9^sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOpB^sequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 2`
.sequential_14/conv2d_42/BiasAdd/ReadVariableOp.sequential_14/conv2d_42/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_42/Conv2D/ReadVariableOp-sequential_14/conv2d_42/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_43/BiasAdd/ReadVariableOp.sequential_14/conv2d_43/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_43/Conv2D/ReadVariableOp-sequential_14/conv2d_43/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_44/BiasAdd/ReadVariableOp.sequential_14/conv2d_44/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_44/Conv2D/ReadVariableOp-sequential_14/conv2d_44/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_45/BiasAdd/ReadVariableOp.sequential_14/conv2d_45/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_45/Conv2D/ReadVariableOp-sequential_14/conv2d_45/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_46/BiasAdd/ReadVariableOp.sequential_14/conv2d_46/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_46/Conv2D/ReadVariableOp-sequential_14/conv2d_46/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_47/BiasAdd/ReadVariableOp.sequential_15/conv2d_47/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_47/Conv2D/ReadVariableOp-sequential_15/conv2d_47/Conv2D/ReadVariableOp2t
8sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOp8sequential_15/conv2d_transpose_35/BiasAdd/ReadVariableOp2�
Asequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOpAsequential_15/conv2d_transpose_35/conv2d_transpose/ReadVariableOp2t
8sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOp8sequential_15/conv2d_transpose_36/BiasAdd/ReadVariableOp2�
Asequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOpAsequential_15/conv2d_transpose_36/conv2d_transpose/ReadVariableOp2t
8sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOp8sequential_15/conv2d_transpose_37/BiasAdd/ReadVariableOp2�
Asequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOpAsequential_15/conv2d_transpose_37/conv2d_transpose/ReadVariableOp2t
8sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOp8sequential_15/conv2d_transpose_38/BiasAdd/ReadVariableOp2�
Asequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOpAsequential_15/conv2d_transpose_38/conv2d_transpose/ReadVariableOp2t
8sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOp8sequential_15/conv2d_transpose_39/BiasAdd/ReadVariableOp2�
Asequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOpAsequential_15/conv2d_transpose_39/conv2d_transpose/ReadVariableOp:T P
1
_output_shapes
:�����������

_user_specified_namex
�
�
D__inference_conv2d_46_layer_call_and_return_conditional_losses_79216

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
3__inference_conv2d_transpose_37_layer_call_fn_81406

inputs!
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_37_layer_call_and_return_conditional_losses_79586�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_70720
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
#__inference_signature_wrapper_80413
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11: @

unknown_12: $

unknown_13: 

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_79133y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
D__inference_conv2d_42_layer_call_and_return_conditional_losses_79148

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80013
input_1-
sequential_14_79966:!
sequential_14_79968:-
sequential_14_79970:!
sequential_14_79972:-
sequential_14_79974:!
sequential_14_79976:-
sequential_14_79978: !
sequential_14_79980: -
sequential_14_79982: @!
sequential_14_79984:@-
sequential_15_79987:@@!
sequential_15_79989:@-
sequential_15_79991: @!
sequential_15_79993: -
sequential_15_79995: !
sequential_15_79997:-
sequential_15_79999:!
sequential_15_80001:-
sequential_15_80003:!
sequential_15_80005:-
sequential_15_80007:!
sequential_15_80009:
identity��%sequential_14/StatefulPartitionedCall�%sequential_15/StatefulPartitionedCall�
%sequential_14/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_14_79966sequential_14_79968sequential_14_79970sequential_14_79972sequential_14_79974sequential_14_79976sequential_14_79978sequential_14_79980sequential_14_79982sequential_14_79984*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_79284�
%sequential_15/StatefulPartitionedCallStatefulPartitionedCall.sequential_14/StatefulPartitionedCall:output:0sequential_15_79987sequential_15_79989sequential_15_79991sequential_15_79993sequential_15_79995sequential_15_79997sequential_15_79999sequential_15_80001sequential_15_80003sequential_15_80005sequential_15_80007sequential_15_80009*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_79804�
IdentityIdentity.sequential_15/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp&^sequential_14/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 2N
%sequential_14/StatefulPartitionedCall%sequential_14/StatefulPartitionedCall2N
%sequential_15/StatefulPartitionedCall%sequential_15/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
/__inference_denoise_model_7_layer_call_fn_80462
x!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11: @

unknown_12: $

unknown_13: 

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80116y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�!
�
N__inference_conv2d_transpose_37_layer_call_and_return_conditional_losses_79586

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
-__inference_sequential_15_layer_call_fn_79831
input_16!
unknown:@@
	unknown_0:@#
	unknown_1: @
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_16unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_79804y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:���������@
"
_user_specified_name
input_16
�
V
"__inference__update_step_xla_70755
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:P L
&
_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
V
"__inference__update_step_xla_70775
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:P L
&
_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
)__inference_conv2d_43_layer_call_fn_81240

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_43_layer_call_and_return_conditional_losses_79165y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
H__inference_sequential_14_layer_call_and_return_conditional_losses_79284

inputs)
conv2d_42_79258:
conv2d_42_79260:)
conv2d_43_79263:
conv2d_43_79265:)
conv2d_44_79268:
conv2d_44_79270:)
conv2d_45_79273: 
conv2d_45_79275: )
conv2d_46_79278: @
conv2d_46_79280:@
identity��!conv2d_42/StatefulPartitionedCall�!conv2d_43/StatefulPartitionedCall�!conv2d_44/StatefulPartitionedCall�!conv2d_45/StatefulPartitionedCall�!conv2d_46/StatefulPartitionedCall�
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_42_79258conv2d_42_79260*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_42_layer_call_and_return_conditional_losses_79148�
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_79263conv2d_43_79265*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_43_layer_call_and_return_conditional_losses_79165�
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0conv2d_44_79268conv2d_44_79270*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_79182�
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0conv2d_45_79273conv2d_45_79275*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_45_layer_call_and_return_conditional_losses_79199�
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0conv2d_46_79278conv2d_46_79280*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_46_layer_call_and_return_conditional_losses_79216�
IdentityIdentity*conv2d_46/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@�
NoOpNoOp"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
-__inference_sequential_15_layer_call_fn_80960

inputs!
unknown:@@
	unknown_0:@#
	unknown_1: @
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_79804y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
D__inference_conv2d_46_layer_call_and_return_conditional_losses_81311

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_70750
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
��
�
H__inference_sequential_15_layer_call_and_return_conditional_losses_81100

inputsV
<conv2d_transpose_35_conv2d_transpose_readvariableop_resource:@@A
3conv2d_transpose_35_biasadd_readvariableop_resource:@V
<conv2d_transpose_36_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_36_biasadd_readvariableop_resource: V
<conv2d_transpose_37_conv2d_transpose_readvariableop_resource: A
3conv2d_transpose_37_biasadd_readvariableop_resource:V
<conv2d_transpose_38_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_38_biasadd_readvariableop_resource:V
<conv2d_transpose_39_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_39_biasadd_readvariableop_resource:B
(conv2d_47_conv2d_readvariableop_resource:7
)conv2d_47_biasadd_readvariableop_resource:
identity�� conv2d_47/BiasAdd/ReadVariableOp�conv2d_47/Conv2D/ReadVariableOp�*conv2d_transpose_35/BiasAdd/ReadVariableOp�3conv2d_transpose_35/conv2d_transpose/ReadVariableOp�*conv2d_transpose_36/BiasAdd/ReadVariableOp�3conv2d_transpose_36/conv2d_transpose/ReadVariableOp�*conv2d_transpose_37/BiasAdd/ReadVariableOp�3conv2d_transpose_37/conv2d_transpose/ReadVariableOp�*conv2d_transpose_38/BiasAdd/ReadVariableOp�3conv2d_transpose_38/conv2d_transpose/ReadVariableOp�*conv2d_transpose_39/BiasAdd/ReadVariableOp�3conv2d_transpose_39/conv2d_transpose/ReadVariableOp]
conv2d_transpose_35/ShapeShapeinputs*
T0*
_output_shapes
::��q
'conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_35/strided_sliceStridedSlice"conv2d_transpose_35/Shape:output:00conv2d_transpose_35/strided_slice/stack:output:02conv2d_transpose_35/strided_slice/stack_1:output:02conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ]
conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ]
conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
conv2d_transpose_35/stackPack*conv2d_transpose_35/strided_slice:output:0$conv2d_transpose_35/stack/1:output:0$conv2d_transpose_35/stack/2:output:0$conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_35/strided_slice_1StridedSlice"conv2d_transpose_35/stack:output:02conv2d_transpose_35/strided_slice_1/stack:output:04conv2d_transpose_35/strided_slice_1/stack_1:output:04conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
$conv2d_transpose_35/conv2d_transposeConv2DBackpropInput"conv2d_transpose_35/stack:output:0;conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:���������  @*
paddingSAME*
strides
�
*conv2d_transpose_35/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_35_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_transpose_35/BiasAddBiasAdd-conv2d_transpose_35/conv2d_transpose:output:02conv2d_transpose_35/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @�
conv2d_transpose_35/ReluRelu$conv2d_transpose_35/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @}
conv2d_transpose_36/ShapeShape&conv2d_transpose_35/Relu:activations:0*
T0*
_output_shapes
::��q
'conv2d_transpose_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_36/strided_sliceStridedSlice"conv2d_transpose_36/Shape:output:00conv2d_transpose_36/strided_slice/stack:output:02conv2d_transpose_36/strided_slice/stack_1:output:02conv2d_transpose_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_36/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_36/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_36/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
conv2d_transpose_36/stackPack*conv2d_transpose_36/strided_slice:output:0$conv2d_transpose_36/stack/1:output:0$conv2d_transpose_36/stack/2:output:0$conv2d_transpose_36/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_36/strided_slice_1StridedSlice"conv2d_transpose_36/stack:output:02conv2d_transpose_36/strided_slice_1/stack:output:04conv2d_transpose_36/strided_slice_1/stack_1:output:04conv2d_transpose_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_36/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_36_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
$conv2d_transpose_36/conv2d_transposeConv2DBackpropInput"conv2d_transpose_36/stack:output:0;conv2d_transpose_36/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_35/Relu:activations:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
*conv2d_transpose_36/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_transpose_36/BiasAddBiasAdd-conv2d_transpose_36/conv2d_transpose:output:02conv2d_transpose_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ �
conv2d_transpose_36/ReluRelu$conv2d_transpose_36/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@ }
conv2d_transpose_37/ShapeShape&conv2d_transpose_36/Relu:activations:0*
T0*
_output_shapes
::��q
'conv2d_transpose_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_37/strided_sliceStridedSlice"conv2d_transpose_37/Shape:output:00conv2d_transpose_37/strided_slice/stack:output:02conv2d_transpose_37/strided_slice/stack_1:output:02conv2d_transpose_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_37/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�^
conv2d_transpose_37/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�]
conv2d_transpose_37/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_37/stackPack*conv2d_transpose_37/strided_slice:output:0$conv2d_transpose_37/stack/1:output:0$conv2d_transpose_37/stack/2:output:0$conv2d_transpose_37/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_37/strided_slice_1StridedSlice"conv2d_transpose_37/stack:output:02conv2d_transpose_37/strided_slice_1/stack:output:04conv2d_transpose_37/strided_slice_1/stack_1:output:04conv2d_transpose_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_37/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_37_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
$conv2d_transpose_37/conv2d_transposeConv2DBackpropInput"conv2d_transpose_37/stack:output:0;conv2d_transpose_37/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_36/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*conv2d_transpose_37/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_37/BiasAddBiasAdd-conv2d_transpose_37/conv2d_transpose:output:02conv2d_transpose_37/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
conv2d_transpose_37/ReluRelu$conv2d_transpose_37/BiasAdd:output:0*
T0*1
_output_shapes
:�����������}
conv2d_transpose_38/ShapeShape&conv2d_transpose_37/Relu:activations:0*
T0*
_output_shapes
::��q
'conv2d_transpose_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_38/strided_sliceStridedSlice"conv2d_transpose_38/Shape:output:00conv2d_transpose_38/strided_slice/stack:output:02conv2d_transpose_38/strided_slice/stack_1:output:02conv2d_transpose_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_38/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�^
conv2d_transpose_38/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�]
conv2d_transpose_38/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_38/stackPack*conv2d_transpose_38/strided_slice:output:0$conv2d_transpose_38/stack/1:output:0$conv2d_transpose_38/stack/2:output:0$conv2d_transpose_38/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_38/strided_slice_1StridedSlice"conv2d_transpose_38/stack:output:02conv2d_transpose_38/strided_slice_1/stack:output:04conv2d_transpose_38/strided_slice_1/stack_1:output:04conv2d_transpose_38/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_38/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_38_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_38/conv2d_transposeConv2DBackpropInput"conv2d_transpose_38/stack:output:0;conv2d_transpose_38/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_37/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*conv2d_transpose_38/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_38/BiasAddBiasAdd-conv2d_transpose_38/conv2d_transpose:output:02conv2d_transpose_38/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
conv2d_transpose_38/ReluRelu$conv2d_transpose_38/BiasAdd:output:0*
T0*1
_output_shapes
:�����������}
conv2d_transpose_39/ShapeShape&conv2d_transpose_38/Relu:activations:0*
T0*
_output_shapes
::��q
'conv2d_transpose_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!conv2d_transpose_39/strided_sliceStridedSlice"conv2d_transpose_39/Shape:output:00conv2d_transpose_39/strided_slice/stack:output:02conv2d_transpose_39/strided_slice/stack_1:output:02conv2d_transpose_39/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_39/stack/1Const*
_output_shapes
: *
dtype0*
value
B :�^
conv2d_transpose_39/stack/2Const*
_output_shapes
: *
dtype0*
value
B :�]
conv2d_transpose_39/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
conv2d_transpose_39/stackPack*conv2d_transpose_39/strided_slice:output:0$conv2d_transpose_39/stack/1:output:0$conv2d_transpose_39/stack/2:output:0$conv2d_transpose_39/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_39/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_39/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_39/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#conv2d_transpose_39/strided_slice_1StridedSlice"conv2d_transpose_39/stack:output:02conv2d_transpose_39/strided_slice_1/stack:output:04conv2d_transpose_39/strided_slice_1/stack_1:output:04conv2d_transpose_39/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3conv2d_transpose_39/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_39_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
$conv2d_transpose_39/conv2d_transposeConv2DBackpropInput"conv2d_transpose_39/stack:output:0;conv2d_transpose_39/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_38/Relu:activations:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*conv2d_transpose_39/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_transpose_39/BiasAddBiasAdd-conv2d_transpose_39/conv2d_transpose:output:02conv2d_transpose_39/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
conv2d_transpose_39/ReluRelu$conv2d_transpose_39/BiasAdd:output:0*
T0*1
_output_shapes
:������������
conv2d_47/Conv2D/ReadVariableOpReadVariableOp(conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_47/Conv2DConv2D&conv2d_transpose_39/Relu:activations:0'conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
 conv2d_47/BiasAdd/ReadVariableOpReadVariableOp)conv2d_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_47/BiasAddBiasAddconv2d_47/Conv2D:output:0(conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������t
conv2d_47/SigmoidSigmoidconv2d_47/BiasAdd:output:0*
T0*1
_output_shapes
:�����������n
IdentityIdentityconv2d_47/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp!^conv2d_47/BiasAdd/ReadVariableOp ^conv2d_47/Conv2D/ReadVariableOp+^conv2d_transpose_35/BiasAdd/ReadVariableOp4^conv2d_transpose_35/conv2d_transpose/ReadVariableOp+^conv2d_transpose_36/BiasAdd/ReadVariableOp4^conv2d_transpose_36/conv2d_transpose/ReadVariableOp+^conv2d_transpose_37/BiasAdd/ReadVariableOp4^conv2d_transpose_37/conv2d_transpose/ReadVariableOp+^conv2d_transpose_38/BiasAdd/ReadVariableOp4^conv2d_transpose_38/conv2d_transpose/ReadVariableOp+^conv2d_transpose_39/BiasAdd/ReadVariableOp4^conv2d_transpose_39/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@: : : : : : : : : : : : 2D
 conv2d_47/BiasAdd/ReadVariableOp conv2d_47/BiasAdd/ReadVariableOp2B
conv2d_47/Conv2D/ReadVariableOpconv2d_47/Conv2D/ReadVariableOp2X
*conv2d_transpose_35/BiasAdd/ReadVariableOp*conv2d_transpose_35/BiasAdd/ReadVariableOp2j
3conv2d_transpose_35/conv2d_transpose/ReadVariableOp3conv2d_transpose_35/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_36/BiasAdd/ReadVariableOp*conv2d_transpose_36/BiasAdd/ReadVariableOp2j
3conv2d_transpose_36/conv2d_transpose/ReadVariableOp3conv2d_transpose_36/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_37/BiasAdd/ReadVariableOp*conv2d_transpose_37/BiasAdd/ReadVariableOp2j
3conv2d_transpose_37/conv2d_transpose/ReadVariableOp3conv2d_transpose_37/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_38/BiasAdd/ReadVariableOp*conv2d_transpose_38/BiasAdd/ReadVariableOp2j
3conv2d_transpose_38/conv2d_transpose/ReadVariableOp3conv2d_transpose_38/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_39/BiasAdd/ReadVariableOp*conv2d_transpose_39/BiasAdd/ReadVariableOp2j
3conv2d_transpose_39/conv2d_transpose/ReadVariableOp3conv2d_transpose_39/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�&
�
H__inference_sequential_15_layer_call_and_return_conditional_losses_79767
input_163
conv2d_transpose_35_79736:@@'
conv2d_transpose_35_79738:@3
conv2d_transpose_36_79741: @'
conv2d_transpose_36_79743: 3
conv2d_transpose_37_79746: '
conv2d_transpose_37_79748:3
conv2d_transpose_38_79751:'
conv2d_transpose_38_79753:3
conv2d_transpose_39_79756:'
conv2d_transpose_39_79758:)
conv2d_47_79761:
conv2d_47_79763:
identity��!conv2d_47/StatefulPartitionedCall�+conv2d_transpose_35/StatefulPartitionedCall�+conv2d_transpose_36/StatefulPartitionedCall�+conv2d_transpose_37/StatefulPartitionedCall�+conv2d_transpose_38/StatefulPartitionedCall�+conv2d_transpose_39/StatefulPartitionedCall�
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCallinput_16conv2d_transpose_35_79736conv2d_transpose_35_79738*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_79496�
+conv2d_transpose_36/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_35/StatefulPartitionedCall:output:0conv2d_transpose_36_79741conv2d_transpose_36_79743*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_36_layer_call_and_return_conditional_losses_79541�
+conv2d_transpose_37/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_36/StatefulPartitionedCall:output:0conv2d_transpose_37_79746conv2d_transpose_37_79748*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_37_layer_call_and_return_conditional_losses_79586�
+conv2d_transpose_38/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_37/StatefulPartitionedCall:output:0conv2d_transpose_38_79751conv2d_transpose_38_79753*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_38_layer_call_and_return_conditional_losses_79631�
+conv2d_transpose_39/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_38/StatefulPartitionedCall:output:0conv2d_transpose_39_79756conv2d_transpose_39_79758*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_conv2d_transpose_39_layer_call_and_return_conditional_losses_79676�
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_39/StatefulPartitionedCall:output:0conv2d_47_79761conv2d_47_79763*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_47_layer_call_and_return_conditional_losses_79726�
IdentityIdentity*conv2d_47/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp"^conv2d_47/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall,^conv2d_transpose_36/StatefulPartitionedCall,^conv2d_transpose_37/StatefulPartitionedCall,^conv2d_transpose_38/StatefulPartitionedCall,^conv2d_transpose_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������@: : : : : : : : : : : : 2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall2Z
+conv2d_transpose_36/StatefulPartitionedCall+conv2d_transpose_36/StatefulPartitionedCall2Z
+conv2d_transpose_37/StatefulPartitionedCall+conv2d_transpose_37/StatefulPartitionedCall2Z
+conv2d_transpose_38/StatefulPartitionedCall+conv2d_transpose_38/StatefulPartitionedCall2Z
+conv2d_transpose_39/StatefulPartitionedCall+conv2d_transpose_39/StatefulPartitionedCall:Y U
/
_output_shapes
:���������@
"
_user_specified_name
input_16
�
�
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80063
input_1-
sequential_14_80016:!
sequential_14_80018:-
sequential_14_80020:!
sequential_14_80022:-
sequential_14_80024:!
sequential_14_80026:-
sequential_14_80028: !
sequential_14_80030: -
sequential_14_80032: @!
sequential_14_80034:@-
sequential_15_80037:@@!
sequential_15_80039:@-
sequential_15_80041: @!
sequential_15_80043: -
sequential_15_80045: !
sequential_15_80047:-
sequential_15_80049:!
sequential_15_80051:-
sequential_15_80053:!
sequential_15_80055:-
sequential_15_80057:!
sequential_15_80059:
identity��%sequential_14/StatefulPartitionedCall�%sequential_15/StatefulPartitionedCall�
%sequential_14/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_14_80016sequential_14_80018sequential_14_80020sequential_14_80022sequential_14_80024sequential_14_80026sequential_14_80028sequential_14_80030sequential_14_80032sequential_14_80034*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_79338�
%sequential_15/StatefulPartitionedCallStatefulPartitionedCall.sequential_14/StatefulPartitionedCall:output:0sequential_15_80037sequential_15_80039sequential_15_80041sequential_15_80043sequential_15_80045sequential_15_80047sequential_15_80049sequential_15_80051sequential_15_80053sequential_15_80055sequential_15_80057sequential_15_80059*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_79867�
IdentityIdentity.sequential_15/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp&^sequential_14/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 2N
%sequential_14/StatefulPartitionedCall%sequential_14/StatefulPartitionedCall2N
%sequential_15/StatefulPartitionedCall%sequential_15/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�!
�
N__inference_conv2d_transpose_36_layer_call_and_return_conditional_losses_81397

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+��������������������������� j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_70735
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
D__inference_conv2d_47_layer_call_and_return_conditional_losses_79726

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������`
SigmoidSigmoidBiasAdd:output:0*
T0*1
_output_shapes
:�����������d
IdentityIdentitySigmoid:y:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_70715
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:P L
&
_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
)__inference_conv2d_47_layer_call_fn_81535

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_47_layer_call_and_return_conditional_losses_79726y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_44_layer_call_and_return_conditional_losses_81271

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_1:
serving_default_input_1:0�����������F
output_1:
StatefulPartitionedCall:0�����������tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	decoder

	optimizer

signatures"
_tf_keras_model
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
!21"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
!21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
"non_trainable_variables

#layers
$metrics
%layer_regularization_losses
&layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
'trace_0
(trace_1
)trace_2
*trace_32�
/__inference_denoise_model_7_layer_call_fn_80163
/__inference_denoise_model_7_layer_call_fn_80262
/__inference_denoise_model_7_layer_call_fn_80462
/__inference_denoise_model_7_layer_call_fn_80511�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z'trace_0z(trace_1z)trace_2z*trace_3
�
+trace_0
,trace_1
-trace_2
.trace_32�
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80013
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80063
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80657
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80803�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z+trace_0z,trace_1z-trace_2z.trace_3
�B�
 __inference__wrapped_model_79133input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
/layer_with_weights-0
/layer-0
0layer_with_weights-1
0layer-1
1layer_with_weights-2
1layer-2
2layer_with_weights-3
2layer-3
3layer_with_weights-4
3layer-4
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
:layer_with_weights-0
:layer-0
;layer_with_weights-1
;layer-1
<layer_with_weights-2
<layer-2
=layer_with_weights-3
=layer-3
>layer_with_weights-4
>layer-4
?layer_with_weights-5
?layer-5
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
F
_variables
G_iterations
H_learning_rate
I_index_dict
J
_momentums
K_velocities
L_update_step_xla"
experimentalOptimizer
,
Mserving_default"
signature_map
*:(2conv2d_42/kernel
:2conv2d_42/bias
*:(2conv2d_43/kernel
:2conv2d_43/bias
*:(2conv2d_44/kernel
:2conv2d_44/bias
*:( 2conv2d_45/kernel
: 2conv2d_45/bias
*:( @2conv2d_46/kernel
:@2conv2d_46/bias
4:2@@2conv2d_transpose_35/kernel
&:$@2conv2d_transpose_35/bias
4:2 @2conv2d_transpose_36/kernel
&:$ 2conv2d_transpose_36/bias
4:2 2conv2d_transpose_37/kernel
&:$2conv2d_transpose_37/bias
4:22conv2d_transpose_38/kernel
&:$2conv2d_transpose_38/bias
4:22conv2d_transpose_39/kernel
&:$2conv2d_transpose_39/bias
*:(2conv2d_47/kernel
:2conv2d_47/bias
 "
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
'
N0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_denoise_model_7_layer_call_fn_80163input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
/__inference_denoise_model_7_layer_call_fn_80262input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
/__inference_denoise_model_7_layer_call_fn_80462x"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
/__inference_denoise_model_7_layer_call_fn_80511x"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80013input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80063input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80657x"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80803x"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

kernel
bias
 U_jit_compiled_convolution_op"
_tf_keras_layer
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

kernel
bias
 \_jit_compiled_convolution_op"
_tf_keras_layer
�
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

kernel
bias
 c_jit_compiled_convolution_op"
_tf_keras_layer
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

kernel
bias
 j_jit_compiled_convolution_op"
_tf_keras_layer
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

kernel
bias
 q_jit_compiled_convolution_op"
_tf_keras_layer
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
wtrace_0
xtrace_1
ytrace_2
ztrace_32�
-__inference_sequential_14_layer_call_fn_79307
-__inference_sequential_14_layer_call_fn_79361
-__inference_sequential_14_layer_call_fn_80828
-__inference_sequential_14_layer_call_fn_80853�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zwtrace_0zxtrace_1zytrace_2zztrace_3
�
{trace_0
|trace_1
}trace_2
~trace_32�
H__inference_sequential_14_layer_call_and_return_conditional_losses_79223
H__inference_sequential_14_layer_call_and_return_conditional_losses_79252
H__inference_sequential_14_layer_call_and_return_conditional_losses_80892
H__inference_sequential_14_layer_call_and_return_conditional_losses_80931�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z{trace_0z|trace_1z}trace_2z~trace_3
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

 kernel
!bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
v
0
1
2
3
4
5
6
7
8
9
 10
!11"
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
8
9
 10
!11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
-__inference_sequential_15_layer_call_fn_79831
-__inference_sequential_15_layer_call_fn_79894
-__inference_sequential_15_layer_call_fn_80960
-__inference_sequential_15_layer_call_fn_80989�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
H__inference_sequential_15_layer_call_and_return_conditional_losses_79733
H__inference_sequential_15_layer_call_and_return_conditional_losses_79767
H__inference_sequential_15_layer_call_and_return_conditional_losses_81100
H__inference_sequential_15_layer_call_and_return_conditional_losses_81211�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
G0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21"
trackable_list_wrapper
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15
�trace_16
�trace_17
�trace_18
�trace_19
�trace_20
�trace_212�
"__inference__update_step_xla_70685
"__inference__update_step_xla_70690
"__inference__update_step_xla_70695
"__inference__update_step_xla_70700
"__inference__update_step_xla_70705
"__inference__update_step_xla_70710
"__inference__update_step_xla_70715
"__inference__update_step_xla_70720
"__inference__update_step_xla_70725
"__inference__update_step_xla_70730
"__inference__update_step_xla_70735
"__inference__update_step_xla_70740
"__inference__update_step_xla_70745
"__inference__update_step_xla_70750
"__inference__update_step_xla_70755
"__inference__update_step_xla_70760
"__inference__update_step_xla_70765
"__inference__update_step_xla_70770
"__inference__update_step_xla_70775
"__inference__update_step_xla_70780
"__inference__update_step_xla_70785
"__inference__update_step_xla_70790�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5z�trace_6z�trace_7z�trace_8z�trace_9z�trace_10z�trace_11z�trace_12z�trace_13z�trace_14z�trace_15z�trace_16z�trace_17z�trace_18z�trace_19z�trace_20z�trace_21
�B�
#__inference_signature_wrapper_80413input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_42_layer_call_fn_81220�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_42_layer_call_and_return_conditional_losses_81231�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_43_layer_call_fn_81240�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_43_layer_call_and_return_conditional_losses_81251�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_44_layer_call_fn_81260�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_44_layer_call_and_return_conditional_losses_81271�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_45_layer_call_fn_81280�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_45_layer_call_and_return_conditional_losses_81291�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_46_layer_call_fn_81300�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_46_layer_call_and_return_conditional_losses_81311�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
C
/0
01
12
23
34"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_sequential_14_layer_call_fn_79307input_15"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_sequential_14_layer_call_fn_79361input_15"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_sequential_14_layer_call_fn_80828inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_sequential_14_layer_call_fn_80853inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_14_layer_call_and_return_conditional_losses_79223input_15"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_14_layer_call_and_return_conditional_losses_79252input_15"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_14_layer_call_and_return_conditional_losses_80892inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_14_layer_call_and_return_conditional_losses_80931inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_conv2d_transpose_35_layer_call_fn_81320�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_81354�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_conv2d_transpose_36_layer_call_fn_81363�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_conv2d_transpose_36_layer_call_and_return_conditional_losses_81397�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_conv2d_transpose_37_layer_call_fn_81406�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_conv2d_transpose_37_layer_call_and_return_conditional_losses_81440�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_conv2d_transpose_38_layer_call_fn_81449�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_conv2d_transpose_38_layer_call_and_return_conditional_losses_81483�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_conv2d_transpose_39_layer_call_fn_81492�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_conv2d_transpose_39_layer_call_and_return_conditional_losses_81526�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_47_layer_call_fn_81535�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_47_layer_call_and_return_conditional_losses_81546�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
J
:0
;1
<2
=3
>4
?5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_sequential_15_layer_call_fn_79831input_16"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_sequential_15_layer_call_fn_79894input_16"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_sequential_15_layer_call_fn_80960inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_sequential_15_layer_call_fn_80989inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_15_layer_call_and_return_conditional_losses_79733input_16"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_15_layer_call_and_return_conditional_losses_79767input_16"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_15_layer_call_and_return_conditional_losses_81100inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_15_layer_call_and_return_conditional_losses_81211inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/:-2Adam/m/conv2d_42/kernel
/:-2Adam/v/conv2d_42/kernel
!:2Adam/m/conv2d_42/bias
!:2Adam/v/conv2d_42/bias
/:-2Adam/m/conv2d_43/kernel
/:-2Adam/v/conv2d_43/kernel
!:2Adam/m/conv2d_43/bias
!:2Adam/v/conv2d_43/bias
/:-2Adam/m/conv2d_44/kernel
/:-2Adam/v/conv2d_44/kernel
!:2Adam/m/conv2d_44/bias
!:2Adam/v/conv2d_44/bias
/:- 2Adam/m/conv2d_45/kernel
/:- 2Adam/v/conv2d_45/kernel
!: 2Adam/m/conv2d_45/bias
!: 2Adam/v/conv2d_45/bias
/:- @2Adam/m/conv2d_46/kernel
/:- @2Adam/v/conv2d_46/kernel
!:@2Adam/m/conv2d_46/bias
!:@2Adam/v/conv2d_46/bias
9:7@@2!Adam/m/conv2d_transpose_35/kernel
9:7@@2!Adam/v/conv2d_transpose_35/kernel
+:)@2Adam/m/conv2d_transpose_35/bias
+:)@2Adam/v/conv2d_transpose_35/bias
9:7 @2!Adam/m/conv2d_transpose_36/kernel
9:7 @2!Adam/v/conv2d_transpose_36/kernel
+:) 2Adam/m/conv2d_transpose_36/bias
+:) 2Adam/v/conv2d_transpose_36/bias
9:7 2!Adam/m/conv2d_transpose_37/kernel
9:7 2!Adam/v/conv2d_transpose_37/kernel
+:)2Adam/m/conv2d_transpose_37/bias
+:)2Adam/v/conv2d_transpose_37/bias
9:72!Adam/m/conv2d_transpose_38/kernel
9:72!Adam/v/conv2d_transpose_38/kernel
+:)2Adam/m/conv2d_transpose_38/bias
+:)2Adam/v/conv2d_transpose_38/bias
9:72!Adam/m/conv2d_transpose_39/kernel
9:72!Adam/v/conv2d_transpose_39/kernel
+:)2Adam/m/conv2d_transpose_39/bias
+:)2Adam/v/conv2d_transpose_39/bias
/:-2Adam/m/conv2d_47/kernel
/:-2Adam/v/conv2d_47/kernel
!:2Adam/m/conv2d_47/bias
!:2Adam/v/conv2d_47/bias
�B�
"__inference__update_step_xla_70685gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70690gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70695gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70700gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70705gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70710gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70715gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70720gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70725gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70730gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70735gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70740gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70745gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70750gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70755gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70760gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70765gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70770gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70775gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70780gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70785gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_70790gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
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
�B�
)__inference_conv2d_42_layer_call_fn_81220inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_42_layer_call_and_return_conditional_losses_81231inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_43_layer_call_fn_81240inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_43_layer_call_and_return_conditional_losses_81251inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_44_layer_call_fn_81260inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_44_layer_call_and_return_conditional_losses_81271inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_45_layer_call_fn_81280inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_45_layer_call_and_return_conditional_losses_81291inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_46_layer_call_fn_81300inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_46_layer_call_and_return_conditional_losses_81311inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_conv2d_transpose_35_layer_call_fn_81320inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_81354inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_conv2d_transpose_36_layer_call_fn_81363inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_conv2d_transpose_36_layer_call_and_return_conditional_losses_81397inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_conv2d_transpose_37_layer_call_fn_81406inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_conv2d_transpose_37_layer_call_and_return_conditional_losses_81440inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_conv2d_transpose_38_layer_call_fn_81449inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_conv2d_transpose_38_layer_call_and_return_conditional_losses_81483inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_conv2d_transpose_39_layer_call_fn_81492inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_conv2d_transpose_39_layer_call_and_return_conditional_losses_81526inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_47_layer_call_fn_81535inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_47_layer_call_and_return_conditional_losses_81546inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
"__inference__update_step_xla_70685~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��ꅝ�?
� "
 �
"__inference__update_step_xla_70690f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��ԃ��?
� "
 �
"__inference__update_step_xla_70695~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��녝�?
� "
 �
"__inference__update_step_xla_70700f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��ꅝ�?
� "
 �
"__inference__update_step_xla_70705~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��܅��?
� "
 �
"__inference__update_step_xla_70710f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��܅��?
� "
 �
"__inference__update_step_xla_70715~x�u
n�k
!�
gradient 
<�9	%�"
� 
�
p
` VariableSpec 
`��܅��?
� "
 �
"__inference__update_step_xla_70720f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`��܅��?
� "
 �
"__inference__update_step_xla_70725~x�u
n�k
!�
gradient @
<�9	%�"
� @
�
p
` VariableSpec 
`��݅��?
� "
 �
"__inference__update_step_xla_70730f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`��݅��?
� "
 �
"__inference__update_step_xla_70735~x�u
n�k
!�
gradient@@
<�9	%�"
�@@
�
p
` VariableSpec 
`�̄��?
� "
 �
"__inference__update_step_xla_70740f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`��܅��?
� "
 �
"__inference__update_step_xla_70745~x�u
n�k
!�
gradient @
<�9	%�"
� @
�
p
` VariableSpec 
`�̈́��?
� "
 �
"__inference__update_step_xla_70750f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`��܅��?
� "
 �
"__inference__update_step_xla_70755~x�u
n�k
!�
gradient 
<�9	%�"
� 
�
p
` VariableSpec 
`��̈́��?
� "
 �
"__inference__update_step_xla_70760f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��݅��?
� "
 �
"__inference__update_step_xla_70765~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��̈́��?
� "
 �
"__inference__update_step_xla_70770f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�����?
� "
 �
"__inference__update_step_xla_70775~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��̄��?
� "
 �
"__inference__update_step_xla_70780f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��݅��?
� "
 �
"__inference__update_step_xla_70785~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`�����?
� "
 �
"__inference__update_step_xla_70790f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�����?
� "
 �
 __inference__wrapped_model_79133� !:�7
0�-
+�(
input_1�����������
� "=�:
8
output_1,�)
output_1������������
D__inference_conv2d_42_layer_call_and_return_conditional_losses_81231w9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
)__inference_conv2d_42_layer_call_fn_81220l9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
D__inference_conv2d_43_layer_call_and_return_conditional_losses_81251w9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
)__inference_conv2d_43_layer_call_fn_81240l9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
D__inference_conv2d_44_layer_call_and_return_conditional_losses_81271u9�6
/�,
*�'
inputs�����������
� "4�1
*�'
tensor_0���������@@
� �
)__inference_conv2d_44_layer_call_fn_81260j9�6
/�,
*�'
inputs�����������
� ")�&
unknown���������@@�
D__inference_conv2d_45_layer_call_and_return_conditional_losses_81291s7�4
-�*
(�%
inputs���������@@
� "4�1
*�'
tensor_0���������   
� �
)__inference_conv2d_45_layer_call_fn_81280h7�4
-�*
(�%
inputs���������@@
� ")�&
unknown���������   �
D__inference_conv2d_46_layer_call_and_return_conditional_losses_81311s7�4
-�*
(�%
inputs���������   
� "4�1
*�'
tensor_0���������@
� �
)__inference_conv2d_46_layer_call_fn_81300h7�4
-�*
(�%
inputs���������   
� ")�&
unknown���������@�
D__inference_conv2d_47_layer_call_and_return_conditional_losses_81546w !9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
)__inference_conv2d_47_layer_call_fn_81535l !9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
N__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_81354�I�F
?�<
:�7
inputs+���������������������������@
� "F�C
<�9
tensor_0+���������������������������@
� �
3__inference_conv2d_transpose_35_layer_call_fn_81320�I�F
?�<
:�7
inputs+���������������������������@
� ";�8
unknown+���������������������������@�
N__inference_conv2d_transpose_36_layer_call_and_return_conditional_losses_81397�I�F
?�<
:�7
inputs+���������������������������@
� "F�C
<�9
tensor_0+��������������������������� 
� �
3__inference_conv2d_transpose_36_layer_call_fn_81363�I�F
?�<
:�7
inputs+���������������������������@
� ";�8
unknown+��������������������������� �
N__inference_conv2d_transpose_37_layer_call_and_return_conditional_losses_81440�I�F
?�<
:�7
inputs+��������������������������� 
� "F�C
<�9
tensor_0+���������������������������
� �
3__inference_conv2d_transpose_37_layer_call_fn_81406�I�F
?�<
:�7
inputs+��������������������������� 
� ";�8
unknown+����������������������������
N__inference_conv2d_transpose_38_layer_call_and_return_conditional_losses_81483�I�F
?�<
:�7
inputs+���������������������������
� "F�C
<�9
tensor_0+���������������������������
� �
3__inference_conv2d_transpose_38_layer_call_fn_81449�I�F
?�<
:�7
inputs+���������������������������
� ";�8
unknown+����������������������������
N__inference_conv2d_transpose_39_layer_call_and_return_conditional_losses_81526�I�F
?�<
:�7
inputs+���������������������������
� "F�C
<�9
tensor_0+���������������������������
� �
3__inference_conv2d_transpose_39_layer_call_fn_81492�I�F
?�<
:�7
inputs+���������������������������
� ";�8
unknown+����������������������������
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80013� !J�G
0�-
+�(
input_1�����������
�

trainingp"6�3
,�)
tensor_0�����������
� �
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80063� !J�G
0�-
+�(
input_1�����������
�

trainingp "6�3
,�)
tensor_0�����������
� �
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80657� !D�A
*�'
%�"
x�����������
�

trainingp"6�3
,�)
tensor_0�����������
� �
J__inference_denoise_model_7_layer_call_and_return_conditional_losses_80803� !D�A
*�'
%�"
x�����������
�

trainingp "6�3
,�)
tensor_0�����������
� �
/__inference_denoise_model_7_layer_call_fn_80163� !J�G
0�-
+�(
input_1�����������
�

trainingp"+�(
unknown������������
/__inference_denoise_model_7_layer_call_fn_80262� !J�G
0�-
+�(
input_1�����������
�

trainingp "+�(
unknown������������
/__inference_denoise_model_7_layer_call_fn_80462� !D�A
*�'
%�"
x�����������
�

trainingp"+�(
unknown������������
/__inference_denoise_model_7_layer_call_fn_80511� !D�A
*�'
%�"
x�����������
�

trainingp "+�(
unknown������������
H__inference_sequential_14_layer_call_and_return_conditional_losses_79223�
C�@
9�6
,�)
input_15�����������
p

 
� "4�1
*�'
tensor_0���������@
� �
H__inference_sequential_14_layer_call_and_return_conditional_losses_79252�
C�@
9�6
,�)
input_15�����������
p 

 
� "4�1
*�'
tensor_0���������@
� �
H__inference_sequential_14_layer_call_and_return_conditional_losses_80892�
A�>
7�4
*�'
inputs�����������
p

 
� "4�1
*�'
tensor_0���������@
� �
H__inference_sequential_14_layer_call_and_return_conditional_losses_80931�
A�>
7�4
*�'
inputs�����������
p 

 
� "4�1
*�'
tensor_0���������@
� �
-__inference_sequential_14_layer_call_fn_79307|
C�@
9�6
,�)
input_15�����������
p

 
� ")�&
unknown���������@�
-__inference_sequential_14_layer_call_fn_79361|
C�@
9�6
,�)
input_15�����������
p 

 
� ")�&
unknown���������@�
-__inference_sequential_14_layer_call_fn_80828z
A�>
7�4
*�'
inputs�����������
p

 
� ")�&
unknown���������@�
-__inference_sequential_14_layer_call_fn_80853z
A�>
7�4
*�'
inputs�����������
p 

 
� ")�&
unknown���������@�
H__inference_sequential_15_layer_call_and_return_conditional_losses_79733� !A�>
7�4
*�'
input_16���������@
p

 
� "6�3
,�)
tensor_0�����������
� �
H__inference_sequential_15_layer_call_and_return_conditional_losses_79767� !A�>
7�4
*�'
input_16���������@
p 

 
� "6�3
,�)
tensor_0�����������
� �
H__inference_sequential_15_layer_call_and_return_conditional_losses_81100� !?�<
5�2
(�%
inputs���������@
p

 
� "6�3
,�)
tensor_0�����������
� �
H__inference_sequential_15_layer_call_and_return_conditional_losses_81211� !?�<
5�2
(�%
inputs���������@
p 

 
� "6�3
,�)
tensor_0�����������
� �
-__inference_sequential_15_layer_call_fn_79831~ !A�>
7�4
*�'
input_16���������@
p

 
� "+�(
unknown������������
-__inference_sequential_15_layer_call_fn_79894~ !A�>
7�4
*�'
input_16���������@
p 

 
� "+�(
unknown������������
-__inference_sequential_15_layer_call_fn_80960| !?�<
5�2
(�%
inputs���������@
p

 
� "+�(
unknown������������
-__inference_sequential_15_layer_call_fn_80989| !?�<
5�2
(�%
inputs���������@
p 

 
� "+�(
unknown������������
#__inference_signature_wrapper_80413� !E�B
� 
;�8
6
input_1+�(
input_1�����������"=�:
8
output_1,�)
output_1�����������