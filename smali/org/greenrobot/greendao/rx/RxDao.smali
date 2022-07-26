.class public Lorg/greenrobot/greendao/rx/RxDao;
.super Lorg/greenrobot/greendao/rx/RxBase;
.source "RxDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/rx/RxBase;"
    }
.end annotation

.annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
.end annotation


# instance fields
.field private final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;TK;>;)V"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/rx/RxDao;-><init>(Lorg/greenrobot/greendao/AbstractDao;Lrx/Scheduler;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Lrx/Scheduler;)V
    .locals 0
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;TK;>;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/rx/RxBase;-><init>(Lrx/Scheduler;)V

    .line 62
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxDao;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lorg/greenrobot/greendao/rx/RxDao;)Lorg/greenrobot/greendao/AbstractDao;
    .locals 1
    .param p0, "x0"    # Lorg/greenrobot/greendao/rx/RxDao;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxDao;->dao:Lorg/greenrobot/greendao/AbstractDao;

    return-object v0
.end method


# virtual methods
.method public count()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$23;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxDao$23;-><init>(Lorg/greenrobot/greendao/rx/RxDao;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$16;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$16;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public deleteAll()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$18;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxDao$18;-><init>(Lorg/greenrobot/greendao/rx/RxDao;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public deleteByKey(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 306
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$17;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$17;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public deleteByKeyInTx(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TK;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TK;>;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$21;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$21;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public varargs deleteByKeyInTx([Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$22;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$22;-><init>(Lorg/greenrobot/greendao/rx/RxDao;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public deleteInTx(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$19;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$19;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public varargs deleteInTx([Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 348
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$20;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$20;-><init>(Lorg/greenrobot/greendao/rx/RxDao;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getDao()Lorg/greenrobot/greendao/AbstractDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;TK;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxDao;->dao:Lorg/greenrobot/greendao/AbstractDao;

    return-object v0
.end method

.method public bridge synthetic getScheduler()Lrx/Scheduler;
    .locals 1
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    invoke-super {p0}, Lorg/greenrobot/greendao/rx/RxBase;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$4;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$4;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public insertInTx(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Iterable",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$5;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$5;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertInTx([Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lrx/Observable",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$6;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$6;-><init>(Lorg/greenrobot/greendao/rx/RxDao;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplace(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$7;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$7;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplaceInTx(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Iterable",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$8;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$8;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertOrReplaceInTx([Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lrx/Observable",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$9;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$9;-><init>(Lorg/greenrobot/greendao/rx/RxDao;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$2;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$2;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public loadAll()Lrx/Observable;
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
    .line 70
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$1;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxDao$1;-><init>(Lorg/greenrobot/greendao/rx/RxDao;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$3;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$3;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public save(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$10;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$10;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public saveInTx(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Iterable",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$11;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$11;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public varargs saveInTx([Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lrx/Observable",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$12;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$12;-><init>(Lorg/greenrobot/greendao/rx/RxDao;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$13;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$13;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public updateInTx(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Iterable",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$14;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$14;-><init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public varargs updateInTx([Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lrx/Observable",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao;, "Lorg/greenrobot/greendao/rx/RxDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao$15;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxDao$15;-><init>(Lorg/greenrobot/greendao/rx/RxDao;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxDao;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
