.class Lcom/tradle/react/UdpSockets$2;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "UdpSockets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tradle/react/UdpSockets;->createSocket(Ljava/lang/Integer;Lcom/facebook/react/bridge/ReadableMap;)V
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


# direct methods
.method constructor <init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tradle/react/UdpSockets;
    .param p2, "x0"    # Lcom/facebook/react/bridge/ReactContext;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/tradle/react/UdpSockets$2;->this$0:Lcom/tradle/react/UdpSockets;

    iput-object p3, p0, Lcom/tradle/react/UdpSockets$2;->val$cId:Ljava/lang/Integer;

    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tradle/react/UdpSockets$2;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 107
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$2;->val$cId:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 108
    const-string v2, "UdpSockets"

    const-string v3, "createSocket called with nil id parameter."

    invoke-static {v2, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$2;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v2}, Lcom/tradle/react/UdpSockets;->access$000(Lcom/tradle/react/UdpSockets;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/tradle/react/UdpSockets$2;->val$cId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tradle/react/UdpSocketClient;

    .line 113
    .local v1, "client":Lcom/tradle/react/UdpSocketClient;
    if-eqz v1, :cond_1

    .line 114
    const-string v2, "UdpSockets"

    const-string v3, "createSocket called twice with the same id."

    invoke-static {v2, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    new-instance v0, Lcom/tradle/react/UdpSocketClient$Builder;

    iget-object v2, p0, Lcom/tradle/react/UdpSockets$2;->this$0:Lcom/tradle/react/UdpSockets;

    iget-object v3, p0, Lcom/tradle/react/UdpSockets$2;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-direct {v0, v2, v3}, Lcom/tradle/react/UdpSocketClient$Builder;-><init>(Lcom/tradle/react/UdpSocketClient$OnDataReceivedListener;Lcom/tradle/react/UdpSocketClient$OnRuntimeExceptionListener;)V

    .line 119
    .local v0, "builder":Lcom/tradle/react/UdpSocketClient$Builder;
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$2;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v2}, Lcom/tradle/react/UdpSockets;->access$000(Lcom/tradle/react/UdpSockets;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/tradle/react/UdpSockets$2;->val$cId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lcom/tradle/react/UdpSocketClient$Builder;->build()Lcom/tradle/react/UdpSocketClient;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method
