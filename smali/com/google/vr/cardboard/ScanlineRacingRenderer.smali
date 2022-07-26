.class public Lcom/google/vr/cardboard/ScanlineRacingRenderer;
.super Ljava/lang/Object;
.source "ScanlineRacingRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanlineRacingRenderer"


# instance fields
.field private final gvrApi:Lcom/google/vr/ndk/base/GvrApi;

.field private gvrSurfaceView:Lcom/google/vr/ndk/base/GvrSurfaceView;

.field private final surfaceManager:Lcom/google/vr/cardboard/ExternalSurfaceManager;


# direct methods
.method public constructor <init>(Lcom/google/vr/ndk/base/GvrApi;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GvrApi must be supplied for proper scanline rendering"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 31
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager;

    invoke-direct {v0, p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager;-><init>(Lcom/google/vr/ndk/base/GvrApi;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->surfaceManager:Lcom/google/vr/cardboard/ExternalSurfaceManager;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/cardboard/ScanlineRacingRenderer;)Lcom/google/vr/ndk/base/GvrSurfaceView;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->gvrSurfaceView:Lcom/google/vr/ndk/base/GvrSurfaceView;

    return-object v0
.end method


# virtual methods
.method public getExternalSurfaceManager()Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->surfaceManager:Lcom/google/vr/cardboard/ExternalSurfaceManager;

    return-object v0
.end method

.method public onDestroySurface()V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->onPause()V

    .line 98
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->surfaceManager:Lcom/google/vr/cardboard/ExternalSurfaceManager;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->consumerUpdateManagedSurfaces()V

    .line 83
    iget-object v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->renderReprojectionThread()Landroid/graphics/Point;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v0}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->setSurfaceSize(II)V

    .line 87
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->onPauseReprojectionThread()V

    .line 123
    iget-object v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->surfaceManager:Lcom/google/vr/cardboard/ExternalSurfaceManager;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->consumerDetachFromCurrentGLContext()V

    .line 124
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->surfaceManager:Lcom/google/vr/cardboard/ExternalSurfaceManager;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->consumerAttachToCurrentGLContext()V

    .line 78
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 65
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Lcom/google/vr/cardboard/AndroidNCompat;->setVrThread(I)V

    .line 67
    iget-object v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->onSurfaceCreatedReprojectionThread()V

    .line 70
    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/google/vr/cardboard/ScanlineRacingRenderer$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/vr/cardboard/ScanlineRacingRenderer$1;-><init>(Lcom/google/vr/cardboard/ScanlineRacingRenderer;II)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public setSurfaceView(Lcom/google/vr/ndk/base/GvrSurfaceView;)V
    .locals 2

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GvrSurfaceView must be supplied for proper scanline rendering"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->gvrSurfaceView:Lcom/google/vr/ndk/base/GvrSurfaceView;

    .line 60
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->surfaceManager:Lcom/google/vr/cardboard/ExternalSurfaceManager;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->shutdown()V

    .line 130
    return-void
.end method
