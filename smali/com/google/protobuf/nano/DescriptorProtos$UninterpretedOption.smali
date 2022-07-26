.class public final Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# instance fields
.field public aggregateValue:Ljava/lang/String;

.field public doubleValue:Ljava/lang/Double;

.field public identifierValue:Ljava/lang/String;

.field public name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

.field public negativeIntValue:Ljava/lang/Long;

.field public positiveIntValue:Ljava/lang/Long;

.field public stringValue:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:Ljava/lang/Double;

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->cachedSize:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .locals 2

    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:Ljava/lang/Double;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    return v1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
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
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:Ljava/lang/Long;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:Ljava/lang/Double;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x31 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:Ljava/lang/Double;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
