.class Lcom/facebook/react/bridge/CatalystInstanceImpl$BridgeCallback;
.super Ljava/lang/Object;
.source "CatalystInstanceImpl.java"

# interfaces
.implements Lcom/facebook/react/bridge/ReactCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/bridge/CatalystInstanceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BridgeCallback"
.end annotation


# instance fields
.field private final mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/react/bridge/CatalystInstanceImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V
    .locals 1
    .param p1, "outer"    # Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$BridgeCallback;->mOuter:Ljava/lang/ref/WeakReference;

    .line 133
    return-void
.end method


# virtual methods
.method public decrementPendingJSCalls()V
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$BridgeCallback;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .line 154
    .local v0, "impl":Lcom/facebook/react/bridge/CatalystInstanceImpl;
    if-eqz v0, :cond_0

    .line 155
    invoke-static {v0}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->access$300(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V

    .line 157
    :cond_0
    return-void
.end method

.method public incrementPendingJSCalls()V
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$BridgeCallback;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .line 146
    .local v0, "impl":Lcom/facebook/react/bridge/CatalystInstanceImpl;
    if-eqz v0, :cond_0

    .line 147
    invoke-static {v0}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->access$200(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onBatchComplete()V
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$BridgeCallback;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .line 138
    .local v0, "impl":Lcom/facebook/react/bridge/CatalystInstanceImpl;
    if-eqz v0, :cond_0

    .line 139
    invoke-static {v0}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->access$100(Lcom/facebook/react/bridge/CatalystInstanceImpl;)Lcom/facebook/react/bridge/NativeModuleRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/NativeModuleRegistry;->onBatchComplete()V

    .line 141
    :cond_0
    return-void
.end method
