.class public final Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;


# instance fields
.field private controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

.field private startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7756
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8761
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 8762
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    .line 8763
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8764
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->cachedSize:I

    .line 7758
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .locals 2

    .prologue
    .line 7737
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-nez v0, :cond_1

    .line 7738
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 7740
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-nez v0, :cond_0

    .line 7741
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    .line 7743
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7745
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    return-object v0

    .line 7743
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .locals 4

    .prologue
    .line 7771
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7775
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v1, :cond_0

    .line 7776
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 7778
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 7779
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    .line 7780
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 7781
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 7782
    iget-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    move-result-object v3

    aput-object v3, v2, v1

    .line 7780
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7772
    :catch_0
    move-exception v0

    .line 7773
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 7786
    :cond_2
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
    .line 7599
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

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
    .line 7599
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

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
    .line 7599
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    .line 7809
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7810
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v1, :cond_0

    .line 7811
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 7812
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7814
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 7815
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 7816
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    aget-object v2, v2, v0

    .line 7817
    if-eqz v2, :cond_1

    .line 7818
    const/4 v3, 0x3

    .line 7819
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 7815
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 7823
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

    .line 7599
    .line 8831
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8832
    sparse-switch v0, :sswitch_data_0

    .line 8836
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8837
    :sswitch_0
    return-object p0

    .line 8842
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-nez v0, :cond_1

    .line 8843
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 8845
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8849
    :sswitch_2
    const/16 v0, 0x1a

    .line 8850
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 8851
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    if-nez v0, :cond_3

    move v0, v1

    .line 8852
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    .line 8854
    if-eqz v0, :cond_2

    .line 8855
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8857
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 8858
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;-><init>()V

    aput-object v3, v2, v0

    .line 8859
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 8860
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 8857
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8851
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v0, v0

    goto :goto_1

    .line 8863
    :cond_4
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;-><init>()V

    aput-object v3, v2, v0

    .line 8864
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 8865
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    goto :goto_0

    .line 8832
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
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
    .line 7793
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v0, :cond_0

    .line 7794
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 7796
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 7797
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 7798
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    aget-object v1, v1, v0

    .line 7799
    if-eqz v1, :cond_1

    .line 7800
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 7797
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7804
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7805
    return-void
.end method
