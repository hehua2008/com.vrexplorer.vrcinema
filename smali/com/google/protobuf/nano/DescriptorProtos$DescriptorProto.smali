.class public final Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;


# instance fields
.field public enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

.field public extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

.field public extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

.field public field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

.field public name:Ljava/lang/String;

.field public nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

.field public oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

.field public reservedName:[Ljava/lang/String;

.field public reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->cachedSize:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .locals 2

    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

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
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v0

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    aget-object v3, v3, v0

    if-eqz v3, :cond_7

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v2

    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    array-length v2, v2

    if-lez v2, :cond_c

    move v2, v0

    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    array-length v3, v3

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    aget-object v3, v3, v0

    if-eqz v3, :cond_a

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    move v0, v2

    :cond_c
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_f

    move v2, v0

    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v3, v3

    if-ge v0, v3, :cond_e

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    aget-object v3, v3, v0

    if-eqz v3, :cond_d

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    move v0, v2

    :cond_f
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-eqz v2, :cond_10

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_10
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_13

    move v2, v0

    move v0, v1

    :goto_5
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    array-length v3, v3

    if-ge v0, v3, :cond_12

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    aget-object v3, v3, v0

    if-eqz v3, :cond_11

    const/16 v4, 0x8

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_12
    move v0, v2

    :cond_13
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    array-length v2, v2

    if-lez v2, :cond_16

    move v2, v0

    move v0, v1

    :goto_6
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    array-length v3, v3

    if-ge v0, v3, :cond_15

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    aget-object v3, v3, v0

    if-eqz v3, :cond_14

    const/16 v4, 0x9

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    move v0, v2

    :cond_16
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_19

    move v2, v1

    move v3, v1

    :goto_7
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_18

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_17

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_18
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_19
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
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

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v0, v0

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-nez v0, :cond_b

    move v0, v1

    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    array-length v0, v0

    goto :goto_7

    :cond_c
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-nez v0, :cond_e

    move v0, v1

    :goto_9
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_d

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_f

    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v0, v0

    goto :goto_9

    :cond_f
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x42

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    if-nez v0, :cond_12

    move v0, v1

    :goto_b
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    if-eqz v0, :cond_11

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_c
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_13

    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    array-length v0, v0

    goto :goto_b

    :cond_13
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    if-nez v0, :cond_15

    move v0, v1

    :goto_d
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    if-eqz v0, :cond_14

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_e
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_16

    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_15
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    array-length v0, v0

    goto :goto_d

    :cond_16
    new-instance v3, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-direct {v3}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x52

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    if-nez v0, :cond_18

    move v0, v1

    :goto_f
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    :goto_10
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_19

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_18
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_f

    :cond_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v0, v0

    if-lez v0, :cond_a

    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    aget-object v2, v2, v0

    if-eqz v2, :cond_9

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-eqz v0, :cond_b

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    array-length v0, v0

    if-lez v0, :cond_d

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    array-length v2, v2

    if-ge v0, v2, :cond_d

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    aget-object v2, v2, v0

    if-eqz v2, :cond_c

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    array-length v0, v0

    if-lez v0, :cond_f

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    array-length v2, v2

    if-ge v0, v2, :cond_f

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    aget-object v2, v2, v0

    if-eqz v2, :cond_e

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_11

    :goto_7
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_11

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_10

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
