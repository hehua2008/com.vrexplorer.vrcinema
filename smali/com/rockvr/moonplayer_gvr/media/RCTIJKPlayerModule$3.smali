.class Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule$3;
.super Ljava/lang/Object;
.source "RCTIJKPlayerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;->switchProjectionMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;

.field final synthetic val$projection:I


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;

    iput p2, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule$3;->val$projection:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule$3;->val$projection:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 110
    :pswitch_0
    invoke-static {}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->getViewInstance()Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->getPlayer()Lcom/rockvr/moonplayer_gvr/media/IPlayerControl;

    move-result-object v0

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->MODE_2D:Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    invoke-interface {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/IPlayerControl;->switchPlayMode(Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;)V

    goto :goto_0

    .line 113
    :pswitch_1
    invoke-static {}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->getViewInstance()Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->getPlayer()Lcom/rockvr/moonplayer_gvr/media/IPlayerControl;

    move-result-object v0

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->MODE_360:Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    invoke-interface {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/IPlayerControl;->switchPlayMode(Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
