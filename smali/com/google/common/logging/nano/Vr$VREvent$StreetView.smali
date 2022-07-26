.class public final Lcom/google/common/logging/nano/Vr$VREvent$StreetView;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$StreetView;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10028
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11033
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    .line 11034
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11035
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->cachedSize:I

    .line 10030
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView;
    .locals 2

    .prologue
    .line 10042
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10046
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    if-eqz v1, :cond_0

    .line 10047
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    .line 10049
    :cond_0
    return-object v0

    .line 10043
    :catch_0
    move-exception v0

    .line 10044
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
    .line 9786
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

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
    .line 9786
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

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
    .line 9786
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 10064
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10065
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    if-eqz v1, :cond_0

    .line 10066
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    .line 10067
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10069
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
    .line 9786
    .line 11077
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11078
    sparse-switch v0, :sswitch_data_0

    .line 11082
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11083
    :sswitch_0
    return-object p0

    .line 11088
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    if-nez v0, :cond_1

    .line 11089
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    .line 11091
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11078
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
    .line 10056
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    if-eqz v0, :cond_0

    .line 10057
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10059
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10060
    return-void
.end method
