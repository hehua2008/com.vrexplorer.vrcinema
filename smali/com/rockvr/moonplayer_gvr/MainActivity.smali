.class public Lcom/rockvr/moonplayer_gvr/MainActivity;
.super Lcom/facebook/react/ReactActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "moonplayer"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "onConfigurationChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "newConfig"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 31
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    const/4 v1, 0x0

    new-instance v2, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v2}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 37
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer_gvr/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 56
    invoke-super {p0}, Lcom/facebook/react/ReactActivity;->onPause()V

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/facebook/react/ReactActivity;->onResume()V

    .line 48
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 49
    invoke-static {p0}, Lcom/rockvr/moonplayer_gvr/util/EntryUtil;->parseIntent(Landroid/app/Activity;)V

    .line 50
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 51
    return-void
.end method
