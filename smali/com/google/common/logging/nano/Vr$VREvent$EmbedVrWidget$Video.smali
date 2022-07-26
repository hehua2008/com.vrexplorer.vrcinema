.class public final Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private heightPixels:Ljava/lang/Integer;

.field private stereoFormat:Ljava/lang/Integer;

.field private videoDurationMs:Ljava/lang/Integer;

.field private widthPixels:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5490
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6495
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->widthPixels:Ljava/lang/Integer;

    .line 6496
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->heightPixels:Ljava/lang/Integer;

    .line 6497
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->videoDurationMs:Ljava/lang/Integer;

    .line 6498
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6499
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->cachedSize:I

    .line 5492
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;
    .locals 2

    .prologue
    .line 5506
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5510
    return-object v0

    .line 5507
    :catch_0
    move-exception v0

    .line 5508
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
    .line 5459
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

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
    .line 5459
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

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
    .line 5459
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 5534
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5535
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->widthPixels:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 5536
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->widthPixels:Ljava/lang/Integer;

    .line 5537
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5539
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->heightPixels:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 5540
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->heightPixels:Ljava/lang/Integer;

    .line 5541
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5543
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->stereoFormat:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 5544
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->stereoFormat:Ljava/lang/Integer;

    .line 5545
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5547
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->videoDurationMs:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 5548
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->videoDurationMs:Ljava/lang/Integer;

    .line 5549
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5551
    :cond_3
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
    .line 5459
    .line 6559
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6560
    sparse-switch v0, :sswitch_data_0

    .line 6564
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6565
    :sswitch_0
    return-object p0

    .line 6570
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->widthPixels:Ljava/lang/Integer;

    goto :goto_0

    .line 6574
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->heightPixels:Ljava/lang/Integer;

    goto :goto_0

    .line 6578
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 6579
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6583
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->stereoFormat:Ljava/lang/Integer;

    goto :goto_0

    .line 6589
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->videoDurationMs:Ljava/lang/Integer;

    goto :goto_0

    .line 6560
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 6579
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
    .line 5517
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->widthPixels:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 5518
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->widthPixels:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5520
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->heightPixels:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 5521
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->heightPixels:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5523
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->stereoFormat:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 5524
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->stereoFormat:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5526
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->videoDurationMs:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 5527
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->videoDurationMs:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5529
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5530
    return-void
.end method
