.class Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$3;
.super Ljava/lang/Object;
.source "RCTIJKPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->access$000(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;)Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->resume()V

    .line 80
    return-void
.end method
