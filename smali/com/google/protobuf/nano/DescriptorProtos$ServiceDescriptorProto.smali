.class public final Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;


# instance fields
.field public method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

.field public stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->cachedSize:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .locals 2

    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_6

    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
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

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    array-length v0, v0

    goto :goto_3

    :cond_7
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    array-length v0, v0

    if-lez v0, :cond_5

    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
