.class public Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;
.super Landroid/widget/FrameLayout;
.source "RCTIJKPlayerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RCTIJKPlayerView"


# instance fields
.field private mIJKPlayerView:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x2

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 31
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->mIJKPlayerView:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .line 32
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->mIJKPlayerView:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-virtual {v1, v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-static {}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->getInstance()Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->setIJKPlayerView(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;)V

    .line 34
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->mIJKPlayerView:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-virtual {p0, v1, v0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;)Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->mIJKPlayerView:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    return-object v0
.end method

.method private sendEvent(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    .line 50
    .local v1, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 51
    .local v0, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "state"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 53
    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v3, "PlayBackState"

    .line 54
    invoke-interface {v2, v3, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getPlayer()Lcom/rockvr/moonplayer_gvr/media/IPlayerControl;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->mIJKPlayerView:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->mIJKPlayerView:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->pause()V

    .line 74
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->postInvalidate()V

    .line 40
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$1;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$1;-><init>(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$3;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$3;-><init>(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public seekTo(D)V
    .locals 5
    .param p1, "currentPlaybackTime"    # D

    .prologue
    .line 90
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, p1

    double-to-int v0, v2

    .line 91
    .local v0, "position":I
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->mIJKPlayerView:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-virtual {v1, v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->seekTo(I)V

    .line 92
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->mIJKPlayerView:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->release(Z)V

    .line 87
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 4
    .param p1, "URL"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "RCTIJKPlayerView"

    const-string v1, "start URL %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$2;

    invoke-direct {v0, p0, p1}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView$2;-><init>(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->mIJKPlayerView:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->stopPlayback()V

    .line 70
    return-void
.end method
