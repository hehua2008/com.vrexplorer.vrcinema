.class public Lcom/rockvr/moonplayer_gvr/webview/OnProgressEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "OnProgressEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event",
        "<",
        "Lcom/rockvr/moonplayer_gvr/webview/OnProgressEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "onProgress"


# instance fields
.field private mProgress:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "viewId"    # I
    .param p2, "progress"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 17
    iput p2, p0, Lcom/rockvr/moonplayer_gvr/webview/OnProgressEvent;->mProgress:I

    .line 18
    return-void
.end method

.method private serializeEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 32
    .local v0, "eventData":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "progress"

    iget v2, p0, Lcom/rockvr/moonplayer_gvr/webview/OnProgressEvent;->mProgress:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 33
    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/OnProgressEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/OnProgressEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/webview/OnProgressEvent;->serializeEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 28
    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "onProgress"

    return-object v0
.end method
