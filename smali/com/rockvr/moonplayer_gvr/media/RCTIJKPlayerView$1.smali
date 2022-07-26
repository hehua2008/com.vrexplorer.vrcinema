.class Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$1;
.super Ljava/lang/Object;
.source "RCTIJKPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->refresh()V
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
    .line 40
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$1;->this$0:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$1;->this$0:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->requestLayout()V

    .line 43
    return-void
.end method
