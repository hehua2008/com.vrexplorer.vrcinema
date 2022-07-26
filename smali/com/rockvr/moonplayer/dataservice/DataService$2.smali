.class Lcom/rockvr/moonplayer/dataservice/DataService$2;
.super Ljava/lang/Object;
.source "DataService.java"

# interfaces
.implements Lcom/rockvr/moonplayer/dataservice/SearchUtils$IProcessMediaFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer/dataservice/DataService;->processCustomSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer/dataservice/DataService;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer/dataservice/DataService;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$2;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processMediaFile(Ljava/io/File;)V
    .locals 6
    .param p1, "mediaFile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 449
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService$2;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v2}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1300(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    move-result-object v2

    if-nez v2, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService$2;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v2}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1300(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    .line 454
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 453
    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao$Properties;->ParentPath:Lorg/greenrobot/greendao/Property;

    .line 455
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 454
    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 455
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .line 457
    .local v0, "queryResult":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    if-nez v0, :cond_0

    .line 459
    new-instance v1, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    invoke-direct {v1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;-><init>()V

    .line 460
    .local v1, "videoMedia":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setId(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setName(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setParentPath(Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService$2;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v2}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1300(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 468
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService$2;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v2}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1300(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->insert(Ljava/lang/Object;)J

    .line 471
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService$2;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v2}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1400(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 472
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService$2;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v2}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1400(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->publishProcessTask(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    .line 475
    :cond_2
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService$2;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v2, v1}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1700(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    goto :goto_0
.end method
