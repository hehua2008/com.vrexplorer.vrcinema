.class public Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;
.super Ljava/lang/Object;
.source "GyroscopeBiasEstimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;
    }
.end annotation


# static fields
.field private static final ACCEL_DIFF_STATIC_THRESHOLD:F = 0.5f

.field private static final ACCEL_LOWPASS_FREQ:F = 1.0f

.field private static final GYRO_BIAS_LOWPASS_FREQ:F = 0.15f

.field private static final GYRO_DIFF_STATIC_THRESHOLD:F = 0.008f

.field private static final GYRO_FOR_BIAS_THRESHOLD:F = 0.35f

.field private static final GYRO_LOWPASS_FREQ:F = 10.0f

.field private static final IS_STATIC_NUM_FRAMES_THRESHOLD:I = 0xa

.field private static final NUM_GYRO_BIAS_SAMPLES_INITIAL_SMOOTHING:I = 0x64

.field private static final NUM_GYRO_BIAS_SAMPLES_THRESHOLD:I = 0x1e


# instance fields
.field private accelLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

.field private gyroBiasLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

.field private gyroLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

.field private isAccelStatic:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

.field private isGyroStatic:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

.field private smoothedAccelDiff:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private smoothedGyroDiff:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->reset()V

    .line 28
    return-void
.end method

.method private updateGyroBias(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;J)V
    .locals 10
    .param p1, "gyro"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p2, "sensorTimestampNs"    # J

    .prologue
    const-wide v8, 0x3fd6666660000000L    # 0.3499999940395355

    .line 68
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->length()D

    move-result-wide v0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_0

    .line 69
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->length()D

    move-result-wide v6

    div-double/2addr v6, v8

    sub-double/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 70
    .local v4, "updateWeight":D
    mul-double/2addr v4, v4

    .line 71
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->gyroBiasLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->gyroLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->getFilteredData()Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    move-result-object v1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->addWeightedSample(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;JD)V

    .line 73
    .end local v4    # "updateWeight":D
    :cond_0
    return-void
.end method


# virtual methods
.method public getGyroBias(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V
    .locals 8
    .param p1, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    .line 57
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->gyroBiasLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    invoke-virtual {v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->getNumSamples()I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->setZero()V

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->gyroBiasLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    invoke-virtual {v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->getFilteredData()Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 61
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->gyroBiasLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    invoke-virtual {v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->getNumSamples()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 62
    .local v0, "rampUpRatio":D
    invoke-virtual {p1, v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->scale(D)V

    goto :goto_0
.end method

.method public processAccelerometer(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;J)V
    .locals 6
    .param p1, "accel"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p2, "sensorTimestampNs"    # J

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->accelLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->addSample(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;J)V

    .line 52
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->accelLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->getFilteredData()Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->smoothedAccelDiff:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {p1, v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->sub(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 53
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->isAccelStatic:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->smoothedAccelDiff:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->length()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;->appendFrame(Z)V

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processGyroscope(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;J)V
    .locals 6
    .param p1, "gyro"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p2, "sensorTimestampNs"    # J

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->gyroLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->addSample(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;J)V

    .line 42
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->gyroLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->getFilteredData()Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->smoothedGyroDiff:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {p1, v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->sub(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 43
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->isGyroStatic:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->smoothedGyroDiff:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->length()D

    move-result-wide v2

    const-wide v4, 0x3f80624de0000000L    # 0.00800000037997961

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;->appendFrame(Z)V

    .line 44
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->isGyroStatic:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;->isRecentlyStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->isAccelStatic:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;->isRecentlyStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->updateGyroBias(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;J)V

    .line 48
    :cond_0
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/16 v1, 0xa

    .line 31
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->smoothedGyroDiff:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 32
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->smoothedAccelDiff:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 33
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;-><init>(D)V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->accelLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    .line 34
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-direct {v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;-><init>(D)V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->gyroLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    .line 35
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    const-wide v2, 0x3fc3333340000000L    # 0.15000000596046448

    invoke-direct {v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;-><init>(D)V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->gyroBiasLowPass:Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;

    .line 36
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    invoke-direct {v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;-><init>(I)V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->isAccelStatic:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    .line 37
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    invoke-direct {v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;-><init>(I)V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->isGyroStatic:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    .line 38
    return-void
.end method
