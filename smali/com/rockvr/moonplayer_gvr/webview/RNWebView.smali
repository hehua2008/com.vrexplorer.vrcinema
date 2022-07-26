.class Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
.super Landroid/webkit/WebView;
.source "RNWebView.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer_gvr/webview/RNWebView$GeoWebChromeClient;,
        Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;,
        Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;
    }
.end annotation


# instance fields
.field private allowUrlRedirect:Z

.field private baseUrl:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private injectedJavaScript:Ljava/lang/String;

.field private final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private final mViewManager:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;


# direct methods
.method public constructor <init>(Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 3
    .param p1, "viewManager"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;
    .param p2, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 114
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 33
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->charset:Ljava/lang/String;

    .line 34
    const-string v0, "file:///"

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->baseUrl:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->injectedJavaScript:Ljava/lang/String;

    .line 36
    iput-boolean v2, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->allowUrlRedirect:Z

    .line 116
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->mViewManager:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;

    .line 117
    const-class v0, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {p2, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 119
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 134
    :cond_0
    new-instance v0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;-><init>(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)V

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 135
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getCustomClient()Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

.method private createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 71
    .local v0, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "target"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v2

    int-to-double v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 74
    const-string v1, "url"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "title"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "canGoBack"

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    const-string v1, "canGoForward"

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    return-object v0
.end method


# virtual methods
.method public getAllowUrlRedirect()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->allowUrlRedirect:Z

    return v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomClient()Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;-><init>(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)V

    return-object v0
.end method

.method public getGeoClient()Lcom/rockvr/moonplayer_gvr/webview/RNWebView$GeoWebChromeClient;
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$GeoWebChromeClient;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$GeoWebChromeClient;-><init>(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)V

    return-object v0
.end method

.method public getInjectedJavaScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->injectedJavaScript:Ljava/lang/String;

    return-object v0
.end method

.method public getModule()Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->mViewManager:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;->getPackage()Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;->getModule()Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 6

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<html></html>"

    const-string v3, "text/html"

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getCharset()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 201
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->destroy()V

    .line 195
    return-void
.end method

.method public onHostPause()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onHostResume()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public setAllowUrlRedirect(Z)V
    .locals 0
    .param p1, "a"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->allowUrlRedirect:Z

    .line 148
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->baseUrl:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->charset:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setInjectedJavaScript(Ljava/lang/String;)V
    .locals 0
    .param p1, "injectedJavaScript"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->injectedJavaScript:Ljava/lang/String;

    .line 156
    return-void
.end method
