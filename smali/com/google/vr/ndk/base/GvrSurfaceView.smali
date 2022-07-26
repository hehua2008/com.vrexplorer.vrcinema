.class public Lcom/google/vr/ndk/base/GvrSurfaceView;
.super Landroid/view/SurfaceView;
.source "GvrSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/GvrSurfaceView$LogWriter;,
        Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;,
        Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;,
        Lcom/google/vr/ndk/base/GvrSurfaceView$SimpleEGLConfigChooser;,
        Lcom/google/vr/ndk/base/GvrSurfaceView$ComponentSizeChooser;,
        Lcom/google/vr/ndk/base/GvrSurfaceView$BaseConfigChooser;,
        Lcom/google/vr/ndk/base/GvrSurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/google/vr/ndk/base/GvrSurfaceView$DefaultContextFactory;,
        Lcom/google/vr/ndk/base/GvrSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field public static final SWAPMODE_MANUAL:I = 0x2

.field public static final SWAPMODE_QUEUED:I = 0x0

.field public static final SWAPMODE_SINGLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GvrSurfaceView"


# instance fields
.field private mAppContextListener:Lcom/google/vr/cardboard/EglReadyListener;

.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

.field private mGLWrapper:Lcom/google/vr/ndk/base/GvrSurfaceView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mPreserveGlThreadOnDetachedFromWindow:Z

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/vr/ndk/base/GvrSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 273
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2018
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 274
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->init()V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2018
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 283
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->init()V

    .line 284
    return-void
.end method

.method static synthetic access$1000(Lcom/google/vr/ndk/base/GvrSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/vr/ndk/base/GvrSurfaceView;)I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/vr/ndk/base/GvrSurfaceView;)Lcom/google/vr/cardboard/EglReadyListener;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mAppContextListener:Lcom/google/vr/cardboard/EglReadyListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/vr/ndk/base/GvrSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/vr/ndk/base/GvrSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/vr/ndk/base/GvrSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/vr/ndk/base/GvrSurfaceView;)Lcom/google/vr/ndk/base/GvrSurfaceView$GLWrapper;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLWrapper:Lcom/google/vr/ndk/base/GvrSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/vr/ndk/base/GvrSurfaceView;)I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/vr/ndk/base/GvrSurfaceView;)Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 2014
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2016
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 303
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 311
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected isDetachedFromWindow()Z
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mDetached:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 713
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 717
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mDetached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mPreserveGlThreadOnDetachedFromWindow:Z

    if-nez v0, :cond_2

    .line 720
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    if-eqz v0, :cond_3

    .line 721
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->getRenderMode()I

    move-result v2

    .line 722
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->getSwapMode()I

    move-result v0

    .line 724
    :goto_0
    new-instance v4, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    iget-object v5, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v5}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v4, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    .line 725
    if-eq v2, v3, :cond_0

    .line 726
    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v3, v2}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->setRenderMode(I)V

    .line 728
    :cond_0
    if-eqz v0, :cond_1

    .line 729
    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v2, v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->setSwapMode(I)V

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->start()V

    .line 733
    :cond_2
    iput-boolean v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mDetached:Z

    .line 734
    return-void

    :cond_3
    move v0, v1

    move v2, v3

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mPreserveGlThreadOnDetachedFromWindow:Z

    if-nez v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->requestExitAndWait()V

    .line 744
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mDetached:Z

    .line 745
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 746
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->onPause()V

    .line 676
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->onResume()V

    .line 687
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 697
    return-void
.end method

.method public requestExitAndWait()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->requestExitAndWait()V

    .line 705
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->requestRender()V

    .line 586
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    .prologue
    .line 340
    iput p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mDebugFlags:I

    .line 341
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8

    .prologue
    .line 511
    new-instance v0, Lcom/google/vr/ndk/base/GvrSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/ndk/base/GvrSurfaceView$ComponentSizeChooser;-><init>(Lcom/google/vr/ndk/base/GvrSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 513
    return-void
.end method

.method public setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->checkRenderThreadState()V

    .line 475
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 476
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    .prologue
    .line 493
    new-instance v0, Lcom/google/vr/ndk/base/GvrSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/google/vr/ndk/base/GvrSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 494
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->checkRenderThreadState()V

    .line 543
    iput p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mEGLContextClientVersion:I

    .line 544
    return-void
.end method

.method public setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->checkRenderThreadState()V

    .line 444
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 445
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->checkRenderThreadState()V

    .line 458
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 459
    return-void
.end method

.method public setEglReadyListener(Lcom/google/vr/cardboard/EglReadyListener;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mAppContextListener:Lcom/google/vr/cardboard/EglReadyListener;

    .line 430
    return-void
.end method

.method public setGLWrapper(Lcom/google/vr/ndk/base/GvrSurfaceView$GLWrapper;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLWrapper:Lcom/google/vr/ndk/base/GvrSurfaceView$GLWrapper;

    .line 328
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mPreserveEGLContextOnPause:Z

    .line 371
    return-void
.end method

.method public setPreserveGlThreadOnDetachedFromWindow(Z)V
    .locals 0

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->checkRenderThreadState()V

    .line 628
    iput-boolean p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mPreserveGlThreadOnDetachedFromWindow:Z

    .line 629
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->setRenderMode(I)V

    .line 564
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->checkRenderThreadState()V

    .line 408
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lcom/google/vr/ndk/base/GvrSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/vr/ndk/base/GvrSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/google/vr/ndk/base/GvrSurfaceView;Z)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 412
    new-instance v0, Lcom/google/vr/ndk/base/GvrSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/google/vr/ndk/base/GvrSurfaceView$DefaultContextFactory;-><init>(Lcom/google/vr/ndk/base/GvrSurfaceView;Lcom/google/vr/ndk/base/GvrSurfaceView$1;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 415
    new-instance v0, Lcom/google/vr/ndk/base/GvrSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/google/vr/ndk/base/GvrSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/google/vr/ndk/base/GvrSurfaceView$1;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 417
    :cond_2
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 418
    new-instance v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    .line 419
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->start()V

    .line 420
    return-void
.end method

.method public setSwapMode(I)V
    .locals 2

    .prologue
    .line 613
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 614
    const-string v0, "GvrSurfaceView"

    const-string v1, "setSwapMode(SWAPMODE_SINGLE) requires Jellybean MR1 (EGL14 dependency)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->setSwapMode(I)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->onWindowResize(II)V

    .line 657
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->surfaceCreated()V

    .line 638
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->surfaceDestroyed()V

    .line 648
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView;->mGLThread:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->requestRenderAndWait()V

    .line 666
    return-void
.end method
