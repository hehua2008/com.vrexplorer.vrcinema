.class Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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
    .line 374
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 376
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0, v3}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$902(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I

    .line 378
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0, v3}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1202(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I

    .line 380
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1700(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1700(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$200(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    :cond_0
    return v4
.end method
