.class Lcom/rockvr/moonplayer/dataservice/DataService$FilterTask;
.super Ljava/lang/Object;
.source "DataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer/dataservice/DataService;


# direct methods
.method private constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataService;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$FilterTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/DataService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p2, "x1"    # Lcom/rockvr/moonplayer/dataservice/DataService$1;

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService$FilterTask;-><init>(Lcom/rockvr/moonplayer/dataservice/DataService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 393
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService$FilterTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v3}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1300(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    move-result-object v3

    if-nez v3, :cond_1

    .line 408
    :cond_0
    return-void

    .line 398
    :cond_1
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService$FilterTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v3}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1300(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 400
    .local v2, "videoMedias":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService$FilterTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v3, v2}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1500(Lcom/rockvr/moonplayer/dataservice/DataService;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 401
    .local v0, "invalidVideos":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .line 402
    .local v1, "video":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    iget-object v4, p0, Lcom/rockvr/moonplayer/dataservice/DataService$FilterTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v4, v1}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1600(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    goto :goto_0
.end method
