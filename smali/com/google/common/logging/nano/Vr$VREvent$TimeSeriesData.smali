.class public final Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

.field private timeIntervalSeconds:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3603
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4608
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    .line 4609
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    .line 4610
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4611
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->cachedSize:I

    .line 3605
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    .locals 4

    .prologue
    .line 3618
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3622
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 3623
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    .line 3624
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3625
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 3626
    iget-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    move-result-object v3

    aput-object v3, v2, v1

    .line 3624
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3619
    :catch_0
    move-exception v0

    .line 3620
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 3630
    :cond_1
    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3255
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

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
    .line 3255
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

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
    .line 3255
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    .line 3653
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3654
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3655
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    .line 3656
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3658
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 3659
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 3660
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    aget-object v2, v2, v0

    .line 3661
    if-eqz v2, :cond_1

    .line 3662
    const/4 v3, 0x2

    .line 3663
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3659
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3667
    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3255
    .line 4675
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4676
    sparse-switch v0, :sswitch_data_0

    .line 4680
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4681
    :sswitch_0
    return-object p0

    .line 4686
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    goto :goto_0

    .line 4690
    :sswitch_2
    const/16 v0, 0x12

    .line 4691
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4692
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-nez v0, :cond_2

    move v0, v1

    .line 4693
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    .line 4695
    if-eqz v0, :cond_1

    .line 4696
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4698
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4699
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;-><init>()V

    aput-object v3, v2, v0

    .line 4700
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4701
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4698
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4692
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v0, v0

    goto :goto_1

    .line 4704
    :cond_3
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;-><init>()V

    aput-object v3, v2, v0

    .line 4705
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4706
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    goto :goto_0

    .line 4676
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3638
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3640
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 3641
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3642
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    aget-object v1, v1, v0

    .line 3643
    if-eqz v1, :cond_1

    .line 3644
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3641
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3648
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3649
    return-void
.end method
