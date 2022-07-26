.class Lcom/google/vr/ndk/base/VrCoreSdkClient;
.super Ljava/lang/Object;
.source "VrCoreSdkClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FADE_FLUSH_DELAY_FOR_TRACKING_STABILIZATION_MILLIS:I = 0xc8

.field static final MIN_VRCORE_API_VERSION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VrCoreSdkClient"

.field static final TARGET_VRCORE_API_VERSION:I = 0xa


# instance fields
.field private final closeVrRunnable:Ljava/lang/Runnable;

.field private final componentName:Landroid/content/ComponentName;

.field private final context:Landroid/content/Context;

.field private final daydreamListener:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

.field private daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

.field private final daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

.field private final fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

.field private final gvrApi:Lcom/google/vr/ndk/base/GvrApi;

.field private helpCenterDialog:Landroid/app/AlertDialog;

.field private isBound:Z

.field private isEnabled:Z

.field private isResumed:Z

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private final shouldBind:Z

.field private vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrApi;Landroid/content/ComponentName;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;Ljava/lang/Runnable;Lcom/google/vr/ndk/base/FadeOverlayView;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isEnabled:Z

    .line 356
    new-instance v0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;-><init>(Lcom/google/vr/ndk/base/VrCoreSdkClient;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->serviceConnection:Landroid/content/ServiceConnection;

    .line 100
    iput-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 102
    iput-object p3, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->componentName:Landroid/content/ComponentName;

    .line 103
    iput-object p4, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    .line 104
    iput-object p5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->closeVrRunnable:Ljava/lang/Runnable;

    .line 105
    iput-object p6, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    .line 106
    new-instance v0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    invoke-direct {v0, p2, p6}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;-><init>(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/ndk/base/FadeOverlayView;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamListener:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    .line 107
    invoke-static {p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->hasCompatibleSdkService(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->shouldBind:Z

    .line 110
    invoke-virtual {p2, v1}, Lcom/google/vr/ndk/base/GvrApi;->setIgnoreManualTrackerPauseResume(Z)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/ndk/base/VrCoreSdkClient;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->handleBindFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 0

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->resumeTracking(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/IDaydreamManager;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/vr/ndk/base/VrCoreSdkClient;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->handleNoDaydreamManager()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamListener:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/vr/ndk/base/VrCoreSdkClient;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->handlePrepareVrFailed()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->resumeTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    return-void
.end method

.method private doBind()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 214
    iget-boolean v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isBound:Z

    if-eqz v1, :cond_0

    .line 235
    :goto_0
    return v0

    .line 218
    :cond_0
    iget-boolean v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->shouldBind:Z

    if-eqz v1, :cond_1

    .line 219
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.vr.vrcore.BIND_SDK_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    const-string v2, "com.google.vr.vrcore"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v2, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isBound:Z

    .line 231
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isBound:Z

    if-nez v0, :cond_2

    .line 232
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->handleBindFailed()V

    .line 235
    :cond_2
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isBound:Z

    goto :goto_0
.end method

.method private doUnbind()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 242
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isResumed:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0, v4}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->resumeTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    .line 250
    :goto_0
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isBound:Z

    if-nez v0, :cond_1

    .line 273
    :goto_1
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->pauseTrackingGetState()[B

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    if-eqz v0, :cond_2

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    iget-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->unregisterListener(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_2
    iput-object v4, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    .line 266
    :cond_2
    iput-object v4, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    .line 267
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isBound:Z

    goto :goto_1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    const-string v1, "VrCoreSdkClient"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to unregister Daydream listener: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleBindFailed()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->doUnbind()V

    .line 278
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->warnIfIncompatibleClient()V

    .line 279
    return-void
.end method

.method private handleNoDaydreamManager()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->doUnbind()V

    .line 286
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->warnIfIncompatibleClient()V

    .line 287
    return-void
.end method

.method private handlePrepareVrFailed()V
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->doUnbind()V

    .line 294
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->closeVrRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 295
    return-void
.end method

.method private static hasCompatibleSdkService(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 338
    :try_start_0
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getVrCoreClientApiVersion(Landroid/content/Context;)I

    move-result v2

    .line 339
    if-lt v2, v3, :cond_0

    .line 353
    :goto_0
    return v0

    .line 343
    :cond_0
    const-string v0, "VrCoreSdkClient"

    const-string v3, "VrCore service obsolete, GVR SDK requires API %d but found API %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 347
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    .line 345
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    .line 353
    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static resumeTracking(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 1

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    invoke-virtual {p1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->getData()[B

    move-result-object v0

    .line 330
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrApi;->resumeTrackingSetState([B)V

    .line 332
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resumeTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-static {v0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->resumeTracking(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    .line 321
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/google/vr/ndk/base/FadeOverlayView;->flushAutoFade(J)V

    .line 326
    :cond_0
    return-void
.end method

.method private warnIfIncompatibleClient()V
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    iget-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    iget-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    .line 303
    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamRequiredComponent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->helpCenterDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->helpCenterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    sget v1, Lcom/google/vr/cardboard/R$string;->dialog_title_incompatible_phone:I

    sget v2, Lcom/google/vr/cardboard/R$string;->dialog_message_incompatible_phone:I

    iget-object v3, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->closeVrRunnable:Ljava/lang/Runnable;

    .line 310
    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/cardboard/UiUtils;->showDaydreamHelpCenterDialog(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->helpCenterDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method getDaydreamManager()Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    return-object v0
.end method

.method getHeadTrackingState()Lcom/google/vr/vrcore/common/api/HeadTrackingState;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    invoke-direct {v0}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;-><init>()V

    return-object v0
.end method

.method public launchInVr(Landroid/app/PendingIntent;)Z
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->deprecatedLaunchInVr(Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    const/4 v0, 0x1

    .line 209
    :goto_1
    return v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const-string v1, "VrCoreSdkClient"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to launch app in VR: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isResumed:Z

    .line 157
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamListener:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->resetSafeguards()V

    .line 159
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->doUnbind()V

    .line 164
    :cond_0
    return-void
.end method

.method public onResume()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isResumed:Z

    .line 139
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isEnabled:Z

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->doBind()Z

    move-result v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isEnabled:Z

    if-ne v0, p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iput-boolean p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isEnabled:Z

    .line 182
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrApi;->setIgnoreManualTrackerPauseResume(Z)V

    .line 184
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isResumed:Z

    if-eqz v0, :cond_0

    .line 185
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isEnabled:Z

    if-eqz v0, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->doBind()Z

    goto :goto_0

    .line 188
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->doUnbind()V

    goto :goto_0
.end method
