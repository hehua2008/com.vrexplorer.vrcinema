.class Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView$1;
.super Ljava/lang/Object;
.source "GvrLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

.field final synthetic val$destroySurfaceLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView$1;->this$0:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView$1;->val$destroySurfaceLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView$1;->this$0:Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;->access$300(Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView;)Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->onDestroySurface()V

    .line 1107
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$AsyncReprojectionSurfaceView$1;->val$destroySurfaceLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1108
    return-void
.end method
