.class public Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNVideoService.java"

# interfaces
.implements Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "RNVideoService"


# instance fields
.field private mDataServiceMedium:Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;

.field mReactContext:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 31
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 32
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-direct {v0, p1}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->mDataServiceMedium:Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;

    .line 33
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->mDataServiceMedium:Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;

    invoke-interface {v0}, Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;->startService()V

    .line 34
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->mDataServiceMedium:Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;

    invoke-interface {v0}, Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;->bindService()V

    .line 35
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->mDataServiceMedium:Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;

    invoke-interface {v0, p0}, Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;->setDataServiceMediumCallback(Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;)V

    .line 36
    return-void
.end method

.method private sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/facebook/react/bridge/WritableMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 114
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "RNVideoService"

    return-object v0
.end method

.method public getVideos()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->mDataServiceMedium:Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;

    invoke-interface {v0}, Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;->getVideosByCallback()V

    .line 41
    return-void
.end method

.method public isSearching()Z
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->mDataServiceMedium:Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;

    invoke-interface {v0}, Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;->isSearching()Z

    move-result v0

    return v0
.end method

.method public onGetVideosCompleted(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "videoMedias":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 96
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "videoMediaJson":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 98
    .local v1, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "videoMedias"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v3, "onGetVideosCompleted"

    invoke-direct {p0, v3, v1}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 100
    return-void
.end method

.method public onNotExistVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 4
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 104
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 105
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "videoMediaJson":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 107
    .local v1, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "videoMedia"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v3, "onNotExistVideoMedia"

    invoke-direct {p0, v3, v1}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 109
    return-void
.end method

.method public onPublishVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 4
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 80
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 81
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "videoMediaJson":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 83
    .local v1, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "videoMedia"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "onPublishVideoMedia"

    invoke-direct {p0, v3, v1}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 85
    return-void
.end method

.method public onSearchCompleted()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 90
    .local v0, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "onSearchCompleted"

    invoke-direct {p0, v1, v0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 91
    return-void
.end method

.method public onUpdateThumbnail(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 4
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 71
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 72
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "videoMediaJson":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 74
    .local v1, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "videoMedia"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v3, "onUpdateThumbnail"

    invoke-direct {p0, v3, v1}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 76
    return-void
.end method

.method public startRefreshVideos()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->mDataServiceMedium:Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;

    invoke-interface {v0}, Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->mDataServiceMedium:Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;

    invoke-interface {v0}, Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;->startRefresh()V

    goto :goto_0
.end method

.method public stopRefreshVideos()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->mDataServiceMedium:Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;

    invoke-interface {v0}, Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;->isSearching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoService;->mDataServiceMedium:Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;

    invoke-interface {v0}, Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;->stopRefresh()V

    goto :goto_0
.end method
