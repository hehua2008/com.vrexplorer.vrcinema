.class Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$2;
.super Ljava/lang/Object;
.source "RCTIJKPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->start(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

.field final synthetic val$URL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$2;->this$0:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    iput-object p2, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$2;->val$URL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$2;->this$0:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->access$000(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;)Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$2;->val$URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$2;->this$0:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->access$000(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;)Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->start()V

    .line 64
    return-void
.end method
