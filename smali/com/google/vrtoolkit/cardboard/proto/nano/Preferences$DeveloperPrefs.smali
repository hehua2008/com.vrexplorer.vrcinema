.class public final Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Preferences.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeveloperPrefs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;


# instance fields
.field private bitField0_:I

.field private developerLoggingEnabled_:Z

.field private motophoPatchEnabled_:Z

.field private performanceMonitoringEnabled_:Z

.field private sensorLoggingEnabled_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 259
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->clear()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    .line 260
    return-void
.end method

.method public static emptyArray()[Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    if-nez v0, :cond_1

    .line 168
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    sput-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    .line 173
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_1
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 264
    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    .line 265
    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    .line 266
    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->motophoPatchEnabled_:Z

    .line 267
    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 269
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->cachedSize:I

    .line 270
    return-object p0
.end method

.method public final clearDeveloperLoggingEnabled()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    .line 252
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 253
    return-object p0
.end method

.method public final clearMotophoPatchEnabled()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->motophoPatchEnabled_:Z

    .line 233
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 234
    return-object p0
.end method

.method public final clearPerformanceMonitoringEnabled()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    .line 195
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 196
    return-object p0
.end method

.method public final clearSensorLoggingEnabled()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    .line 214
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 215
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
    .line 161
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

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
    .line 161
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    .locals 2

    .prologue
    .line 276
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
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
    .line 161
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 304
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 305
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 306
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    .line 307
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    :cond_0
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 310
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    .line 311
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 313
    :cond_1
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 314
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->motophoPatchEnabled_:Z

    .line 315
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_2
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 318
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    .line 319
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_3
    return v0
.end method

.method public final getDeveloperLoggingEnabled()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    return v0
.end method

.method public final getMotophoPatchEnabled()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->motophoPatchEnabled_:Z

    return v0
.end method

.method public final getPerformanceMonitoringEnabled()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    return v0
.end method

.method public final getSensorLoggingEnabled()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    return v0
.end method

.method public final hasDeveloperLoggingEnabled()Z
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasMotophoPatchEnabled()Z
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPerformanceMonitoringEnabled()Z
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSensorLoggingEnabled()Z
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 161
    invoke-virtual {p0, p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 330
    sparse-switch v0, :sswitch_data_0

    .line 334
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    :sswitch_0
    return-object p0

    .line 340
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    .line 341
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto :goto_0

    .line 345
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    .line 346
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto :goto_0

    .line 350
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->motophoPatchEnabled_:Z

    .line 351
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto :goto_0

    .line 355
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    .line 356
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto :goto_0

    .line 330
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final setDeveloperLoggingEnabled(Z)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    .line 244
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 245
    return-object p0
.end method

.method public final setMotophoPatchEnabled(Z)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->motophoPatchEnabled_:Z

    .line 225
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 226
    return-object p0
.end method

.method public final setPerformanceMonitoringEnabled(Z)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    .line 187
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 188
    return-object p0
.end method

.method public final setSensorLoggingEnabled(Z)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    .line 206
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 207
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
    .line 287
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 290
    :cond_0
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 291
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 293
    :cond_1
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 294
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->motophoPatchEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 296
    :cond_2
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 297
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 299
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 300
    return-void
.end method
