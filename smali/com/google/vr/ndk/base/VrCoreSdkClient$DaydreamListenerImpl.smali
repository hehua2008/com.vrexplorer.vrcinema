.class final Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;
.super Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;
.source "VrCoreSdkClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/VrCoreSdkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DaydreamListenerImpl"
.end annotation


# static fields
.field private static final FADE_SAFEGUARD_DELAY_MILLIS:J = 0xdacL

.field private static final MSG_FADE_IN_SAFEGUARD:I = 0x2

.field private static final MSG_TRACKING_RESUME_SAFEGUARD:I = 0x1

.field private static final TRACKING_SAFEGUARD_DELAY_MILLIS:J = 0xbb8L


# instance fields
.field private final fadeOverlayViewWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/vr/ndk/base/FadeOverlayView;",
            ">;"
        }
    .end annotation
.end field

.field private final gvrApiWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/vr/ndk/base/GvrApi;",
            ">;"
        }
    .end annotation
.end field

.field private final safeguardHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/ndk/base/FadeOverlayView;)V
    .locals 1

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;-><init>()V

    .line 468
    new-instance v0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$1;-><init>(Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->safeguardHandler:Landroid/os/Handler;

    .line 491
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->gvrApiWeak:Ljava/lang/ref/WeakReference;

    .line 492
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->fadeOverlayViewWeak:Ljava/lang/ref/WeakReference;

    .line 493
    return-void
.end method

.method static synthetic access$800(Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;IJ)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->applyFadeImpl(IJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->resumeHeadTrackingImpl(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    return-void
.end method

.method private final applyFadeImpl(IJ)V
    .locals 8

    .prologue
    const/4 v6, 0x2

    .line 585
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->fadeOverlayViewWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/ndk/base/FadeOverlayView;

    .line 586
    if-nez v2, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    invoke-direct {p0, v6}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->cancelSafeguard(I)V

    .line 593
    new-instance v0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$2;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$2;-><init>(Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;Lcom/google/vr/ndk/base/FadeOverlayView;IJ)V

    invoke-virtual {v2, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->post(Ljava/lang/Runnable;)Z

    .line 600
    if-ne p1, v6, :cond_0

    .line 601
    const-wide/16 v0, 0xdac

    add-long/2addr v0, p2

    invoke-direct {p0, v6, v0, v1}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->rescheduleSafeguard(IJ)V

    goto :goto_0
.end method

.method private final cancelSafeguard(I)V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->safeguardHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    return-void
.end method

.method private final rescheduleSafeguard(IJ)V
    .locals 2

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->cancelSafeguard(I)V

    .line 611
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->safeguardHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 612
    return-void
.end method

.method private final resumeHeadTrackingImpl(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->gvrApiWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrApi;

    .line 576
    if-nez v0, :cond_0

    .line 577
    const-string v0, "VrCoreSdkClient"

    const-string v1, "Invalid resumeHeadTracking() call: GvrApi no longer valid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->cancelSafeguard(I)V

    .line 581
    invoke-static {v0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$1000(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    goto :goto_0
.end method


# virtual methods
.method public final applyFade(IJ)V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->applyFadeImpl(IJ)V

    .line 538
    return-void
.end method

.method public final dumpDebugData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->gvrApiWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrApi;

    .line 559
    if-nez v0, :cond_0

    .line 560
    const-string v0, "VrCoreSdkClient"

    const-string v1, "Invalid dumpDebugData() call: GvrApi no longer valid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :goto_0
    return-void

    .line 563
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->dumpDebugData()V

    goto :goto_0
.end method

.method public final getTargetApiVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 505
    const/16 v0, 0xa

    return v0
.end method

.method public final recenterHeadTracking()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->gvrApiWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrApi;

    .line 546
    if-nez v0, :cond_0

    .line 547
    const-string v0, "VrCoreSdkClient"

    const-string v1, "Invalid recenterHeadTracking() call: GvrApi no longer valid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->recenterTracking()V

    goto :goto_0
.end method

.method public final requestStopTracking()Lcom/google/vr/vrcore/common/api/HeadTrackingState;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 513
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->gvrApiWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrApi;

    .line 514
    if-nez v0, :cond_0

    .line 515
    const-string v0, "VrCoreSdkClient"

    const-string v2, "Invalid requestStopTracking() call: GvrApi no longer valid"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 523
    :goto_0
    return-object v0

    .line 518
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->pauseTrackingGetState()[B

    move-result-object v2

    .line 519
    const/4 v0, 0x1

    const-wide/16 v4, 0xbb8

    invoke-direct {p0, v0, v4, v5}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->rescheduleSafeguard(IJ)V

    .line 520
    if-eqz v2, :cond_1

    .line 521
    new-instance v0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    invoke-direct {v0, v2}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;-><init>([B)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 523
    goto :goto_0
.end method

.method final resetSafeguards()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->safeguardHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 501
    return-void
.end method

.method public final resumeHeadTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->resumeHeadTrackingImpl(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    .line 572
    return-void
.end method
