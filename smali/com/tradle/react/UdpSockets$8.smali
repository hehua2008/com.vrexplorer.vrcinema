.class Lcom/tradle/react/UdpSockets$8;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "UdpSockets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tradle/react/UdpSockets;->setBroadcast(Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/bridge/GuardedAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tradle/react/UdpSockets;

.field final synthetic val$cId:Ljava/lang/Integer;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$flag:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tradle/react/UdpSockets;
    .param p2, "x0"    # Lcom/facebook/react/bridge/ReactContext;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/tradle/react/UdpSockets$8;->this$0:Lcom/tradle/react/UdpSockets;

    iput-object p3, p0, Lcom/tradle/react/UdpSockets$8;->val$cId:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/tradle/react/UdpSockets$8;->val$callback:Lcom/facebook/react/bridge/Callback;

    iput-object p5, p0, Lcom/tradle/react/UdpSockets$8;->val$flag:Ljava/lang/Boolean;

    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 296
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tradle/react/UdpSockets$8;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 299
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$8;->this$0:Lcom/tradle/react/UdpSockets;

    iget-object v3, p0, Lcom/tradle/react/UdpSockets$8;->val$cId:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/tradle/react/UdpSockets$8;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-static {v2, v3, v4}, Lcom/tradle/react/UdpSockets;->access$100(Lcom/tradle/react/UdpSockets;Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;)Lcom/tradle/react/UdpSocketClient;

    move-result-object v0

    .line 300
    .local v0, "client":Lcom/tradle/react/UdpSocketClient;
    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 305
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$8;->val$flag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tradle/react/UdpSocketClient;->setBroadcast(Z)V

    .line 306
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$8;->val$callback:Lcom/facebook/react/bridge/Callback;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/net/SocketException;
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$8;->val$callback:Lcom/facebook/react/bridge/Callback;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tradle/react/UdpErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method
