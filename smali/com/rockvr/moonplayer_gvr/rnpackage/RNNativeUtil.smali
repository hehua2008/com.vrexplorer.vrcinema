.class public Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNNativeUtil.java"


# static fields
.field static final TAG:Ljava/lang/String; = "RNNativeUtil"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 17
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 35
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 36
    new-instance v1, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil$1;

    invoke-direct {v1, p0, v0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil$1;-><init>(Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 43
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 49
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil$2;

    invoke-direct {v1, p0, v0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil$2;-><init>(Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "RNNativeUtil"

    return-object v0
.end method

.method public startUnity()V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "FROM_2D"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method
