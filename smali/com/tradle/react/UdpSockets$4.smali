.class Lcom/tradle/react/UdpSockets$4;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "UdpSockets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tradle/react/UdpSockets;->addMembership(Ljava/lang/Integer;Ljava/lang/String;)V
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
    .line 165
    iput-object p1, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    iput-object p3, p0, Lcom/tradle/react/UdpSockets$4;->val$cId:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/tradle/react/UdpSockets$4;->val$multicastAddress:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 165
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tradle/react/UdpSockets$4;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 168
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    iget-object v6, p0, Lcom/tradle/react/UdpSockets$4;->val$cId:Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/tradle/react/UdpSockets;->access$100(Lcom/tradle/react/UdpSockets;Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;)Lcom/tradle/react/UdpSocketClient;

    move-result-object v0

    .line 169
    .local v0, "client":Lcom/tradle/react/UdpSocketClient;
    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v5}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v5

    if-nez v5, :cond_1

    .line 174
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v5}, Lcom/tradle/react/UdpSockets;->access$300(Lcom/tradle/react/UdpSockets;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v5

    const-string v6, "wifi"

    .line 175
    invoke-virtual {v5, v6}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 176
    .local v4, "wifiMgr":Landroid/net/wifi/WifiManager;
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    const-string v6, "react-native-udp"

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tradle/react/UdpSockets;->access$202(Lcom/tradle/react/UdpSockets;Landroid/net/wifi/WifiManager$MulticastLock;)Landroid/net/wifi/WifiManager$MulticastLock;

    .line 177
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v5}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 181
    .end local v4    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v5}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 182
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->val$multicastAddress:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/tradle/react/UdpSocketClient;->addMembership(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 183
    :catch_0
    move-exception v2

    .line 185
    .local v2, "ise":Ljava/lang/IllegalStateException;
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v5}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v5}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 186
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v5}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 188
    :cond_2
    const-string v5, "UdpSockets"

    const-string v6, "addMembership"

    invoke-static {v5, v6, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 189
    .end local v2    # "ise":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    .line 191
    .local v3, "uhe":Ljava/net/UnknownHostException;
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v5}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v5}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 192
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v5}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 194
    :cond_3
    const-string v5, "UdpSockets"

    const-string v6, "addMembership"

    invoke-static {v5, v6, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 195
    .end local v3    # "uhe":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v1

    .line 197
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v5}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v5}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 198
    iget-object v5, p0, Lcom/tradle/react/UdpSockets$4;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v5}, Lcom/tradle/react/UdpSockets;->access$200(Lcom/tradle/react/UdpSockets;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 200
    :cond_4
    const-string v5, "UdpSockets"

    const-string v6, "addMembership"

    invoke-static {v5, v6, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
