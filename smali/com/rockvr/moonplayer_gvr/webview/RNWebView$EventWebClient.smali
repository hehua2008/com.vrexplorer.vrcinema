.class public Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;
.super Landroid/webkit/WebViewClient;
.source "RNWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;


# direct methods
.method protected constructor <init>(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->access$000(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v9

    new-instance v0, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-virtual {v1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getId()I

    move-result v1

    invoke-static {}, Lcom/facebook/react/common/SystemClock;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v7

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v8

    move-object v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;-><init>(IJLjava/lang/String;ZLjava/lang/String;ZZ)V

    invoke-virtual {v9, v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 57
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->access$000(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/rockvr/moonplayer_gvr/webview/OnLoadingFinishEvent;

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-virtual {v2}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-static {v3, p1, p2}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->access$100(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/rockvr/moonplayer_gvr/webview/OnLoadingFinishEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 58
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getInjectedJavaScript()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:(function() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-virtual {v1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getInjectedJavaScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->access$000(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v9

    new-instance v0, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-virtual {v1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getId()I

    move-result v1

    invoke-static {}, Lcom/facebook/react/common/SystemClock;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v7

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v8

    move-object v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;-><init>(IJLjava/lang/String;ZLjava/lang/String;ZZ)V

    invoke-virtual {v9, v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 65
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->access$000(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/rockvr/moonplayer_gvr/webview/OnLoadingStartEvent;

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-virtual {v2}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$EventWebClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-static {v3, p1, p2}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->access$100(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/rockvr/moonplayer_gvr/webview/OnLoadingStartEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 66
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v2, "http://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file://"

    .line 41
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "about:blank"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 51
    :goto_0
    return v2

    .line 45
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 47
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ReactNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activity not found to handle uri scheme for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
