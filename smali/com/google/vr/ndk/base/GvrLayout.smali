.class public Lcom/google/vr/ndk/base/GvrLayout;
.super Landroid/widget/FrameLayout;
.source "GvrLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;,
        Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;,
        Lcom/google/vr/ndk/base/GvrLayout$PresentationFactory;,
        Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;,
        Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceManager;,
        Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;
    }
.end annotation


# static fields
.field private static final CONTEXT_SHARING_ENABLED:Z = false

.field private static final DEBUG:Z = false

.field private static final EXTERNAL_PRESENTATION_MIN_API:I = 0x10

.field private static final SHOW_RENDERING_VIEWS_DELAY_FOR_FADE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "GvrLayout"

.field private static sOptionalPresentationFactory:Lcom/google/vr/ndk/base/GvrLayout$PresentationFactory;


# instance fields
.field private cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

.field private daydreamTouchListener:Lcom/google/vr/ndk/base/DaydreamTouchListener;

.field private daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

.field private displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

.field private eglFactory:Lcom/google/vr/cardboard/EglFactory;

.field private eglReadyListener:Lcom/google/vr/cardboard/EglReadyListener;

.field private fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

.field private gvrApi:Lcom/google/vr/ndk/base/GvrApi;

.field private isAsyncReprojectionUsingProtectedBuffers:Z

.field private isAsyncReprojectionVideoEnabled:Z

.field private isResumed:Z

.field private presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

.field private presentationLayout:Landroid/widget/FrameLayout;

.field private presentationView:Landroid/view/View;

.field private scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

.field private scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

.field private final showRenderingViewsRunnable:Ljava/lang/Runnable;

.field private stereoModeEnabled:Z

.field private uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

.field private videoSurfaceId:I

.field private vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/google/vr/ndk/base/GvrLayout;->sOptionalPresentationFactory:Lcom/google/vr/ndk/base/GvrLayout$PresentationFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->isResumed:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurfaceId:I

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->stereoModeEnabled:Z

    .line 126
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayout$1;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/GvrLayout$1;-><init>(Lcom/google/vr/ndk/base/GvrLayout;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->showRenderingViewsRunnable:Ljava/lang/Runnable;

    .line 238
    invoke-static {p1}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 239
    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An Activity Context is required for VR functionality."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    .line 243
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/ndk/base/GvrLayout;->init(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/cardboard/DisplaySynchronizer;Lcom/google/vr/cardboard/EglReadyListener;Lcom/google/vr/ndk/base/FadeOverlayView;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->isResumed:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurfaceId:I

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->stereoModeEnabled:Z

    .line 126
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayout$1;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/GvrLayout$1;-><init>(Lcom/google/vr/ndk/base/GvrLayout;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->showRenderingViewsRunnable:Ljava/lang/Runnable;

    .line 258
    invoke-static {p1}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 259
    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An Activity Context is required for VR functionality."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    .line 263
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/ndk/base/GvrLayout;->init(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/cardboard/DisplaySynchronizer;Lcom/google/vr/cardboard/EglReadyListener;Lcom/google/vr/ndk/base/FadeOverlayView;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)V

    .line 264
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/cardboard/DisplaySynchronizer;Lcom/google/vr/cardboard/EglReadyListener;Lcom/google/vr/ndk/base/FadeOverlayView;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)V
    .locals 6

    .prologue
    .line 287
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->isResumed:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurfaceId:I

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->stereoModeEnabled:Z

    .line 126
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayout$1;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/GvrLayout$1;-><init>(Lcom/google/vr/ndk/base/GvrLayout;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->showRenderingViewsRunnable:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 288
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/ndk/base/GvrLayout;->init(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/cardboard/DisplaySynchronizer;Lcom/google/vr/cardboard/EglReadyListener;Lcom/google/vr/ndk/base/FadeOverlayView;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Lcom/google/vr/cardboard/VrContextWrapper;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->isResumed:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurfaceId:I

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->stereoModeEnabled:Z

    .line 126
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayout$1;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/GvrLayout$1;-><init>(Lcom/google/vr/ndk/base/GvrLayout;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->showRenderingViewsRunnable:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    .line 276
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/ndk/base/GvrLayout;->init(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/cardboard/DisplaySynchronizer;Lcom/google/vr/cardboard/EglReadyListener;Lcom/google/vr/ndk/base/FadeOverlayView;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)V

    .line 277
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/ndk/base/GvrLayout;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/GvrLayout;->updateRenderingViewsVisibility(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/vr/ndk/base/GvrLayout;)Lcom/google/vr/cardboard/ScanlineRacingRenderer;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/vr/ndk/base/GvrLayout;)Lcom/google/vr/ndk/base/GvrUiLayout;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/vr/ndk/base/GvrLayout$PresentationFactory;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/vr/ndk/base/GvrLayout;->sOptionalPresentationFactory:Lcom/google/vr/ndk/base/GvrLayout$PresentationFactory;

    return-object v0
.end method

.method private addScanlineRacingView()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 718
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    if-eqz v0, :cond_0

    .line 755
    :goto_0
    return-void

    .line 722
    :cond_0
    new-instance v0, Lcom/google/vr/cardboard/EglFactory;

    invoke-direct {v0}, Lcom/google/vr/cardboard/EglFactory;-><init>()V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    .line 723
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    invoke-virtual {v0, v2}, Lcom/google/vr/cardboard/EglFactory;->setUsePriorityContext(Z)V

    .line 724
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->isAsyncReprojectionUsingProtectedBuffers:Z

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/EglFactory;->setUseProtectedBuffers(Z)V

    .line 725
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    invoke-virtual {v0, v3}, Lcom/google/vr/cardboard/EglFactory;->setEGLContextClientVersion(I)V

    .line 727
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    .line 728
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    invoke-virtual {v0, v3}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->setEGLContextClientVersion(I)V

    .line 729
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    new-instance v1, Lcom/google/vr/cardboard/MutableEglConfigChooser;

    invoke-direct {v1}, Lcom/google/vr/cardboard/MutableEglConfigChooser;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 730
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    invoke-virtual {v0, v2}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 731
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 732
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    .line 738
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->stereoModeEnabled:Z

    if-nez v0, :cond_1

    .line 741
    const-string v0, "GvrLayout"

    const-string v1, "Disabling stereo mode with async reprojection enabled may not work properly."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->setVisibility(I)V

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    if-nez v0, :cond_2

    .line 746
    new-instance v0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-direct {v0, v1}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;-><init>(Lcom/google/vr/ndk/base/GvrApi;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    .line 748
    :cond_2
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->setSurfaceView(Lcom/google/vr/ndk/base/GvrSurfaceView;)V

    .line 749
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->setRenderer(Lcom/google/vr/cardboard/ScanlineRacingRenderer;)V

    .line 750
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    invoke-virtual {v0, v2}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->setSwapMode(I)V

    .line 754
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private init(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/cardboard/DisplaySynchronizer;Lcom/google/vr/cardboard/EglReadyListener;Lcom/google/vr/ndk/base/FadeOverlayView;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 298
    const-string v2, "GvrLayout.init"

    invoke-static {v2}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 302
    if-eqz p2, :cond_5

    .line 306
    :goto_0
    if-eqz p3, :cond_6

    .line 307
    :goto_1
    if-eqz p1, :cond_7

    .line 313
    :goto_2
    if-eqz p5, :cond_8

    .line 316
    :goto_3
    :try_start_0
    iput-object p5, p0, Lcom/google/vr/ndk/base/GvrLayout;->daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    .line 317
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationLayout:Landroid/widget/FrameLayout;

    .line 318
    new-instance v2, Lcom/google/vr/ndk/base/GvrUiLayout;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/vr/ndk/base/GvrUiLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    .line 319
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 320
    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrLayout;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    .line 321
    iput-object p3, p0, Lcom/google/vr/ndk/base/GvrLayout;->eglReadyListener:Lcom/google/vr/cardboard/EglReadyListener;

    .line 322
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->tryCreatePresentationHelper()Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    .line 326
    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/vr/ndk/base/GvrLayout;->addView(Landroid/view/View;I)V

    .line 327
    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/vr/ndk/base/GvrLayout;->addView(Landroid/view/View;I)V

    .line 328
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->updateUiLayout()V

    .line 331
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p5, v2}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result v4

    .line 332
    if-eqz v4, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->createDaydreamTouchListener()Lcom/google/vr/ndk/base/DaydreamTouchListener;

    move-result-object v2

    iput-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout;->daydreamTouchListener:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    .line 335
    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrLayout;->daydreamTouchListener:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    invoke-virtual {v2, v3}, Lcom/google/vr/ndk/base/GvrUiLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p5, v2}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->getComponentDaydreamCompatibility(Landroid/content/Context;)I

    move-result v2

    .line 340
    if-eqz v2, :cond_9

    move v3, v1

    .line 341
    :goto_4
    if-ne v2, v5, :cond_a

    move v2, v1

    .line 345
    :goto_5
    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    .line 346
    :cond_2
    if-eqz v0, :cond_4

    .line 347
    if-eqz v3, :cond_3

    .line 348
    if-eqz p4, :cond_b

    .line 349
    :goto_6
    iput-object p4, p0, Lcom/google/vr/ndk/base/GvrLayout;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    .line 350
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrLayout;->addView(Landroid/view/View;I)V

    .line 353
    :cond_3
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    invoke-virtual {p0, v0, p1, p5, v1}, Lcom/google/vr/ndk/base/GvrLayout;->createVrCoreSdkClient(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;Lcom/google/vr/ndk/base/FadeOverlayView;)Lcom/google/vr/ndk/base/VrCoreSdkClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :cond_4
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    .line 357
    return-void

    .line 305
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/vr/ndk/base/GvrApi;->createDefaultDisplaySynchronizer(Landroid/content/Context;)Lcom/google/vr/cardboard/DisplaySynchronizer;

    move-result-object p2

    goto/16 :goto_0

    .line 306
    :cond_6
    new-instance p3, Lcom/google/vr/cardboard/EglReadyListener;

    invoke-direct {p3}, Lcom/google/vr/cardboard/EglReadyListener;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 356
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v0

    .line 307
    :cond_7
    :try_start_2
    new-instance p1, Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, p2}, Lcom/google/vr/ndk/base/GvrApi;-><init>(Landroid/content/Context;Lcom/google/vr/cardboard/DisplaySynchronizer;)V

    goto/16 :goto_2

    .line 313
    :cond_8
    new-instance p5, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    invoke-direct {p5}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;-><init>()V

    goto/16 :goto_3

    :cond_9
    move v3, v0

    .line 340
    goto :goto_4

    :cond_a
    move v2, v0

    .line 341
    goto :goto_5

    .line 349
    :cond_b
    new-instance p4, Lcom/google/vr/ndk/base/FadeOverlayView;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6
.end method

.method static setPresentationFactory(Lcom/google/vr/ndk/base/GvrLayout$PresentationFactory;)V
    .locals 0

    .prologue
    .line 958
    sput-object p0, Lcom/google/vr/ndk/base/GvrLayout;->sOptionalPresentationFactory:Lcom/google/vr/ndk/base/GvrLayout$PresentationFactory;

    .line 959
    return-void
.end method

.method private tryCreatePresentationHelper()Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 991
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-gt v1, v2, :cond_0

    .line 1001
    :goto_0
    return-object v0

    .line 995
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/vr/cardboard/DisplayUtils;->getExternalDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 996
    if-nez v5, :cond_1

    .line 997
    const-string v1, "GvrLayout"

    const-string v2, "HDMI display name could not be found, disabling external presentation support"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1001
    :cond_1
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    .line 1002
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/google/vr/ndk/base/GvrLayout;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/view/View;Lcom/google/vr/cardboard/DisplaySynchronizer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateFadeVisibility()V
    .locals 4

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1037
    :goto_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    if-eqz v1, :cond_0

    .line 1038
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->isResumed:Z

    if-eqz v1, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->onVisible()V

    .line 1043
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->showRenderingViewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1044
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->showRenderingViewsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/vr/ndk/base/GvrLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1058
    :cond_0
    :goto_1
    return-void

    .line 1036
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1045
    :cond_2
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->isResumed:Z

    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->onInvisible()V

    .line 1053
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/GvrLayout;->updateRenderingViewsVisibility(I)V

    .line 1055
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->showRenderingViewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private updateRenderingViewsVisibility(I)V
    .locals 2

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->stereoModeEnabled:Z

    if-eqz v0, :cond_2

    move v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    if-eqz v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->stereoModeEnabled:Z

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->setVisibility(I)V

    .line 1021
    :cond_1
    return-void

    .line 1015
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1019
    :cond_3
    const/16 p1, 0x8

    goto :goto_1
.end method

.method private updateUiLayout()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1062
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v1}, Lcom/google/vr/ndk/base/GvrApi;->getViewerType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1063
    :goto_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    invoke-virtual {v1, v0}, Lcom/google/vr/ndk/base/GvrUiLayout;->setDaydreamModeEnabled(Z)V

    .line 1064
    return-void

    .line 1062
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPresentationListener(Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;)V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->addListener(Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;)V

    .line 832
    :cond_0
    return-void
.end method

.method createDaydreamTouchListener()Lcom/google/vr/ndk/base/DaydreamTouchListener;
    .locals 3

    .prologue
    .line 981
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamTouchListener;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-direct {v0, v1, v2}, Lcom/google/vr/ndk/base/DaydreamTouchListener;-><init>(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrApi;)V

    return-object v0
.end method

.method protected createVrCoreSdkClient(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;Lcom/google/vr/ndk/base/FadeOverlayView;)Lcom/google/vr/ndk/base/VrCoreSdkClient;
    .locals 7

    .prologue
    .line 850
    invoke-static {p1}, Lcom/google/vr/cardboard/ContextUtils;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 851
    new-instance v5, Lcom/google/vr/ndk/base/GvrLayout$3;

    invoke-direct {v5, p0}, Lcom/google/vr/ndk/base/GvrLayout$3;-><init>(Lcom/google/vr/ndk/base/GvrLayout;)V

    .line 858
    new-instance v0, Lcom/google/vr/ndk/base/VrCoreSdkClient;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/ndk/base/VrCoreSdkClient;-><init>(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrApi;Landroid/content/ComponentName;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;Ljava/lang/Runnable;Lcom/google/vr/ndk/base/FadeOverlayView;)V

    return-object v0
.end method

.method public enableAsyncReprojectionVideoSurface(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 590
    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout;->daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 592
    const-string v1, "GvrLayout"

    const-string v2, "Only Daydream devices support async reprojection. Cannot enable video Surface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_0
    return v0

    .line 596
    :cond_0
    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    if-eqz v2, :cond_1

    .line 597
    const-string v1, "GvrLayout"

    const-string v2, "Async reprojection is already enabled. Cannot call enableAsyncReprojectionVideoSurface after calling setAsyncReprojectionEnabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :cond_1
    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v2}, Lcom/google/vr/ndk/base/GvrApi;->usingVrDisplayService()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 605
    const-string v1, "GvrLayout"

    const-string v2, "Async reprojection video is not supported on this device."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 609
    :cond_2
    iput-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->isAsyncReprojectionVideoEnabled:Z

    .line 610
    iput-boolean p3, p0, Lcom/google/vr/ndk/base/GvrLayout;->isAsyncReprojectionUsingProtectedBuffers:Z

    .line 613
    new-instance v0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-direct {v0, v2}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;-><init>(Lcom/google/vr/ndk/base/GvrApi;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    .line 614
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->getExternalSurfaceManager()Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceManager;

    move-result-object v0

    .line 615
    invoke-interface {v0, p1, p2}, Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceManager;->createExternalSurface(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)I

    move-result v0

    iput v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurfaceId:I

    move v0, v1

    .line 616
    goto :goto_0
.end method

.method public enableCardboardTriggerEmulation(Ljava/lang/Runnable;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 692
    if-nez p1, :cond_0

    .line 693
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Cardboard trigger listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    if-eqz v1, :cond_1

    .line 714
    :goto_0
    return v0

    .line 703
    :cond_1
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 707
    const/4 v0, 0x0

    goto :goto_0

    .line 713
    :cond_2
    new-instance v1, Lcom/google/vr/ndk/base/CardboardEmulator;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/vr/ndk/base/CardboardEmulator;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    goto :goto_0
.end method

.method public getAsyncReprojectionVideoSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->isAsyncReprojectionVideoEnabled:Z

    if-nez v0, :cond_0

    .line 787
    const-string v0, "GvrLayout"

    const-string v1, "Async reprojection video is not enabled. Did you call enableAsyncReprojectionVideoSurface()?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v0, 0x0

    .line 798
    :goto_0
    return-object v0

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    if-nez v0, :cond_1

    .line 793
    const-string v0, "GvrLayout"

    const-string v1, "No async reprojection view has been set. Cannot get async reprojection managed Surfaces. Have you called setAsyncReprojectionEnabled()?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->getExternalSurfaceManager()Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceManager;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurfaceId:I

    invoke-interface {v0, v1}, Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceManager;->getSurface(I)Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getAsyncReprojectionVideoSurfaceId()I
    .locals 2

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->isAsyncReprojectionVideoEnabled:Z

    if-nez v0, :cond_0

    .line 770
    const-string v0, "GvrLayout"

    const-string v1, "Async reprojection video is not enabled. Did you call enableAsyncReprojectionVideoSurface()?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    iget v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurfaceId:I

    return v0
.end method

.method getFadeOverlayView()Lcom/google/vr/ndk/base/FadeOverlayView;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    return-object v0
.end method

.method public getGvrApi()Lcom/google/vr/ndk/base/GvrApi;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    return-object v0
.end method

.method public getUiLayout()Lcom/google/vr/ndk/base/GvrUiLayout;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    return-object v0
.end method

.method getVrCoreSdkClient()Lcom/google/vr/ndk/base/VrCoreSdkClient;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    return-object v0
.end method

.method public isPresenting()Z
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    .line 946
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->isPresenting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 944
    goto :goto_0
.end method

.method public launchInVr(Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->launchInVr(Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 872
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :cond_1
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v0

    .line 876
    const-string v1, "GvrLayout"

    const-string v2, "Error launching PendingIntent."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 510
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 511
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->onConfigurationChanged()V

    .line 512
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 502
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 503
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->onDetachedFromWindow()V

    .line 506
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 383
    const-string v0, "GvrLayout.onPause"

    invoke-static {v0}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->pause()V

    .line 386
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    new-instance v1, Lcom/google/vr/ndk/base/GvrLayout$2;

    invoke-direct {v1, p0}, Lcom/google/vr/ndk/base/GvrLayout$2;-><init>(Lcom/google/vr/ndk/base/GvrLayout;)V

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 394
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->onPause()V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->onPause()V

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->onPause()V

    .line 401
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->onPause()V

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/CardboardEmulator;->onPause()V

    .line 408
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->isResumed:Z

    .line 409
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->updateFadeVisibility()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 419
    const-string v0, "GvrLayout.onResume"

    invoke-static {v0}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->resume()V

    .line 422
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->daydreamTouchListener:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->daydreamTouchListener:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->refreshViewerProfile()V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->onResume()V

    .line 426
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->onResume()V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->onResume()V

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    if-eqz v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->onResume()Z

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    if-eqz v0, :cond_4

    .line 436
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->getViewerType()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 437
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/CardboardEmulator;->onResume()V

    .line 441
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->isResumed:Z

    .line 442
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->updateFadeVisibility()V

    .line 443
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->updateUiLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->isPresenting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    const/4 v0, 0x1

    .line 935
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .prologue
    .line 375
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 376
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->updateFadeVisibility()V

    .line 377
    return-void
.end method

.method public setAsyncReprojectionEnabled(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 631
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 632
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setAsyncReprojectionEnabled may only be called from the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 637
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Async reprojection cannot be disabled once enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 657
    :goto_0
    return v0

    .line 644
    :cond_2
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->setAsyncReprojectionEnabled(Z)Z

    move-result v1

    .line 646
    if-eqz p1, :cond_3

    .line 647
    if-eqz v1, :cond_4

    .line 648
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->usingVrDisplayService()Z

    move-result v0

    if-nez v0, :cond_3

    .line 649
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->addScanlineRacingView()V

    :cond_3
    :goto_1
    move v0, v1

    .line 657
    goto :goto_0

    .line 652
    :cond_4
    const-string v2, "GvrLayout"

    const-string v3, "Failed to initialize async reprojection, unsupported device."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->isAsyncReprojectionVideoEnabled:Z

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    goto :goto_1
.end method

.method public setFixedPresentationSurfaceSize(II)V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->setSurfaceSize(II)V

    .line 570
    return-void
.end method

.method public setPresentationView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 533
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationView:Landroid/view/View;

    .line 534
    return-void
.end method

.method public setStereoModeEnabled(Z)V
    .locals 1

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->stereoModeEnabled:Z

    if-ne v0, p1, :cond_0

    .line 920
    :goto_0
    return-void

    .line 899
    :cond_0
    iput-boolean p1, p0, Lcom/google/vr/ndk/base/GvrLayout;->stereoModeEnabled:Z

    .line 902
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrUiLayout;->setEnabled(Z)V

    .line 908
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->setEnabled(Z)V

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    if-eqz v0, :cond_2

    .line 912
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/FadeOverlayView;->setEnabled(Z)V

    .line 914
    :cond_2
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->daydreamTouchListener:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    if-eqz v0, :cond_3

    .line 915
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->daydreamTouchListener:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->setEnabled(Z)V

    .line 919
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/GvrLayout;->updateRenderingViewsVisibility(I)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 459
    const-string v0, "GvrLayout.shutdown"

    invoke-static {v0}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->shutdown()V

    .line 462
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->daydreamTouchListener:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->daydreamTouchListener:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->shutdown()V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrLayout;->removeView(Landroid/view/View;)V

    .line 472
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrLayout;->removeView(Landroid/view/View;)V

    .line 473
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->shutdown()V

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    .line 477
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationView:Landroid/view/View;

    .line 479
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->shutdown()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    if-eqz v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->onPause()V

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    if-eqz v0, :cond_4

    .line 488
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/CardboardEmulator;->onPause()V

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    .line 491
    :cond_4
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    if-eqz v0, :cond_5

    .line 492
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->shutdown()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :cond_5
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    .line 497
    return-void

    .line 496
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v0
.end method
