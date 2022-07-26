.class Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper$1;
.super Ljava/lang/Object;
.source "DeviceSensorLooper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;


# direct methods
.method constructor <init>(Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper$1;->this$0:Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 59
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper$1;->this$0:Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    invoke-static {v2}, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->access$000(Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper$1;->this$0:Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    invoke-static {v2}, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->access$000(Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 62
    .local v1, "var4":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEventListener;

    .line 64
    .local v0, "listener":Landroid/hardware/SensorEventListener;
    invoke-interface {v0, p1, p2}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    goto :goto_0

    .line 67
    .end local v0    # "listener":Landroid/hardware/SensorEventListener;
    .end local v1    # "var4":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "var4":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 47
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper$1;->this$0:Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    invoke-static {v2}, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->access$000(Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper$1;->this$0:Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;

    invoke-static {v2}, Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;->access$000(Lcom/google/vrtoolkit/cardboard/sensors/DeviceSensorLooper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 50
    .local v1, "var3":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEventListener;

    .line 52
    .local v0, "listener":Landroid/hardware/SensorEventListener;
    invoke-interface {v0, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 55
    .end local v0    # "listener":Landroid/hardware/SensorEventListener;
    .end local v1    # "var3":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "var3":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    return-void
.end method
