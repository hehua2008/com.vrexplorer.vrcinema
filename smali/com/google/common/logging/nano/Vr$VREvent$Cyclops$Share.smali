.class public final Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private numPhotos:Ljava/lang/Integer;

.field private type:Ljava/lang/Integer;

.field private withSound:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1383
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2388
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->withSound:Ljava/lang/Boolean;

    .line 2389
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->numPhotos:Ljava/lang/Integer;

    .line 2390
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2391
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->cachedSize:I

    .line 1385
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;
    .locals 2

    .prologue
    .line 1398
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1402
    return-object v0

    .line 1399
    :catch_0
    move-exception v0

    .line 1400
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
    .line 1343
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

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
    .line 1343
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

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
    .line 1343
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 1423
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1424
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1425
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->type:Ljava/lang/Integer;

    .line 1426
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1428
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->withSound:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 1429
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->withSound:Ljava/lang/Boolean;

    .line 1430
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1432
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->numPhotos:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1433
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->numPhotos:Ljava/lang/Integer;

    .line 1434
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1436
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
    .line 1343
    .line 2444
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2445
    sparse-switch v0, :sswitch_data_0

    .line 2449
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2450
    :sswitch_0
    return-object p0

    .line 2455
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 2456
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2465
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->type:Ljava/lang/Integer;

    goto :goto_0

    .line 2471
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->withSound:Ljava/lang/Boolean;

    goto :goto_0

    .line 2475
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->numPhotos:Ljava/lang/Integer;

    goto :goto_0

    .line 2445
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 2456
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
    .line 1409
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1410
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1412
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->withSound:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1413
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->withSound:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1415
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->numPhotos:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1416
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->numPhotos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1418
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1419
    return-void
.end method
