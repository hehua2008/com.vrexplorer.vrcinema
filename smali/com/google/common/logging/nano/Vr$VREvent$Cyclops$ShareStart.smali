.class public final Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private numPhotos:Ljava/lang/Integer;

.field private originScreen:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1526
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2531
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->numPhotos:Ljava/lang/Integer;

    .line 2532
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2533
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->cachedSize:I

    .line 1528
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;
    .locals 2

    .prologue
    .line 1540
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    return-object v0

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1494
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1494
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1494
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 1562
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1563
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->originScreen:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1564
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->originScreen:Ljava/lang/Integer;

    .line 1565
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1567
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->numPhotos:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1568
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->numPhotos:Ljava/lang/Integer;

    .line 1569
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1571
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1494
    .line 2579
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2580
    sparse-switch v0, :sswitch_data_0

    .line 2584
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2585
    :sswitch_0
    return-object p0

    .line 2590
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 2591
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2595
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->originScreen:Ljava/lang/Integer;

    goto :goto_0

    .line 2601
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->numPhotos:Ljava/lang/Integer;

    goto :goto_0

    .line 2580
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 2591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->originScreen:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1552
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->originScreen:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->numPhotos:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1555
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->numPhotos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1557
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1558
    return-void
.end method
