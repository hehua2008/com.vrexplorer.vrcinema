.class public final Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;


# instance fields
.field private batteryLevel:Ljava/lang/Integer;

.field private batteryLevelDelta:Ljava/lang/Integer;

.field private batteryTemperature:[F

.field private cpuTemperature:[F

.field private edsThreadFrameDropCount:Ljava/lang/Integer;

.field private gpuTemperature:[F

.field private intervalStartTimeSeconds:Ljava/lang/Integer;

.field private skinTemperature:Ljava/lang/Float;

.field private thermalWarningsShown:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3304
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4309
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    .line 4310
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    .line 4311
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    .line 4312
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    .line 4313
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    .line 4314
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    .line 4315
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    .line 4316
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    .line 4317
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    .line 4318
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4319
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cachedSize:I

    .line 3306
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .locals 2

    .prologue
    .line 3264
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-nez v0, :cond_1

    .line 3265
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3267
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-nez v0, :cond_0

    .line 3268
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    .line 3270
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3272
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    return-object v0

    .line 3270
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .locals 2

    .prologue
    .line 3326
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3330
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_0

    .line 3331
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    .line 3333
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_1

    .line 3334
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    .line 3336
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_2

    .line 3337
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    .line 3339
    :cond_2
    return-object v0

    .line 3327
    :catch_0
    move-exception v0

    .line 3328
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
    .line 3258
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

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
    .line 3258
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

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
    .line 3258
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 3384
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3385
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3386
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    .line 3387
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3389
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 3390
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    .line 3391
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3393
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 3394
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    .line 3395
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3397
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 3398
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    .line 3399
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3401
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 3402
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    .line 3403
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3405
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 3406
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    .line 3407
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3409
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_6

    .line 3410
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 3411
    add-int/2addr v0, v1

    .line 3412
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 3414
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_7

    .line 3415
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 3416
    add-int/2addr v0, v1

    .line 3417
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 3419
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_8

    .line 3420
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 3421
    add-int/2addr v0, v1

    .line 3422
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 3424
    :cond_8
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3258
    .line 4432
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4433
    sparse-switch v0, :sswitch_data_0

    .line 4437
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4438
    :sswitch_0
    return-object p0

    .line 4443
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    goto :goto_0

    .line 4447
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    goto :goto_0

    .line 4451
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    goto :goto_0

    .line 4455
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    goto :goto_0

    .line 4459
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    goto :goto_0

    .line 4463
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    goto :goto_0

    .line 4467
    :sswitch_7
    const/16 v0, 0x3d

    .line 4468
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4469
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-nez v0, :cond_2

    move v0, v1

    .line 4470
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 4471
    if-eqz v0, :cond_1

    .line 4472
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4474
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4475
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 4476
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4474
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4469
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v0, v0

    goto :goto_1

    .line 4479
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 4480
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    goto/16 :goto_0

    .line 4484
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 4485
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 4486
    div-int/lit8 v3, v0, 0x4

    .line 4487
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-nez v0, :cond_5

    move v0, v1

    .line 4488
    :goto_3
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 4489
    if-eqz v0, :cond_4

    .line 4490
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4492
    :cond_4
    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 4493
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 4492
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4487
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v0, v0

    goto :goto_3

    .line 4495
    :cond_6
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    .line 4496
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 4500
    :sswitch_9
    const/16 v0, 0x45

    .line 4501
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4502
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-nez v0, :cond_8

    move v0, v1

    .line 4503
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 4504
    if-eqz v0, :cond_7

    .line 4505
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4507
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 4508
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 4509
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4507
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4502
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v0, v0

    goto :goto_5

    .line 4512
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 4513
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    goto/16 :goto_0

    .line 4517
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 4518
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 4519
    div-int/lit8 v3, v0, 0x4

    .line 4520
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-nez v0, :cond_b

    move v0, v1

    .line 4521
    :goto_7
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 4522
    if-eqz v0, :cond_a

    .line 4523
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4525
    :cond_a
    :goto_8
    array-length v4, v3

    if-ge v0, v4, :cond_c

    .line 4526
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 4525
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 4520
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v0, v0

    goto :goto_7

    .line 4528
    :cond_c
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    .line 4529
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 4533
    :sswitch_b
    const/16 v0, 0x4d

    .line 4534
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4535
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-nez v0, :cond_e

    move v0, v1

    .line 4536
    :goto_9
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 4537
    if-eqz v0, :cond_d

    .line 4538
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4540
    :cond_d
    :goto_a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_f

    .line 4541
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 4542
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4540
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4535
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v0, v0

    goto :goto_9

    .line 4545
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 4546
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    goto/16 :goto_0

    .line 4550
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 4551
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 4552
    div-int/lit8 v3, v0, 0x4

    .line 4553
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-nez v0, :cond_11

    move v0, v1

    .line 4554
    :goto_b
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 4555
    if-eqz v0, :cond_10

    .line 4556
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4558
    :cond_10
    :goto_c
    array-length v4, v3

    if-ge v0, v4, :cond_12

    .line 4559
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 4558
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4553
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v0, v0

    goto :goto_b

    .line 4561
    :cond_12
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    .line 4562
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 4433
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_8
        0x3d -> :sswitch_7
        0x42 -> :sswitch_a
        0x45 -> :sswitch_9
        0x4a -> :sswitch_c
        0x4d -> :sswitch_b
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3346
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3347
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3349
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 3350
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3352
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 3353
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3355
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 3356
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3358
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 3359
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3361
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 3362
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3364
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 3365
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 3366
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3369
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 3370
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 3371
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3370
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3374
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v0, v0

    if-lez v0, :cond_8

    .line 3375
    :goto_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 3376
    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3375
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3379
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3380
    return-void
.end method
