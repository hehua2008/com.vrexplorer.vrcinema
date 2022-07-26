.class public final Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private infoClicks:Ljava/lang/Integer;

.field private nextClicks:Ljava/lang/Integer;

.field private nodesNavigated:Ljava/lang/Integer;

.field private panosAvailable:Ljava/lang/Integer;

.field private panosViewed:Ljava/lang/Integer;

.field private playPauseClicks:Ljava/lang/Integer;

.field private prevClicks:Ljava/lang/Integer;

.field private source:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9841
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10846
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosAvailable:Ljava/lang/Integer;

    .line 10847
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosViewed:Ljava/lang/Integer;

    .line 10848
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nodesNavigated:Ljava/lang/Integer;

    .line 10849
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nextClicks:Ljava/lang/Integer;

    .line 10850
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->prevClicks:Ljava/lang/Integer;

    .line 10851
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->playPauseClicks:Ljava/lang/Integer;

    .line 10852
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->infoClicks:Ljava/lang/Integer;

    .line 10853
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10854
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->cachedSize:I

    .line 9843
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;
    .locals 2

    .prologue
    .line 9861
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9865
    return-object v0

    .line 9862
    :catch_0
    move-exception v0

    .line 9863
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
    .line 9789
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

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
    .line 9789
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

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
    .line 9789
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 9901
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9902
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->source:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 9903
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->source:Ljava/lang/Integer;

    .line 9904
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9906
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosAvailable:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 9907
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosAvailable:Ljava/lang/Integer;

    .line 9908
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9910
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosViewed:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 9911
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosViewed:Ljava/lang/Integer;

    .line 9912
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9914
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nodesNavigated:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 9915
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nodesNavigated:Ljava/lang/Integer;

    .line 9916
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9918
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nextClicks:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 9919
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nextClicks:Ljava/lang/Integer;

    .line 9920
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9922
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->prevClicks:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 9923
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->prevClicks:Ljava/lang/Integer;

    .line 9924
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9926
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->playPauseClicks:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 9927
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->playPauseClicks:Ljava/lang/Integer;

    .line 9928
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9930
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->infoClicks:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 9931
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->infoClicks:Ljava/lang/Integer;

    .line 9932
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9934
    :cond_7
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
    .line 9789
    .line 10942
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10943
    sparse-switch v0, :sswitch_data_0

    .line 10947
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10948
    :sswitch_0
    return-object p0

    .line 10953
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 10954
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 10960
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->source:Ljava/lang/Integer;

    goto :goto_0

    .line 10966
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosAvailable:Ljava/lang/Integer;

    goto :goto_0

    .line 10970
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosViewed:Ljava/lang/Integer;

    goto :goto_0

    .line 10974
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nodesNavigated:Ljava/lang/Integer;

    goto :goto_0

    .line 10978
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nextClicks:Ljava/lang/Integer;

    goto :goto_0

    .line 10982
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->prevClicks:Ljava/lang/Integer;

    goto :goto_0

    .line 10986
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->playPauseClicks:Ljava/lang/Integer;

    goto :goto_0

    .line 10990
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->infoClicks:Ljava/lang/Integer;

    goto :goto_0

    .line 10943
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch

    .line 10954
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
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
    .line 9872
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->source:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 9873
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->source:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9875
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosAvailable:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 9876
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosAvailable:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9878
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosViewed:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 9879
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosViewed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9881
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nodesNavigated:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 9882
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nodesNavigated:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9884
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nextClicks:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 9885
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nextClicks:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9887
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->prevClicks:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 9888
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->prevClicks:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9890
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->playPauseClicks:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 9891
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->playPauseClicks:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9893
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->infoClicks:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 9894
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->infoClicks:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9896
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9897
    return-void
.end method
