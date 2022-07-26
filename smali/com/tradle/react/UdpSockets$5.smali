.class Lcom/tradle/react/UdpSockets$5;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "UdpSockets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tradle/react/UdpSockets;->dropMembership(Ljava/lang/Integer;Ljava/lang/String;)V
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

.field final synthetic val$multicastAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tradle/react/UdpSockets;
    .param p2, "x0"    # Lcom/facebook/react/bridge/ReactContext;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/tradle/react/UdpSockets$5;->this$0:Lcom/tradle/react/UdpSockets;

    iput-object p3, p0, Lcom/tradle/react/UdpSockets$5;->val$cId:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/tradle/react/UdpSockets$5;->val$multicastAddress:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tradle/react/UdpSockets$5;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 214
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$5;->this$0:Lcom/tradle/react/UdpSockets;

    iget-object v3, p0, Lcom/tradle/react/UdpSockets$5;->val$cId:Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/tradle/react/UdpSockets;->access$100(Lcom/tradle/react/UdpSockets;Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;)Lcom/tradle/react/UdpSocketClient;

    move-result-object v0

    .line 215
    .local v0, "client":Lcom/tradle/react/UdpSocketClient;
    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$5;->val$multicastAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tradle/react/UdpSocketClient;->dropMembership(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$5;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v2}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tradle/react/UdpSockets$5;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v2}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$5;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v2}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 223
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_1
    const-string v2, "UdpSockets"

    const-string v3, "dropMembership"

    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$5;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v2}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tradle/react/UdpSockets$5;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v2}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$5;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v2}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    goto :goto_0

    .line 225
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/tradle/react/UdpSockets$5;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v3}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tradle/react/UdpSockets$5;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v3}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    iget-object v3, p0, Lcom/tradle/react/UdpSockets$5;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v3}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    :cond_2
    throw v2
.end method
