.class public Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ReactWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/webview/ReactWebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReactWebViewClient"
.end annotation


# instance fields
.field private mLastLoadFailed:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->mLastLoadFailed:Z

    return-void
.end method

.method private createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 198
    .local v0, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "target"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v2

    int-to-double v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 201
    const-string v1, "url"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "loading"

    iget-boolean v1, p0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->mLastLoadFailed:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    const/16 v3, 0x64

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    const-string v1, "title"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "canGoBack"

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    const-string v1, "canGoForward"

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 206
    return-object v0

    .line 202
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private emitFinishEvent(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Lcom/facebook/react/views/webview/events/TopLoadingFinishEvent;

    .line 192
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v1

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/views/webview/events/TopLoadingFinishEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    .line 189
    invoke-static {p1, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->access$000(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    .line 194
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 179
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 181
    new-instance v0, Lcom/facebook/react/views/webview/events/TopLoadingStartEvent;

    .line 184
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v1

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/views/webview/events/TopLoadingStartEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    .line 181
    invoke-static {p1, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->access$000(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    .line 186
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 118
    iget-boolean v1, p0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->mLastLoadFailed:Z

    if-nez v1, :cond_0

    move-object v0, p1

    .line 119
    check-cast v0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    .line 120
    .local v0, "reactWebView":Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;
    invoke-virtual {v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->callInjectedJavaScript()V

    .line 121
    invoke-virtual {v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->linkBridge()V

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->emitFinishEvent(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 124
    .end local v0    # "reactWebView":Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->mLastLoadFailed:Z

    .line 131
    new-instance v0, Lcom/facebook/react/views/webview/events/TopLoadingStartEvent;

    .line 134
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v1

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/views/webview/events/TopLoadingStartEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    .line 131
    invoke-static {p1, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->access$000(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    .line 136
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->mLastLoadFailed:Z

    .line 166
    invoke-direct {p0, p1, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->emitFinishEvent(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p1, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 169
    .local v0, "eventData":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "code"

    int-to-double v2, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 170
    const-string v1, "description"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v1, Lcom/facebook/react/views/webview/events/TopLoadingErrorEvent;

    .line 174
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/react/views/webview/events/TopLoadingErrorEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    .line 172
    invoke-static {p1, v1}, Lcom/facebook/react/views/webview/ReactWebViewManager;->access$000(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    .line 175
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v2, "http://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file://"

    .line 141
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "about:blank"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    :cond_0
    const/4 v2, 0x0

    .line 151
    :goto_0
    return v2

    .line 145
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
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
