.class public Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "NavigationStateChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event",
        "<",
        "Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "navigationStateChange"


# instance fields
.field private final mCanGoBack:Z

.field private final mCanGoForward:Z

.field private final mIsLoading:Z

.field private final mTitle:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;ZLjava/lang/String;ZZ)V
    .locals 0
    .param p1, "viewId"    # I
    .param p2, "timestampMs"    # J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "isLoading"    # Z
    .param p6, "url"    # Ljava/lang/String;
    .param p7, "canGoBack"    # Z
    .param p8, "canGoForward"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 21
    iput-object p4, p0, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;->mTitle:Ljava/lang/String;

    .line 22
    iput-boolean p5, p0, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;->mIsLoading:Z

    .line 23
    iput-object p6, p0, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;->mUrl:Ljava/lang/String;

    .line 24
    iput-boolean p7, p0, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;->mCanGoBack:Z

    .line 25
    iput-boolean p8, p0, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;->mCanGoForward:Z

    .line 26
    return-void
.end method

.method private serializeEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 40
    .local v0, "eventData":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "title"

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;->mTitle:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "loading"

    iget-boolean v2, p0, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;->mIsLoading:Z

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    const-string v1, "url"

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "canGoBack"

    iget-boolean v2, p0, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;->mCanGoBack:Z

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    const-string v1, "canGoForward"

    iget-boolean v2, p0, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;->mCanGoForward:Z

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/webview/NavigationStateChangeEvent;->serializeEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 36
    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "navigationStateChange"

    return-object v0
.end method
