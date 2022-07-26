.class public Lcom/facebook/react/common/ShakeDetector;
.super Ljava/lang/Object;
.source "ShakeDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/common/ShakeDetector$ShakeListener;
    }
.end annotation


# static fields
.field private static final MAGNITUDE_THRESHOLD:I = 0x19

.field private static final MAX_SAMPLES:I = 0x28

.field private static final MIN_TIME_BETWEEN_SAMPLES_NS:J

.field private static final PERCENT_OVER_THRESHOLD_FOR_SHAKE:I = 0x3c

.field private static final SHAKING_WINDOW_NS:F

.field private static final VISIBLE_TIME_RANGE_NS:J


# instance fields
.field private mCurrentIndex:I

.field private mLastShakeTimestamp:J

.field private mLastTimestamp:J

.field private mMagnitudes:[D
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMinNumShakes:I

.field private mNumShakes:I

.field private mSensorManager:Landroid/hardware/SensorManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mShakeListener:Lcom/facebook/react/common/ShakeDetector$ShakeListener;

.field private mTimestamps:[J
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/react/common/ShakeDetector;->MIN_TIME_BETWEEN_SAMPLES_NS:J

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xfa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/react/common/ShakeDetector;->VISIBLE_TIME_RANGE_NS:J

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-float v0, v0

    sput v0, Lcom/facebook/react/common/ShakeDetector;->SHAKING_WINDOW_NS:F

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/common/ShakeDetector$ShakeListener;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/common/ShakeDetector;-><init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/react/common/ShakeDetector$ShakeListener;
    .param p2, "minNumShakes"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/facebook/react/common/ShakeDetector;->mShakeListener:Lcom/facebook/react/common/ShakeDetector$ShakeListener;

    .line 66
    iput p2, p0, Lcom/facebook/react/common/ShakeDetector;->mMinNumShakes:I

    .line 67
    return-void
.end method

.method private maybeDispatchShake(J)V
    .locals 13
    .param p1, "currentTimestamp"    # J

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 124
    iget-object v4, p0, Lcom/facebook/react/common/ShakeDetector;->mTimestamps:[J

    invoke-static {v4}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v4, p0, Lcom/facebook/react/common/ShakeDetector;->mMagnitudes:[D

    invoke-static {v4}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "numOverThreshold":I
    const/4 v3, 0x0

    .line 129
    .local v3, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x28

    if-ge v0, v4, :cond_1

    .line 130
    iget v4, p0, Lcom/facebook/react/common/ShakeDetector;->mCurrentIndex:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x28

    rem-int/lit8 v1, v4, 0x28

    .line 131
    .local v1, "index":I
    iget-object v4, p0, Lcom/facebook/react/common/ShakeDetector;->mTimestamps:[J

    aget-wide v4, v4, v1

    sub-long v4, p1, v4

    sget-wide v6, Lcom/facebook/react/common/ShakeDetector;->VISIBLE_TIME_RANGE_NS:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 132
    add-int/lit8 v3, v3, 0x1

    .line 133
    iget-object v4, p0, Lcom/facebook/react/common/ShakeDetector;->mMagnitudes:[D

    aget-wide v4, v4, v1

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    .line 134
    add-int/lit8 v2, v2, 0x1

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "index":I
    :cond_1
    int-to-double v4, v2

    int-to-double v6, v3

    div-double/2addr v4, v6

    const-wide v6, 0x3fe3333333333333L    # 0.6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 139
    iget-wide v4, p0, Lcom/facebook/react/common/ShakeDetector;->mLastShakeTimestamp:J

    sub-long v4, p1, v4

    sget-wide v6, Lcom/facebook/react/common/ShakeDetector;->VISIBLE_TIME_RANGE_NS:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 140
    iget v4, p0, Lcom/facebook/react/common/ShakeDetector;->mNumShakes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/facebook/react/common/ShakeDetector;->mNumShakes:I

    .line 142
    :cond_2
    iput-wide p1, p0, Lcom/facebook/react/common/ShakeDetector;->mLastShakeTimestamp:J

    .line 143
    iget v4, p0, Lcom/facebook/react/common/ShakeDetector;->mNumShakes:I

    iget v5, p0, Lcom/facebook/react/common/ShakeDetector;->mMinNumShakes:I

    if-lt v4, v5, :cond_3

    .line 144
    iput v8, p0, Lcom/facebook/react/common/ShakeDetector;->mNumShakes:I

    .line 145
    iput-wide v10, p0, Lcom/facebook/react/common/ShakeDetector;->mLastShakeTimestamp:J

    .line 146
    iget-object v4, p0, Lcom/facebook/react/common/ShakeDetector;->mShakeListener:Lcom/facebook/react/common/ShakeDetector$ShakeListener;

    invoke-interface {v4}, Lcom/facebook/react/common/ShakeDetector$ShakeListener;->onShake()V

    .line 149
    :cond_3
    iget-wide v4, p0, Lcom/facebook/react/common/ShakeDetector;->mLastShakeTimestamp:J

    sub-long v4, p1, v4

    long-to-float v4, v4

    sget v5, Lcom/facebook/react/common/ShakeDetector;->SHAKING_WINDOW_NS:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 150
    iput v8, p0, Lcom/facebook/react/common/ShakeDetector;->mNumShakes:I

    .line 151
    iput-wide v10, p0, Lcom/facebook/react/common/ShakeDetector;->mLastShakeTimestamp:J

    .line 153
    :cond_4
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .prologue
    .line 121
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 99
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v6, p0, Lcom/facebook/react/common/ShakeDetector;->mLastTimestamp:J

    sub-long/2addr v4, v6

    sget-wide v6, Lcom/facebook/react/common/ShakeDetector;->MIN_TIME_BETWEEN_SAMPLES_NS:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 117
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/facebook/react/common/ShakeDetector;->mTimestamps:[J

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v3, p0, Lcom/facebook/react/common/ShakeDetector;->mMagnitudes:[D

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 107
    .local v0, "ax":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v1, v3, v4

    .line 108
    .local v1, "ay":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v2, v3, v4

    .line 110
    .local v2, "az":F
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, p0, Lcom/facebook/react/common/ShakeDetector;->mLastTimestamp:J

    .line 111
    iget-object v3, p0, Lcom/facebook/react/common/ShakeDetector;->mTimestamps:[J

    iget v4, p0, Lcom/facebook/react/common/ShakeDetector;->mCurrentIndex:I

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    aput-wide v6, v3, v4

    .line 112
    iget-object v3, p0, Lcom/facebook/react/common/ShakeDetector;->mMagnitudes:[D

    iget v4, p0, Lcom/facebook/react/common/ShakeDetector;->mCurrentIndex:I

    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 114
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v4, v5}, Lcom/facebook/react/common/ShakeDetector;->maybeDispatchShake(J)V

    .line 116
    iget v3, p0, Lcom/facebook/react/common/ShakeDetector;->mCurrentIndex:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x28

    iput v3, p0, Lcom/facebook/react/common/ShakeDetector;->mCurrentIndex:I

    goto :goto_0
.end method

.method public start(Landroid/hardware/SensorManager;)V
    .locals 6
    .param p1, "manager"    # Landroid/hardware/SensorManager;

    .prologue
    const/16 v5, 0x28

    const/4 v4, 0x0

    .line 73
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 75
    .local v0, "accelerometer":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 76
    iput-object p1, p0, Lcom/facebook/react/common/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 77
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/facebook/react/common/ShakeDetector;->mLastTimestamp:J

    .line 78
    iput v4, p0, Lcom/facebook/react/common/ShakeDetector;->mCurrentIndex:I

    .line 79
    new-array v1, v5, [D

    iput-object v1, p0, Lcom/facebook/react/common/ShakeDetector;->mMagnitudes:[D

    .line 80
    new-array v1, v5, [J

    iput-object v1, p0, Lcom/facebook/react/common/ShakeDetector;->mTimestamps:[J

    .line 81
    iget-object v1, p0, Lcom/facebook/react/common/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 82
    iput v4, p0, Lcom/facebook/react/common/ShakeDetector;->mNumShakes:I

    .line 83
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/react/common/ShakeDetector;->mLastShakeTimestamp:J

    .line 85
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/react/common/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/facebook/react/common/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/common/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 95
    :cond_0
    return-void
.end method
