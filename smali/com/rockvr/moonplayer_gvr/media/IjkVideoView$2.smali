.class Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$2;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->createVRLibrary()Lcom/asha/vrlib/MDVRLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$2;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceReady(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$2;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0, p1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$002(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 135
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$2;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$100(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Lcom/asha/vrlib/MDVRLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$2;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-virtual {v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDVRLibrary;->onResume(Landroid/content/Context;)V

    .line 136
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$2;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$200(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$2;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$200(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 139
    :cond_0
    return-void
.end method
