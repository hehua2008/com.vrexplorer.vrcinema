.class public Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RCTIJKPlayerModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RCTIJKPlayerModule"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 30
    const-string v0, "libijkplayer.so"

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule$1;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule$1;-><init>(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "RCTIJKPlayerModule"

    return-object v0
.end method

.method public pause()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->getViewInstance()Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->pause()V

    .line 66
    return-void
.end method

.method public playbackInfo(Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->getViewInstance()Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->getPlayer()Lcom/rockvr/moonplayer_gvr/media/IPlayerControl;

    move-result-object v5

    .line 86
    .local v5, "player":Lcom/rockvr/moonplayer_gvr/media/IPlayerControl;
    new-instance v2, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v2}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 87
    .local v2, "data":Lcom/facebook/react/bridge/WritableMap;
    invoke-interface {v5}, Lcom/rockvr/moonplayer_gvr/media/IPlayerControl;->getCurrentPosition()I

    move-result v6

    div-int/lit16 v1, v6, 0x3e8

    .line 88
    .local v1, "currentPlaybackTime":I
    invoke-interface {v5}, Lcom/rockvr/moonplayer_gvr/media/IPlayerControl;->getDuration()I

    move-result v6

    div-int/lit16 v3, v6, 0x3e8

    .line 89
    .local v3, "duration":I
    invoke-interface {v5}, Lcom/rockvr/moonplayer_gvr/media/IPlayerControl;->getBufferPercentage()I

    move-result v0

    .line 90
    .local v0, "bufferingProgress":I
    invoke-interface {v5}, Lcom/rockvr/moonplayer_gvr/media/IPlayerControl;->getCurrentState()I

    move-result v4

    .line 92
    .local v4, "playbackState":I
    const-string v6, "currentPlaybackTime"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v6, "duration"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v6, "playableDuration"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v6, "bufferingProgress"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v6, "playbackState"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v6, "loadState"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v6, "isPreparedToPlay"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public resume()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->getViewInstance()Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->resume()V

    .line 71
    return-void
.end method

.method public seekTo(D)V
    .locals 1
    .param p1, "currentPlaybackTime"    # D
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->getViewInstance()Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->seekTo(D)V

    .line 81
    return-void
.end method

.method public shutdown()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->getViewInstance()Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->shutdown()V

    .line 76
    return-void
.end method

.method public start(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .param p1, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 48
    const-string v1, "url"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "URL":Ljava/lang/String;
    new-instance v1, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule$2;

    invoke-direct {v1, p0, v0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule$2;-><init>(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->getViewInstance()Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;->stop()V

    .line 61
    return-void
.end method

.method public switchProjectionMode(I)V
    .locals 1
    .param p1, "projection"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule$3;

    invoke-direct {v0, p0, p1}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule$3;-><init>(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;I)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method
