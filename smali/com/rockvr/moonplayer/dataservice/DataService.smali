.class public Lcom/rockvr/moonplayer/dataservice/DataService;
.super Landroid/app/Service;
.source "DataService.java"

# interfaces
.implements Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;,
        Lcom/rockvr/moonplayer/dataservice/DataService$FilterTask;,
        Lcom/rockvr/moonplayer/dataservice/DataService$VideosTask;,
        Lcom/rockvr/moonplayer/dataservice/DataService$RestoreThumbnailTask;,
        Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;,
        Lcom/rockvr/moonplayer/dataservice/DataService$QueryMediaStoreCallBack;
    }
.end annotation


# static fields
.field private static COLUMNS:[Ljava/lang/String; = null

.field private static final MSG_GET_VIDEO_COMPLETED:I = 0x3

.field private static final MSG_NOT_EXIST_VIDEO:I = 0x4

.field private static final MSG_PUBLISH_VIDEO_MEDIA:I = 0x0

.field private static final MSG_SEARCH_COMPLETED:I = 0x1

.field private static final MSG_UPDATE_THUMBNAIL:I = 0x2

.field public static final VIDEO_MEDIA:Ljava/lang/String; = "VIDEO_MEDIA"

.field public static final VIDEO_MEDIAS:Ljava/lang/String; = "VIDEO_MEDIAS"


# instance fields
.field private volatile isSearching:Z

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/ICallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mThumbnailUtils:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

.field private mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/DataService;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/DataService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/rockvr/moonplayer/dataservice/DataService$1;-><init>(Lcom/rockvr/moonplayer/dataservice/DataService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->isSearching:Z

    return-void
.end method

.method static synthetic access$000(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p1, "x1"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService;->onPublishVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    return-void
.end method

.method static synthetic access$100(Lcom/rockvr/moonplayer/dataservice/DataService;)V
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/rockvr/moonplayer/dataservice/DataService;->onSearchCompleted()V

    return-void
.end method

.method static synthetic access$1100(Lcom/rockvr/moonplayer/dataservice/DataService;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService;->sendMsgGetVideosCompleted(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/rockvr/moonplayer/dataservice/DataService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThumbnailUtils:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/rockvr/moonplayer/dataservice/DataService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService;->getInvalidVideoAndUpdateInvalidThumbnail(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p1, "x1"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService;->sendMsgNoExistVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p1, "x1"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService;->sendMsgPublishVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/DataService$QueryMediaStoreCallBack;)V
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p1, "x1"    # Lcom/rockvr/moonplayer/dataservice/DataService$QueryMediaStoreCallBack;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService;->processMediaStoreSearch(Lcom/rockvr/moonplayer/dataservice/DataService$QueryMediaStoreCallBack;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/rockvr/moonplayer/dataservice/DataService;)V
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/rockvr/moonplayer/dataservice/DataService;->processCustomSearch()V

    return-void
.end method

.method static synthetic access$200(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p1, "x1"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService;->onUpdateThumbnail(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/rockvr/moonplayer/dataservice/DataService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rockvr/moonplayer/dataservice/DataService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService;->onGetVideosCompleted(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p1, "x1"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService;->onNotExistVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    return-void
.end method

.method static synthetic access$700(Lcom/rockvr/moonplayer/dataservice/DataService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->isSearching:Z

    return v0
.end method

.method static synthetic access$702(Lcom/rockvr/moonplayer/dataservice/DataService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->isSearching:Z

    return p1
.end method

.method static synthetic access$800(Lcom/rockvr/moonplayer/dataservice/DataService;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private getInvalidVideoAndUpdateInvalidThumbnail(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, "videoMedias":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v2, "pendingRemove":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .line 570
    .local v0, "currentVideo":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 571
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    .line 572
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v4, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    if-eqz v4, :cond_2

    .line 574
    iget-object v4, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->deleteByKey(Ljava/lang/Object;)V

    .line 580
    :cond_2
    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 581
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 582
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_0

    .line 583
    :cond_3
    const-string v4, ""

    invoke-virtual {v0, v4}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setThumbnailPath(Ljava/lang/String;)V

    .line 584
    iget-object v4, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    if-eqz v4, :cond_4

    .line 585
    iget-object v4, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    invoke-virtual {v4, v0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->update(Ljava/lang/Object;)V

    .line 588
    :cond_4
    iget-object v4, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThumbnailUtils:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    if-eqz v4, :cond_0

    .line 590
    iget-object v4, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThumbnailUtils:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-virtual {v4, v0}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->publishProcessTask(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    goto :goto_0

    .line 595
    .end local v0    # "currentVideo":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    .end local v1    # "file":Ljava/io/File;
    :cond_5
    return-object v2
.end method

.method private getSameFolderNewVideo(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, "videoMedias":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    new-instance v6, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    invoke-direct {v6}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;-><init>()V

    .line 603
    .local v6, "tmp":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 604
    .local v5, "searchedPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v4, "newVideoMedias":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .line 607
    .local v1, "currentVideo":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    invoke-virtual {v1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getParentPath()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "currentPath":Ljava/lang/String;
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 611
    invoke-static {}, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->getInstance()Lcom/rockvr/moonplayer/dataservice/SearchUtils;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->searchDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 612
    .local v3, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 613
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setName(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setParentPath(Ljava/lang/String;)V

    .line 616
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 617
    new-instance v7, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    invoke-direct {v7}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;-><init>()V

    .line 618
    .local v7, "videoMedia":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setId(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setName(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setParentPath(Ljava/lang/String;)V

    .line 621
    iget-object v10, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    if-eqz v10, :cond_2

    .line 622
    iget-object v10, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    invoke-virtual {v10, v7}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->insert(Ljava/lang/Object;)J

    .line 625
    :cond_2
    iget-object v10, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThumbnailUtils:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    if-eqz v10, :cond_3

    .line 627
    iget-object v10, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThumbnailUtils:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-virtual {v10, v7}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->publishProcessTask(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    .line 630
    :cond_3
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 633
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "videoMedia":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    :cond_4
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 635
    .end local v0    # "currentPath":Ljava/lang/String;
    .end local v1    # "currentVideo":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    .end local v3    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_5
    return-object v4
.end method

.method private onGetVideosCompleted(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "videoMedias":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    iget-object v4, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 207
    :try_start_0
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 209
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 210
    :try_start_1
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/rockvr/moonplayer/dataservice/ICallback;

    invoke-interface {v3, p1}, Lcom/rockvr/moonplayer/dataservice/ICallback;->onGetVideosCompleted(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 217
    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    :try_start_4
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    .line 217
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 215
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :catchall_1
    move-exception v3

    :try_start_5
    iget-object v5, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private onNotExistVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 6
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 266
    iget-object v4, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 267
    :try_start_0
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 269
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 270
    :try_start_1
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/rockvr/moonplayer/dataservice/ICallback;

    invoke-interface {v3, p1}, Lcom/rockvr/moonplayer/dataservice/ICallback;->onNotExistVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 277
    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 275
    :try_start_4
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 275
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :catchall_1
    move-exception v3

    :try_start_5
    iget-object v5, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private onPublishVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 6
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 251
    iget-object v4, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 252
    :try_start_0
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 254
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 255
    :try_start_1
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/rockvr/moonplayer/dataservice/ICallback;

    invoke-interface {v3, p1}, Lcom/rockvr/moonplayer/dataservice/ICallback;->onPublishVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 262
    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 260
    :try_start_4
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 260
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :catchall_1
    move-exception v3

    :try_start_5
    iget-object v5, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private onSearchCompleted()V
    .locals 6

    .prologue
    .line 221
    iget-object v4, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 222
    :try_start_0
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 224
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 225
    :try_start_1
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/rockvr/moonplayer/dataservice/ICallback;

    invoke-interface {v3}, Lcom/rockvr/moonplayer/dataservice/ICallback;->onSearchCompleted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 232
    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    :try_start_4
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    .line 232
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 230
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :catchall_1
    move-exception v3

    :try_start_5
    iget-object v5, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private onUpdateThumbnail(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 6
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 236
    iget-object v4, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 237
    :try_start_0
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 239
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 240
    :try_start_1
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/rockvr/moonplayer/dataservice/ICallback;

    invoke-interface {v3, p1}, Lcom/rockvr/moonplayer/dataservice/ICallback;->onUpdateThumbnail(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 247
    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    :try_start_4
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 245
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :catchall_1
    move-exception v3

    :try_start_5
    iget-object v5, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private processCustomSearch()V
    .locals 3

    .prologue
    .line 444
    invoke-static {}, Lcom/rockvr/moonplayer/dataservice/StorageUtils;->getDirectoriesToBeSearched()Ljava/util/List;

    move-result-object v0

    .line 445
    .local v0, "directoriesToBeSearched":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->getInstance()Lcom/rockvr/moonplayer/dataservice/SearchUtils;

    move-result-object v1

    new-instance v2, Lcom/rockvr/moonplayer/dataservice/DataService$2;

    invoke-direct {v2, p0}, Lcom/rockvr/moonplayer/dataservice/DataService$2;-><init>(Lcom/rockvr/moonplayer/dataservice/DataService;)V

    invoke-virtual {v1, v0, v2}, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->searchVideos(Ljava/util/List;Lcom/rockvr/moonplayer/dataservice/SearchUtils$IProcessMediaFile;)V

    .line 479
    return-void
.end method

.method private processMediaStoreSearch(Lcom/rockvr/moonplayer/dataservice/DataService$QueryMediaStoreCallBack;)V
    .locals 17
    .param p1, "queryMediaStoreCallBack"    # Lcom/rockvr/moonplayer/dataservice/DataService$QueryMediaStoreCallBack;

    .prologue
    .line 483
    const/4 v6, 0x0

    .line 484
    .local v6, "externalCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 486
    .local v9, "internalCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/rockvr/moonplayer/dataservice/DataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v16, Lcom/rockvr/moonplayer/dataservice/DataService;->COLUMNS:[Ljava/lang/String;

    invoke-static/range {v14 .. v16}, Landroid/provider/MediaStore$Video;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/rockvr/moonplayer/dataservice/DataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v16, Lcom/rockvr/moonplayer/dataservice/DataService;->COLUMNS:[Ljava/lang/String;

    invoke-static/range {v14 .. v16}, Landroid/provider/MediaStore$Video;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 497
    :goto_0
    :try_start_1
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/database/Cursor;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    aput-object v9, v14, v15

    invoke-direct {v2, v14}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 499
    .local v2, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 500
    new-instance v7, Ljava/io/File;

    const-string v14, "_data"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_4

    .line 502
    const-string v14, "yifan"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FIle : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 546
    .end local v7    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 547
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 549
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 550
    if-eqz v9, :cond_1

    .line 551
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 553
    :cond_1
    if-eqz v6, :cond_2

    .line 554
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 560
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 490
    :catch_1
    move-exception v3

    .line 491
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 492
    if-eqz v6, :cond_3

    .line 493
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 495
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 557
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 558
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 505
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "file":Ljava/io/File;
    :cond_4
    :try_start_5
    const-string v14, "_id"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 506
    .local v8, "id":I
    const-string v14, "_display_name"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 507
    .local v10, "name":Ljava/lang/String;
    const-string v14, "duration"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 508
    .local v4, "duration":J
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    .line 510
    .local v11, "parentPath":Ljava/lang/String;
    if-ltz v8, :cond_0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    sget-object v14, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->VIDEO_PATTERN:Ljava/util/regex/Pattern;

    .line 511
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 515
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    if-eqz v14, :cond_0

    .line 518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    invoke-virtual {v14}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v14

    sget-object v15, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    .line 519
    invoke-virtual {v15, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    move-object/from16 v16, v0

    .line 518
    invoke-virtual/range {v14 .. v16}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v14

    sget-object v15, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao$Properties;->ParentPath:Lorg/greenrobot/greendao/Property;

    .line 519
    invoke-virtual {v15, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v14

    invoke-virtual {v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v14

    .line 520
    invoke-virtual {v14}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .line 522
    .local v12, "queryResult":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    if-nez v12, :cond_0

    .line 524
    new-instance v13, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    invoke-direct {v13}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;-><init>()V

    .line 525
    .local v13, "videoMedia":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setId(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v13, v10}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setName(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v13, v11}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setParentPath(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v13, v4, v5}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setDuration(J)V

    .line 530
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    if-eqz v14, :cond_0

    .line 534
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    invoke-virtual {v14, v13}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->insert(Ljava/lang/Object;)J

    .line 537
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThumbnailUtils:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    if-eqz v14, :cond_5

    .line 538
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThumbnailUtils:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-virtual {v14, v13}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->publishProcessTask(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    .line 541
    :cond_5
    if-eqz p1, :cond_0

    .line 542
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/rockvr/moonplayer/dataservice/DataService$QueryMediaStoreCallBack;->result(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 549
    .end local v4    # "duration":J
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "id":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "parentPath":Ljava/lang/String;
    .end local v12    # "queryResult":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    .end local v13    # "videoMedia":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    :catchall_0
    move-exception v14

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 550
    if-eqz v9, :cond_6

    .line 551
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 553
    :cond_6
    if-eqz v6, :cond_7

    .line 554
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v14

    .line 549
    :cond_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 550
    if-eqz v9, :cond_9

    .line 551
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 553
    :cond_9
    if-eqz v6, :cond_2

    .line 554
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2
.end method

.method private sendMsgGetVideosCompleted(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 331
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 332
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "VIDEO_MEDIAS"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 334
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 335
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendMsgNoExistVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 3
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 314
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 319
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 320
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "VIDEO_MEDIA"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 322
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 323
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendMsgPublishVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 3
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 301
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 306
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 307
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 308
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "VIDEO_MEDIA"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 309
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 310
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rockvr/moonplayer/dataservice/DataService$DataServiceBinder;-><init>(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/DataService$1;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 120
    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/DataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/rockvr/moonplayer/dataservice/DaoUtils;->createInstance(Landroid/content/Context;)V

    .line 121
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 122
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/DataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThumbnailUtils:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    .line 123
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThumbnailUtils:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-virtual {v0, p0}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->setProcessThumbnailResult(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;)V

    .line 124
    invoke-static {}, Lcom/rockvr/moonplayer/dataservice/DaoUtils;->getInstance()Lcom/rockvr/moonplayer/dataservice/DaoUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/rockvr/moonplayer/dataservice/DaoUtils;->getInstance()Lcom/rockvr/moonplayer/dataservice/DaoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/DaoUtils;->getLocalVideoDao()Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/rockvr/moonplayer/dataservice/DataService$RestoreThumbnailTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/rockvr/moonplayer/dataservice/DataService$RestoreThumbnailTask;-><init>(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/DataService$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 128
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    .line 133
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThumbnailUtils:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->destroy()V

    .line 134
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 135
    iput-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 136
    invoke-direct {p0}, Lcom/rockvr/moonplayer/dataservice/DataService;->onSearchCompleted()V

    .line 137
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 138
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public publishToDataBase(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 1
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    invoke-virtual {v0, p1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->update(Ljava/lang/Object;)V

    .line 285
    :cond_0
    return-void
.end method

.method public sendMsgUpdateThumbnail(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 3
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 289
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 293
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 294
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 295
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "VIDEO_MEDIA"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 296
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 297
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
