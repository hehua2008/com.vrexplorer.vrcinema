.class abstract Lorg/greenrobot/greendao/query/AbstractQueryData;
.super Ljava/lang/Object;
.source "AbstractQueryData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Q:",
        "Lorg/greenrobot/greendao/query/AbstractQuery",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;*>;"
        }
    .end annotation
.end field

.field final initialValues:[Ljava/lang/String;

.field final queriesForThreads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference",
            "<TQ;>;>;"
        }
    .end annotation
.end field

.field final sql:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "initialValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lorg/greenrobot/greendao/query/AbstractQueryData;, "Lorg/greenrobot/greendao/query/AbstractQueryData<TT;TQ;>;"
    .local p1, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 35
    iput-object p2, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->sql:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Ljava/util/Map;

    .line 38
    return-void
.end method


# virtual methods
.method protected abstract createQuery()Lorg/greenrobot/greendao/query/AbstractQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQ;"
        }
    .end annotation
.end method

.method forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQ;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/greenrobot/greendao/query/AbstractQueryData;, "Lorg/greenrobot/greendao/query/AbstractQueryData<TT;TQ;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 61
    .local v2, "threadId":J
    iget-object v5, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Ljava/util/Map;

    monitor-enter v5

    .line 62
    :try_start_0
    iget-object v4, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 63
    .local v1, "queryRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TQ;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/greenrobot/greendao/query/AbstractQuery;

    move-object v0, v4

    .line 64
    .local v0, "query":Lorg/greenrobot/greendao/query/AbstractQuery;, "TQ;"
    :goto_0
    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->gc()V

    .line 66
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->createQuery()Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v0

    .line 67
    iget-object v4, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_1
    monitor-exit v5

    return-object v0

    .line 63
    .end local v0    # "query":Lorg/greenrobot/greendao/query/AbstractQuery;, "TQ;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    .restart local v0    # "query":Lorg/greenrobot/greendao/query/AbstractQuery;, "TQ;"
    :cond_1
    iget-object v4, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    array-length v9, v9

    invoke-static {v4, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 72
    .end local v0    # "query":Lorg/greenrobot/greendao/query/AbstractQuery;, "TQ;"
    .end local v1    # "queryRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TQ;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method forCurrentThread(Lorg/greenrobot/greendao/query/AbstractQuery;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQ;)TQ;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/greenrobot/greendao/query/AbstractQueryData;, "Lorg/greenrobot/greendao/query/AbstractQueryData<TT;TQ;>;"
    .local p1, "query":Lorg/greenrobot/greendao/query/AbstractQuery;, "TQ;"
    const/4 v3, 0x0

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p1, Lorg/greenrobot/greendao/query/AbstractQuery;->ownerThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    iget-object v1, p1, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .end local p1    # "query":Lorg/greenrobot/greendao/query/AbstractQuery;, "TQ;"
    :goto_0
    return-object p1

    .restart local p1    # "query":Lorg/greenrobot/greendao/query/AbstractQuery;, "TQ;"
    :cond_0
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    goto :goto_0
.end method

.method gc()V
    .locals 4

    .prologue
    .line 78
    .local p0, "this":Lorg/greenrobot/greendao/query/AbstractQueryData;, "Lorg/greenrobot/greendao/query/AbstractQueryData<TT;TQ;>;"
    iget-object v3, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Ljava/util/Map;

    monitor-enter v3

    .line 79
    :try_start_0
    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/ref/WeakReference<TQ;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/ref/WeakReference<TQ;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 86
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/ref/WeakReference<TQ;>;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/ref/WeakReference<TQ;>;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/ref/WeakReference<TQ;>;>;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    return-void
.end method
