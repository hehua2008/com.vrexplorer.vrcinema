.class public final Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;


# instance fields
.field public clientStreaming:Ljava/lang/Boolean;

.field public inputType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

.field public outputType:Ljava/lang/String;

.field public serverStreaming:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->inputType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->outputType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->clientStreaming:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->serverStreaming:Ljava/lang/Boolean;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->cachedSize:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    .locals 2

    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->inputType:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->inputType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->outputType:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->outputType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->clientStreaming:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->clientStreaming:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->serverStreaming:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->serverStreaming:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    .locals 1

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

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->inputType:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->outputType:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->clientStreaming:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->serverStreaming:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->inputType:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->inputType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->outputType:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->outputType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->clientStreaming:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->clientStreaming:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->serverStreaming:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->serverStreaming:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
