.class public Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerPackage;
.super Ljava/lang/Object;
.source "RCTIJKPlayerPackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# static fields
.field private static final TAG:Ljava/lang/String; = "RCTIJKPlayerPackage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
    .param p1, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;

    invoke-direct {v0, p1}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
    .param p1, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerViewManager;

    invoke-direct {v0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerViewManager;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
