.class public Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "RNWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CustomWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;


# direct methods
.method protected constructor <init>(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getModule()Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->access$000(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/rockvr/moonplayer_gvr/webview/OnProgressEvent;

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-virtual {v2}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getId()I

    move-result v2

    invoke-direct {v1, v2, p2}, Lcom/rockvr/moonplayer_gvr/webview/OnProgressEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 103
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getModule()Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->startFileChooserIntent(Landroid/webkit/ValueCallback;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView;->getModule()Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->startFileChooserIntent(Landroid/webkit/ValueCallback;Ljava/lang/String;)Z

    .line 92
    return-void
.end method
