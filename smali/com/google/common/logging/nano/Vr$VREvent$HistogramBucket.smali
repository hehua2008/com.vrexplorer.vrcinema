.class public final Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;


# instance fields
.field private count:Ljava/lang/Integer;

.field private minimumValue:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3167
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4172
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->minimumValue:Ljava/lang/Integer;

    .line 4173
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->count:Ljava/lang/Integer;

    .line 4174
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4175
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->cachedSize:I

    .line 3169
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .locals 2

    .prologue
    .line 3148
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_1

    .line 3149
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3151
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_0

    .line 3152
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3154
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3156
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    return-object v0

    .line 3154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .locals 2

    .prologue
    .line 3182
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3186
    return-object v0

    .line 3183
    :catch_0
    move-exception v0

    .line 3184
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
    .line 3142
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

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
    .line 3142
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

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
    .line 3142
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 3204
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3205
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->minimumValue:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3206
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->minimumValue:Ljava/lang/Integer;

    .line 3207
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3209
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 3210
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->count:Ljava/lang/Integer;

    .line 3211
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3213
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
    .line 3142
    .line 4221
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4222
    sparse-switch v0, :sswitch_data_0

    .line 4226
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4227
    :sswitch_0
    return-object p0

    .line 4232
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->minimumValue:Ljava/lang/Integer;

    goto :goto_0

    .line 4236
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->count:Ljava/lang/Integer;

    goto :goto_0

    .line 4222
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 3193
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->minimumValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3194
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->minimumValue:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3196
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3197
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3199
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3200
    return-void
.end method
