.class Lcom/rockvr/moonplayer/dataservice/DataService$RestoreThumbnailTask;
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
    name = "RestoreThumbnailTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer/dataservice/DataService;


# direct methods
.method private constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataService;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$RestoreThumbnailTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/DataService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p2, "x1"    # Lcom/rockvr/moonplayer/dataservice/DataService$1;

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService$RestoreThumbnailTask;-><init>(Lcom/rockvr/moonplayer/dataservice/DataService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 342
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService$RestoreThumbnailTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v2}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1300(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    move-result-object v2

    if-nez v2, :cond_1

    .line 353
    :cond_0
    return-void

    .line 345
    :cond_1
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService$RestoreThumbnailTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v2}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1300(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao$Properties;->ThumbnailPath:Lorg/greenrobot/greendao/Property;

    const-string v4, ""

    .line 346
    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 345
    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 347
    .local v1, "videoMedias":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .line 348
    .local v0, "videoMedia":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService$RestoreThumbnailTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v3}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1400(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService$RestoreThumbnailTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v3}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1400(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->publishProcessTask(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    goto :goto_0
.end method
