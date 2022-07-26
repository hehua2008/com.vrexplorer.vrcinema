.class public Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;
.super Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;
.source "CardboardMotionStrategy.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CardboardMotionStrategy"


# instance fields
.field private headTracker:Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;

.field private isOn:Z

.field private mDeviceSensorLooper:Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

.field private mIsSupport:Ljava/lang/Boolean;

.field private mRegistered:Z

.field private mTmpMatrix:[F

.field private final matrixLock:Ljava/lang/Object;

.field private updateSensorRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;)V
    .locals 1
    .param p1, "params"    # Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;-><init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mRegistered:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mIsSupport:Ljava/lang/Boolean;

    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mTmpMatrix:[F

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->matrixLock:Ljava/lang/Object;

    .line 162
    new-instance v0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy$2;

    invoke-direct {v0, p0}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy$2;-><init>(Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;)V

    iput-object v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->updateSensorRunnable:Ljava/lang/Runnable;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->unregisterSensor(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mRegistered:Z

    return v0
.end method

.method static synthetic access$200(Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->isOn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->matrixLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;)[F
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mTmpMatrix:[F

    return-object v0
.end method

.method private registerSensor(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 95
    iget-boolean v4, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mRegistered:Z

    if-eqz v4, :cond_0

    .line 120
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v4, "sensor"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 98
    .local v1, "mSensorManager":Landroid/hardware/SensorManager;
    invoke-virtual {v1, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 99
    .local v2, "sensor1":Landroid/hardware/Sensor;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 101
    .local v3, "sensor2":Landroid/hardware/Sensor;
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 102
    const-string v4, "CardboardMotionStrategy"

    const-string v5, "TYPE_ACCELEROMETER TYPE_GYROSCOPE sensor not support!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_1
    iget-object v4, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mDeviceSensorLooper:Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    if-nez v4, :cond_2

    .line 107
    new-instance v4, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->getParams()Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    move-result-object v5

    iget v5, v5, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->mMotionDelay:I

    invoke-direct {v4, v1, v5}, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;-><init>(Landroid/hardware/SensorManager;I)V

    iput-object v4, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mDeviceSensorLooper:Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    .line 110
    :cond_2
    iget-object v4, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->headTracker:Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;

    if-nez v4, :cond_3

    .line 111
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 112
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;

    iget-object v5, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mDeviceSensorLooper:Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    new-instance v6, Lcom/google/vrtoolkit/cardboard/sensors/SystemClock;

    invoke-direct {v6}, Lcom/google/vrtoolkit/cardboard/sensors/SystemClock;-><init>()V

    invoke-direct {v4, v5, v6, v0}, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;-><init>(Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;Lcom/google/vrtoolkit/cardboard/sensors/Clock;Landroid/view/Display;)V

    iput-object v4, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->headTracker:Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;

    .line 116
    .end local v0    # "display":Landroid/view/Display;
    :cond_3
    iget-object v4, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mDeviceSensorLooper:Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    invoke-virtual {v4, p0}, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->registerListener(Landroid/hardware/SensorEventListener;)V

    .line 117
    iget-object v4, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->headTracker:Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;

    invoke-virtual {v4}, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->startTracking()V

    .line 119
    iput-boolean v7, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mRegistered:Z

    goto :goto_0
.end method

.method private unregisterSensor(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mRegistered:Z

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mDeviceSensorLooper:Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    invoke-virtual {v0, p0}, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 127
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->headTracker:Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->stopTracking()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mRegistered:Z

    goto :goto_0
.end method


# virtual methods
.method public handleDrag(II)Z
    .locals 1
    .param p1, "distanceX"    # I
    .param p2, "distanceY"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isSupport(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 84
    iget-object v4, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mIsSupport:Ljava/lang/Boolean;

    if-nez v4, :cond_1

    .line 85
    const-string v4, "sensor"

    .line 86
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 87
    .local v0, "mSensorManager":Landroid/hardware/SensorManager;
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 88
    .local v1, "sensor1":Landroid/hardware/Sensor;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 89
    .local v2, "sensor2":Landroid/hardware/Sensor;
    if-nez v1, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mIsSupport:Ljava/lang/Boolean;

    .line 91
    .end local v0    # "mSensorManager":Landroid/hardware/SensorManager;
    .end local v1    # "sensor1":Landroid/hardware/Sensor;
    .end local v2    # "sensor2":Landroid/hardware/Sensor;
    :cond_1
    iget-object v3, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mIsSupport:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 89
    .restart local v0    # "mSensorManager":Landroid/hardware/SensorManager;
    .restart local v1    # "sensor1":Landroid/hardware/Sensor;
    .restart local v2    # "sensor2":Landroid/hardware/Sensor;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->getParams()Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    move-result-object v0

    iget-object v0, v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->getParams()Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    move-result-object v0

    iget-object v0, v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->matrixLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mTmpMatrix:[F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 156
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->headTracker:Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;

    iget-object v2, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mTmpMatrix:[F

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->getLastHeadView([FI)V

    .line 157
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->getParams()Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    move-result-object v0

    iget-object v0, v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->glHandler:Lcom/asha/vrlib/common/MDGLHandler;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->updateSensorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/common/MDGLHandler;->post(Ljava/lang/Runnable;)V

    .line 160
    return-void

    .line 157
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onOrientationChanged(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->unregisterSensor(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->registerSensor(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->isOn:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/hardware/SensorEvent;->accuracy:I

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->getParams()Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    move-result-object v0

    iget-object v0, v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->getParams()Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    move-result-object v0

    iget-object v0, v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->matrixLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mTmpMatrix:[F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 141
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->headTracker:Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;

    iget-object v2, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->mTmpMatrix:[F

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/HeadTracker;->getLastHeadView([FI)V

    .line 142
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->getParams()Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    move-result-object v0

    iget-object v0, v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->glHandler:Lcom/asha/vrlib/common/MDGLHandler;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->updateSensorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/common/MDGLHandler;->post(Ljava/lang/Runnable;)V

    .line 146
    :cond_1
    return-void

    .line 142
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public turnOffInGL(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->isOn:Z

    .line 74
    new-instance v0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy$1;

    invoke-direct {v0, p0, p1}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy$1;-><init>(Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public turnOnInGL(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->isOn:Z

    .line 66
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->getDirectorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/MD360Director;

    .line 67
    .local v0, "director":Lcom/asha/vrlib/MD360Director;
    invoke-virtual {v0}, Lcom/asha/vrlib/MD360Director;->reset()V

    goto :goto_0

    .line 69
    .end local v0    # "director":Lcom/asha/vrlib/MD360Director;
    :cond_0
    return-void
.end method
