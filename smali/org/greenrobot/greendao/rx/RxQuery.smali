.class public Lorg/greenrobot/greendao/rx/RxQuery;
.super Lorg/greenrobot/greendao/rx/RxBase;
.source "RxQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/rx/RxBase;"
    }
.end annotation

.annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
.end annotation


# instance fields
.field private final query:Lorg/greenrobot/greendao/query/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/Query",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/query/Query;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxQuery;, "Lorg/greenrobot/greendao/rx/RxQuery<TT;>;"
    .local p1, "query":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-direct {p0}, Lorg/greenrobot/greendao/rx/RxBase;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxQuery;->query:Lorg/greenrobot/greendao/query/Query;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/query/Query;Lrx/Scheduler;)V
    .locals 0
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query",
            "<TT;>;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxQuery;, "Lorg/greenrobot/greendao/rx/RxQuery<TT;>;"
    .local p1, "query":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/rx/RxBase;-><init>(Lrx/Scheduler;)V

    .line 46
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxQuery;->query:Lorg/greenrobot/greendao/query/Query;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lorg/greenrobot/greendao/rx/RxQuery;)Lorg/greenrobot/greendao/query/Query;
    .locals 1
    .param p0, "x0"    # Lorg/greenrobot/greendao/rx/RxQuery;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxQuery;->query:Lorg/greenrobot/greendao/query/Query;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getScheduler()Lrx/Scheduler;
    .locals 1
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxQuery;, "Lorg/greenrobot/greendao/rx/RxQuery<TT;>;"
    invoke-super {p0}, Lorg/greenrobot/greendao/rx/RxBase;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public list()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxQuery;, "Lorg/greenrobot/greendao/rx/RxQuery<TT;>;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxQuery$1;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxQuery$1;-><init>(Lorg/greenrobot/greendao/rx/RxQuery;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxQuery;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public oneByOne()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxQuery;, "Lorg/greenrobot/greendao/rx/RxQuery<TT;>;"
    new-instance v1, Lorg/greenrobot/greendao/rx/RxQuery$3;

    invoke-direct {v1, p0}, Lorg/greenrobot/greendao/rx/RxQuery$3;-><init>(Lorg/greenrobot/greendao/rx/RxQuery;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 107
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxQuery;->wrap(Lrx/Observable;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public unique()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxQuery;, "Lorg/greenrobot/greendao/rx/RxQuery<TT;>;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxQuery$2;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxQuery$2;-><init>(Lorg/greenrobot/greendao/rx/RxQuery;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxQuery;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
