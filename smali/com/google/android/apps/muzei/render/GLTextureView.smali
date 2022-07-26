.class public Lcom/google/android/apps/muzei/render/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;,
        Lcom/google/android/apps/muzei/render/GLTextureView$LogWriter;,
        Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;,
        Lcom/google/android/apps/muzei/render/GLTextureView$EglHelper;,
        Lcom/google/android/apps/muzei/render/GLTextureView$SimpleEGLConfigChooser;,
        Lcom/google/android/apps/muzei/render/GLTextureView$ComponentSizeChooser;,
        Lcom/google/android/apps/muzei/render/GLTextureView$BaseConfigChooser;,
        Lcom/google/android/apps/muzei/render/GLTextureView$EGLConfigChooser;,
        Lcom/google/android/apps/muzei/render/GLTextureView$DefaultWindowSurfaceFactory;,
        Lcom/google/android/apps/muzei/render/GLTextureView$EGLWindowSurfaceFactory;,
        Lcom/google/android/apps/muzei/render/GLTextureView$DefaultContextFactory;,
        Lcom/google/android/apps/muzei/render/GLTextureView$EGLContextFactory;,
        Lcom/google/android/apps/muzei/render/GLTextureView$GLWrapper;
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

.field private static final TAG:Ljava/lang/String; = "GLTextureView"

.field private static final sGLThreadManager:Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/google/android/apps/muzei/render/GLTextureView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/google/android/apps/muzei/render/GLTextureView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/google/android/apps/muzei/render/GLTextureView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

.field private mGLWrapper:Lcom/google/android/apps/muzei/render/GLTextureView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/apps/muzei/render/GLTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1701
    new-instance v0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;-><init>(Lcom/google/android/apps/muzei/render/GLTextureView$1;)V

    sput-object v0, Lcom/google/android/apps/muzei/render/GLTextureView;->sGLThreadManager:Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 1703
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 95
    invoke-direct {p0}, Lcom/google/android/apps/muzei/render/GLTextureView;->init()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1703
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 104
    invoke-direct {p0}, Lcom/google/android/apps/muzei/render/GLTextureView;->init()V

    .line 105
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/muzei/render/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/muzei/render/GLTextureView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/muzei/render/GLTextureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/muzei/render/GLTextureView;

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/muzei/render/GLTextureView;)Lcom/google/android/apps/muzei/render/GLTextureView$EGLConfigChooser;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/muzei/render/GLTextureView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mEGLConfigChooser:Lcom/google/android/apps/muzei/render/GLTextureView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/muzei/render/GLTextureView;)Lcom/google/android/apps/muzei/render/GLTextureView$EGLContextFactory;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/muzei/render/GLTextureView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mEGLContextFactory:Lcom/google/android/apps/muzei/render/GLTextureView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/muzei/render/GLTextureView;)Lcom/google/android/apps/muzei/render/GLTextureView$EGLWindowSurfaceFactory;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/muzei/render/GLTextureView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/google/android/apps/muzei/render/GLTextureView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/muzei/render/GLTextureView;)Lcom/google/android/apps/muzei/render/GLTextureView$GLWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/muzei/render/GLTextureView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLWrapper:Lcom/google/android/apps/muzei/render/GLTextureView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/muzei/render/GLTextureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/muzei/render/GLTextureView;

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/android/apps/muzei/render/GLTextureView;->sGLThreadManager:Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/muzei/render/GLTextureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/muzei/render/GLTextureView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 1581
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1584
    :cond_0
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0, p0}, Lcom/google/android/apps/muzei/render/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 122
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
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public on(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->surfaceCreated()V

    .line 422
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 461
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 465
    iget-boolean v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mDetached:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v1, :cond_2

    .line 466
    const/4 v0, 0x1

    .line 467
    .local v0, "renderMode":I
    iget-object v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v1}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    .line 470
    :cond_0
    new-instance v1, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    iget-object v2, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    .line 471
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->setRenderMode(I)V

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v1}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->start()V

    .line 476
    .end local v0    # "renderMode":I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mDetached:Z

    .line 477
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->requestExitAndWait()V

    .line 492
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mDetached:Z

    .line 493
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 494
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->onPause()V

    .line 432
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->onResume()V

    .line 443
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 401
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->onWindowResize(II)V

    .line 403
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->surfaceCreated()V

    .line 392
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->surfaceDestroyed()V

    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->onWindowResize(II)V

    .line 397
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/google/android/apps/muzei/render/GLTextureView;->requestRender()V

    .line 414
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 453
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->requestRender()V

    .line 387
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mDebugFlags:I

    .line 152
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 312
    new-instance v0, Lcom/google/android/apps/muzei/render/GLTextureView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/muzei/render/GLTextureView$ComponentSizeChooser;-><init>(Lcom/google/android/apps/muzei/render/GLTextureView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/muzei/render/GLTextureView;->setEGLConfigChooser(Lcom/google/android/apps/muzei/render/GLTextureView$EGLConfigChooser;)V

    .line 314
    return-void
.end method

.method public setEGLConfigChooser(Lcom/google/android/apps/muzei/render/GLTextureView$EGLConfigChooser;)V
    .locals 0
    .param p1, "configChooser"    # Lcom/google/android/apps/muzei/render/GLTextureView$EGLConfigChooser;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/google/android/apps/muzei/render/GLTextureView;->checkRenderThreadState()V

    .line 276
    iput-object p1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mEGLConfigChooser:Lcom/google/android/apps/muzei/render/GLTextureView$EGLConfigChooser;

    .line 277
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .prologue
    .line 294
    new-instance v0, Lcom/google/android/apps/muzei/render/GLTextureView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/muzei/render/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/google/android/apps/muzei/render/GLTextureView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/muzei/render/GLTextureView;->setEGLConfigChooser(Lcom/google/android/apps/muzei/render/GLTextureView$EGLConfigChooser;)V

    .line 295
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/google/android/apps/muzei/render/GLTextureView;->checkRenderThreadState()V

    .line 344
    iput p1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mEGLContextClientVersion:I

    .line 345
    return-void
.end method

.method public setEGLContextFactory(Lcom/google/android/apps/muzei/render/GLTextureView$EGLContextFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/google/android/apps/muzei/render/GLTextureView$EGLContextFactory;

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/google/android/apps/muzei/render/GLTextureView;->checkRenderThreadState()V

    .line 245
    iput-object p1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mEGLContextFactory:Lcom/google/android/apps/muzei/render/GLTextureView$EGLContextFactory;

    .line 246
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/google/android/apps/muzei/render/GLTextureView$EGLWindowSurfaceFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/google/android/apps/muzei/render/GLTextureView$EGLWindowSurfaceFactory;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/google/android/apps/muzei/render/GLTextureView;->checkRenderThreadState()V

    .line 259
    iput-object p1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/google/android/apps/muzei/render/GLTextureView$EGLWindowSurfaceFactory;

    .line 260
    return-void
.end method

.method public setGLWrapper(Lcom/google/android/apps/muzei/render/GLTextureView$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Lcom/google/android/apps/muzei/render/GLTextureView$GLWrapper;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLWrapper:Lcom/google/android/apps/muzei/render/GLTextureView$GLWrapper;

    .line 139
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .param p1, "preserveOnPause"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mPreserveEGLContextOnPause:Z

    .line 182
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->setRenderMode(I)V

    .line 365
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-direct {p0}, Lcom/google/android/apps/muzei/render/GLTextureView;->checkRenderThreadState()V

    .line 219
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mEGLConfigChooser:Lcom/google/android/apps/muzei/render/GLTextureView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/google/android/apps/muzei/render/GLTextureView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/muzei/render/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/google/android/apps/muzei/render/GLTextureView;Z)V

    iput-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mEGLConfigChooser:Lcom/google/android/apps/muzei/render/GLTextureView$EGLConfigChooser;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mEGLContextFactory:Lcom/google/android/apps/muzei/render/GLTextureView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 223
    new-instance v0, Lcom/google/android/apps/muzei/render/GLTextureView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/muzei/render/GLTextureView$DefaultContextFactory;-><init>(Lcom/google/android/apps/muzei/render/GLTextureView;Lcom/google/android/apps/muzei/render/GLTextureView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mEGLContextFactory:Lcom/google/android/apps/muzei/render/GLTextureView$EGLContextFactory;

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/google/android/apps/muzei/render/GLTextureView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 226
    new-instance v0, Lcom/google/android/apps/muzei/render/GLTextureView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/google/android/apps/muzei/render/GLTextureView$DefaultWindowSurfaceFactory;-><init>(Lcom/google/android/apps/muzei/render/GLTextureView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/google/android/apps/muzei/render/GLTextureView$EGLWindowSurfaceFactory;

    .line 228
    :cond_2
    iput-object p1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 229
    new-instance v0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    iget-object v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView;->mGLThread:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->start()V

    .line 231
    return-void
.end method
