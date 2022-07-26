.class public Lcom/google/protobuf/nano/Extension;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_BOOL:I = 0x8

.field public static final TYPE_BYTES:I = 0xc

.field public static final TYPE_DOUBLE:I = 0x1

.field public static final TYPE_ENUM:I = 0xe

.field public static final TYPE_FIXED32:I = 0x7

.field public static final TYPE_FIXED64:I = 0x6

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_GROUP:I = 0xa

.field public static final TYPE_INT32:I = 0x5

.field public static final TYPE_INT64:I = 0x3

.field public static final TYPE_MESSAGE:I = 0xb

.field public static final TYPE_SFIXED32:I = 0xf

.field public static final TYPE_SFIXED64:I = 0x10

.field public static final TYPE_SINT32:I = 0x11

.field public static final TYPE_SINT64:I = 0x12

.field public static final TYPE_STRING:I = 0x9

.field public static final TYPE_UINT32:I = 0xd

.field public static final TYPE_UINT64:I = 0x4


# instance fields
.field protected final clazz:Ljava/lang/Class;

.field protected final repeated:Z

.field public final tag:I

.field protected final type:I


# direct methods
.method private constructor <init>(ILjava/lang/Class;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/protobuf/nano/Extension;->type:I

    iput-object p2, p0, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iput p3, p0, Lcom/google/protobuf/nano/Extension;->tag:I

    iput-boolean p4, p0, Lcom/google/protobuf/nano/Extension;->repeated:Z

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Class;IZLcom/google/protobuf/nano/Extension$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-void
.end method

.method public static createMessageTyped(ILjava/lang/Class;I)Lcom/google/protobuf/nano/Extension;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/protobuf/nano/Extension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static createMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;
    .locals 4

    new-instance v0, Lcom/google/protobuf/nano/Extension;

    long-to-int v1, p2

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;
    .locals 8

    const/4 v4, 0x0

    new-instance v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;

    long-to-int v3, p2

    move v1, p0

    move-object v2, p1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;-><init>(ILjava/lang/Class;IZII)V

    return-object v0
.end method

.method public static createRepeatedMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;
    .locals 4

    new-instance v0, Lcom/google/protobuf/nano/Extension;

    long-to-int v1, p2

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static createRepeatedPrimitiveTyped(ILjava/lang/Class;JJJ)Lcom/google/protobuf/nano/Extension;
    .locals 8

    new-instance v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;

    long-to-int v3, p2

    const/4 v4, 0x1

    long-to-int v5, p4

    long-to-int v6, p6

    move v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;-><init>(ILjava/lang/Class;IZII)V

    return-object v0
.end method

.method private getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .locals 5

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    iget-object v4, v0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v4, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v3}, Lcom/google/protobuf/nano/Extension;->readDataInto(Lcom/google/protobuf/nano/UnknownFieldData;Ljava/util/List;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :cond_2
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iget-object v4, p0, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v2, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    iget-object v1, p0, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/Extension;->readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method computeSerializedSize(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method protected computeSingularSerializedSize(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/nano/Extension;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/nano/Extension;->type:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension;->type:I

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

    :pswitch_0
    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/protobuf/nano/Extension;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/protobuf/nano/Extension;

    iget v2, p0, Lcom/google/protobuf/nano/Extension;->type:I

    iget v3, p1, Lcom/google/protobuf/nano/Extension;->type:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/protobuf/nano/Extension;->tag:I

    iget v3, p1, Lcom/google/protobuf/nano/Extension;->tag:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/protobuf/nano/Extension;->repeated:Z

    iget-boolean v3, p1, Lcom/google/protobuf/nano/Extension;->repeated:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method final getValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/Extension;->getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/Extension;->getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/nano/Extension;->type:I

    add-int/lit16 v0, v0, 0x47b

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/protobuf/nano/Extension;->tag:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .locals 5

    iget-boolean v0, p0, Lcom/google/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/google/protobuf/nano/Extension;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v2, p0, Lcom/google/protobuf/nano/Extension;->type:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    move-object v1, v0

    goto :goto_0

    :pswitch_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    iget v2, p0, Lcom/google/protobuf/nano/Extension;->tag:I

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/protobuf/nano/MessageNano;I)V

    :goto_1
    return-object v0

    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected readDataInto(Lcom/google/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .locals 1

    iget-object v0, p1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/Extension;->readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected writeRepeatedData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected writeSingularData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/google/protobuf/nano/Extension;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    iget v0, p0, Lcom/google/protobuf/nano/Extension;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension;->type:I

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

    :pswitch_0
    :try_start_1
    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    iget v0, p0, Lcom/google/protobuf/nano/Extension;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Lcom/google/protobuf/nano/MessageNano;)V

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/google/protobuf/nano/MessageNano;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method writeTo(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_0
.end method
