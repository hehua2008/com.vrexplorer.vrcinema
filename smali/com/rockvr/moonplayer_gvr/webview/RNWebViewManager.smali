.class public Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "RNWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager",
        "<",
        "Lcom/rockvr/moonplayer_gvr/webview/RNWebView;",
        ">;"
    }
.end annotation


# static fields
.field private static final BLANK_URL:Ljava/lang/String; = "about:blank"

.field public static final GO_BACK:I = 0x1

.field public static final GO_FORWARD:I = 0x2

.field private static final HTML_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final HTML_MIME_TYPE:Ljava/lang/String; = "text/html"

.field private static final HTTP_METHOD_POST:Ljava/lang/String; = "POST"

.field public static final REACT_CLASS:Ljava/lang/String; = "RNWebViewAndroid"
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final RELOAD:I = 0x3


# instance fields
.field private aPackage:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;

.field private headerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;->headerMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    move-result-object v0

    return-object v0
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .locals 4
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 51
    new-instance v0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-direct {v0, p0, p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;-><init>(Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 55
    .local v0, "rnwv":Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 59
    invoke-static {v3}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 61
    return-object v0
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 215
    const-string v0, "goBack"

    const/4 v1, 0x1

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "goForward"

    const/4 v3, 0x2

    .line 217
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "reload"

    const/4 v5, 0x3

    .line 218
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 215
    invoke-static/range {v0 .. v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 9

    .prologue
    .line 239
    const-string v0, "navigationStateChange"

    const-string v1, "registrationName"

    const-string v2, "onNavigationStateChange"

    .line 240
    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "onProgress"

    const-string v3, "registrationName"

    const-string v4, "onProgress"

    .line 241
    invoke-static {v3, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "onLoadingStartX"

    const-string v5, "registrationName"

    const-string v6, "onLoadingStartX"

    .line 242
    invoke-static {v5, v6}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "onLoadingFinishX"

    const-string v7, "registrationName"

    const-string v8, "onLoadingFinishX"

    .line 243
    invoke-static {v7, v8}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    .line 239
    invoke-static/range {v0 .. v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "RNWebViewAndroid"

    return-object v0
.end method

.method public getPackage()Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;->aPackage:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;

    return-object v0
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;->onDropViewInstance(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)V
    .locals 1
    .param p1, "webView"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/SimpleViewManager;->onDropViewInstance(Landroid/view/View;)V

    .line 251
    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ThemedReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 252
    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    check-cast p1, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;->receiveCommand(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "view"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p2, "commandId"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 224
    packed-switch p2, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 226
    :pswitch_0
    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->goBack()V

    goto :goto_0

    .line 229
    :pswitch_1
    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->goForward()V

    goto :goto_0

    .line 232
    :pswitch_2
    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->reload()V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAllowUrlRedirect(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p2, "allowUrlRedirect"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "allowUrlRedirect"
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1, p2}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->setAllowUrlRedirect(Z)V

    .line 75
    return-void
.end method

.method public setBaseUrl(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p2, "baseUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "baseUrl"
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p1, p2}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->setBaseUrl(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public setBuiltInZoomControls(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p2, "builtInZoomControls"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "builtInZoomControls"
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 91
    return-void
.end method

.method public setDisableCookies(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p2, "disableCookies"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "disableCookies"
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    if-eqz p2, :cond_0

    .line 80
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 81
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    invoke-static {v1}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 84
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    invoke-static {v2}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    goto :goto_0
.end method

.method public setGeolocationEnabled(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p2, "geolocationEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "geolocationEnabled"
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getGeoClient()Lcom/rockvr/moonplayer_gvr/webview/RNWebView$GeoWebChromeClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getCustomClient()Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0
.end method

.method public setHeaders(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p1, "view"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p2, "headers"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "headers"
    .end annotation

    .prologue
    .line 121
    if-eqz p2, :cond_0

    .line 122
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;->headerMap:Ljava/util/HashMap;

    .line 123
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 124
    .local v0, "iter":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;->headerMap:Ljava/util/HashMap;

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 129
    .end local v0    # "iter":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setHtml(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p2, "html"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "html"
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getCharset()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setHtmlCharset(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p2, "htmlCharset"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "htmlCharset"
    .end annotation

    .prologue
    .line 198
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->setCharset(Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method public setInjectedJavaScript(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p2, "injectedJavaScript"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScript"
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p1, p2}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->setInjectedJavaScript(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public setJavaScriptEnabled(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p2, "javaScriptEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "javaScriptEnabled"
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 107
    return-void
.end method

.method public setPackage(Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;)V
    .locals 0
    .param p1, "aPackage"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;->aPackage:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;

    .line 66
    return-void
.end method

.method public setSource(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 18
    .param p1, "view"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p2, "source"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "source"
    .end annotation

    .prologue
    .line 133
    if-eqz p2, :cond_a

    .line 134
    const-string v2, "html"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    const-string v2, "html"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "html":Ljava/lang/String;
    const-string v2, "baseUrl"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    const-string v2, "baseUrl"

    .line 138
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    .line 137
    invoke-virtual/range {v2 .. v7}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v4    # "html":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 140
    .restart local v4    # "html":Ljava/lang/String;
    :cond_1
    const-string v2, "text/html"

    const-string v3, "UTF-8"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2, v3}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v4    # "html":Ljava/lang/String;
    :cond_2
    const-string v2, "uri"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 145
    const-string v2, "uri"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 146
    .local v17, "uri":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getUrl()Ljava/lang/String;

    move-result-object v16

    .line 147
    .local v16, "previousUri":Ljava/lang/String;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    :cond_3
    const-string v2, "method"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 151
    const-string v2, "method"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 152
    .local v14, "method":Ljava/lang/String;
    const-string v2, "POST"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 153
    const/4 v15, 0x0

    .line 154
    .local v15, "postData":[B
    const-string v2, "body"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    const-string v2, "body"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, "body":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v8, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 162
    .end local v8    # "body":Ljava/lang/String;
    :cond_4
    :goto_1
    if-nez v15, :cond_5

    .line 163
    const/4 v2, 0x0

    new-array v15, v2, [B

    .line 165
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    .line 158
    .restart local v8    # "body":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 159
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    goto :goto_1

    .line 169
    .end local v8    # "body":Ljava/lang/String;
    .end local v9    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v14    # "method":Ljava/lang/String;
    .end local v15    # "postData":[B
    :cond_6
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v10, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "headers"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 171
    const-string v2, "headers"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v11

    .line 172
    .local v11, "headers":Lcom/facebook/react/bridge/ReadableMap;
    invoke-interface {v11}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v12

    .line 173
    .local v12, "iter":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :cond_7
    :goto_2
    invoke-interface {v12}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 174
    invoke-interface {v12}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v13

    .line 175
    .local v13, "key":Ljava/lang/String;
    const-string v2, "user-agent"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-interface {v11, v13}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_2

    .line 180
    :cond_8
    invoke-interface {v11, v13}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 184
    .end local v11    # "headers":Lcom/facebook/react/bridge/ReadableMap;
    .end local v12    # "iter":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    .end local v13    # "key":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 188
    .end local v10    # "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "previousUri":Ljava/lang/String;
    .end local v17    # "uri":Ljava/lang/String;
    :cond_a
    const-string v2, "about:blank"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setUrl(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p2, "url"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "url"
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewManager;->headerMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 117
    return-void
.end method

.method public setUserAgent(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
    .param p2, "userAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "userAgent"
    .end annotation

    .prologue
    .line 111
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method
