.class public final Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4886
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5891
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    .line 5892
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5893
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->cachedSize:I

    .line 4888
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
    .locals 2

    .prologue
    .line 4900
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4904
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    if-eqz v1, :cond_0

    .line 4905
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    .line 4907
    :cond_0
    return-object v0

    .line 4901
    :catch_0
    move-exception v0

    .line 4902
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
    .line 4569
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

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
    .line 4569
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

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
    .line 4569
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 4922
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4923
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    if-eqz v1, :cond_0

    .line 4924
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    .line 4925
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4927
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
    .line 4569
    .line 5935
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5936
    sparse-switch v0, :sswitch_data_0

    .line 5940
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5941
    :sswitch_0
    return-object p0

    .line 5946
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    if-nez v0, :cond_1

    .line 5947
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    .line 5949
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5936
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
    .line 4914
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    if-eqz v0, :cond_0

    .line 4915
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4917
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4918
    return-void
.end method
