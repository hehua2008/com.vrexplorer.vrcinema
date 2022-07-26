.class public Lcom/google/vr/ndk/base/ThrottlingMonitor;
.super Ljava/lang/Object;
.source "ThrottlingMonitor.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;,
        Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;,
        Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;
    }
.end annotation


# static fields
.field public static final ERROR_NOT_ACCURATE:I = -0x4

.field public static final ERROR_NOT_CONNECTED:I = -0x3

.field public static final ERROR_NOT_SUPPORTED:I = -0x1

.field public static final ERROR_NO_PERMISSION:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x5

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThrottlingMonitor"


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private final context:Landroid/content/Context;

.field private final lock:Ljava/lang/Object;

.field private final mainHandler:Landroid/os/Handler;

.field private perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;

.field private final setupCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->setupCallbacks:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;-><init>(Lcom/google/vr/ndk/base/ThrottlingMonitor;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->connection:Landroid/content/ServiceConnection;

    .line 95
    iput-object p1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->context:Landroid/content/Context;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->mainHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/vr/ndk/base/ThrottlingMonitor;Lcom/google/vr/vrcore/performance/api/IPerformanceService;)Lcom/google/vr/vrcore/performance/api/IPerformanceService;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->setupCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addTriggerInternal(Landroid/content/ComponentName;IFLcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;JLandroid/os/Handler;)I
    .locals 11

    .prologue
    .line 393
    if-nez p4, :cond_0

    .line 394
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument \'trigger\' cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 398
    :cond_0
    iget-object v4, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 399
    :try_start_0
    iget-object v3, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    .line 400
    monitor-exit v4

    .line 402
    if-nez v3, :cond_1

    .line 403
    const/4 v2, -0x3

    .line 418
    :goto_0
    return v2

    .line 400
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 406
    :cond_1
    new-instance v5, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;

    move-object/from16 v0, p7

    invoke-direct {v5, p4, v0}, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;-><init>(Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;Landroid/os/Handler;)V

    move-object v4, p1

    move-wide/from16 v6, p5

    move v8, p3

    move v9, p2

    .line 408
    :try_start_1
    invoke-interface/range {v3 .. v9}, Lcom/google/vr/vrcore/performance/api/IPerformanceService;->addTrigger(Landroid/content/ComponentName;Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;JFI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 418
    const/4 v2, 0x0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v2

    .line 410
    const-string v3, "ThrottlingMonitor"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Service failed unexpectedly: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v2, -0x5

    goto :goto_0

    .line 413
    :catch_1
    move-exception v2

    const/4 v2, -0x2

    goto :goto_0

    .line 415
    :catch_2
    move-exception v2

    const-string v2, "ThrottlingMonitor"

    const-string v3, "Throttling monitoring not supported on this device."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lcom/google/vr/ndk/base/ThrottlingMonitor;
    .locals 4

    .prologue
    .line 142
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.google.vr.vrcore.performance.service.BIND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    const-string v0, "com.google.vr.vrcore"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    new-instance v0, Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/ThrottlingMonitor;-><init>(Landroid/content/Context;)V

    .line 146
    iget-object v2, v0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 150
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addTrigger(Landroid/content/ComponentName;FLcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;JLandroid/os/Handler;)I
    .locals 10

    .prologue
    .line 252
    const/4 v3, 0x3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->addTriggerInternal(Landroid/content/ComponentName;IFLcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;JLandroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public addTrigger(Landroid/content/ComponentName;FLcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;Landroid/os/Handler;)I
    .locals 9

    .prologue
    .line 300
    const/4 v3, 0x2

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->addTriggerInternal(Landroid/content/ComponentName;IFLcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;JLandroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public addTrigger(Landroid/content/ComponentName;Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;JLandroid/os/Handler;)I
    .locals 9

    .prologue
    .line 280
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->addTriggerInternal(Landroid/content/ComponentName;IFLcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;JLandroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 384
    return-void
.end method

.method public getEstimatedThrottlingTimeNanos()J
    .locals 4

    .prologue
    .line 354
    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    .line 356
    monitor-exit v1

    .line 357
    if-nez v0, :cond_1

    .line 358
    const-wide/16 v0, -0x3

    .line 377
    :cond_0
    :goto_0
    return-wide v0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 363
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService;->getCurrentEstimatedThrottleWarningTime()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v0

    .line 374
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 375
    const-wide/16 v0, -0x4

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    const-string v1, "ThrottlingMonitor"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Service failed unexpectedly: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-wide/16 v0, -0x5

    goto :goto_0

    .line 368
    :catch_1
    move-exception v0

    const-wide/16 v0, -0x2

    goto :goto_0

    .line 370
    :catch_2
    move-exception v0

    const-string v0, "ThrottlingMonitor"

    const-string v1, "Throttling monitoring not supported on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public queryRelativeTemperature(Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;)I
    .locals 4

    .prologue
    .line 202
    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    .line 204
    monitor-exit v1

    .line 206
    if-nez v0, :cond_0

    .line 207
    const/4 v0, -0x3

    .line 224
    :goto_0
    return v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 211
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/performance/api/IPerformanceService;->getCurrentThrottlingRelativeTemperature(Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 221
    iget v0, p1, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->temperature:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 222
    const/4 v0, -0x4

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const-string v1, "ThrottlingMonitor"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Service failed unexpectedly: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, -0x5

    goto :goto_0

    .line 216
    :catch_1
    move-exception v0

    const/4 v0, -0x2

    goto :goto_0

    .line 218
    :catch_2
    move-exception v0

    const-string v0, "ThrottlingMonitor"

    const-string v1, "Throttling monitoring not supported on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, -0x1

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerSetupCallback(Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;)V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/vr/ndk/base/ThrottlingMonitor$2;

    invoke-direct {v2, p0, p1}, Lcom/google/vr/ndk/base/ThrottlingMonitor$2;-><init>(Lcom/google/vr/ndk/base/ThrottlingMonitor;Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    monitor-exit v1

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->setupCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAllTriggers(Landroid/content/ComponentName;)I
    .locals 4

    .prologue
    .line 317
    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    .line 319
    monitor-exit v1

    .line 320
    if-nez v0, :cond_0

    .line 321
    const/4 v0, -0x3

    .line 334
    :goto_0
    return v0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 324
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/performance/api/IPerformanceService;->removeAllTriggers(Landroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 334
    const/4 v0, 0x0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    const-string v1, "ThrottlingMonitor"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Service failed unexpectedly: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, -0x5

    goto :goto_0

    .line 329
    :catch_1
    move-exception v0

    const/4 v0, -0x2

    goto :goto_0

    .line 331
    :catch_2
    move-exception v0

    const-string v0, "ThrottlingMonitor"

    const-string v1, "Throttling monitoring not supported on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, -0x1

    goto :goto_0
.end method
