.class Lcom/tradle/react/UdpSockets$9;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "UdpSockets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tradle/react/UdpSockets;->didReceiveData(Lcom/tradle/react/UdpSocketClient;Ljava/lang/String;Ljava/lang/String;I)V
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

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$port:I

.field final synthetic val$socket:Lcom/tradle/react/UdpSocketClient;


# direct methods
.method constructor <init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;Lcom/tradle/react/UdpSocketClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/tradle/react/UdpSockets;
    .param p2, "x0"    # Lcom/facebook/react/bridge/ReactContext;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/tradle/react/UdpSockets$9;->this$0:Lcom/tradle/react/UdpSockets;

    iput-object p3, p0, Lcom/tradle/react/UdpSockets$9;->val$socket:Lcom/tradle/react/UdpSocketClient;

    iput-object p4, p0, Lcom/tradle/react/UdpSockets$9;->val$data:Ljava/lang/String;

    iput-object p5, p0, Lcom/tradle/react/UdpSockets$9;->val$host:Ljava/lang/String;

    iput p6, p0, Lcom/tradle/react/UdpSockets$9;->val$port:I

    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 319
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tradle/react/UdpSockets$9;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 322
    const/4 v0, -0x1

    .line 323
    .local v0, "clientID":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tradle/react/UdpSockets$9;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v4}, Lcom/tradle/react/UdpSockets;->access$000(Lcom/tradle/react/UdpSockets;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 324
    iget-object v4, p0, Lcom/tradle/react/UdpSockets$9;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v4}, Lcom/tradle/react/UdpSockets;->access$000(Lcom/tradle/react/UdpSockets;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 326
    iget-object v4, p0, Lcom/tradle/react/UdpSockets$9;->val$socket:Lcom/tradle/react/UdpSocketClient;

    iget-object v5, p0, Lcom/tradle/react/UdpSockets$9;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v5}, Lcom/tradle/react/UdpSockets;->access$000(Lcom/tradle/react/UdpSockets;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    :cond_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    .line 344
    :goto_1
    return-void

    .line 323
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_2
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 336
    .local v1, "eventParams":Lcom/facebook/react/bridge/WritableMap;
    const-string v4, "data"

    iget-object v5, p0, Lcom/tradle/react/UdpSockets$9;->val$data:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v4, "address"

    iget-object v5, p0, Lcom/tradle/react/UdpSockets$9;->val$host:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v4, "port"

    iget v5, p0, Lcom/tradle/react/UdpSockets$9;->val$port:I

    invoke-interface {v1, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 340
    iget-object v4, p0, Lcom/tradle/react/UdpSockets$9;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v4}, Lcom/tradle/react/UdpSockets;->access$400(Lcom/tradle/react/UdpSockets;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    .line 341
    .local v3, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    const-class v4, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 342
    invoke-virtual {v3, v4}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "udp-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 343
    invoke-interface {v4, v5, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
