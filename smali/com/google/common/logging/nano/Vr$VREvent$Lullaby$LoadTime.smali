.class public final Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private assetType:Ljava/lang/Integer;

.field private loadTimeMs:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9503
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10508
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->loadTimeMs:Ljava/lang/Long;

    .line 10509
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10510
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->cachedSize:I

    .line 9505
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;
    .locals 2

    .prologue
    .line 9517
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9521
    return-object v0

    .line 9518
    :catch_0
    move-exception v0

    .line 9519
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
    .line 9463
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

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
    .line 9463
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

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
    .line 9463
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 9539
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9540
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->assetType:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 9541
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->assetType:Ljava/lang/Integer;

    .line 9542
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9544
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->loadTimeMs:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 9545
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->loadTimeMs:Ljava/lang/Long;

    .line 9546
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9548
    :cond_1
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
    .line 9463
    .line 10556
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10557
    sparse-switch v0, :sswitch_data_0

    .line 10561
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10562
    :sswitch_0
    return-object p0

    .line 10567
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 10568
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 10580
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->assetType:Ljava/lang/Integer;

    goto :goto_0

    .line 10586
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->loadTimeMs:Ljava/lang/Long;

    goto :goto_0

    .line 10557
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 10568
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
    .line 9528
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->assetType:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 9529
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->assetType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9531
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->loadTimeMs:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 9532
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->loadTimeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 9534
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9535
    return-void
.end method
