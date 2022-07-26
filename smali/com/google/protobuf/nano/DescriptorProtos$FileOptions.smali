.class public final Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;


# instance fields
.field public ccApiCompatibility:I

.field public ccApiVersion:Ljava/lang/Integer;

.field public ccDeprecatedMapsImplementation:Ljava/lang/Boolean;

.field public ccEnableArenas:Ljava/lang/Boolean;

.field public ccGenericServices:Ljava/lang/Boolean;

.field public ccProto1TextFormat:Ljava/lang/Boolean;

.field public ccProtoArrayCompatible:Ljava/lang/Boolean;

.field public ccUtf8Verification:Ljava/lang/Boolean;

.field public csharpNamespace:Ljava/lang/String;

.field public deprecated:Ljava/lang/Boolean;

.field public goPackage:Ljava/lang/String;

.field public javaAltApiPackage:Ljava/lang/String;

.field public javaApiVersion:Ljava/lang/Integer;

.field public javaEnableDualGenerateMutableApi:Ljava/lang/Boolean;

.field public javaEnableMapsForProto2:Ljava/lang/Boolean;

.field public javaGenerateEqualsAndHash:Ljava/lang/Boolean;

.field public javaGenerateRpcBaseimpl:Ljava/lang/Boolean;

.field public javaGenericServices:Ljava/lang/Boolean;

.field public javaJava5Enums:Ljava/lang/Boolean;

.field public javaMultipleFiles:Ljava/lang/Boolean;

.field public javaMultipleFilesMutablePackage:Ljava/lang/String;

.field public javaMutableApi:Ljava/lang/Boolean;

.field public javaOuterClassname:Ljava/lang/String;

.field public javaPackage:Ljava/lang/String;

.field public javaStringCheckUtf8:Ljava/lang/Boolean;

.field public javaUseJavaproto2:Ljava/lang/Boolean;

.field public javaUseJavastrings:Ljava/lang/Boolean;

.field public javascriptPackage:Ljava/lang/String;

.field public objcClassPrefix:Ljava/lang/String;

.field public optimizeFor:I

.field public pyApiVersion:Ljava/lang/Integer;

.field public pyGenericServices:Ljava/lang/Boolean;

.field public szlApiVersion:Ljava/lang/Integer;

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:Ljava/lang/Integer;

    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiCompatibility:I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProtoArrayCompatible:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProto1TextFormat:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableMapsForProto2:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccDeprecatedMapsImplementation:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->cachedSize:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
    .locals 2

    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    const/high16 v3, -0x80000000

    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    if-eq v1, v3, :cond_7

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    if-eqz v1, :cond_a

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiCompatibility:I

    if-eq v1, v3, :cond_d

    const/16 v1, 0xf

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiCompatibility:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    if-eqz v1, :cond_11

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash:Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProtoArrayCompatible:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProtoArrayCompatible:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Ljava/lang/Boolean;

    if-eqz v1, :cond_15

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Ljava/lang/Boolean;

    if-eqz v1, :cond_16

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProto1TextFormat:Ljava/lang/Boolean;

    if-eqz v1, :cond_17

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProto1TextFormat:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Ljava/lang/Boolean;

    if-eqz v1, :cond_18

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Ljava/lang/Boolean;

    if-eqz v1, :cond_19

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Ljava/lang/Boolean;

    if-eqz v1, :cond_1a

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    if-eqz v1, :cond_1b

    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Ljava/lang/Boolean;

    if-eqz v1, :cond_1c

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableMapsForProto2:Ljava/lang/Boolean;

    if-eqz v1, :cond_1d

    const/16 v1, 0x22

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableMapsForProto2:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1d
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccDeprecatedMapsImplementation:Ljava/lang/Boolean;

    if-eqz v1, :cond_1e

    const/16 v1, 0x23

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccDeprecatedMapsImplementation:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    if-eqz v1, :cond_1f

    const/16 v1, 0x24

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    if-eqz v1, :cond_20

    const/16 v1, 0x25

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    if-lez v1, :cond_23

    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v0, v2, :cond_22

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v2, v2, v0

    if-eqz v2, :cond_21

    const/16 v3, 0x3e7

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_22
    move v0, v1

    :cond_23
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_f
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiCompatibility:I

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProtoArrayCompatible:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProto1TextFormat:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableMapsForProto2:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccDeprecatedMapsImplementation:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_23
    const/16 v0, 0x1f3a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
        0x42 -> :sswitch_7
        0x48 -> :sswitch_8
        0x50 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x68 -> :sswitch_c
        0x70 -> :sswitch_d
        0x78 -> :sswitch_e
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
        0x90 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xb0 -> :sswitch_16
        0xb8 -> :sswitch_17
        0xc0 -> :sswitch_18
        0xc8 -> :sswitch_19
        0xd0 -> :sswitch_1a
        0xd8 -> :sswitch_1b
        0xe0 -> :sswitch_1c
        0xea -> :sswitch_1d
        0xf8 -> :sswitch_1e
        0x110 -> :sswitch_1f
        0x118 -> :sswitch_20
        0x122 -> :sswitch_21
        0x12a -> :sswitch_22
        0x1f3a -> :sswitch_23
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_f
        0x32 -> :sswitch_f
        0x64 -> :sswitch_f
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    const/high16 v2, -0x80000000

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    if-eq v0, v2, :cond_7

    const/16 v0, 0x9

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_c
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiCompatibility:I

    if-eq v0, v2, :cond_d

    const/16 v0, 0xf

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiCompatibility:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    if-eqz v0, :cond_11

    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash:Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_13
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProtoArrayCompatible:Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProtoArrayCompatible:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_15
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_16
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProto1TextFormat:Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProto1TextFormat:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_17
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_18
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_19
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1a
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    if-eqz v0, :cond_1b

    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1c
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableMapsForProto2:Ljava/lang/Boolean;

    if-eqz v0, :cond_1d

    const/16 v0, 0x22

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableMapsForProto2:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1d
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccDeprecatedMapsImplementation:Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    const/16 v0, 0x23

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccDeprecatedMapsImplementation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    if-eqz v0, :cond_1f

    const/16 v0, 0x24

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    if-eqz v0, :cond_20

    const/16 v0, 0x25

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v0, v0

    if-lez v0, :cond_22

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v1, v1, v0

    if-eqz v1, :cond_21

    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_22
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
