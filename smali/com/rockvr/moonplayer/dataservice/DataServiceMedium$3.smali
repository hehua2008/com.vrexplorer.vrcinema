.class Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$3;
.super Ljava/lang/Object;
.source "DataServiceMedium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->getVideosByCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$3;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 104
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$3;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v1}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$100(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$3;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v1}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$300(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$3;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v1}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$300(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$3;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v1}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$100(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataService;

    move-result-object v1

    invoke-interface {v1}, Lcom/rockvr/moonplayer/dataservice/IDataService;->getVideosByCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
