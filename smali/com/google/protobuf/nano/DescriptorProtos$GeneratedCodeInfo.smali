.class public final Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;


# instance fields
.field public annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->cachedSize:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;
    .locals 2

    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;
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
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
