.class public final Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private comfortModeState:Ljava/lang/Integer;

.field private guestMode:Ljava/lang/Integer;

.field private humanScaleMode:Ljava/lang/Integer;

.field private labelsState:Ljava/lang/Integer;

.field private startConfiguration:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7219
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8225
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->cachedSize:I

    .line 7221
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;
    .locals 2

    .prologue
    .line 7232
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7236
    return-object v0

    .line 7233
    :catch_0
    move-exception v0

    .line 7234
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
    .line 7143
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

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
    .line 7143
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

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
    .line 7143
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 7263
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7264
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->labelsState:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 7265
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->labelsState:Ljava/lang/Integer;

    .line 7266
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7268
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->comfortModeState:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 7269
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->comfortModeState:Ljava/lang/Integer;

    .line 7270
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7272
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->startConfiguration:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 7273
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->startConfiguration:Ljava/lang/Integer;

    .line 7274
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7276
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->guestMode:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 7277
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->guestMode:Ljava/lang/Integer;

    .line 7278
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7280
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->humanScaleMode:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 7281
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->humanScaleMode:Ljava/lang/Integer;

    .line 7282
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7284
    :cond_4
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
    .line 7143
    .line 8292
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8293
    sparse-switch v0, :sswitch_data_0

    .line 8297
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8298
    :sswitch_0
    return-object p0

    .line 8303
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 8304
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 8308
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->labelsState:Ljava/lang/Integer;

    goto :goto_0

    .line 8314
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 8315
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 8319
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->comfortModeState:Ljava/lang/Integer;

    goto :goto_0

    .line 8325
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 8326
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 8330
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->startConfiguration:Ljava/lang/Integer;

    goto :goto_0

    .line 8336
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 8337
    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 8341
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->guestMode:Ljava/lang/Integer;

    goto :goto_0

    .line 8347
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 8348
    packed-switch v0, :pswitch_data_4

    goto :goto_0

    .line 8352
    :pswitch_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->humanScaleMode:Ljava/lang/Integer;

    goto :goto_0

    .line 8293
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 8304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 8315
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 8326
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 8337
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 8348
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
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
    .line 7243
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->labelsState:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 7244
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->labelsState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7246
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->comfortModeState:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 7247
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->comfortModeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7249
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->startConfiguration:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 7250
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->startConfiguration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7252
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->guestMode:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 7253
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->guestMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7255
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->humanScaleMode:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 7256
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->humanScaleMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7258
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7259
    return-void
.end method
