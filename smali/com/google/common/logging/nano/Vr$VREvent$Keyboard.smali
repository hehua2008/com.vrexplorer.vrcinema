.class public final Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9314
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10319
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    .line 10320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10321
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->cachedSize:I

    .line 9316
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    .locals 4

    .prologue
    .line 9328
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9332
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 9333
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    .line 9334
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 9335
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 9336
    iget-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    move-result-object v3

    aput-object v3, v2, v1

    .line 9334
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9329
    :catch_0
    move-exception v0

    .line 9330
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 9340
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
    .line 8781
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

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
    .line 8781
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

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
    .line 8781
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 9360
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 9361
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 9362
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 9363
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    aget-object v2, v2, v0

    .line 9364
    if-eqz v2, :cond_0

    .line 9365
    const/4 v3, 0x2

    .line 9366
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 9362
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9370
    :cond_1
    return v1
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

    .line 8781
    .line 10378
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10379
    sparse-switch v0, :sswitch_data_0

    .line 10383
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10384
    :sswitch_0
    return-object p0

    .line 10389
    :sswitch_1
    const/16 v0, 0x12

    .line 10390
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 10391
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-nez v0, :cond_2

    move v0, v1

    .line 10392
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    .line 10394
    if-eqz v0, :cond_1

    .line 10395
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10397
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 10398
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;-><init>()V

    aput-object v3, v2, v0

    .line 10399
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 10400
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10397
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10391
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v0, v0

    goto :goto_1

    .line 10403
    :cond_3
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;-><init>()V

    aput-object v3, v2, v0

    .line 10404
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 10405
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    goto :goto_0

    .line 10379
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
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
    .line 9347
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 9348
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 9349
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    aget-object v1, v1, v0

    .line 9350
    if-eqz v1, :cond_0

    .line 9351
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9348
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9355
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9356
    return-void
.end method
