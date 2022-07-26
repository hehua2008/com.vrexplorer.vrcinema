.class public final Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

.field private lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

.field private standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

.field private upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4731
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5736
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5737
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5738
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5739
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5740
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5741
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->cachedSize:I

    .line 4733
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
    .locals 2

    .prologue
    .line 4748
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4752
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_0

    .line 4753
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4755
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_1

    .line 4756
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4758
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_2

    .line 4759
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4761
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_3

    .line 4762
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4764
    :cond_3
    return-object v0

    .line 4749
    :catch_0
    move-exception v0

    .line 4750
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
    .line 4700
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

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
    .line 4700
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

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
    .line 4700
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 4788
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4789
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_0

    .line 4790
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4791
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4793
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_1

    .line 4794
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4795
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4797
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_2

    .line 4798
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4799
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4801
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_3

    .line 4802
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4803
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4805
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
    .line 4700
    .line 5813
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5814
    sparse-switch v0, :sswitch_data_0

    .line 5818
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5819
    :sswitch_0
    return-object p0

    .line 5824
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-nez v0, :cond_1

    .line 5825
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5827
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5831
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-nez v0, :cond_2

    .line 5832
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5834
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5838
    :sswitch_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-nez v0, :cond_3

    .line 5839
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5841
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5845
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-nez v0, :cond_4

    .line 5846
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 5848
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5814
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
    .line 4771
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v0, :cond_0

    .line 4772
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4774
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v0, :cond_1

    .line 4775
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4777
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v0, :cond_2

    .line 4778
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4780
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v0, :cond_3

    .line 4781
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4783
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4784
    return-void
.end method
