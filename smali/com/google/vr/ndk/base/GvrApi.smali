.class public Lcom/google/vr/ndk/base/GvrApi;
.super Ljava/lang/Object;
.source "GvrApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/GvrApi$ViewerType;,
        Lcom/google/vr/ndk/base/GvrApi$Error;,
        Lcom/google/vr/ndk/base/GvrApi$PoseTracker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sPoseTrackerForTesting:Lcom/google/vr/ndk/base/GvrApi$PoseTracker;


# instance fields
.field private analytics:Lcom/google/vr/ndk/base/GvrAnalytics;

.field private final context:Landroid/content/Context;

.field private final displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

.field private nativeGvrContext:J

.field private swapChainRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/vr/ndk/base/SwapChain;",
            ">;>;"
        }
    .end annotation
.end field

.field private userPrefs:Lcom/google/vr/ndk/base/UserPrefs;

.field private final vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/GvrApi;->TAG:Ljava/lang/String;

    .line 109
    :try_start_0
    const-string v0, "gvr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/cardboard/DisplaySynchronizer;)V
    .locals 11

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrApi;->context:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrApi;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    .line 166
    if-nez p2, :cond_0

    const-wide/16 v4, 0x0

    .line 167
    :goto_0
    invoke-static {p1}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->swapChainRefs:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrApi;->computeCurrentDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v9, v0, Landroid/util/DisplayMetrics;->ydpi:F

    sget-object v10, Lcom/google/vr/ndk/base/GvrApi;->sPoseTrackerForTesting:Lcom/google/vr/ndk/base/GvrApi$PoseTracker;

    move-object v1, p0

    .line 173
    invoke-direct/range {v1 .. v10}, Lcom/google/vr/ndk/base/GvrApi;->nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;JIIFFLcom/google/vr/ndk/base/GvrApi$PoseTracker;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    .line 182
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native GVR context creation failed, implementation unavailable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    invoke-virtual {p2}, Lcom/google/vr/cardboard/DisplaySynchronizer;->getNativeDisplaySynchronizer()J

    move-result-wide v4

    goto :goto_0

    .line 186
    :cond_1
    return-void
.end method

.method static createDefaultDisplaySynchronizer(Landroid/content/Context;)Lcom/google/vr/cardboard/DisplaySynchronizer;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lcom/google/vr/cardboard/DisplaySynchronizer;

    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-object v0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    invoke-static {p0}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static native nativeAnalyticsGetSample(J)[B
.end method

.method static native nativeBufferSpecCreate(J)J
.end method

.method static native nativeBufferSpecDestroy(J)V
.end method

.method static native nativeBufferSpecGetSamples(J)I
.end method

.method static native nativeBufferSpecGetSize(JLandroid/graphics/Point;)V
.end method

.method static native nativeBufferSpecSetColorFormat(JI)V
.end method

.method static native nativeBufferSpecSetDepthStencilFormat(JI)V
.end method

.method static native nativeBufferSpecSetSamples(JI)V
.end method

.method static native nativeBufferSpecSetSize(JII)V
.end method

.method static native nativeBufferViewportCreate(J)J
.end method

.method static native nativeBufferViewportDestroy(J)V
.end method

.method static native nativeBufferViewportEqual(JJ)Z
.end method

.method static native nativeBufferViewportGetExternalSurfaceId(J)I
.end method

.method static native nativeBufferViewportGetReprojection(J)I
.end method

.method static native nativeBufferViewportGetSourceBufferIndex(J)I
.end method

.method static native nativeBufferViewportGetSourceFov(JLandroid/graphics/RectF;)V
.end method

.method static native nativeBufferViewportGetSourceUv(JLandroid/graphics/RectF;)V
.end method

.method static native nativeBufferViewportGetTargetEye(J)I
.end method

.method static native nativeBufferViewportGetTransform(J[F)V
.end method

.method private native nativeBufferViewportListCreate(J)J
.end method

.method static native nativeBufferViewportListDestroy(J)V
.end method

.method static native nativeBufferViewportListGetItem(JIJ)V
.end method

.method static native nativeBufferViewportListGetSize(J)I
.end method

.method static native nativeBufferViewportListSetItem(JIJ)V
.end method

.method static native nativeBufferViewportSetExternalSurfaceId(JI)V
.end method

.method static native nativeBufferViewportSetReprojection(JI)V
.end method

.method static native nativeBufferViewportSetSourceBufferIndex(JI)V
.end method

.method static native nativeBufferViewportSetSourceFov(JFFFF)V
.end method

.method static native nativeBufferViewportSetSourceUv(JFFFF)V
.end method

.method static native nativeBufferViewportSetTargetEye(JI)V
.end method

.method static native nativeBufferViewportSetTransform(J[F)V
.end method

.method private native nativeClearError(J)I
.end method

.method private native nativeComputeDistortedPoint(JI[F)[F
.end method

.method private native nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;JIIFFLcom/google/vr/ndk/base/GvrApi$PoseTracker;)J
.end method

.method private native nativeDistortToScreen(JIJ[FJ)V
.end method

.method private native nativeDumpDebugData(J)V
.end method

.method static native nativeFrameBindBuffer(JI)V
.end method

.method static native nativeFrameGetBufferSize(JILandroid/graphics/Point;)V
.end method

.method static native nativeFrameGetFramebufferObject(JI)I
.end method

.method static native nativeFrameSubmit(JJ[F)V
.end method

.method static native nativeFrameUnbind(J)V
.end method

.method private native nativeGetAnalytics(J)J
.end method

.method private native nativeGetAsyncReprojectionEnabled(J)Z
.end method

.method private native nativeGetBorderSizeMeters(J)F
.end method

.method private native nativeGetError(J)I
.end method

.method private static native nativeGetErrorString(I)Ljava/lang/String;
.end method

.method private native nativeGetEyeFromHeadMatrix(JI[F)V
.end method

.method private native nativeGetHeadSpaceFromStartSpaceRotation(J[FJ)V
.end method

.method private native nativeGetMaximumEffectiveRenderTargetSize(JLandroid/graphics/Point;)V
.end method

.method private native nativeGetRecommendedBufferViewports(JJ)V
.end method

.method private native nativeGetScreenBufferViewports(JJ)V
.end method

.method private native nativeGetScreenTargetSize(JLandroid/graphics/Point;)V
.end method

.method private native nativeGetUserPrefs(J)J
.end method

.method private native nativeGetViewerModel(J)Ljava/lang/String;
.end method

.method private native nativeGetViewerType(J)I
.end method

.method private native nativeGetViewerVendor(J)Ljava/lang/String;
.end method

.method private native nativeGetWindowBounds(J)[I
.end method

.method private native nativeInitializeGl(J)V
.end method

.method private native nativeOnPauseReprojectionThread(J)V
.end method

.method private native nativeOnSurfaceCreatedReprojectionThread(J)V
.end method

.method private native nativePause(J)V
.end method

.method private native nativePauseTracking(J)[B
.end method

.method private native nativeRecenterTracking(J)V
.end method

.method private native nativeReconnectSensors(J)V
.end method

.method private native nativeReleaseGvrContext(J)V
.end method

.method private native nativeRemoveAllSurfacesReprojectionThread(J)V
.end method

.method private native nativeRenderReprojectionThread(J)Landroid/graphics/Point;
.end method

.method private native nativeRequestContextSharing(JLcom/google/vr/cardboard/EglReadyListener;)V
.end method

.method private native nativeResetTracking(J)V
.end method

.method private native nativeResume(J)V
.end method

.method private native nativeResumeTracking(J[B)V
.end method

.method private native nativeSetAsyncReprojectionEnabled(JZ)Z
.end method

.method private native nativeSetDefaultFramebufferActive(J)V
.end method

.method private native nativeSetDefaultViewerProfile(JLjava/lang/String;)Z
.end method

.method private native nativeSetDisplayMetrics(JIIFF)V
.end method

.method private static native nativeSetDynamicLibraryLoadingEnabled(Z)V
.end method

.method private native nativeSetIgnoreManualPauseResumeTracker(JZ)V
.end method

.method private native nativeSetLensOffset(JFF)V
.end method

.method private native nativeSetSurfaceSize(JII)V
.end method

.method private native nativeSetViewerParams(J[B)Z
.end method

.method static native nativeSwapChainAcquireFrame(J)J
.end method

.method static native nativeSwapChainCreate(J[J)J
.end method

.method static native nativeSwapChainDestroy(J)V
.end method

.method static native nativeSwapChainGetBufferCount(J)I
.end method

.method static native nativeSwapChainGetBufferSize(JILandroid/graphics/Point;)V
.end method

.method static native nativeSwapChainResizeBuffer(JIII)V
.end method

.method private native nativeUpdateSurfaceReprojectionThread(JIIJ[F)V
.end method

.method static native nativeUserPrefsGetControllerHandedness(J)I
.end method

.method static native nativeUserPrefsGetPerformanceMonitoringEnabled(J)Z
.end method

.method private native nativeUsingVrDisplayService(J)Z
.end method

.method public static setDynamicLibraryLoadingEnabled(Z)V
    .locals 0

    .prologue
    .line 146
    invoke-static {p0}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetDynamicLibraryLoadingEnabled(Z)V

    .line 147
    return-void
.end method

.method public static setPoseTrackerForTesting(Lcom/google/vr/ndk/base/GvrApi$PoseTracker;)V
    .locals 0

    .prologue
    .line 126
    sput-object p0, Lcom/google/vr/ndk/base/GvrApi;->sPoseTrackerForTesting:Lcom/google/vr/ndk/base/GvrApi$PoseTracker;

    .line 127
    return-void
.end method

.method private setViewerParams([B)Z
    .locals 2

    .prologue
    .line 1001
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetViewerParams(J[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearError()I
    .locals 2

    .prologue
    .line 331
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeClearError(J)I

    move-result v0

    return v0
.end method

.method public computeCurrentDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    if-nez v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/cardboard/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 949
    :goto_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrApi;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    .line 950
    invoke-interface {v1}, Lcom/google/vr/cardboard/VrParamsProvider;->readPhoneParams()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object v1

    .line 949
    invoke-static {v0, v1}, Lcom/google/vr/cardboard/DisplayUtils;->getDisplayMetricsLandscapeWithOverride(Landroid/view/Display;Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->getDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0
.end method

.method public computeDistortedPoint(I[F)[F
    .locals 3

    .prologue
    .line 855
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeComputeDistortedPoint(JI[F)[F

    move-result-object v0

    .line 856
    array-length v1, v0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 857
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Implementation error: invalid UV coordinates output."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 859
    :cond_0
    return-object v0
.end method

.method public createBufferSpec()Lcom/google/vr/ndk/base/BufferSpec;
    .locals 4

    .prologue
    .line 418
    new-instance v0, Lcom/google/vr/ndk/base/BufferSpec;

    iget-wide v2, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-static {v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecCreate(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/vr/ndk/base/BufferSpec;-><init>(J)V

    return-object v0
.end method

.method public createBufferViewport()Lcom/google/vr/ndk/base/BufferViewport;
    .locals 4

    .prologue
    .line 456
    new-instance v0, Lcom/google/vr/ndk/base/BufferViewport;

    iget-wide v2, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-static {v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportCreate(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/vr/ndk/base/BufferViewport;-><init>(J)V

    return-object v0
.end method

.method public createBufferViewportList()Lcom/google/vr/ndk/base/BufferViewportList;
    .locals 4

    .prologue
    .line 447
    new-instance v0, Lcom/google/vr/ndk/base/BufferViewportList;

    iget-wide v2, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportListCreate(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/vr/ndk/base/BufferViewportList;-><init>(J)V

    return-object v0
.end method

.method public createSwapChain([Lcom/google/vr/ndk/base/BufferSpec;)Lcom/google/vr/ndk/base/SwapChain;
    .locals 4

    .prologue
    .line 425
    array-length v0, p1

    new-array v1, v0, [J

    .line 426
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 427
    aget-object v2, p1, v0

    iget-wide v2, v2, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    aput-wide v2, v1, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_0
    new-instance v0, Lcom/google/vr/ndk/base/SwapChain;

    iget-wide v2, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-static {v2, v3, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainCreate(J[J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/vr/ndk/base/SwapChain;-><init>(J)V

    .line 430
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrApi;->swapChainRefs:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    return-object v0
.end method

.method public distortToScreen(ILcom/google/vr/ndk/base/BufferViewportList;[FJ)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 528
    if-nez p3, :cond_0

    .line 529
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Head transform must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_0
    iget-wide v2, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    iget-wide v5, p2, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    move-object v1, p0

    move v4, p1

    move-object v7, p3

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/vr/ndk/base/GvrApi;->nativeDistortToScreen(JIJ[FJ)V

    .line 538
    return-void
.end method

.method dumpDebugData()V
    .locals 2

    .prologue
    .line 386
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeDumpDebugData(J)V

    .line 387
    return-void
.end method

.method public experimentalGetAnalytics()Lcom/google/vr/ndk/base/GvrAnalytics;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->analytics:Lcom/google/vr/ndk/base/GvrAnalytics;

    return-object v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 231
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/google/vr/ndk/base/GvrApi;->TAG:Ljava/lang/String;

    const-string v1, "GvrApi.shutdown() should be called to ensure resource cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrApi;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAsyncReprojectionEnabled()Z
    .locals 2

    .prologue
    .line 894
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetAsyncReprojectionEnabled(J)Z

    move-result v0

    return v0
.end method

.method public getBorderSizeMeters()F
    .locals 2

    .prologue
    .line 985
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetBorderSizeMeters(J)F

    move-result v0

    return v0
.end method

.method public getError()I
    .locals 2

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetError(J)I

    move-result v0

    return v0
.end method

.method public getEyeFromHeadMatrix(I[F)V
    .locals 2

    .prologue
    .line 822
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetEyeFromHeadMatrix(JI[F)V

    .line 823
    return-void
.end method

.method public getEyeFromHeadMatrix(I)[F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 809
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 810
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/ndk/base/GvrApi;->getEyeFromHeadMatrix(I[F)V

    .line 811
    return-object v0
.end method

.method public getHeadSpaceFromStartSpaceRotation([FJ)V
    .locals 6

    .prologue
    .line 616
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 618
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid head rotation argument, must be a float[16]."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_1
    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetHeadSpaceFromStartSpaceRotation(J[FJ)V

    .line 622
    return-void
.end method

.method public getMaximumEffectiveRenderTargetSize(Landroid/graphics/Point;)V
    .locals 2

    .prologue
    .line 489
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetMaximumEffectiveRenderTargetSize(JLandroid/graphics/Point;)V

    .line 490
    return-void
.end method

.method public getNativeGvrContext()J
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    return-wide v0
.end method

.method public getRecommendedBufferViewports(Lcom/google/vr/ndk/base/BufferViewportList;)V
    .locals 4

    .prologue
    .line 464
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    iget-wide v2, p1, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetRecommendedBufferViewports(JJ)V

    .line 466
    return-void
.end method

.method public getScreenBufferViewports(Lcom/google/vr/ndk/base/BufferViewportList;)V
    .locals 4

    .prologue
    .line 473
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    iget-wide v2, p1, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetScreenBufferViewports(JJ)V

    .line 474
    return-void
.end method

.method public getScreenTargetSize(Landroid/graphics/Point;)V
    .locals 2

    .prologue
    .line 499
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetScreenTargetSize(JLandroid/graphics/Point;)V

    .line 500
    return-void
.end method

.method getSdkConfigurationParams()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/ndk/base/SdkConfigurationReader;->getParams(Landroid/content/Context;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrefs()Lcom/google/vr/ndk/base/UserPrefs;
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->userPrefs:Lcom/google/vr/ndk/base/UserPrefs;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Lcom/google/vr/ndk/base/UserPrefs;

    iget-wide v2, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetUserPrefs(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/vr/ndk/base/UserPrefs;-><init>(J)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->userPrefs:Lcom/google/vr/ndk/base/UserPrefs;

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->userPrefs:Lcom/google/vr/ndk/base/UserPrefs;

    return-object v0
.end method

.method public getViewerModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 761
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetViewerModel(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewerType()I
    .locals 2

    .prologue
    .line 793
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetViewerType(J)I

    move-result v0

    return v0
.end method

.method public getViewerVendor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 756
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetViewerVendor(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowBounds()[I
    .locals 3

    .prologue
    .line 831
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetWindowBounds(J)[I

    move-result-object v0

    .line 832
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 833
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Implementation error: invalid window bounds."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 835
    :cond_0
    return-object v0
.end method

.method public initializeGl()V
    .locals 2

    .prologue
    .line 401
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeInitializeGl(J)V

    .line 402
    return-void
.end method

.method public onPauseReprojectionThread()V
    .locals 2

    .prologue
    .line 560
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeOnPauseReprojectionThread(J)V

    .line 561
    return-void
.end method

.method public onSurfaceCreatedReprojectionThread()V
    .locals 2

    .prologue
    .line 411
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeOnSurfaceCreatedReprojectionThread(J)V

    .line 412
    return-void
.end method

.method pause()V
    .locals 2

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativePause(J)V

    .line 262
    return-void
.end method

.method public pauseTracking()V
    .locals 2

    .prologue
    .line 639
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativePauseTracking(J)[B

    .line 640
    return-void
.end method

.method public pauseTrackingGetState()[B
    .locals 2

    .prologue
    .line 657
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativePauseTracking(J)[B

    move-result-object v0

    return-object v0
.end method

.method public recenterTracking()V
    .locals 2

    .prologue
    .line 684
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeRecenterTracking(J)V

    .line 685
    return-void
.end method

.method public reconnectSensors()V
    .locals 2

    .prologue
    .line 695
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeReconnectSensors(J)V

    .line 696
    return-void
.end method

.method public refreshDisplayMetrics()V
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrApi;->computeCurrentDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrApi;->setDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 712
    return-void
.end method

.method public refreshViewerProfile()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->readDeviceParams()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_0

    .line 750
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/GvrApi;->setViewerParams([B)Z

    .line 752
    :cond_0
    return-void
.end method

.method public removeAllSurfacesReprojectionThread()V
    .locals 2

    .prologue
    .line 587
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeRemoveAllSurfacesReprojectionThread(J)V

    .line 588
    return-void
.end method

.method public renderReprojectionThread()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 549
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeRenderReprojectionThread(J)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method requestContextSharing(Lcom/google/vr/cardboard/EglReadyListener;)V
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeRequestContextSharing(JLcom/google/vr/cardboard/EglReadyListener;)V

    .line 204
    return-void
.end method

.method public resetTracking()V
    .locals 2

    .prologue
    .line 679
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeResetTracking(J)V

    .line 680
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeResume(J)V

    .line 271
    return-void
.end method

.method public resumeTracking()V
    .locals 3

    .prologue
    .line 644
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/ndk/base/GvrApi;->nativeResumeTracking(J[B)V

    .line 645
    return-void
.end method

.method public resumeTrackingSetState([B)V
    .locals 2

    .prologue
    .line 671
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeResumeTracking(J[B)V

    .line 672
    return-void
.end method

.method setAsyncReprojectionEnabled(Z)Z
    .locals 2

    .prologue
    .line 880
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetAsyncReprojectionEnabled(JZ)Z

    move-result v0

    return v0
.end method

.method public setDefaultFramebufferActive()V
    .locals 2

    .prologue
    .line 595
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetDefaultFramebufferActive(J)V

    .line 596
    return-void
.end method

.method public setDefaultViewerProfile(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 739
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetDefaultViewerProfile(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 8

    .prologue
    .line 966
    iget-wide v2, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v7, p1, Landroid/util/DisplayMetrics;->ydpi:F

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetDisplayMetrics(JIIFF)V

    .line 972
    return-void
.end method

.method setIgnoreManualTrackerPauseResume(Z)V
    .locals 2

    .prologue
    .line 632
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetIgnoreManualPauseResumeTracker(JZ)V

    .line 633
    return-void
.end method

.method public setLensOffset(FF)V
    .locals 2

    .prologue
    .line 930
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetLensOffset(JFF)V

    .line 931
    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 913
    if-nez p1, :cond_0

    move v2, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 914
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom surface dimensions should both either be zero or non-zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 913
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 918
    :cond_2
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetSurfaceSize(JII)V

    .line 919
    return-void
.end method

.method public shutdown()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 281
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->swapChainRefs:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 282
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/ndk/base/SwapChain;

    .line 283
    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {v1}, Lcom/google/vr/ndk/base/SwapChain;->shutdown()V

    goto :goto_0

    .line 287
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    .line 289
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeReleaseGvrContext(J)V

    .line 290
    iput-wide v4, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    .line 292
    :cond_2
    return-void
.end method

.method public updateSurfaceReprojectionThread(IIJ[F)V
    .locals 9

    .prologue
    .line 576
    iget-wide v2, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/ndk/base/GvrApi;->nativeUpdateSurfaceReprojectionThread(JIIJ[F)V

    .line 578
    return-void
.end method

.method public usingVrDisplayService()Z
    .locals 2

    .prologue
    .line 1013
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeUsingVrDisplayService(J)Z

    move-result v0

    return v0
.end method
