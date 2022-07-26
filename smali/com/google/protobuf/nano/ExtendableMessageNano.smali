.class public abstract Lcom/google/protobuf/nano/ExtendableMessageNano;
.super Lcom/google/protobuf/nano/MessageNano;


# instance fields
.field protected unknownFieldData:Lcom/google/protobuf/nano/FieldArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/ExtendableMessageNano;

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/InternalNano;->cloneUnknownFieldData(Lcom/google/protobuf/nano/ExtendableMessageNano;Lcom/google/protobuf/nano/ExtendableMessageNano;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/nano/FieldArray;->dataAt(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public final getExtension(Lcom/google/protobuf/nano/Extension;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget v2, p1, Lcom/google/protobuf/nano/Extension;->tag:I

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->get(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/protobuf/nano/FieldData;->getValue(Lcom/google/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getUnknownFieldArray()Lcom/google/protobuf/nano/FieldArray;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    return-object v0
.end method

.method public final hasExtension(Lcom/google/protobuf/nano/Extension;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget v2, p1, Lcom/google/protobuf/nano/Extension;->tag:I

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->get(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setExtension(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Lcom/google/protobuf/nano/Extension;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v1

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/nano/FieldArray;->remove(I)V

    iget-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/protobuf/nano/FieldArray;

    invoke-direct {v2}, Lcom/google/protobuf/nano/FieldArray;-><init>()V

    iput-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    new-instance v2, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v2, p1, p2}, Lcom/google/protobuf/nano/FieldData;-><init>(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/FieldArray;->put(ILcom/google/protobuf/nano/FieldData;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/FieldArray;->get(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/nano/FieldData;->setValue(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/protobuf/nano/UnknownFieldData;

    invoke-direct {v2, p2, v0}, Lcom/google/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/protobuf/nano/FieldArray;

    invoke-direct {v3}, Lcom/google/protobuf/nano/FieldArray;-><init>()V

    iput-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    iget-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3, v1, v0}, Lcom/google/protobuf/nano/FieldArray;->put(ILcom/google/protobuf/nano/FieldData;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/protobuf/nano/FieldData;->addUnknownField(Lcom/google/protobuf/nano/UnknownFieldData;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/FieldArray;->get(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    goto :goto_1
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/nano/FieldArray;->dataAt(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/nano/FieldData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
