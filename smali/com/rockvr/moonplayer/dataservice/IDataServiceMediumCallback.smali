.class public interface abstract Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;
.super Ljava/lang/Object;
.source "IDataServiceMediumCallback.java"


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
.end method

.method public abstract onNotExistVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
.end method

.method public abstract onPublishVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
.end method

.method public abstract onSearchCompleted()V
.end method

.method public abstract onUpdateThumbnail(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
.end method
