.class Lcom/tradle/react/UdpSockets$1;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "UdpSockets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tradle/react/UdpSockets;->onCatalystInstanceDestroy()V
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


# direct methods
.method constructor <init>(Lcom/tradle/react/UdpSockets;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tradle/react/UdpSockets;
    .param p2, "x0"    # Lcom/facebook/react/bridge/ReactContext;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tradle/react/UdpSockets$1;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tradle/react/UdpSockets$1;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$1;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v2}, Lcom/tradle/react/UdpSockets;->access$000(Lcom/tradle/react/UdpSockets;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$1;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v2}, Lcom/tradle/react/UdpSockets;->access$000(Lcom/tradle/react/UdpSockets;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tradle/react/UdpSocketClient;

    invoke-virtual {v2}, Lcom/tradle/react/UdpSocketClient;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UdpSockets"

    const-string v3, "exception when shutting down"

    invoke-static {v2, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 73
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v2, p0, Lcom/tradle/react/UdpSockets$1;->this$0:Lcom/tradle/react/UdpSockets;

    invoke-static {v2}, Lcom/tradle/react/UdpSockets;->access$000(Lcom/tradle/react/UdpSockets;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 74
    return-void
.end method
