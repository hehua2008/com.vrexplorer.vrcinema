.class public final Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private mode:Ljava/lang/Integer;

.field private simulationSecondsSinceEpoch:Ljava/lang/Long;

.field private startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6902
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7907
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 7908
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->simulationSecondsSinceEpoch:Ljava/lang/Long;

    .line 7909
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7910
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->cachedSize:I

    .line 6904
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;
    .locals 2

    .prologue
    .line 6917
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6921
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v1, :cond_0

    .line 6922
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 6924
    :cond_0
    return-object v0

    .line 6918
    :catch_0
    move-exception v0

    .line 6919
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
    .line 6866
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

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
    .line 6866
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

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
    .line 6866
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 6945
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6946
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->mode:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 6947
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->mode:Ljava/lang/Integer;

    .line 6948
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6950
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v1, :cond_1

    .line 6951
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 6952
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6954
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->simulationSecondsSinceEpoch:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 6955
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->simulationSecondsSinceEpoch:Ljava/lang/Long;

    .line 6956
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6958
    :cond_2
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
    .line 6866
    .line 7966
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7967
    sparse-switch v0, :sswitch_data_0

    .line 7971
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7972
    :sswitch_0
    return-object p0

    .line 7977
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 7978
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7983
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->mode:Ljava/lang/Integer;

    goto :goto_0

    .line 7989
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-nez v0, :cond_1

    .line 7990
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 7992
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7996
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->simulationSecondsSinceEpoch:Ljava/lang/Long;

    goto :goto_0

    .line 7967
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 7978
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .line 6931
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->mode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 6932
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->mode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6934
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v0, :cond_1

    .line 6935
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6937
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->simulationSecondsSinceEpoch:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 6938
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->simulationSecondsSinceEpoch:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6940
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6941
    return-void
.end method
