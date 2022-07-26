.class Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


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
    .line 284
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 286
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$802(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;J)J

    .line 287
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$902(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I

    .line 292
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1000(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1000(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v2}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$200(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$302(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I

    .line 297
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$402(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I

    .line 299
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1100(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)I

    move-result v0

    .line 300
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_1

    .line 301
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-virtual {v1, v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->seekTo(I)V

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1200(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 304
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-virtual {v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->start()V

    .line 306
    :cond_2
    return-void
.end method
