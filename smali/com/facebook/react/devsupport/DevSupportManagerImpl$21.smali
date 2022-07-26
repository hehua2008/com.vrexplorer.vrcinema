.class Lcom/facebook/react/devsupport/DevSupportManagerImpl$21;
.super Ljava/lang/Object;
.source "DevSupportManagerImpl.java"

# interfaces
.implements Lcom/facebook/react/bridge/JavaJSExecutor$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerImpl;->reloadJSInProxyMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .prologue
    .line 786
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$21;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/facebook/react/bridge/JavaJSExecutor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 789
    new-instance v1, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor;

    invoke-direct {v1}, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor;-><init>()V

    .line 790
    .local v1, "executor":Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor;
    new-instance v2, Lcom/facebook/react/common/futures/SimpleSettableFuture;

    invoke-direct {v2}, Lcom/facebook/react/common/futures/SimpleSettableFuture;-><init>()V

    .line 791
    .local v2, "future":Lcom/facebook/react/common/futures/SimpleSettableFuture;, "Lcom/facebook/react/common/futures/SimpleSettableFuture<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$21;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .line 792
    invoke-static {v3}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->access$100(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/DevServerHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/devsupport/DevServerHelper;->getWebsocketProxyURL()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$21;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .line 793
    invoke-static {v4, v2}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->access$1300(Lcom/facebook/react/devsupport/DevSupportManagerImpl;Lcom/facebook/react/common/futures/SimpleSettableFuture;)Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;

    move-result-object v4

    .line 791
    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor;->connect(Ljava/lang/String;Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;)V

    .line 796
    const-wide/16 v4, 0x5a

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lcom/facebook/react/common/futures/SimpleSettableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 797
    return-object v1

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    throw v3

    .line 800
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 800
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_0
.end method
