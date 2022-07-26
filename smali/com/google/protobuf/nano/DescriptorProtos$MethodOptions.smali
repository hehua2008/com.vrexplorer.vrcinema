.class public final Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;


# instance fields
.field public clientLogging:Ljava/lang/Integer;

.field public clientStreaming:Ljava/lang/Boolean;

.field public deadline:Ljava/lang/Double;

.field public deprecated:Ljava/lang/Boolean;

.field public duplicateSuppression:Ljava/lang/Boolean;

.field public endUserCredsRequested:Ljava/lang/Boolean;

.field public failFast:Ljava/lang/Boolean;

.field public goLegacyChannelApi:Ljava/lang/Boolean;

.field public legacyClientInitialTokens:Ljava/lang/Long;

.field public legacyResultType:Ljava/lang/String;

.field public legacyServerInitialTokens:Ljava/lang/Long;

.field public legacyStreamType:Ljava/lang/String;

.field public legacyTokenUnit:I

.field public logLevel:I

.field public protocol:I

.field public requestFormat:I

.field public responseFormat:I

.field public securityLabel:Ljava/lang/String;

.field public securityLevel:I

.field public serverLogging:Ljava/lang/Integer;

.field public serverStreaming:Ljava/lang/Boolean;

.field public streamType:Ljava/lang/String;

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:Ljava/lang/Double;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:Ljava/lang/Integer;

    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:Ljava/lang/Long;

    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->cachedSize:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 2

    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    const/high16 v4, -0x80000000

    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    if-eq v1, v4, :cond_0

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:Ljava/lang/Double;

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    if-eq v1, v4, :cond_6

    const/16 v1, 0xd

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    if-eq v1, v4, :cond_7

    const/16 v1, 0xf

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    if-eq v1, v4, :cond_8

    const/16 v1, 0x11

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    if-eqz v1, :cond_a

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    if-eqz v1, :cond_d

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:Ljava/lang/Long;

    if-eqz v1, :cond_f

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:Ljava/lang/Long;

    if-eqz v1, :cond_10

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    if-eq v1, v4, :cond_12

    const/16 v1, 0x1b

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    if-eq v1, v4, :cond_13

    const/16 v1, 0x1c

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Ljava/lang/Boolean;

    if-eqz v1, :cond_15

    const/16 v1, 0x21

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    if-lez v1, :cond_18

    const/4 v1, 0x0

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v0, v2, :cond_17

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v2, v2, v0

    if-eqz v2, :cond_16

    const/16 v3, 0x3e7

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_17
    move v0, v1

    :cond_18
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:Ljava/lang/Double;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    :pswitch_3
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_4
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_0

    :pswitch_5
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_17
    const/16 v0, 0x1f3a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

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
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x38 -> :sswitch_1
        0x41 -> :sswitch_2
        0x48 -> :sswitch_3
        0x50 -> :sswitch_4
        0x58 -> :sswitch_5
        0x60 -> :sswitch_6
        0x68 -> :sswitch_7
        0x78 -> :sswitch_8
        0x88 -> :sswitch_9
        0x92 -> :sswitch_a
        0x9a -> :sswitch_b
        0xa0 -> :sswitch_c
        0xa8 -> :sswitch_d
        0xb2 -> :sswitch_e
        0xba -> :sswitch_f
        0xc0 -> :sswitch_10
        0xc8 -> :sswitch_11
        0xd0 -> :sswitch_12
        0xd8 -> :sswitch_13
        0xe0 -> :sswitch_14
        0xe8 -> :sswitch_15
        0x108 -> :sswitch_16
        0x1f3a -> :sswitch_17
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    const/high16 v4, -0x80000000

    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    if-eq v0, v4, :cond_0

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:Ljava/lang/Double;

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32(II)V

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32(II)V

    :cond_5
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    if-eq v0, v4, :cond_6

    const/16 v0, 0xd

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_6
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    if-eq v0, v4, :cond_7

    const/16 v0, 0xf

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    if-eq v0, v4, :cond_8

    const/16 v0, 0x11

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    if-eqz v0, :cond_9

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    if-eqz v0, :cond_d

    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:Ljava/lang/Long;

    if-eqz v0, :cond_f

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:Ljava/lang/Long;

    if-eqz v0, :cond_10

    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_11
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    if-eq v0, v4, :cond_12

    const/16 v0, 0x1b

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_12
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    if-eq v0, v4, :cond_13

    const/16 v0, 0x1c

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_13
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    const/16 v0, 0x21

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_15
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v0, v0

    if-lez v0, :cond_17

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v1, v1, v0

    if-eqz v1, :cond_16

    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_17
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
