.class public Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;
.super Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;
.source "MyGoogleUnityActivity.java"


# instance fields
.field private exitTime:J

.field private mIntent:Landroid/content/Intent;

.field private mIntentAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;-><init>()V

    return-void
.end method

.method private exitVR()V
    .locals 2

    .prologue
    .line 72
    invoke-static {p0}, Lcom/rockvr/moonplayer/utils/analysis/UmengAnalysisWrapper;->onPause(Landroid/content/Context;)V

    .line 73
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity$2;

    invoke-direct {v1, p0}, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity$2;-><init>(Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method


# virtual methods
.method public getAirPlayVideoPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "AIRPLAY_VIDEO_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAppKey()Ljava/lang/String;
    .locals 5

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 103
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "UMENG_APPKEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 107
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const-string v2, ""

    goto :goto_0
.end method

.method getChannelId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    :try_start_0
    invoke-static {p0}, Lcom/mcxiaoke/packer/helper/PackerNg;->getChannel(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    const-string v1, ""

    goto :goto_0
.end method

.method public getFeaturedVideoId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "FEATURED_VIDEO_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentVideoPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->mIntentAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->mIntentAction:Ljava/lang/String;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->mIntentAction:Ljava/lang/String;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "AIR_PLAY_SERVERS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->exitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->exitTime:J

    .line 58
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity$1;

    invoke-direct {v1, p0}, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity$1;-><init>(Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->exitVR()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/rockvr/moonplayer/utils/analysis/UmengAnalysisWrapper;->openActivityDurationTrack(Z)V

    .line 27
    invoke-super {p0, p1}, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->mIntent:Landroid/content/Intent;

    .line 30
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;->mIntentAction:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->onPause()V

    .line 88
    invoke-static {p0}, Lcom/rockvr/moonplayer/utils/analysis/UmengAnalysisWrapper;->onPause(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->onResume()V

    .line 83
    invoke-static {p0}, Lcom/rockvr/moonplayer/utils/analysis/UmengAnalysisWrapper;->onResume(Landroid/content/Context;)V

    .line 84
    return-void
.end method
