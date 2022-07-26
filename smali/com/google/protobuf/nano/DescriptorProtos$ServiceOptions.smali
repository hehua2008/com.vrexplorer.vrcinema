.class public final Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;


# instance fields
.field public deprecated:Ljava/lang/Boolean;

.field public failureDetectionDelay:Ljava/lang/Double;

.field public multicastStub:Ljava/lang/Boolean;

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->multicastStub:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->failureDetectionDelay:Ljava/lang/Double;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->deprecated:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->cachedSize:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;
    .locals 2

    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->failureDetectionDelay:Ljava/lang/Double;

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->failureDetectionDelay:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->multicastStub:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->multicastStub:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->deprecated:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/16 v1, 0x21

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/16 v3, 0x3e7

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->failureDetectionDelay:Ljava/lang/Double;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->multicastStub:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->deprecated:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x1f3a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

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
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x81 -> :sswitch_1
        0xa0 -> :sswitch_2
        0x108 -> :sswitch_3
        0x1f3a -> :sswitch_4
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->failureDetectionDelay:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->failureDetectionDelay:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->multicastStub:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->multicastStub:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->deprecated:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/16 v0, 0x21

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
