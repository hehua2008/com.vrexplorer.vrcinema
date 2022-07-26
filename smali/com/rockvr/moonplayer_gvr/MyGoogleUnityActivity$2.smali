.class Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity$2;
.super Ljava/lang/Object;
.source "MyGoogleUnityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->exitVR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity$2;->this$0:Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity$2;->this$0:Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;

    iget-object v0, v0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 77
    return-void
.end method
