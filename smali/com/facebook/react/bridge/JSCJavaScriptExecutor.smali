.class public Lcom/facebook/react/bridge/JSCJavaScriptExecutor;
.super Lcom/facebook/react/bridge/JavaScriptExecutor;
.source "JSCJavaScriptExecutor.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/bridge/JSCJavaScriptExecutor$Factory;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/facebook/react/bridge/ReactBridge;->staticInit()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReadableNativeMap;)V
    .locals 1
    .param p1, "jscConfig"    # Lcom/facebook/react/bridge/ReadableNativeMap;

    .prologue
    .line 35
    invoke-static {p1}, Lcom/facebook/react/bridge/JSCJavaScriptExecutor;->initHybrid(Lcom/facebook/react/bridge/ReadableNativeMap;)Lcom/facebook/jni/HybridData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/JavaScriptExecutor;-><init>(Lcom/facebook/jni/HybridData;)V

    .line 36
    return-void
.end method

.method private static native initHybrid(Lcom/facebook/react/bridge/ReadableNativeMap;)Lcom/facebook/jni/HybridData;
.end method
