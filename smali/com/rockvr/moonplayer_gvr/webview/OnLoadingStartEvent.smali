.class public Lcom/rockvr/moonplayer_gvr/webview/OnLoadingStartEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "OnLoadingStartEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event",
        "<",
        "Lcom/rockvr/moonplayer_gvr/webview/OnLoadingStartEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "onLoadingStartX"


# instance fields
.field private mEventData:Lcom/facebook/react/bridge/WritableMap;


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/WritableMap;)V
    .locals 0
    .param p1, "viewId"    # I
    .param p2, "eventData"    # Lcom/facebook/react/bridge/WritableMap;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 16
    iput-object p2, p0, Lcom/rockvr/moonplayer_gvr/webview/OnLoadingStartEvent;->mEventData:Lcom/facebook/react/bridge/WritableMap;

    .line 17
    return-void
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/OnLoadingStartEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/OnLoadingStartEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/webview/OnLoadingStartEvent;->mEventData:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 27
    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "onLoadingStartX"

    return-object v0
.end method
