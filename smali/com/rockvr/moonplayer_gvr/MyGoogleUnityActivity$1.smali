.class Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity$1;
.super Ljava/lang/Object;
.source "MyGoogleUnityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->onBackPressed()V
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
    .line 58
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity$1;->this$0:Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 63
    return-void
.end method
