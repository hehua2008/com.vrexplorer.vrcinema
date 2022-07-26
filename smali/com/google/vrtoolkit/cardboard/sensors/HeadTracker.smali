.class public Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;
.super Ljava/lang/Object;
.source "HeadTracker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final DEFAULT_NECK_HORIZONTAL_OFFSET:F = 0.08f

.field private static final DEFAULT_NECK_MODEL_FACTOR:F = 1.0f

.field private static final DEFAULT_NECK_VERTICAL_OFFSET:F = 0.075f

.field private static final PREDICTION_TIME_IN_SECONDS:F = 0.058f


# instance fields
.field private clock:Lcom/google/vrtoolkit/cardboard/sensors/Clock;

.field private final display:Landroid/view/Display;

.field private displayRotation:F

.field private final ekfToHeadTracker:[F

.field private volatile firstGyroValue:Z

.field private final gyroBias:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private gyroBiasEstimator:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

.field private final gyroBiasEstimatorMutex:Ljava/lang/Object;

.field private initialSystemGyroBias:[F

.field private final latestAcc:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private final latestGyro:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private latestGyroEventClockTimeNs:J

.field private neckModelFactor:F

.field private final neckModelFactorMutex:Ljava/lang/Object;

.field private final neckModelTranslation:[F

.field private sensorEventProvider:Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;

.field private final sensorToDisplay:[F

.field private final tmpHeadView:[F

.field private final tmpHeadView2:[F

.field private final tracker:Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;

.field private volatile tracking:Z


# direct methods
.method public constructor <init>(Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;Lcom/google/vrtoolkit/cardboard/sensors/Clock;Landroid/view/Display;)V
    .locals 3
    .param p1, "sensorEventProvider"    # Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;
    .param p2, "clock"    # Lcom/google/vrtoolkit/cardboard/sensors/Clock;
    .param p3, "display"    # Landroid/view/Display;

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x10

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->ekfToHeadTracker:[F

    .line 31
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->sensorToDisplay:[F

    .line 32
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->displayRotation:F

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelTranslation:[F

    .line 34
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tmpHeadView:[F

    .line 35
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tmpHeadView2:[F

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelFactor:F

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelFactorMutex:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    .line 45
    iput-boolean v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->firstGyroValue:Z

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->initialSystemGyroBias:[F

    .line 47
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBias:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 48
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->latestGyro:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 49
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->latestAcc:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 58
    iput-object p2, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->clock:Lcom/google/vrtoolkit/cardboard/sensors/Clock;

    .line 59
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->sensorEventProvider:Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;

    .line 60
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tracker:Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;

    .line 61
    iput-object p3, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->display:Landroid/view/Display;

    .line 62
    invoke-virtual {p0, v2}, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->setGyroBiasEstimationEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelTranslation:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 64
    return-void
.end method

.method public static createFromContext(Landroid/content/Context;)Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 53
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 54
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;

    new-instance v3, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    invoke-direct {v3, v1}, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;-><init>(Landroid/hardware/SensorManager;)V

    new-instance v4, Lcom/google/vrtoolkit/cardboard/sensors/SystemClock;

    invoke-direct {v4}, Lcom/google/vrtoolkit/cardboard/sensors/SystemClock;-><init>()V

    invoke-direct {v2, v3, v4, v0}, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;-><init>(Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;Lcom/google/vrtoolkit/cardboard/sensors/Clock;Landroid/view/Display;)V

    return-object v2
.end method


# virtual methods
.method getCurrentPoseForTest()Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tracker:Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->getRotationMatrix()Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;-><init>(Lcom/google/vrtoolkit/cardboard/sensors/internal/Matrix3x3d;)V

    return-object v0
.end method

.method public getGyroBiasEstimationEnabled()Z
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    .line 179
    .local v0, "var1":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastHeadView([FI)V
    .locals 17
    .param p1, "headView"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 185
    add-int/lit8 v2, p2, 0x10

    move-object/from16 v0, p1

    array-length v3, v0

    if-le v2, v3, :cond_0

    .line 186
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not enough space to write the result"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_0
    const/4 v11, 0x0

    .line 189
    .local v11, "rotation":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 203
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->displayRotation:F

    cmpl-float v2, v11, v2

    if-eqz v2, :cond_1

    .line 204
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->displayRotation:F

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->sensorToDisplay:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    neg-float v6, v11

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->ekfToHeadTracker:[F

    const/4 v3, 0x0

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v11}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    .line 209
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tracker:Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;

    move-object/from16 v16, v0

    .line 210
    .local v16, "var4":Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tracker:Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;

    monitor-enter v3

    .line 211
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tracker:Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;

    invoke-virtual {v2}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->isReady()Z

    move-result v2

    if-nez v2, :cond_2

    .line 212
    monitor-exit v3

    .line 237
    :goto_1
    return-void

    .line 191
    .end local v16    # "var4":Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;
    :pswitch_0
    const/4 v11, 0x0

    .line 192
    goto :goto_0

    .line 194
    :pswitch_1
    const/high16 v11, 0x42b40000    # 90.0f

    .line 195
    goto :goto_0

    .line 197
    :pswitch_2
    const/high16 v11, 0x43340000    # 180.0f

    .line 198
    goto :goto_0

    .line 200
    :pswitch_3
    const/high16 v11, 0x43870000    # 270.0f

    goto :goto_0

    .line 215
    .restart local v16    # "var4":Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;
    :cond_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->clock:Lcom/google/vrtoolkit/cardboard/sensors/Clock;

    invoke-interface {v4}, Lcom/google/vrtoolkit/cardboard/sensors/Clock;->nanoTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->latestGyroEventClockTimeNs:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-double v12, v4

    .line 216
    .local v12, "secondsSinceLastGyroEvent":D
    const-wide v4, 0x3fadb22d00000000L    # 0.057999998331069946

    add-double v14, v12, v4

    .line 217
    .local v14, "secondsToPredictForward":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tracker:Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;

    invoke-virtual {v2, v14, v15}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->getPredictedGLMatrix(D)[D

    move-result-object v10

    .line 218
    .local v10, "mat":[D
    const/4 v9, 0x0

    .line 221
    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p1

    array-length v2, v0

    if-lt v9, v2, :cond_3

    .line 228
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tmpHeadView2:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->sensorToDisplay:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tmpHeadView:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tmpHeadView2:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->ekfToHeadTracker:[F

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelTranslation:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelTranslation:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelFactor:F

    neg-float v5, v5

    const v6, 0x3d99999a    # 0.075f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelFactor:F

    const v7, 0x3da3d70a    # 0.08f

    mul-float/2addr v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tmpHeadView:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelTranslation:[F

    const/4 v5, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tmpHeadView:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelFactor:F

    const v3, 0x3d99999a    # 0.075f

    mul-float v7, v2, v3

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v2 .. v8}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    goto/16 :goto_1

    .line 225
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tmpHeadView:[F

    aget-wide v4, v10, v9

    double-to-float v4, v4

    aput v4, v2, v9

    .line 226
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 228
    .end local v9    # "i":I
    .end local v10    # "mat":[D
    .end local v12    # "secondsSinceLastGyroEvent":D
    .end local v14    # "secondsToPredictForward":D
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNeckModelFactor()F
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelFactorMutex:Ljava/lang/Object;

    .line 149
    .local v0, "var1":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelFactorMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 150
    :try_start_0
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelFactor:F

    monitor-exit v2

    return v1

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 107
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x4

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 68
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 69
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->latestAcc:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    float-to-double v2, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    float-to-double v4, v4

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    float-to-double v6, v6

    invoke-virtual/range {v1 .. v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(DDD)V

    .line 70
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tracker:Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->latestAcc:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processAcc(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;J)V

    .line 71
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    .line 72
    .local v0, "var2":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->latestAcc:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->processAccelerometer(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;J)V

    .line 76
    :cond_0
    monitor-exit v2

    .line 104
    .end local v0    # "var2":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 76
    .restart local v0    # "var2":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 77
    .end local v0    # "var2":Ljava/lang/Object;
    :cond_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-eq v1, v4, :cond_3

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->clock:Lcom/google/vrtoolkit/cardboard/sensors/Clock;

    invoke-interface {v1}, Lcom/google/vrtoolkit/cardboard/sensors/Clock;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->latestGyroEventClockTimeNs:J

    .line 79
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 80
    iget-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->firstGyroValue:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 81
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->initialSystemGyroBias:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    aput v2, v1, v8

    .line 82
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->initialSystemGyroBias:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    aput v2, v1, v6

    .line 83
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->initialSystemGyroBias:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v1, v9

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->latestGyro:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->initialSystemGyroBias:[F

    aget v3, v3, v8

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->initialSystemGyroBias:[F

    aget v5, v5, v6

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->initialSystemGyroBias:[F

    aget v7, v7, v9

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual/range {v1 .. v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(DDD)V

    .line 91
    :goto_1
    iput-boolean v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->firstGyroValue:Z

    .line 92
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    .line 93
    .restart local v0    # "var2":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    :try_start_1
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

    if-eqz v1, :cond_5

    .line 95
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->latestGyro:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->processGyroscope(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;J)V

    .line 96
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBias:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v1, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->getGyroBias(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 97
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->latestGyro:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBias:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->latestGyro:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {v1, v3, v4}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->sub(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 99
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tracker:Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->latestGyro:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->processGyro(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;J)V

    goto/16 :goto_0

    .line 88
    .end local v0    # "var2":Ljava/lang/Object;
    :cond_6
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->latestGyro:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    float-to-double v2, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    float-to-double v4, v4

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    float-to-double v6, v6

    invoke-virtual/range {v1 .. v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(DDD)V

    goto :goto_1

    .line 99
    .restart local v0    # "var2":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public resetTracker()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tracker:Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->reset()V

    .line 128
    return-void
.end method

.method public setGyroBiasEstimationEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    .line 167
    .local v0, "var2":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 168
    if-nez p1, :cond_1

    .line 169
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

    .line 174
    :cond_0
    :goto_0
    monitor-exit v2

    .line 175
    return-void

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

    invoke-direct {v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;-><init>()V

    iput-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setGyroBiasEstimator(Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;)V
    .locals 3
    .param p1, "estimator"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    .line 245
    .local v0, "var2":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 246
    :try_start_0
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

    .line 247
    monitor-exit v2

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNeckModelEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->setNeckModelFactor(F)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->setNeckModelFactor(F)V

    goto :goto_0
.end method

.method public setNeckModelFactor(F)V
    .locals 4
    .param p1, "factor"    # F

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelFactorMutex:Ljava/lang/Object;

    .line 156
    .local v0, "var2":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelFactorMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 157
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 158
    :try_start_0
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->neckModelFactor:F

    .line 162
    monitor-exit v2

    .line 163
    return-void

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "factor should be within [0.0, 1.0]"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startTracking()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 110
    iget-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tracking:Z

    if-nez v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tracker:Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/OrientationEKF;->reset()V

    .line 112
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    .line 113
    .local v0, "var1":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/GyroscopeBiasEstimator;->reset()V

    .line 117
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iput-boolean v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->firstGyroValue:Z

    .line 120
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->sensorEventProvider:Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;

    invoke-interface {v1, p0}, Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;->registerListener(Landroid/hardware/SensorEventListener;)V

    .line 121
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->sensorEventProvider:Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;

    invoke-interface {v1}, Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;->start()V

    .line 122
    iput-boolean v3, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tracking:Z

    .line 124
    .end local v0    # "var1":Ljava/lang/Object;
    :cond_1
    return-void

    .line 117
    .restart local v0    # "var1":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopTracking()V
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tracking:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->sensorEventProvider:Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;

    invoke-interface {v0, p0}, Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 133
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->sensorEventProvider:Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;

    invoke-interface {v0}, Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;->stop()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->tracking:Z

    .line 136
    :cond_0
    return-void
.end method
