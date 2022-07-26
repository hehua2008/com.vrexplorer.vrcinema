.class public final Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;


# instance fields
.field public leadingComments:Ljava/lang/String;

.field public leadingDetachedComments:[Ljava/lang/String;

.field public path:[I

.field public span:[I

.field public trailingComments:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->cachedSize:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 2

    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    aget v4, v4, v0

    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int v0, v3, v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v1

    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_7
    return v0

    :cond_8
    move v0, v3

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 5

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
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    if-nez v2, :cond_6

    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v2, v2

    goto :goto_4

    :cond_7
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-nez v0, :cond_9

    move v0, v1

    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v0, v0

    goto :goto_6

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v0, v1

    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-nez v2, :cond_d

    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_c

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_a
    array-length v4, v0

    if-ge v2, v4, :cond_e

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_d
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v2, v2

    goto :goto_9

    :cond_e
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_b
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_c
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_11

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_b

    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x1a -> :sswitch_5
        0x22 -> :sswitch_6
        0x32 -> :sswitch_7
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    :goto_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
