.class Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule$2;
.super Ljava/lang/Object;
.source "RCTIJKPlayerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;->start(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;

.field final synthetic val$URL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule$2;->this$0:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;

    iput-object p2, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule$2;->val$URL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->getViewInstance()Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->getViewInstance()Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    move-result-object v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule$2;->val$URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->start(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
