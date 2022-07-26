.class public Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;
.super Ljava/lang/Object;
.source "RNWebViewPackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# instance fields
.field private module:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;

.field private viewManager:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v1, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;

    invoke-direct {v1, p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;->module:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;

    .line 21
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;->module:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;

    invoke-virtual {v1, p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->setPackage(Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/NativeModule;>;"
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;->module:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-object v0
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;

    invoke-direct {v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;-><init>()V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;->viewManager:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;

    .line 32
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;->viewManager:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;

    invoke-virtual {v0, p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;->setPackage(Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;)V

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/react/uimanager/ViewManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;->viewManager:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getModule()Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;->module:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;

    return-object v0
.end method

.method public getViewManager()Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;->viewManager:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;

    return-object v0
.end method
