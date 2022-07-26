.class public Lcom/facebook/react/bridge/ReactBridge;
.super Ljava/lang/Object;
.source "ReactBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static staticInit()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "reactnativejni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)V

    .line 18
    return-void
.end method
