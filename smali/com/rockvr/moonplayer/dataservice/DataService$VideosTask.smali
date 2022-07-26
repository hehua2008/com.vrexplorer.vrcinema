.class Lcom/rockvr/moonplayer/dataservice/DataService$VideosTask;
.super Ljava/lang/Object;
.source "DataService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideosTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer/dataservice/DataService;


# direct methods
.method private constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataService;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$VideosTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/DataService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p2, "x1"    # Lcom/rockvr/moonplayer/dataservice/DataService$1;

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService$VideosTask;-><init>(Lcom/rockvr/moonplayer/dataservice/DataService;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/DataService$VideosTask;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$VideosTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v1}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1300(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    move-result-object v1

    if-nez v1, :cond_1

    .line 362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 385
    :cond_0
    :goto_0
    return-object v0

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$VideosTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v1}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1300(Lcom/rockvr/moonplayer/dataservice/DataService;)Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 368
    .local v0, "videoMedias":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$VideosTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v1, v0}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1500(Lcom/rockvr/moonplayer/dataservice/DataService;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 383
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0
.end method
