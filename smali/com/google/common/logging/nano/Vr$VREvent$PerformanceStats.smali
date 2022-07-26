.class public final Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private averageFps:Ljava/lang/Integer;

.field private batteryShutdownTemperature:[F

.field private batteryThrottlingTemperature:[F

.field private consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private cpuShutdownTemperature:[F

.field private cpuThrottlingTemperature:[F

.field private frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private gpuShutdownTemperature:[F

.field private gpuThrottlingTemperature:[F

.field private memoryConsumptionKilobytes:Ljava/lang/Integer;

.field private postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private shutdownSkinTemperatureCelsius:Ljava/lang/Float;

.field private thermalEventFlags:Ljava/lang/Integer;

.field private throttleSkinTemperatureCelsius:Ljava/lang/Float;

.field private timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

.field private totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private vrMaxSkinTemperatureCelsius:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3811
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4816
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    .line 4817
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4818
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    .line 4819
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    .line 4820
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    .line 4821
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    .line 4822
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 4823
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4824
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4825
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4826
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4827
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4828
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4829
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    .line 4830
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    .line 4831
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    .line 4832
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    .line 4833
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    .line 4834
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    .line 4835
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    .line 4836
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4837
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cachedSize:I

    .line 3813
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3844
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3848
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 3849
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 3850
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 3851
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 3852
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v1

    .line 3850
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3845
    :catch_0
    move-exception v0

    .line 3846
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 3856
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-eqz v1, :cond_2

    .line 3857
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 3859
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 3860
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 3861
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 3862
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    .line 3863
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v1

    .line 3861
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3867
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 3868
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 3869
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 3870
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    .line 3871
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v1

    .line 3869
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3875
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_8

    .line 3876
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 3877
    :goto_3
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    .line 3878
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    if-eqz v3, :cond_7

    .line 3879
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v1

    .line 3877
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3883
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_a

    .line 3884
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 3885
    :goto_4
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v1, v3, :cond_a

    .line 3886
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    if-eqz v3, :cond_9

    .line 3887
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v1

    .line 3885
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3891
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_c

    .line 3892
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 3893
    :goto_5
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v1, v3, :cond_c

    .line 3894
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    if-eqz v3, :cond_b

    .line 3895
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v1

    .line 3893
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3899
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_e

    .line 3900
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3901
    :goto_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    if-ge v2, v1, :cond_e

    .line 3902
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v1, v1, v2

    if-eqz v1, :cond_d

    .line 3903
    iget-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3901
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3907
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_f

    .line 3908
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    .line 3910
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_10

    .line 3911
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    .line 3913
    :cond_10
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_11

    .line 3914
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    .line 3916
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_12

    .line 3917
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    .line 3919
    :cond_12
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_13

    .line 3920
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    .line 3922
    :cond_13
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_14

    .line 3923
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    .line 3925
    :cond_14
    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3725
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

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
    .line 3725
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

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
    .line 3725
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4044
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4045
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 4046
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    .line 4047
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4049
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 4050
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 4051
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v0

    .line 4052
    if-eqz v3, :cond_1

    .line 4053
    const/4 v4, 0x2

    .line 4054
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4050
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 4058
    :cond_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 4059
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    .line 4060
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4062
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v2, :cond_5

    .line 4063
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    .line 4064
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 4066
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v2, :cond_6

    .line 4067
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    .line 4068
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 4070
    :cond_6
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v2, :cond_7

    .line 4071
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    .line 4072
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 4074
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-eqz v2, :cond_8

    .line 4075
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 4076
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4078
    :cond_8
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_b

    move v2, v0

    move v0, v1

    .line 4079
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    .line 4080
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v0

    .line 4081
    if-eqz v3, :cond_9

    .line 4082
    const/16 v4, 0x8

    .line 4083
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4079
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    move v0, v2

    .line 4087
    :cond_b
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_e

    move v2, v0

    move v0, v1

    .line 4088
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_d

    .line 4089
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v0

    .line 4090
    if-eqz v3, :cond_c

    .line 4091
    const/16 v4, 0x9

    .line 4092
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4088
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    move v0, v2

    .line 4096
    :cond_e
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_11

    move v2, v0

    move v0, v1

    .line 4097
    :goto_3
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_10

    .line 4098
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v0

    .line 4099
    if-eqz v3, :cond_f

    .line 4100
    const/16 v4, 0xa

    .line 4101
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4097
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_10
    move v0, v2

    .line 4105
    :cond_11
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_14

    move v2, v0

    move v0, v1

    .line 4106
    :goto_4
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_13

    .line 4107
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v0

    .line 4108
    if-eqz v3, :cond_12

    .line 4109
    const/16 v4, 0xb

    .line 4110
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4106
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_13
    move v0, v2

    .line 4114
    :cond_14
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_17

    move v2, v0

    move v0, v1

    .line 4115
    :goto_5
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_16

    .line 4116
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v0

    .line 4117
    if-eqz v3, :cond_15

    .line 4118
    const/16 v4, 0xc

    .line 4119
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4115
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    move v0, v2

    .line 4123
    :cond_17
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_19

    .line 4124
    :goto_6
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_19

    .line 4125
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v2, v2, v1

    .line 4126
    if-eqz v2, :cond_18

    .line 4127
    const/16 v3, 0xd

    .line 4128
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4124
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4132
    :cond_19
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    if-eqz v1, :cond_1a

    .line 4133
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    .line 4134
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4136
    :cond_1a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_1b

    .line 4137
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 4138
    add-int/2addr v0, v1

    .line 4139
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 4141
    :cond_1b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_1c

    .line 4142
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 4143
    add-int/2addr v0, v1

    .line 4144
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 4146
    :cond_1c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_1d

    .line 4147
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 4148
    add-int/2addr v0, v1

    .line 4149
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 4151
    :cond_1d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_1e

    .line 4152
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 4153
    add-int/2addr v0, v1

    .line 4154
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 4156
    :cond_1e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_1f

    .line 4157
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 4158
    add-int/2addr v0, v1

    .line 4159
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 4161
    :cond_1f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_20

    .line 4162
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 4163
    add-int/2addr v0, v1

    .line 4164
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 4166
    :cond_20
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

    .line 3725
    .line 5174
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5175
    sparse-switch v0, :sswitch_data_0

    .line 5179
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5180
    :sswitch_0
    return-object p0

    .line 5185
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    goto :goto_0

    .line 5189
    :sswitch_2
    const/16 v0, 0x12

    .line 5190
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5191
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_2

    move v0, v1

    .line 5192
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5194
    if-eqz v0, :cond_1

    .line 5195
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5197
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 5198
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 5199
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5200
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5197
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5191
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    goto :goto_1

    .line 5203
    :cond_3
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 5204
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5205
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto :goto_0

    .line 5209
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    goto :goto_0

    .line 5213
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    goto :goto_0

    .line 5217
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    goto :goto_0

    .line 5221
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    goto/16 :goto_0

    .line 5225
    :sswitch_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-nez v0, :cond_4

    .line 5226
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 5228
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5232
    :sswitch_8
    const/16 v0, 0x42

    .line 5233
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5234
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_6

    move v0, v1

    .line 5235
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5237
    if-eqz v0, :cond_5

    .line 5238
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5240
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 5241
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 5242
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5243
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5240
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5234
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    goto :goto_3

    .line 5246
    :cond_7
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 5247
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5248
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 5252
    :sswitch_9
    const/16 v0, 0x4a

    .line 5253
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5254
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_9

    move v0, v1

    .line 5255
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5257
    if-eqz v0, :cond_8

    .line 5258
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5260
    :cond_8
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 5261
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 5262
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5263
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5260
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 5254
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    goto :goto_5

    .line 5266
    :cond_a
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 5267
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5268
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 5272
    :sswitch_a
    const/16 v0, 0x52

    .line 5273
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5274
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_c

    move v0, v1

    .line 5275
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5277
    if-eqz v0, :cond_b

    .line 5278
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5280
    :cond_b
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 5281
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 5282
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5283
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5280
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 5274
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    goto :goto_7

    .line 5286
    :cond_d
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 5287
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5288
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 5292
    :sswitch_b
    const/16 v0, 0x5a

    .line 5293
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5294
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_f

    move v0, v1

    .line 5295
    :goto_9
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5297
    if-eqz v0, :cond_e

    .line 5298
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5300
    :cond_e
    :goto_a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_10

    .line 5301
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 5302
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5303
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5300
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 5294
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    goto :goto_9

    .line 5306
    :cond_10
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 5307
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5308
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 5312
    :sswitch_c
    const/16 v0, 0x62

    .line 5313
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5314
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_12

    move v0, v1

    .line 5315
    :goto_b
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5317
    if-eqz v0, :cond_11

    .line 5318
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5320
    :cond_11
    :goto_c
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_13

    .line 5321
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 5322
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5323
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5320
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 5314
    :cond_12
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    goto :goto_b

    .line 5326
    :cond_13
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 5327
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5328
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 5332
    :sswitch_d
    const/16 v0, 0x6a

    .line 5333
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5334
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_15

    move v0, v1

    .line 5335
    :goto_d
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5337
    if-eqz v0, :cond_14

    .line 5338
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5340
    :cond_14
    :goto_e
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_16

    .line 5341
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 5342
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5343
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5340
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 5334
    :cond_15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    goto :goto_d

    .line 5346
    :cond_16
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 5347
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5348
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 5352
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 5356
    :sswitch_f
    const/16 v0, 0x7d

    .line 5357
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5358
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-nez v0, :cond_18

    move v0, v1

    .line 5359
    :goto_f
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 5360
    if-eqz v0, :cond_17

    .line 5361
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5363
    :cond_17
    :goto_10
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_19

    .line 5364
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 5365
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5363
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 5358
    :cond_18
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v0, v0

    goto :goto_f

    .line 5368
    :cond_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 5369
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    goto/16 :goto_0

    .line 5373
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 5374
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 5375
    div-int/lit8 v3, v0, 0x4

    .line 5376
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-nez v0, :cond_1b

    move v0, v1

    .line 5377
    :goto_11
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 5378
    if-eqz v0, :cond_1a

    .line 5379
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5381
    :cond_1a
    :goto_12
    array-length v4, v3

    if-ge v0, v4, :cond_1c

    .line 5382
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 5381
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 5376
    :cond_1b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v0, v0

    goto :goto_11

    .line 5384
    :cond_1c
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    .line 5385
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 5389
    :sswitch_11
    const/16 v0, 0x85

    .line 5390
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5391
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-nez v0, :cond_1e

    move v0, v1

    .line 5392
    :goto_13
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 5393
    if-eqz v0, :cond_1d

    .line 5394
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5396
    :cond_1d
    :goto_14
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1f

    .line 5397
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 5398
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5396
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 5391
    :cond_1e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v0, v0

    goto :goto_13

    .line 5401
    :cond_1f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 5402
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    goto/16 :goto_0

    .line 5406
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 5407
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 5408
    div-int/lit8 v3, v0, 0x4

    .line 5409
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-nez v0, :cond_21

    move v0, v1

    .line 5410
    :goto_15
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 5411
    if-eqz v0, :cond_20

    .line 5412
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5414
    :cond_20
    :goto_16
    array-length v4, v3

    if-ge v0, v4, :cond_22

    .line 5415
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 5414
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 5409
    :cond_21
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v0, v0

    goto :goto_15

    .line 5417
    :cond_22
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    .line 5418
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 5422
    :sswitch_13
    const/16 v0, 0x8d

    .line 5423
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5424
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-nez v0, :cond_24

    move v0, v1

    .line 5425
    :goto_17
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 5426
    if-eqz v0, :cond_23

    .line 5427
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5429
    :cond_23
    :goto_18
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_25

    .line 5430
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 5431
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5429
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 5424
    :cond_24
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v0, v0

    goto :goto_17

    .line 5434
    :cond_25
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 5435
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    goto/16 :goto_0

    .line 5439
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 5440
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 5441
    div-int/lit8 v3, v0, 0x4

    .line 5442
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-nez v0, :cond_27

    move v0, v1

    .line 5443
    :goto_19
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 5444
    if-eqz v0, :cond_26

    .line 5445
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5447
    :cond_26
    :goto_1a
    array-length v4, v3

    if-ge v0, v4, :cond_28

    .line 5448
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 5447
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 5442
    :cond_27
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v0, v0

    goto :goto_19

    .line 5450
    :cond_28
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    .line 5451
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 5455
    :sswitch_15
    const/16 v0, 0x95

    .line 5456
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5457
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-nez v0, :cond_2a

    move v0, v1

    .line 5458
    :goto_1b
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 5459
    if-eqz v0, :cond_29

    .line 5460
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5462
    :cond_29
    :goto_1c
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2b

    .line 5463
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 5464
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5462
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 5457
    :cond_2a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v0, v0

    goto :goto_1b

    .line 5467
    :cond_2b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 5468
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    goto/16 :goto_0

    .line 5472
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 5473
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 5474
    div-int/lit8 v3, v0, 0x4

    .line 5475
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-nez v0, :cond_2d

    move v0, v1

    .line 5476
    :goto_1d
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 5477
    if-eqz v0, :cond_2c

    .line 5478
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5480
    :cond_2c
    :goto_1e
    array-length v4, v3

    if-ge v0, v4, :cond_2e

    .line 5481
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 5480
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 5475
    :cond_2d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v0, v0

    goto :goto_1d

    .line 5483
    :cond_2e
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    .line 5484
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 5488
    :sswitch_17
    const/16 v0, 0x9d

    .line 5489
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5490
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-nez v0, :cond_30

    move v0, v1

    .line 5491
    :goto_1f
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 5492
    if-eqz v0, :cond_2f

    .line 5493
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5495
    :cond_2f
    :goto_20
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_31

    .line 5496
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 5497
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5495
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 5490
    :cond_30
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v0, v0

    goto :goto_1f

    .line 5500
    :cond_31
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 5501
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    goto/16 :goto_0

    .line 5505
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 5506
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 5507
    div-int/lit8 v3, v0, 0x4

    .line 5508
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-nez v0, :cond_33

    move v0, v1

    .line 5509
    :goto_21
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 5510
    if-eqz v0, :cond_32

    .line 5511
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5513
    :cond_32
    :goto_22
    array-length v4, v3

    if-ge v0, v4, :cond_34

    .line 5514
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 5513
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 5508
    :cond_33
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v0, v0

    goto :goto_21

    .line 5516
    :cond_34
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    .line 5517
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 5521
    :sswitch_19
    const/16 v0, 0xa5

    .line 5522
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5523
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-nez v0, :cond_36

    move v0, v1

    .line 5524
    :goto_23
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 5525
    if-eqz v0, :cond_35

    .line 5526
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5528
    :cond_35
    :goto_24
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_37

    .line 5529
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 5530
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5528
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 5523
    :cond_36
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v0, v0

    goto :goto_23

    .line 5533
    :cond_37
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 5534
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    goto/16 :goto_0

    .line 5538
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 5539
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 5540
    div-int/lit8 v3, v0, 0x4

    .line 5541
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-nez v0, :cond_39

    move v0, v1

    .line 5542
    :goto_25
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 5543
    if-eqz v0, :cond_38

    .line 5544
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5546
    :cond_38
    :goto_26
    array-length v4, v3

    if-ge v0, v4, :cond_3a

    .line 5547
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 5546
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 5541
    :cond_39
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v0, v0

    goto :goto_25

    .line 5549
    :cond_3a
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    .line 5550
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 5175
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x70 -> :sswitch_e
        0x7a -> :sswitch_10
        0x7d -> :sswitch_f
        0x82 -> :sswitch_12
        0x85 -> :sswitch_11
        0x8a -> :sswitch_14
        0x8d -> :sswitch_13
        0x92 -> :sswitch_16
        0x95 -> :sswitch_15
        0x9a -> :sswitch_18
        0x9d -> :sswitch_17
        0xa2 -> :sswitch_1a
        0xa5 -> :sswitch_19
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

    .line 3932
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3933
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3935
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 3936
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 3937
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v2, v2, v0

    .line 3938
    if-eqz v2, :cond_1

    .line 3939
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3936
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3943
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 3944
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3946
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 3947
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3949
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 3950
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3952
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 3953
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3955
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-eqz v0, :cond_7

    .line 3956
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3958
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v1

    .line 3959
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 3960
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v2, v2, v0

    .line 3961
    if-eqz v2, :cond_8

    .line 3962
    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3959
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3966
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v1

    .line 3967
    :goto_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 3968
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v2, v2, v0

    .line 3969
    if-eqz v2, :cond_a

    .line 3970
    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3967
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3974
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_d

    move v0, v1

    .line 3975
    :goto_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_d

    .line 3976
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v2, v2, v0

    .line 3977
    if-eqz v2, :cond_c

    .line 3978
    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3975
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3982
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_f

    move v0, v1

    .line 3983
    :goto_4
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_f

    .line 3984
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v2, v2, v0

    .line 3985
    if-eqz v2, :cond_e

    .line 3986
    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3983
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3990
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_11

    move v0, v1

    .line 3991
    :goto_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    .line 3992
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v2, v2, v0

    .line 3993
    if-eqz v2, :cond_10

    .line 3994
    const/16 v3, 0xc

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3991
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3998
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_13

    move v0, v1

    .line 3999
    :goto_6
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_13

    .line 4000
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v2, v2, v0

    .line 4001
    if-eqz v2, :cond_12

    .line 4002
    const/16 v3, 0xd

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3999
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4006
    :cond_13
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    .line 4007
    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4009
    :cond_14
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v0, v0

    if-lez v0, :cond_15

    move v0, v1

    .line 4010
    :goto_7
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 4011
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4010
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4014
    :cond_15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v0, v0

    if-lez v0, :cond_16

    move v0, v1

    .line 4015
    :goto_8
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v2, v2

    if-ge v0, v2, :cond_16

    .line 4016
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4015
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 4019
    :cond_16
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v0, v0

    if-lez v0, :cond_17

    move v0, v1

    .line 4020
    :goto_9
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v2, v2

    if-ge v0, v2, :cond_17

    .line 4021
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4020
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4024
    :cond_17
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v0, v0

    if-lez v0, :cond_18

    move v0, v1

    .line 4025
    :goto_a
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v2, v2

    if-ge v0, v2, :cond_18

    .line 4026
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4025
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4029
    :cond_18
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v0, v0

    if-lez v0, :cond_19

    move v0, v1

    .line 4030
    :goto_b
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 4031
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4030
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 4034
    :cond_19
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v0, v0

    if-lez v0, :cond_1a

    .line 4035
    :goto_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v0, v0

    if-ge v1, v0, :cond_1a

    .line 4036
    const/16 v0, 0x14

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4035
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4039
    :cond_1a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4040
    return-void
.end method
