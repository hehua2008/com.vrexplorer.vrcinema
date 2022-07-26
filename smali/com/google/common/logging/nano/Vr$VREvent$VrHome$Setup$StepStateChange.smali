.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private newStepState:Ljava/lang/Integer;

.field private previousStepState:Ljava/lang/Integer;

.field private step:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2363
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3369
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->cachedSize:I

    .line 2365
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;
    .locals 2

    .prologue
    .line 2376
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2380
    return-object v0

    .line 2377
    :catch_0
    move-exception v0

    .line 2378
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
    .line 2326
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

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
    .line 2326
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

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
    .line 2326
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 2401
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2402
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->step:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2403
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->step:Ljava/lang/Integer;

    .line 2404
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2406
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->previousStepState:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2407
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->previousStepState:Ljava/lang/Integer;

    .line 2408
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2410
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->newStepState:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 2411
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->newStepState:Ljava/lang/Integer;

    .line 2412
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2414
    :cond_2
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
    .line 2326
    .line 3422
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3423
    sparse-switch v0, :sswitch_data_0

    .line 3427
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3428
    :sswitch_0
    return-object p0

    .line 3433
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 3434
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3444
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->step:Ljava/lang/Integer;

    goto :goto_0

    .line 3450
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 3451
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3457
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->previousStepState:Ljava/lang/Integer;

    goto :goto_0

    .line 3463
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 3464
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 3470
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->newStepState:Ljava/lang/Integer;

    goto :goto_0

    .line 3423
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 3434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3451
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 3464
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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
    .line 2387
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->step:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2388
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->step:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2390
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->previousStepState:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2391
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->previousStepState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2393
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->newStepState:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2394
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->newStepState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2396
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2397
    return-void
.end method
