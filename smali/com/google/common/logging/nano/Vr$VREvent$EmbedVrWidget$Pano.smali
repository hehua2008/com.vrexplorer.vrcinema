.class public final Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private heightPixels:Ljava/lang/Integer;

.field private stereoFormat:Ljava/lang/Integer;

.field private widthPixels:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5353
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6358
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->widthPixels:Ljava/lang/Integer;

    .line 6359
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->heightPixels:Ljava/lang/Integer;

    .line 6360
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6361
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->cachedSize:I

    .line 5355
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;
    .locals 2

    .prologue
    .line 5368
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5372
    return-object v0

    .line 5369
    :catch_0
    move-exception v0

    .line 5370
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
    .line 5325
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

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
    .line 5325
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

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
    .line 5325
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 5393
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5394
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->widthPixels:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 5395
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->widthPixels:Ljava/lang/Integer;

    .line 5396
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5398
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->heightPixels:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 5399
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->heightPixels:Ljava/lang/Integer;

    .line 5400
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5402
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->stereoFormat:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 5403
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->stereoFormat:Ljava/lang/Integer;

    .line 5404
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5406
    :cond_2
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
    .line 5325
    .line 6414
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6415
    sparse-switch v0, :sswitch_data_0

    .line 6419
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6420
    :sswitch_0
    return-object p0

    .line 6425
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->widthPixels:Ljava/lang/Integer;

    goto :goto_0

    .line 6429
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->heightPixels:Ljava/lang/Integer;

    goto :goto_0

    .line 6433
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 6434
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6438
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->stereoFormat:Ljava/lang/Integer;

    goto :goto_0

    .line 6415
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 6434
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
    .line 5379
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->widthPixels:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 5380
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->widthPixels:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5382
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->heightPixels:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 5383
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->heightPixels:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5385
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->stereoFormat:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 5386
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->stereoFormat:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5388
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5389
    return-void
.end method
