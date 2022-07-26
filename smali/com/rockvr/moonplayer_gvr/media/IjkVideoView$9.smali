.class Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$9;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


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
    .line 397
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$9;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$9;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1902(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;J)J

    .line 402
    return-void
.end method
