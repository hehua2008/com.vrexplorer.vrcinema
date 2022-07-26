.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

.field private fileExtension:Ljava/lang/String;

.field private imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

.field private videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10407
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11412
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->fileExtension:Ljava/lang/String;

    .line 11413
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    .line 11414
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    .line 11415
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    .line 11416
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11417
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->cachedSize:I

    .line 10409
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;
    .locals 2

    .prologue
    .line 10424
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10428
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    if-eqz v1, :cond_0

    .line 10429
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    .line 10431
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    if-eqz v1, :cond_1

    .line 10432
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    .line 10434
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    if-eqz v1, :cond_2

    .line 10435
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    .line 10437
    :cond_2
    return-object v0

    .line 10425
    :catch_0
    move-exception v0

    .line 10426
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
    .line 10358
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

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
    .line 10358
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

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
    .line 10358
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 10461
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10462
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->fileExtension:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10463
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->fileExtension:Ljava/lang/String;

    .line 10464
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10466
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    if-eqz v1, :cond_1

    .line 10467
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    .line 10468
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10470
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    if-eqz v1, :cond_2

    .line 10471
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    .line 10472
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10474
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    if-eqz v1, :cond_3

    .line 10475
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    .line 10476
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10478
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
    .line 10358
    .line 11486
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11487
    sparse-switch v0, :sswitch_data_0

    .line 11491
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11492
    :sswitch_0
    return-object p0

    .line 11497
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->fileExtension:Ljava/lang/String;

    goto :goto_0

    .line 11501
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    if-nez v0, :cond_1

    .line 11502
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    .line 11504
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11508
    :sswitch_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    if-nez v0, :cond_2

    .line 11509
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    .line 11511
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11515
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    if-nez v0, :cond_3

    .line 11516
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    .line 11518
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11487
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
    .line 10444
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->fileExtension:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10445
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->fileExtension:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10447
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    if-eqz v0, :cond_1

    .line 10448
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10450
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    if-eqz v0, :cond_2

    .line 10451
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10453
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    if-eqz v0, :cond_3

    .line 10454
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10456
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10457
    return-void
.end method
