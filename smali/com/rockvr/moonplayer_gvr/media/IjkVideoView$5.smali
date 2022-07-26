.class Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
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
    .line 310
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 312
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$902(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I

    .line 313
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1202(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I

    .line 314
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1300(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1300(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$200(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 317
    :cond_0
    return-void
.end method
