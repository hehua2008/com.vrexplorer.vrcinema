.class Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;
.super Lcom/rockvr/moonplayer/dataservice/IDataService$Stub;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer/dataservice/DataService;


# direct methods
.method private constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataService;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-direct {p0}, Lcom/rockvr/moonplayer/dataservice/IDataService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/DataService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p2, "x1"    # Lcom/rockvr/moonplayer/dataservice/DataService$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;-><init>(Lcom/rockvr/moonplayer/dataservice/DataService;)V

    return-void
.end method


# virtual methods
.method public getVideosByCallback()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v3}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$800(Lcom/rockvr/moonplayer/dataservice/DataService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 189
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v3}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$800(Lcom/rockvr/moonplayer/dataservice/DataService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/rockvr/moonplayer/dataservice/DataService$VideosTask;

    iget-object v5, p0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/rockvr/moonplayer/dataservice/DataService$VideosTask;-><init>(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/DataService$1;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 183
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 184
    .local v2, "localVideoMedias":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v4}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1100(Lcom/rockvr/moonplayer/dataservice/DataService;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v2    # "localVideoMedias":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1100(Lcom/rockvr/moonplayer/dataservice/DataService;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public isSearching()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$700(Lcom/rockvr/moonplayer/dataservice/DataService;)Z

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/rockvr/moonplayer/dataservice/ICallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/rockvr/moonplayer/dataservice/ICallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1200(Lcom/rockvr/moonplayer/dataservice/DataService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 202
    :cond_0
    return-void
.end method

.method public startRefreshVideos()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$800(Lcom/rockvr/moonplayer/dataservice/DataService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$800(Lcom/rockvr/moonplayer/dataservice/DataService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;

    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;-><init>(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/DataService$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 167
    :cond_0
    return-void
.end method

.method public stopRefreshVideos()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$800(Lcom/rockvr/moonplayer/dataservice/DataService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$800(Lcom/rockvr/moonplayer/dataservice/DataService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 174
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/rockvr/moonplayer/dataservice/ICallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/rockvr/moonplayer/dataservice/ICallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1200(Lcom/rockvr/moonplayer/dataservice/DataService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 195
    :cond_0
    return-void
.end method
