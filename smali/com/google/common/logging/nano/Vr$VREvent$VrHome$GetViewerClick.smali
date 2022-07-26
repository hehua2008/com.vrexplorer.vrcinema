.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2635
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3640
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->url:Ljava/lang/String;

    .line 3641
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3642
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->cachedSize:I

    .line 2637
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;
    .locals 2

    .prologue
    .line 2649
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2653
    return-object v0

    .line 2650
    :catch_0
    move-exception v0

    .line 2651
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
    .line 2613
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

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
    .line 2613
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

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
    .line 2613
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 2668
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2669
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2670
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->url:Ljava/lang/String;

    .line 2671
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2673
    :cond_0
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
    .line 2613
    .line 3681
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3682
    sparse-switch v0, :sswitch_data_0

    .line 3686
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3687
    :sswitch_0
    return-object p0

    .line 3692
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->url:Ljava/lang/String;

    goto :goto_0

    .line 3682
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 2660
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2661
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2663
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2664
    return-void
.end method
