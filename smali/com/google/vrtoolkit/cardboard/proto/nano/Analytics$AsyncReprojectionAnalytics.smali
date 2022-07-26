.class public final Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AsyncReprojectionAnalytics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;


# instance fields
.field private bitField0_:I

.field private fps_:F

.field private totalMissedVsyncs_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 174
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->clear()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    .line 175
    return-void
.end method

.method public static emptyArray()[Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    if-nez v0, :cond_1

    .line 121
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    sput-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    .line 126
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_1
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    .line 179
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->totalMissedVsyncs_:I

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->fps_:F

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->cachedSize:I

    .line 183
    return-object p0
.end method

.method public final clearFps()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->fps_:F

    .line 167
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    .line 168
    return-object p0
.end method

.method public final clearTotalMissedVsyncs()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->totalMissedVsyncs_:I

    .line 148
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    .line 149
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

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
    .line 114
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 2

    .prologue
    .line 189
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-object v0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 211
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 212
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 213
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->totalMissedVsyncs_:I

    .line 214
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_0
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 217
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->fps_:F

    .line 218
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    :cond_1
    return v0
.end method

.method public final getFps()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->fps_:F

    return v0
.end method

.method public final getTotalMissedVsyncs()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->totalMissedVsyncs_:I

    return v0
.end method

.method public final hasFps()Z
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasTotalMissedVsyncs()Z
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 229
    sparse-switch v0, :sswitch_data_0

    .line 233
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    :sswitch_0
    return-object p0

    .line 239
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->totalMissedVsyncs_:I

    .line 240
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    goto :goto_0

    .line 244
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->fps_:F

    .line 245
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    goto :goto_0

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public final setFps(F)Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 1

    .prologue
    .line 158
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->fps_:F

    .line 159
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    .line 160
    return-object p0
.end method

.method public final setTotalMissedVsyncs(I)Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;
    .locals 1

    .prologue
    .line 139
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->totalMissedVsyncs_:I

    .line 140
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    .line 141
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->totalMissedVsyncs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 203
    :cond_0
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 204
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->fps_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 206
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 207
    return-void
.end method
