.class public Lcom/asha/vrlib/strategy/interactive/MotionStrategy;
.super Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;
.source "MotionStrategy.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionStrategy"


# instance fields
.field private isOn:Z

.field private mDeviceRotation:I

.field private mIsSupport:Ljava/lang/Boolean;

.field private final mMatrixLock:Ljava/lang/Object;

.field private mRegistered:Z

.field private mSensorMatrix:[F

.field private mTmpMatrix:[F

.field private updateSensorRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;)V
    .locals 2
    .param p1, "params"    # Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    .prologue
    const/16 v1, 0x10

    .line 38
    invoke-direct {p0, p1}, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;-><init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;)V

    .line 25
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mSensorMatrix:[F

    .line 27
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mTmpMatrix:[F

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mRegistered:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mIsSupport:Ljava/lang/Boolean;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mMatrixLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy$2;

    invoke-direct {v0, p0}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy$2;-><init>(Lcom/asha/vrlib/strategy/interactive/MotionStrategy;)V

    iput-object v0, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->updateSensorRunnable:Ljava/lang/Runnable;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/asha/vrlib/strategy/interactive/MotionStrategy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mRegistered:Z

    return v0
.end method

.method static synthetic access$100(Lcom/asha/vrlib/strategy/interactive/MotionStrategy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->isOn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/asha/vrlib/strategy/interactive/MotionStrategy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mMatrixLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asha/vrlib/strategy/interactive/MotionStrategy;)[F
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mTmpMatrix:[F

    return-object v0
.end method


# virtual methods
.method public handleDrag(II)Z
    .locals 1
    .param p1, "distanceX"    # I
    .param p2, "distanceY"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isSupport(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    iget-object v2, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mIsSupport:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 86
    const-string v2, "sensor"

    .line 87
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 88
    .local v0, "mSensorManager":Landroid/hardware/SensorManager;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 89
    .local v1, "sensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mIsSupport:Ljava/lang/Boolean;

    .line 91
    .end local v0    # "mSensorManager":Landroid/hardware/SensorManager;
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    iget-object v2, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mIsSupport:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 89
    .restart local v0    # "mSensorManager":Landroid/hardware/SensorManager;
    .restart local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->getParams()Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    move-result-object v0

    iget-object v0, v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->getParams()Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    move-result-object v0

    iget-object v0, v0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 162
    :cond_0
    return-void
.end method

.method public onOrientationChanged(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 59
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mDeviceRotation:I

    .line 60
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->unregisterSensor(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->registerSensor(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 123
    iget-boolean v1, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->isOn:Z

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->getParams()Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    move-result-object v1

    iget-object v1, v1, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->getParams()Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    move-result-object v1

    iget-object v1, v1, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v1, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 128
    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 129
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 142
    .end local v0    # "type":I
    :cond_1
    :goto_0
    return-void

    .line 132
    .restart local v0    # "type":I
    :pswitch_0
    iget v1, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mDeviceRotation:I

    iget-object v2, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mSensorMatrix:[F

    invoke-static {p1, v1, v2}, Lcom/asha/vrlib/common/VRUtil;->sensorRotationVector2Matrix(Landroid/hardware/SensorEvent;I[F)V

    .line 135
    iget-object v2, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mMatrixLock:Ljava/lang/Object;

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mSensorMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mTmpMatrix:[F

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->getParams()Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    move-result-object v1

    iget-object v1, v1, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->glHandler:Lcom/asha/vrlib/common/MDGLHandler;

    iget-object v2, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->updateSensorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/asha/vrlib/common/MDGLHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 129
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method protected registerSensor(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    iget-boolean v2, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mRegistered:Z

    if-eqz v2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v2, "sensor"

    .line 98
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 99
    .local v0, "mSensorManager":Landroid/hardware/SensorManager;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 101
    .local v1, "sensor":Landroid/hardware/Sensor;
    if-nez v1, :cond_1

    .line 102
    const-string v2, "MotionStrategy"

    const-string v3, "TYPE_ROTATION_VECTOR sensor not support!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->getParams()Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;

    move-result-object v2

    iget v2, v2, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$Params;->mMotionDelay:I

    invoke-static {}, Lcom/asha/vrlib/common/MDMainHandler;->sharedHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 108
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mRegistered:Z

    goto :goto_0
.end method

.method public turnOffInGL(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->isOn:Z

    .line 75
    new-instance v0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy$1;

    invoke-direct {v0, p0, p1}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy$1;-><init>(Lcom/asha/vrlib/strategy/interactive/MotionStrategy;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public turnOnInGL(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->isOn:Z

    .line 65
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 66
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mDeviceRotation:I

    .line 67
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->getDirectorList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/MD360Director;

    .line 68
    .local v0, "director":Lcom/asha/vrlib/MD360Director;
    invoke-virtual {v0}, Lcom/asha/vrlib/MD360Director;->reset()V

    goto :goto_0

    .line 70
    .end local v0    # "director":Lcom/asha/vrlib/MD360Director;
    :cond_0
    return-void
.end method

.method protected unregisterSensor(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    iget-boolean v1, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mRegistered:Z

    if-nez v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v1, "sensor"

    .line 115
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 116
    .local v0, "mSensorManager":Landroid/hardware/SensorManager;
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 118
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->mRegistered:Z

    goto :goto_0
.end method
