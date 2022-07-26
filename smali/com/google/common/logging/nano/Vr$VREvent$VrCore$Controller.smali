.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private availableFirmware:Ljava/lang/String;

.field private axis:Ljava/lang/Integer;

.field private batteryLevel:Ljava/lang/Integer;

.field private firmware:Ljava/lang/String;

.field private hardwareRevision:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private otaRetries:Ljava/lang/Integer;

.field private sampleCount:Ljava/lang/Integer;

.field private sensorType:Ljava/lang/Integer;

.field private softwareRevision:Ljava/lang/String;

.field private xRailCount:Ljava/lang/Integer;

.field private yRailCount:Ljava/lang/Integer;

.field private zRailCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6263
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7268
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->manufacturer:Ljava/lang/String;

    .line 7269
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->model:Ljava/lang/String;

    .line 7270
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->firmware:Ljava/lang/String;

    .line 7271
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->availableFirmware:Ljava/lang/String;

    .line 7272
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->softwareRevision:Ljava/lang/String;

    .line 7273
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->batteryLevel:Ljava/lang/Integer;

    .line 7274
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->hardwareRevision:Ljava/lang/String;

    .line 7275
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->xRailCount:Ljava/lang/Integer;

    .line 7276
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->yRailCount:Ljava/lang/Integer;

    .line 7277
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->zRailCount:Ljava/lang/Integer;

    .line 7278
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sampleCount:Ljava/lang/Integer;

    .line 7279
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->otaRetries:Ljava/lang/Integer;

    .line 7280
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7281
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->cachedSize:I

    .line 6265
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;
    .locals 2

    .prologue
    .line 6288
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6292
    return-object v0

    .line 6289
    :catch_0
    move-exception v0

    .line 6290
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
    .line 6187
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

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
    .line 6187
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

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
    .line 6187
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 6346
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6347
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->manufacturer:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6348
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->manufacturer:Ljava/lang/String;

    .line 6349
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6351
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->model:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6352
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->model:Ljava/lang/String;

    .line 6353
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6355
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->firmware:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6356
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->firmware:Ljava/lang/String;

    .line 6357
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6359
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->availableFirmware:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 6360
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->availableFirmware:Ljava/lang/String;

    .line 6361
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6363
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->softwareRevision:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 6364
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->softwareRevision:Ljava/lang/String;

    .line 6365
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6367
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->batteryLevel:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 6368
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->batteryLevel:Ljava/lang/Integer;

    .line 6369
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6371
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->hardwareRevision:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 6372
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->hardwareRevision:Ljava/lang/String;

    .line 6373
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6375
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->xRailCount:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 6376
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->xRailCount:Ljava/lang/Integer;

    .line 6377
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6379
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->yRailCount:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 6380
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->yRailCount:Ljava/lang/Integer;

    .line 6381
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6383
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->zRailCount:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 6384
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->zRailCount:Ljava/lang/Integer;

    .line 6385
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6387
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sampleCount:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 6388
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sampleCount:Ljava/lang/Integer;

    .line 6389
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6391
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sensorType:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 6392
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sensorType:Ljava/lang/Integer;

    .line 6393
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6395
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->axis:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 6396
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->axis:Ljava/lang/Integer;

    .line 6397
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6399
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->otaRetries:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 6400
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->otaRetries:Ljava/lang/Integer;

    .line 6401
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6403
    :cond_d
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
    .line 6187
    .line 7411
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7412
    sparse-switch v0, :sswitch_data_0

    .line 7416
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7417
    :sswitch_0
    return-object p0

    .line 7422
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->manufacturer:Ljava/lang/String;

    goto :goto_0

    .line 7426
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->model:Ljava/lang/String;

    goto :goto_0

    .line 7430
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->firmware:Ljava/lang/String;

    goto :goto_0

    .line 7434
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->availableFirmware:Ljava/lang/String;

    goto :goto_0

    .line 7438
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->softwareRevision:Ljava/lang/String;

    goto :goto_0

    .line 7442
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->batteryLevel:Ljava/lang/Integer;

    goto :goto_0

    .line 7446
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->hardwareRevision:Ljava/lang/String;

    goto :goto_0

    .line 7450
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->xRailCount:Ljava/lang/Integer;

    goto :goto_0

    .line 7454
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->yRailCount:Ljava/lang/Integer;

    goto :goto_0

    .line 7458
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->zRailCount:Ljava/lang/Integer;

    goto :goto_0

    .line 7462
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sampleCount:Ljava/lang/Integer;

    goto :goto_0

    .line 7466
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 7467
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7471
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sensorType:Ljava/lang/Integer;

    goto :goto_0

    .line 7477
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 7478
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 7483
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->axis:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 7489
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->otaRetries:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 7412
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
    .end sparse-switch

    .line 7467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 7478
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
    .line 6299
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->manufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6300
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->manufacturer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6302
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->model:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6303
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->model:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6305
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->firmware:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6306
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->firmware:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6308
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->availableFirmware:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 6309
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->availableFirmware:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6311
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->softwareRevision:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 6312
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->softwareRevision:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6314
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->batteryLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 6315
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6317
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->hardwareRevision:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 6318
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->hardwareRevision:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6320
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->xRailCount:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 6321
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->xRailCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6323
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->yRailCount:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 6324
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->yRailCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6326
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->zRailCount:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 6327
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->zRailCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6329
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sampleCount:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 6330
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sampleCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6332
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sensorType:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 6333
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sensorType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6335
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->axis:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 6336
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->axis:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6338
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->otaRetries:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 6339
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->otaRetries:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6341
    :cond_d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6342
    return-void
.end method
