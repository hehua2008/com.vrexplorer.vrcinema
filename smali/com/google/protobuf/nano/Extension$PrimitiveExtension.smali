.class Lcom/google/protobuf/nano/Extension$PrimitiveExtension;
.super Lcom/google/protobuf/nano/Extension;


# instance fields
.field private final nonPackedTag:I

.field private final packedTag:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;IZII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZLcom/google/protobuf/nano/Extension$1;)V

    iput p5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    iput p6, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    return-void
.end method

.method private computePackedDataSize(Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected non-packable type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    shl-int/lit8 v0, v0, 0x2

    :goto_0
    :pswitch_2
    return v0

    :pswitch_3
    shl-int/lit8 v0, v0, 0x3

    goto :goto_0

    :pswitch_4
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_0

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_3

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_4

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_4

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_5

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_9
    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_5

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_6

    :cond_5
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_6

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_7

    :cond_6
    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_a
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .locals 6

    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/google/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x7c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected repeated extension tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", unequal to both non-packed variant "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final computeSingularSerializedSize(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v0

    :goto_0
    return v0

    :pswitch_2
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v0

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v0

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v0

    goto :goto_0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    goto :goto_0

    :pswitch_6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v0

    goto :goto_0

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v0

    goto :goto_0

    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    goto :goto_0

    :pswitch_9
    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_a
    check-cast p1, [B

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v0

    goto :goto_0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v0

    goto :goto_0

    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    move-result v0

    goto :goto_0

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v0

    goto :goto_0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64Size(IJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v0

    goto/16 :goto_0

    :pswitch_10
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    move-result v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected readDataInto(Lcom/google/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .locals 3

    iget v0, p1, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected writeRepeatedData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v1, v2, :cond_1

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v1, v2, :cond_2

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v2

    :try_start_0
    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {p2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unpackable type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    :pswitch_1
    if-ge v0, v1, :cond_0

    :try_start_1
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    :pswitch_2
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :goto_2
    :pswitch_3
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :goto_3
    :pswitch_4
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :goto_4
    :pswitch_5
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :goto_5
    :pswitch_6
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :goto_6
    :pswitch_7
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :goto_7
    :pswitch_8
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :goto_8
    :pswitch_9
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :goto_9
    :pswitch_a
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :goto_a
    :pswitch_b
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :goto_b
    :pswitch_c
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :goto_c
    :pswitch_d
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :goto_d
    :pswitch_e
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x7c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected repeated extension tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", unequal to both non-packed variant "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_d
        :pswitch_8
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_e
        :pswitch_3
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method protected final writeSingularData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    iget v0, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_1
    :try_start_1
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    :goto_0
    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    goto :goto_0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    goto :goto_0

    :pswitch_6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    goto :goto_0

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    goto :goto_0

    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    goto :goto_0

    :pswitch_9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    check-cast p1, [B

    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    goto :goto_0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    goto :goto_0

    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    goto :goto_0

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    goto :goto_0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    goto :goto_0

    :pswitch_f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    goto/16 :goto_0

    :pswitch_10
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
