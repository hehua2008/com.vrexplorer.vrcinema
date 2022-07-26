.class Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$1;
.super Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;
.source "DataServiceMedium.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;
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
    .line 38
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-direct {p0}, Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetVideosCompleted(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "videoMedias":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$000(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$000(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;->onGetVideosCompleted(Ljava/util/List;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onNotExistVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 1
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$000(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$000(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;->onNotExistVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onPublishVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 1
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$000(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$000(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;->onPublishVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    .line 52
    :cond_0
    return-void
.end method

.method public onSearchCompleted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$000(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$000(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;->onSearchCompleted()V

    .line 59
    :cond_0
    return-void
.end method

.method public onUpdateThumbnail(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 1
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$000(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$000(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;->onUpdateThumbnail(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    .line 45
    :cond_0
    return-void
.end method
