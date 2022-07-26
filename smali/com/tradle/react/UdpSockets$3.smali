.class Lcom/tradle/react/UdpSockets$3;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "UdpSockets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tradle/react/UdpSockets;->bind(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
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

.field final synthetic val$cId:Ljava/lang/Integer;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$port:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tradle/react/UdpSockets;
    .param p2, "x0"    # Lcom/facebook/react/bridge/ReactContext;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tradle/react/UdpSockets$3;->this$0:Lcom/tradle/react/UdpSockets;

    iput-object p3, p0, Lcom/tradle/react/UdpSockets$3;->val$cId:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/tradle/react/UdpSockets$3;->val$callback:Lcom/facebook/react/bridge/Callback;

    iput-object p5, p0, Lcom/tradle/react/UdpSockets$3;->val$port:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/tradle/react/UdpSockets$3;->val$address:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 130
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tradle/react/UdpSockets$3;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 133
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$3;->this$0:Lcom/tradle/react/UdpSockets;

    iget-object v6, p0, Lcom/tradle/react/UdpSockets$3;->val$cId:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/tradle/react/UdpSockets$3;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-static {v5, v6, v7}, Lcom/tradle/react/UdpSockets;->access$100(Lcom/tradle/react/UdpSockets;Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;)Lcom/tradle/react/UdpSocketClient;

    move-result-object v0

    .line 134
    .local v0, "client":Lcom/tradle/react/UdpSocketClient;
    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 139
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$3;->val$port:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/tradle/react/UdpSockets$3;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/tradle/react/UdpSocketClient;->bind(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 142
    .local v3, "result":Lcom/facebook/react/bridge/WritableMap;
    const-string v5, "address"

    iget-object v6, p0, Lcom/tradle/react/UdpSockets$3;->val$address:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v5, "port"

    iget-object v6, p0, Lcom/tradle/react/UdpSockets$3;->val$port:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v3, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 145
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$3;->val$callback:Lcom/facebook/react/bridge/Callback;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 146
    .end local v3    # "result":Lcom/facebook/react/bridge/WritableMap;
    :catch_0
    move-exception v4

    .line 148
    .local v4, "se":Ljava/net/SocketException;
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$3;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/tradle/react/UdpErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    .end local v4    # "se":Ljava/net/SocketException;
    :catch_1
    move-exception v1

    .line 151
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$3;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/tradle/react/UdpErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 154
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$3;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/tradle/react/UdpErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method
