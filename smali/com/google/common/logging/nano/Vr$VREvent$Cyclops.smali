.class public final Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

.field private share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

.field private shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

.field private view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1648
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2653
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    .line 2654
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    .line 2655
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    .line 2656
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    .line 2657
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2658
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->cachedSize:I

    .line 1650
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;
    .locals 2

    .prologue
    .line 1665
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    if-eqz v1, :cond_0

    .line 1670
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    .line 1672
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    if-eqz v1, :cond_1

    .line 1673
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    .line 1675
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    if-eqz v1, :cond_2

    .line 1676
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    .line 1678
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    if-eqz v1, :cond_3

    .line 1679
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    .line 1681
    :cond_3
    return-object v0

    .line 1666
    :catch_0
    move-exception v0

    .line 1667
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
    .line 979
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

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
    .line 979
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

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
    .line 979
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 1705
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1706
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    if-eqz v1, :cond_0

    .line 1707
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    .line 1708
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1710
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    if-eqz v1, :cond_1

    .line 1711
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    .line 1712
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1714
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    if-eqz v1, :cond_2

    .line 1715
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    .line 1716
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1718
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    if-eqz v1, :cond_3

    .line 1719
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    .line 1720
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1722
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
    .line 979
    .line 2730
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2731
    sparse-switch v0, :sswitch_data_0

    .line 2735
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2736
    :sswitch_0
    return-object p0

    .line 2741
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    if-nez v0, :cond_1

    .line 2742
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    .line 2744
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2748
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    if-nez v0, :cond_2

    .line 2749
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    .line 2751
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2755
    :sswitch_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    if-nez v0, :cond_3

    .line 2756
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    .line 2758
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2762
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    if-nez v0, :cond_4

    .line 2763
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    .line 2765
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2731
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 1688
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    if-eqz v0, :cond_0

    .line 1689
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    if-eqz v0, :cond_1

    .line 1692
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1694
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    if-eqz v0, :cond_2

    .line 1695
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1697
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    if-eqz v0, :cond_3

    .line 1698
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1700
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1701
    return-void
.end method
