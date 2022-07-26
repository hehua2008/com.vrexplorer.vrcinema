.class public Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;
.super Landroid/app/Activity;
.source "UnityPlayerActivity.java"


# instance fields
.field protected mUnityPlayer:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->requestWindowFeature(I)Z

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 24
    new-instance v0, Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 25
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 26
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 27
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 34
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 40
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 41
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 48
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 61
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 62
    return-void
.end method
