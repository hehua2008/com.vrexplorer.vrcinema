.class public Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;
.super Ljava/lang/Object;
.source "DeviceSensorLooper.java"

# interfaces
.implements Lcom/google/vrtoolkit/cardboard/sensors/SensorEventProvider;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private isRunning:Z

.field private level:I

.field private final registeredListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SensorEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private sensorEventListener:Landroid/hardware/SensorEventListener;

.field private sensorLooper:Landroid/os/Looper;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;-><init>(Landroid/hardware/SensorManager;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;I)V
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "level"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->sensorManager:Landroid/hardware/SensorManager;

    .line 32
    iput p2, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->level:I

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    .prologue
    .line 21
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->level:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->getUncalibratedGyro()Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getUncalibratedGyro()Landroid/hardware/Sensor;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public registerListener(Landroid/hardware/SensorEventListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;

    .line 102
    .local v0, "var2":Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    monitor-exit v2

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 44
    iget-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->isRunning:Z

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper$1;

    invoke-direct {v1, p0}, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper$1;-><init>(Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;)V

    iput-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 70
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper$2;

    const-string v1, "sensor"

    invoke-direct {v0, p0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper$2;-><init>(Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;Ljava/lang/String;)V

    .line 84
    .local v0, "sensorThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->sensorLooper:Landroid/os/Looper;

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->isRunning:Z

    .line 88
    .end local v0    # "sensorThread":Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->isRunning:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 93
    iput-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 94
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->sensorLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 95
    iput-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->sensorLooper:Landroid/os/Looper;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->isRunning:Z

    .line 98
    :cond_0
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;

    .line 109
    .local v0, "var2":Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v2

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
