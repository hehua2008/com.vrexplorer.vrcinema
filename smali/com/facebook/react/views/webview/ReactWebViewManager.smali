.class public Lcom/facebook/react/views/webview/ReactWebViewManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "ReactWebViewManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RCTWebView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;,
        Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# static fields
.field private static final BLANK_URL:Ljava/lang/String; = "about:blank"

.field private static final BRIDGE_NAME:Ljava/lang/String; = "__REACT_WEB_VIEW_BRIDGE"

.field public static final COMMAND_GO_BACK:I = 0x1

.field public static final COMMAND_GO_FORWARD:I = 0x2

.field public static final COMMAND_INJECT_JAVASCRIPT:I = 0x6

.field public static final COMMAND_POST_MESSAGE:I = 0x5

.field public static final COMMAND_RELOAD:I = 0x3

.field public static final COMMAND_STOP_LOADING:I = 0x4

.field private static final HTML_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final HTML_MIME_TYPE:Ljava/lang/String; = "text/html; charset=utf-8"

.field private static final HTTP_METHOD_POST:Ljava/lang/String; = "POST"

.field protected static final REACT_CLASS:Ljava/lang/String; = "RCTWebView"


# instance fields
.field private mPictureListener:Landroid/webkit/WebView$PictureListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mWebViewConfig:Lcom/facebook/react/views/webview/WebViewConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 318
    new-instance v0, Lcom/facebook/react/views/webview/ReactWebViewManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/webview/ReactWebViewManager$1;-><init>(Lcom/facebook/react/views/webview/ReactWebViewManager;)V

    iput-object v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mWebViewConfig:Lcom/facebook/react/views/webview/WebViewConfig;

    .line 322
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/views/webview/WebViewConfig;)V
    .locals 0
    .param p1, "webViewConfig"    # Lcom/facebook/react/views/webview/WebViewConfig;

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mWebViewConfig:Lcom/facebook/react/views/webview/WebViewConfig;

    .line 326
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # Lcom/facebook/react/uimanager/events/Event;

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/facebook/react/views/webview/ReactWebViewManager;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method private static dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V
    .locals 3
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/Event;

    .prologue
    .line 589
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    .line 590
    .local v1, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    const-class v2, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 591
    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 592
    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 593
    return-void
.end method

.method private getPictureListener()Landroid/webkit/WebView$PictureListener;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    if-nez v0, :cond_0

    .line 573
    new-instance v0, Lcom/facebook/react/views/webview/ReactWebViewManager$3;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/webview/ReactWebViewManager$3;-><init>(Lcom/facebook/react/views/webview/ReactWebViewManager;)V

    iput-object v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 85
    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/webkit/WebView;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 509
    new-instance v0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;

    invoke-direct {v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;-><init>()V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 510
    return-void
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/webview/ReactWebViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/webkit/WebView;
    .locals 5
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 335
    new-instance v0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 336
    .local v0, "webView":Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;
    new-instance v1, Lcom/facebook/react/views/webview/ReactWebViewManager$2;

    invoke-direct {v1, p0}, Lcom/facebook/react/views/webview/ReactWebViewManager$2;-><init>(Lcom/facebook/react/views/webview/ReactWebViewManager;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 351
    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 352
    iget-object v1, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mWebViewConfig:Lcom/facebook/react/views/webview/WebViewConfig;

    invoke-interface {v1, v0}, Lcom/facebook/react/views/webview/WebViewConfig;->configWebView(Landroid/webkit/WebView;)V

    .line 353
    invoke-virtual {v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 354
    invoke-virtual {v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 355
    invoke-virtual {v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 358
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    return-object v0
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 12
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
    .line 514
    const-string v0, "goBack"

    const/4 v1, 0x1

    .line 515
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "goForward"

    const/4 v3, 0x2

    .line 516
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "reload"

    const/4 v5, 0x3

    .line 517
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "stopLoading"

    const/4 v7, 0x4

    .line 518
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "postMessage"

    const/4 v9, 0x5

    .line 519
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "injectJavaScript"

    const/4 v11, 0x6

    .line 520
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 514
    invoke-static/range {v0 .. v11}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    const-string v0, "RCTWebView"

    return-object v0
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 85
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/webview/ReactWebViewManager;->onDropViewInstance(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onDropViewInstance(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 566
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/SimpleViewManager;->onDropViewInstance(Landroid/view/View;)V

    .line 567
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    move-object v1, p1

    check-cast v1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 568
    check-cast p1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    .end local p1    # "webView":Landroid/webkit/WebView;
    invoke-static {p1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->access$100(Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;)V

    .line 569
    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/webview/ReactWebViewManager;->receiveCommand(Landroid/webkit/WebView;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Landroid/webkit/WebView;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 5
    .param p1, "root"    # Landroid/webkit/WebView;
    .param p2, "commandId"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 526
    packed-switch p2, :pswitch_data_0

    .line 562
    :goto_0
    return-void

    .line 528
    :pswitch_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 531
    :pswitch_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 534
    :pswitch_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 537
    :pswitch_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 541
    :pswitch_4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 542
    .local v1, "eventInitDict":Lorg/json/JSONObject;
    const-string v2, "data"

    const/4 v3, 0x0

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:(function () {var event;var data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 545
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "try {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "event = new MessageEvent(\'message\', data);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "} catch (e) {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "event = document.createEvent(\'MessageEvent\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "event.initMessageEvent(\'message\', true, true, data.data, data.origin, data.lastEventId, data.source);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "document.dispatchEvent(event);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "})();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    .end local v1    # "eventInitDict":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 559
    .end local v0    # "e":Lorg/json/JSONException;
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setAllowUniversalAccessFromFileURLs(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "allow"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowUniversalAccessFromFileURLs"
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 407
    return-void
.end method

.method public setDomStorageEnabled(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "domStorageEnabled"
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 389
    return-void
.end method

.method public setInjectedJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "injectedJavaScript"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScript"
    .end annotation

    .prologue
    .line 416
    check-cast p1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->setInjectedJavaScript(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public setJavaScriptEnabled(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "javaScriptEnabled"
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 372
    return-void
.end method

.method public setMediaPlaybackRequiresUserAction(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "requires"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mediaPlaybackRequiresUserAction"
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 402
    return-void
.end method

.method public setMessagingEnabled(Landroid/webkit/WebView;Z)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "messagingEnabled"
    .end annotation

    .prologue
    .line 421
    check-cast p1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->setMessagingEnabled(Z)V

    .line 422
    return-void
.end method

.method public setMixedContentMode(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "mixedContentMode"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mixedContentMode"
    .end annotation

    .prologue
    .line 495
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 496
    if-eqz p2, :cond_0

    const-string v0, "never"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 504
    :cond_1
    :goto_0
    return-void

    .line 498
    :cond_2
    const-string v0, "always"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    goto :goto_0

    .line 500
    :cond_3
    const-string v0, "compatibility"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    goto :goto_0
.end method

.method public setOnContentSizeChange(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "sendContentSizeChangeEvents"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onContentSizeChange"
    .end annotation

    .prologue
    .line 486
    if-eqz p2, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->getPictureListener()Landroid/webkit/WebView$PictureListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    goto :goto_0
.end method

.method public setSaveFormDataDisabled(Landroid/webkit/WebView;Z)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "disable"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "saveFormDataDisabled"
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 412
    return-void

    .line 411
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScalesPageToFit(Landroid/webkit/WebView;Z)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "scalesPageToFit"
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 384
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSource(Landroid/webkit/WebView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 18
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "source"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "source"
    .end annotation

    .prologue
    .line 426
    if-eqz p2, :cond_a

    .line 427
    const-string v2, "html"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    const-string v2, "html"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "html":Ljava/lang/String;
    const-string v2, "baseUrl"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    const-string v2, "baseUrl"

    .line 431
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "text/html; charset=utf-8"

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    .line 430
    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .end local v4    # "html":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 433
    .restart local v4    # "html":Ljava/lang/String;
    :cond_1
    const-string v2, "text/html; charset=utf-8"

    const-string v3, "UTF-8"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    .end local v4    # "html":Ljava/lang/String;
    :cond_2
    const-string v2, "uri"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 438
    const-string v2, "uri"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 439
    .local v17, "url":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v16

    .line 440
    .local v16, "previousUrl":Ljava/lang/String;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    :cond_3
    const-string v2, "method"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 444
    const-string v2, "method"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 445
    .local v14, "method":Ljava/lang/String;
    const-string v2, "POST"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 446
    const/4 v15, 0x0

    .line 447
    .local v15, "postData":[B
    const-string v2, "body"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 448
    const-string v2, "body"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 450
    .local v8, "body":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v8, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 455
    .end local v8    # "body":Ljava/lang/String;
    :cond_4
    :goto_1
    if-nez v15, :cond_5

    .line 456
    const/4 v2, 0x0

    new-array v15, v2, [B

    .line 458
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    .line 451
    .restart local v8    # "body":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 452
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    goto :goto_1

    .line 462
    .end local v8    # "body":Ljava/lang/String;
    .end local v9    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v14    # "method":Ljava/lang/String;
    .end local v15    # "postData":[B
    :cond_6
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 463
    .local v10, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "headers"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 464
    const-string v2, "headers"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v11

    .line 465
    .local v11, "headers":Lcom/facebook/react/bridge/ReadableMap;
    invoke-interface {v11}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v12

    .line 466
    .local v12, "iter":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :cond_7
    :goto_2
    invoke-interface {v12}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 467
    invoke-interface {v12}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v13

    .line 468
    .local v13, "key":Ljava/lang/String;
    const-string v2, "user-agent"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 470
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-interface {v11, v13}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_2

    .line 473
    :cond_8
    invoke-interface {v11, v13}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 477
    .end local v11    # "headers":Lcom/facebook/react/bridge/ReadableMap;
    .end local v12    # "iter":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    .end local v13    # "key":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 481
    .end local v10    # "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "previousUrl":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    :cond_a
    const-string v2, "about:blank"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setThirdPartyCookiesEnabled(Landroid/webkit/WebView;Z)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "thirdPartyCookiesEnabled"
    .end annotation

    .prologue
    .line 376
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 377
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 379
    :cond_0
    return-void
.end method

.method public setUserAgent(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "userAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "userAgent"
    .end annotation

    .prologue
    .line 393
    if-eqz p2, :cond_0

    .line 395
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 397
    :cond_0
    return-void
.end method
