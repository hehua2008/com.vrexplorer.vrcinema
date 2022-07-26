.class public Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerViewManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "RCTIJKPlayerViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager",
        "<",
        "Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;",
        ">;"
    }
.end annotation


# static fields
.field private static final REACT_CLASS:Ljava/lang/String; = "RCTIJKPlayer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    move-result-object v0

    return-object v0
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 19
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    invoke-direct {v0, p1}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "RCTIJKPlayer"

    return-object v0
.end method
