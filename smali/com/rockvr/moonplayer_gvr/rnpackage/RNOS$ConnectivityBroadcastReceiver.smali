.class Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RNOS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field private isRegistered:Z

.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;


# direct methods
.method private constructor <init>(Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;)V
    .locals 1

    .prologue
    .line 211
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;->this$0:Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;->isRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;
    .param p2, "x1"    # Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$1;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;-><init>(Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;)V

    return-void
.end method


# virtual methods
.method public isRegistered()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;->isRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;->this$0:Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->updateAndSendOsInfo()V

    .line 229
    :cond_0
    return-void
.end method

.method public setRegistered(Z)V
    .locals 0
    .param p1, "registered"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;->isRegistered:Z

    .line 218
    return-void
.end method
