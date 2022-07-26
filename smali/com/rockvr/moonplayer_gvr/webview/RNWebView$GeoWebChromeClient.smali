.class public Lcom/rockvr/moonplayer_gvr/webview/RNWebView$GeoWebChromeClient;
.super Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;
.source "RNWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/webview/RNWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GeoWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;


# direct methods
.method protected constructor <init>(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$GeoWebChromeClient;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebView;

    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer_gvr/webview/RNWebView$CustomWebChromeClient;-><init>(Lcom/rockvr/moonplayer_gvr/webview/RNWebView;)V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 109
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 110
    return-void
.end method
