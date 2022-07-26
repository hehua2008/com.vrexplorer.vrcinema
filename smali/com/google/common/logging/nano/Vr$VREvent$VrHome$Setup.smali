.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

.field private view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2513
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3518
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    .line 3519
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    .line 3520
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3521
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->cachedSize:I

    .line 2515
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    .locals 2

    .prologue
    .line 2528
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2532
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    if-eqz v1, :cond_0

    .line 2533
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    .line 2535
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    if-eqz v1, :cond_1

    .line 2536
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    .line 2538
    :cond_1
    return-object v0

    .line 2529
    :catch_0
    move-exception v0

    .line 2530
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
    .line 2185
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

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
    .line 2185
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

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
    .line 2185
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 2556
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2557
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    if-eqz v1, :cond_0

    .line 2558
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    .line 2559
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2561
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    if-eqz v1, :cond_1

    .line 2562
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    .line 2563
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2565
    :cond_1
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
    .line 2185
    .line 3573
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3574
    sparse-switch v0, :sswitch_data_0

    .line 3578
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3579
    :sswitch_0
    return-object p0

    .line 3584
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    if-nez v0, :cond_1

    .line 3585
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    .line 3587
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3591
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    if-nez v0, :cond_2

    .line 3592
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    .line 3594
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3574
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 2545
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    if-eqz v0, :cond_0

    .line 2546
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2548
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    if-eqz v0, :cond_1

    .line 2549
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2551
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2552
    return-void
.end method
