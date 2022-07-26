.class public final Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;


# instance fields
.field private role:Ljava/lang/Integer;

.field private startFromControllerTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8174
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9179
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->startFromControllerTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 9180
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9181
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->cachedSize:I

    .line 8176
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;
    .locals 2

    .prologue
    .line 8155
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    if-nez v0, :cond_1

    .line 8156
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8158
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    if-nez v0, :cond_0

    .line 8159
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    .line 8161
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8163
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    return-object v0

    .line 8161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;
    .locals 2

    .prologue
    .line 8188
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8192
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->startFromControllerTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v1, :cond_0

    .line 8193
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->startFromControllerTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->startFromControllerTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 8195
    :cond_0
    return-object v0

    .line 8189
    :catch_0
    move-exception v0

    .line 8190
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
    .line 8142
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

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
    .line 8142
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

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
    .line 8142
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 8213
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8214
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->role:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 8215
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->role:Ljava/lang/Integer;

    .line 8216
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8218
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->startFromControllerTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v1, :cond_1

    .line 8219
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->startFromControllerTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 8220
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8222
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
    .line 8142
    .line 9230
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9231
    sparse-switch v0, :sswitch_data_0

    .line 9235
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9236
    :sswitch_0
    return-object p0

    .line 9241
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 9242
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 9246
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->role:Ljava/lang/Integer;

    goto :goto_0

    .line 9252
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->startFromControllerTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-nez v0, :cond_1

    .line 9253
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->startFromControllerTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 9255
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->startFromControllerTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9231
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 9242
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 8202
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->role:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 8203
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->role:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8205
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->startFromControllerTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v0, :cond_1

    .line 8206
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->startFromControllerTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8208
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8209
    return-void
.end method
