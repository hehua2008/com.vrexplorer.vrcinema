.class public interface abstract Lcom/rockvr/moonplayer/dataservice/ICallback;
.super Ljava/lang/Object;
.source "ICallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetVideosCompleted(Ljava/util/List;)V
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
.end method

.method public abstract onNotExistVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPublishVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSearchCompleted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUpdateThumbnail(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
