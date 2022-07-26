.class Lcom/facebook/react/bridge/CatalystInstanceImpl$1;
.super Ljava/lang/Object;
.source "CatalystInstanceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/bridge/CatalystInstanceImpl;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/bridge/CatalystInstanceImpl;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$1;->this$0:Lcom/facebook/react/bridge/CatalystInstanceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$1;->this$0:Lcom/facebook/react/bridge/CatalystInstanceImpl;

    invoke-static {v2}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->access$100(Lcom/facebook/react/bridge/CatalystInstanceImpl;)Lcom/facebook/react/bridge/NativeModuleRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/NativeModuleRegistry;->notifyJSInstanceDestroy()V

    .line 317
    iget-object v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$1;->this$0:Lcom/facebook/react/bridge/CatalystInstanceImpl;

    invoke-static {v2}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->access$400(Lcom/facebook/react/bridge/CatalystInstanceImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 318
    .local v1, "wasIdle":Z
    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$1;->this$0:Lcom/facebook/react/bridge/CatalystInstanceImpl;

    invoke-static {v2}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->access$500(Lcom/facebook/react/bridge/CatalystInstanceImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$1;->this$0:Lcom/facebook/react/bridge/CatalystInstanceImpl;

    invoke-static {v2}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->access$500(Lcom/facebook/react/bridge/CatalystInstanceImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    .line 320
    .local v0, "listener":Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;
    invoke-interface {v0}, Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;->onTransitionToBridgeIdle()V

    goto :goto_0

    .line 323
    .end local v0    # "listener":Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;
    :cond_1
    new-instance v2, Lcom/facebook/react/bridge/CatalystInstanceImpl$1$1;

    invoke-direct {v2, p0}, Lcom/facebook/react/bridge/CatalystInstanceImpl$1$1;-><init>(Lcom/facebook/react/bridge/CatalystInstanceImpl$1;)V

    invoke-static {v2}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method
