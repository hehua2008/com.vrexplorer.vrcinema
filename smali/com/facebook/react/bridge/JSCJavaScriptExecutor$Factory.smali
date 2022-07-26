.class public Lcom/facebook/react/bridge/JSCJavaScriptExecutor$Factory;
.super Ljava/lang/Object;
.source "JSCJavaScriptExecutor.java"

# interfaces
.implements Lcom/facebook/react/bridge/JavaScriptExecutor$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/bridge/JSCJavaScriptExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private mJSCConfig:Lcom/facebook/react/bridge/ReadableNativeMap;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/WritableNativeMap;)V
    .locals 0
    .param p1, "jscConfig"    # Lcom/facebook/react/bridge/WritableNativeMap;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/react/bridge/JSCJavaScriptExecutor$Factory;->mJSCConfig:Lcom/facebook/react/bridge/ReadableNativeMap;

    .line 22
    return-void
.end method


# virtual methods
.method public create()Lcom/facebook/react/bridge/JavaScriptExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/react/bridge/JSCJavaScriptExecutor;

    iget-object v1, p0, Lcom/facebook/react/bridge/JSCJavaScriptExecutor$Factory;->mJSCConfig:Lcom/facebook/react/bridge/ReadableNativeMap;

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSCJavaScriptExecutor;-><init>(Lcom/facebook/react/bridge/ReadableNativeMap;)V

    return-object v0
.end method
