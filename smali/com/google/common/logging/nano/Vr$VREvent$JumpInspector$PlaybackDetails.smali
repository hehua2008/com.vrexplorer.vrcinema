.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

.field private playbackDurationSeconds:Ljava/lang/Long;

.field private playbackEngine:Ljava/lang/Integer;

.field private playbackState:Ljava/lang/Integer;

.field private videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11442
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 12447
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackDurationSeconds:Ljava/lang/Long;

    .line 12448
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    .line 12449
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    .line 12450
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 12451
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->cachedSize:I

    .line 11444
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;
    .locals 2

    .prologue
    .line 11458
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11462
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    if-eqz v1, :cond_0

    .line 11463
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    .line 11465
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    if-eqz v1, :cond_1

    .line 11466
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    .line 11468
    :cond_1
    return-object v0

    .line 11459
    :catch_0
    move-exception v0

    .line 11460
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
    .line 11386
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

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
    .line 11386
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

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
    .line 11386
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 11495
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 11496
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackState:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 11497
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackState:Ljava/lang/Integer;

    .line 11498
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11500
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackDurationSeconds:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 11501
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackDurationSeconds:Ljava/lang/Long;

    .line 11502
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11504
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackEngine:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 11505
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackEngine:Ljava/lang/Integer;

    .line 11506
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11508
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    if-eqz v1, :cond_3

    .line 11509
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    .line 11510
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11512
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    if-eqz v1, :cond_4

    .line 11513
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    .line 11514
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11516
    :cond_4
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11386
    .line 12524
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 12525
    sparse-switch v0, :sswitch_data_0

    .line 12529
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12530
    :sswitch_0
    return-object p0

    .line 12535
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 12536
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 12541
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackState:Ljava/lang/Integer;

    goto :goto_0

    .line 12547
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackDurationSeconds:Ljava/lang/Long;

    goto :goto_0

    .line 12551
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 12552
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 12556
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackEngine:Ljava/lang/Integer;

    goto :goto_0

    .line 12562
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    if-nez v0, :cond_1

    .line 12563
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    .line 12565
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12569
    :sswitch_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    if-nez v0, :cond_2

    .line 12570
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    .line 12572
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12525
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 12536
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 12552
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11475
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackState:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 11476
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11478
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackDurationSeconds:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 11479
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackDurationSeconds:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 11481
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackEngine:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 11482
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackEngine:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11484
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    if-eqz v0, :cond_3

    .line 11485
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11487
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    if-eqz v0, :cond_4

    .line 11488
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11490
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 11491
    return-void
.end method
