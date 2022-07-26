.class public final Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private contentId:Ljava/lang/String;

.field private index:Ljava/lang/Integer;

.field private loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

.field private uiElement:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9633
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10638
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    .line 10639
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    .line 10640
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    .line 10641
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10642
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->cachedSize:I

    .line 9635
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    .locals 2

    .prologue
    .line 9649
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9653
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    if-eqz v1, :cond_0

    .line 9654
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    .line 9656
    :cond_0
    return-object v0

    .line 9650
    :catch_0
    move-exception v0

    .line 9651
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
    .line 9424
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

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
    .line 9424
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

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
    .line 9424
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 9680
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9681
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->uiElement:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 9682
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->uiElement:Ljava/lang/Integer;

    .line 9683
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9685
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 9686
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    .line 9687
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9689
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 9690
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    .line 9691
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9693
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    if-eqz v1, :cond_3

    .line 9694
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    .line 9695
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9697
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
    .line 9424
    .line 10705
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10706
    sparse-switch v0, :sswitch_data_0

    .line 10710
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10711
    :sswitch_0
    return-object p0

    .line 10716
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 10717
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 10750
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->uiElement:Ljava/lang/Integer;

    goto :goto_0

    .line 10756
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    goto :goto_0

    .line 10760
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    goto :goto_0

    .line 10764
    :sswitch_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    if-nez v0, :cond_1

    .line 10765
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    .line 10767
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10706
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
    .end sparse-switch

    .line 10717
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_2
        0x3ed -> :sswitch_2
        0x3ee -> :sswitch_2
        0x3ef -> :sswitch_2
        0x7d0 -> :sswitch_2
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_2
        0x7d4 -> :sswitch_2
        0x7d5 -> :sswitch_2
        0x7d6 -> :sswitch_2
        0x7d7 -> :sswitch_2
        0x7d8 -> :sswitch_2
        0x7d9 -> :sswitch_2
        0x7da -> :sswitch_2
        0x7db -> :sswitch_2
        0x7dc -> :sswitch_2
        0x7dd -> :sswitch_2
        0x7de -> :sswitch_2
        0x7df -> :sswitch_2
        0x7e0 -> :sswitch_2
        0x7e1 -> :sswitch_2
        0x7e2 -> :sswitch_2
        0x7e3 -> :sswitch_2
        0x7e4 -> :sswitch_2
        0x7e5 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9663
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->uiElement:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 9664
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->uiElement:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9666
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 9667
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9669
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 9670
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9672
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    if-eqz v0, :cond_3

    .line 9673
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9675
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9676
    return-void
.end method
