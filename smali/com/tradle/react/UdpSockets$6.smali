.class Lcom/tradle/react/UdpSockets$6;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "UdpSockets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tradle/react/UdpSockets;->send(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
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

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$base64String:Ljava/lang/String;

.field final synthetic val$cId:Ljava/lang/Integer;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$port:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tradle/react/UdpSockets;
    .param p2, "x0"    # Lcom/facebook/react/bridge/ReactContext;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/tradle/react/UdpSockets$6;->this$0:Lcom/tradle/react/UdpSockets;

    iput-object p3, p0, Lcom/tradle/react/UdpSockets$6;->val$cId:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/tradle/react/UdpSockets$6;->val$callback:Lcom/facebook/react/bridge/Callback;

    iput-object p5, p0, Lcom/tradle/react/UdpSockets$6;->val$base64String:Ljava/lang/String;

    iput-object p6, p0, Lcom/tradle/react/UdpSockets$6;->val$port:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/tradle/react/UdpSockets$6;->val$address:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 239
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tradle/react/UdpSockets$6;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 242
    iget-object v4, p0, Lcom/tradle/react/UdpSockets$6;->this$0:Lcom/tradle/react/UdpSockets;

    iget-object v5, p0, Lcom/tradle/react/UdpSockets$6;->val$cId:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/tradle/react/UdpSockets$6;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-static {v4, v5, v6}, Lcom/tradle/react/UdpSockets;->access$100(Lcom/tradle/react/UdpSockets;Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;)Lcom/tradle/react/UdpSocketClient;

    move-result-object v0

    .line 243
    .local v0, "client":Lcom/tradle/react/UdpSocketClient;
    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 248
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/tradle/react/UdpSockets$6;->val$base64String:Ljava/lang/String;

    iget-object v5, p0, Lcom/tradle/react/UdpSockets$6;->val$port:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/tradle/react/UdpSockets$6;->val$address:Ljava/lang/String;

    iget-object v7, p0, Lcom/tradle/react/UdpSockets$6;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/tradle/react/UdpSocketClient;->send(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 249
    :catch_0
    move-exception v2

    .line 250
    .local v2, "ise":Ljava/lang/IllegalStateException;
    iget-object v4, p0, Lcom/tradle/react/UdpSockets$6;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/tradle/react/UdpErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 251
    .end local v2    # "ise":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    .line 252
    .local v3, "uhe":Ljava/net/UnknownHostException;
    iget-object v4, p0, Lcom/tradle/react/UdpSockets$6;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/tradle/react/UdpErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    .end local v3    # "uhe":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v1

    .line 255
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v4, p0, Lcom/tradle/react/UdpSockets$6;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/tradle/react/UdpErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method
