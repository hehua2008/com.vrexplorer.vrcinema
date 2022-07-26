.class public final Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;


# instance fields
.field public deprecated:Ljava/lang/Boolean;

.field public experimentalJavaBuilderInterface:[Ljava/lang/String;

.field public experimentalJavaInterfaceExtends:[Ljava/lang/String;

.field public experimentalJavaMessageInterface:[Ljava/lang/String;

.field public javaliteSerializable:Ljava/lang/Boolean;

.field public mapEntry:Ljava/lang/Boolean;

.field public messageSetWireFormat:Ljava/lang/Boolean;

.field public noStandardDescriptorAccessor:Ljava/lang/Boolean;

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->javaliteSerializable:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->cachedSize:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 2

    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v0, v3

    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_7

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    add-int/2addr v0, v3

    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_b

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_a

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_9

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    add-int/2addr v0, v3

    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->javaliteSerializable:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->javaliteSerializable:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    if-lez v1, :cond_f

    :goto_3
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    if-ge v2, v1, :cond_f

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v1, v1, v2

    if-eqz v1, :cond_e

    const/16 v3, 0x3e7

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->javaliteSerializable:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x1f3a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v0, :cond_b

    move v0, v1

    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v0, v0

    goto :goto_7

    :cond_c
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x1f3a -> :sswitch_9
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->javaliteSerializable:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->javaliteSerializable:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v0, v0

    if-lez v0, :cond_c

    :goto_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v0, v0

    if-ge v1, v0, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v0, v1

    if-eqz v0, :cond_b

    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
