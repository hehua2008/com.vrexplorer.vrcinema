.class public Lcom/google/vr/internal/controller/ServiceBridge;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FLAG_SUPPORTS_RECENTER:I = 0x1

.field static final LISTENER_KEY:Ljava/lang/String; = "com.google.vr.internal.controller.LISTENER_KEY"

.field private static final MIN_SERVICE_API_FOR_RECENTERING:I = 0x8

.field private static final TAG:Ljava/lang/String;

.field static final TARGET_SERVICE_API_VERSION:I = 0xb


# instance fields
.field private final bindRunnable:Ljava/lang/Runnable;

.field private final callbacks:Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

.field private final context:Landroid/content/Context;

.field private final controllerListener:Lcom/google/vr/vrcore/controller/api/IControllerListener;

.field private isBound:Z

.field private final mainThreadHandler:Landroid/os/Handler;

.field private final options:Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

.field private service:Lcom/google/vr/vrcore/controller/api/IControllerService;

.field private final unbindRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/internal/controller/ServiceBridge;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;)V
    .locals 2
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;-><init>()V

    iput-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->options:Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    .line 153
    new-instance v0, Lcom/google/vr/internal/controller/ServiceBridge$1;

    invoke-direct {v0, p0}, Lcom/google/vr/internal/controller/ServiceBridge$1;-><init>(Lcom/google/vr/internal/controller/ServiceBridge;)V

    iput-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->bindRunnable:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/google/vr/internal/controller/ServiceBridge$2;

    invoke-direct {v0, p0}, Lcom/google/vr/internal/controller/ServiceBridge$2;-><init>(Lcom/google/vr/internal/controller/ServiceBridge;)V

    iput-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->unbindRunnable:Ljava/lang/Runnable;

    .line 171
    new-instance v0, Lcom/google/vr/internal/controller/ServiceBridge$3;

    invoke-direct {v0, p0}, Lcom/google/vr/internal/controller/ServiceBridge$3;-><init>(Lcom/google/vr/internal/controller/ServiceBridge;)V

    iput-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->controllerListener:Lcom/google/vr/vrcore/controller/api/IControllerListener;

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->context:Landroid/content/Context;

    .line 296
    iput-object p2, p0, Lcom/google/vr/internal/controller/ServiceBridge;->callbacks:Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    .line 297
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->mainThreadHandler:Landroid/os/Handler;

    .line 298
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/internal/controller/ServiceBridge;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ServiceBridge;->doBind()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/vr/internal/controller/ServiceBridge;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ServiceBridge;->doUnbind()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/vr/internal/controller/ServiceBridge;)Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->options:Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/vr/internal/controller/ServiceBridge;)Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->callbacks:Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    return-object v0
.end method

.method private doBind()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 394
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ServiceBridge;->ensureOnMainThread()V

    .line 396
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->isBound:Z

    if-eqz v0, :cond_0

    .line 397
    sget-object v0, Lcom/google/vr/internal/controller/ServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "Service is already bound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :goto_0
    return-void

    .line 405
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.vr.vrcore.controller.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    const-string v1, "com.google.vr.vrcore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    iget-object v1, p0, Lcom/google/vr/internal/controller/ServiceBridge;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    sget-object v0, Lcom/google/vr/internal/controller/ServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "Bind failed. Service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->callbacks:Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    invoke-interface {v0}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onServiceUnavailable()V

    goto :goto_0

    .line 413
    :cond_1
    iput-boolean v2, p0, Lcom/google/vr/internal/controller/ServiceBridge;->isBound:Z

    goto :goto_0
.end method

.method private doUnbind()V
    .locals 2

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ServiceBridge;->ensureOnMainThread()V

    .line 444
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->isBound:Z

    if-nez v0, :cond_0

    .line 445
    sget-object v0, Lcom/google/vr/internal/controller/ServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "Service is already unbound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ServiceBridge;->unregisterListener()V

    .line 452
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->isBound:Z

    goto :goto_0
.end method

.method private ensureOnMainThread()V
    .locals 2

    .prologue
    .line 574
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 575
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be running on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_0
    return-void
.end method

.method private unregisterListener()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    if-nez v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 434
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    const-string v1, "com.google.vr.internal.controller.LISTENER_KEY"

    invoke-interface {v0, v1}, Lcom/google/vr/vrcore/controller/api/IControllerService;->unregisterListener(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 437
    sget-object v0, Lcom/google/vr/internal/controller/ServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "RemoteException while unregistering listener."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getVrCoreClientApiVersion()I
    .locals 3

    .prologue
    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getVrCoreClientApiVersion(Landroid/content/Context;)I
    :try_end_0
    .catch Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 569
    :goto_0
    return v0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    sget-object v1, Lcom/google/vr/internal/controller/ServiceBridge;->TAG:Ljava/lang/String;

    const-string v2, "VrCore not available."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 463
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ServiceBridge;->ensureOnMainThread()V

    .line 468
    invoke-static {p2}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/controller/api/IControllerService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/internal/controller/ServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/internal/controller/ServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Lcom/google/vr/vrcore/controller/api/IControllerService;->initialize(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 485
    if-eqz v1, :cond_2

    .line 486
    sget-object v2, Lcom/google/vr/internal/controller/ServiceBridge;->TAG:Ljava/lang/String;

    const-string v3, "initialize() returned error: "

    invoke-static {v1}, Lcom/google/vr/vrcore/controller/api/ControllerInitResults;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->callbacks:Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    invoke-interface {v0, v1}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onServiceInitFailed(I)V

    .line 488
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ServiceBridge;->doUnbind()V

    .line 538
    :cond_0
    :goto_1
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 479
    sget-object v0, Lcom/google/vr/internal/controller/ServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "Failed to call initialize() on controller service (RemoteException)."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->callbacks:Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    invoke-interface {v0}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onServiceFailed()V

    .line 481
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ServiceBridge;->doUnbind()V

    goto :goto_1

    .line 486
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_2
    invoke-virtual {p0}, Lcom/google/vr/internal/controller/ServiceBridge;->getVrCoreClientApiVersion()I

    move-result v1

    .line 498
    if-gez v1, :cond_3

    .line 502
    sget-object v0, Lcom/google/vr/internal/controller/ServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get VrCore client API version."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->callbacks:Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    invoke-interface {v0}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onServiceFailed()V

    .line 504
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ServiceBridge;->doUnbind()V

    goto :goto_1

    .line 510
    :cond_3
    const/16 v2, 0x8

    if-lt v1, v2, :cond_4

    .line 511
    const/4 v0, 0x1

    .line 522
    :goto_2
    iget-object v1, p0, Lcom/google/vr/internal/controller/ServiceBridge;->callbacks:Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    invoke-interface {v1, v0}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onServiceConnected(I)V

    .line 525
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    const/4 v1, 0x0

    const-string v2, "com.google.vr.internal.controller.LISTENER_KEY"

    iget-object v3, p0, Lcom/google/vr/internal/controller/ServiceBridge;->controllerListener:Lcom/google/vr/vrcore/controller/api/IControllerListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/vr/vrcore/controller/api/IControllerService;->registerListener(ILjava/lang/String;Lcom/google/vr/vrcore/controller/api/IControllerListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    sget-object v0, Lcom/google/vr/internal/controller/ServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "Failed to register listener."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->callbacks:Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    invoke-interface {v0}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onServiceFailed()V

    .line 529
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ServiceBridge;->doUnbind()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 532
    :catch_1
    move-exception v0

    .line 533
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 534
    sget-object v0, Lcom/google/vr/internal/controller/ServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "RemoteException while registering listener."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->callbacks:Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    invoke-interface {v0}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onServiceFailed()V

    .line 536
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ServiceBridge;->doUnbind()V

    goto :goto_1

    .line 516
    :cond_4
    sget-object v2, Lcom/google/vr/internal/controller/ServiceBridge;->TAG:Ljava/lang/String;

    const/16 v3, 0x3e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Recentering is not supported by VrCore API version "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ServiceBridge;->ensureOnMainThread()V

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    .line 554
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->callbacks:Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    invoke-interface {v0}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onServiceDisconnected()V

    .line 555
    return-void
.end method

.method public requestBind()V
    .locals 2
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/internal/controller/ServiceBridge;->bindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 375
    return-void
.end method

.method public requestUnbind()V
    .locals 2
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/internal/controller/ServiceBridge;->unbindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    return-void
.end method

.method public setAccelEnabled(Z)V
    .locals 1
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->options:Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    iput-boolean p1, v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableAccel:Z

    .line 338
    return-void
.end method

.method public setGesturesEnabled(Z)V
    .locals 1
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->options:Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    iput-boolean p1, v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGestures:Z

    .line 348
    return-void
.end method

.method public setGyroEnabled(Z)V
    .locals 1
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->options:Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    iput-boolean p1, v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGyro:Z

    .line 328
    return-void
.end method

.method public setOrientationEnabled(Z)V
    .locals 1
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->options:Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    iput-boolean p1, v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableOrientation:Z

    .line 308
    return-void
.end method

.method public setPositionEnabled(Z)V
    .locals 0
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .prologue
    .line 359
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 1
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge;->options:Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    iput-boolean p1, v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableTouch:Z

    .line 318
    return-void
.end method
