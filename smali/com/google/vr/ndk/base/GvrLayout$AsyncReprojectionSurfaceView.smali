.class Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;
.super Lcom/google/vr/ndk/base/GvrSurfaceView;
.source "GvrLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncReprojectionSurfaceView"
.end annotation


# instance fields
.field private scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView;-><init>(Landroid/content/Context;)V

    .line 1077
    return-void
.end method

.method static synthetic access$300(Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;)Lcom/google/vr/cardboard/ScanlineRacingRenderer;
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    return-object v0
.end method


# virtual methods
.method public setRenderer(Lcom/google/vr/cardboard/ScanlineRacingRenderer;)V
    .locals 0

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    .line 1082
    invoke-super {p0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1083
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->isDetachedFromWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    if-eqz v0, :cond_0

    .line 1099
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1102
    new-instance v1, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView$1;

    invoke-direct {v1, p0, v0}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView$1;-><init>(Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1113
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1120
    return-void

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    const-string v1, "GvrLayout"

    const-string v2, "Interrupted during surface destroyed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
