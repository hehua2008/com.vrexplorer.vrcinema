.class Lorg/greenrobot/greendao/rx/RxQuery$3;
.super Ljava/lang/Object;
.source "RxQuery.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/greendao/rx/RxQuery;->oneByOne()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/greenrobot/greendao/rx/RxQuery;


# direct methods
.method constructor <init>(Lorg/greenrobot/greendao/rx/RxQuery;)V
    .locals 0
    .param p1, "this$0"    # Lorg/greenrobot/greendao/rx/RxQuery;

    .prologue
    .line 83
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxQuery$3;, "Lorg/greenrobot/greendao/rx/RxQuery$3;"
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxQuery$3;->this$0:Lorg/greenrobot/greendao/rx/RxQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxQuery$3;, "Lorg/greenrobot/greendao/rx/RxQuery$3;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/rx/RxQuery$3;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxQuery$3;, "Lorg/greenrobot/greendao/rx/RxQuery$3;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    iget-object v3, p0, Lorg/greenrobot/greendao/rx/RxQuery$3;->this$0:Lorg/greenrobot/greendao/rx/RxQuery;

    invoke-static {v3}, Lorg/greenrobot/greendao/rx/RxQuery;->access$000(Lorg/greenrobot/greendao/rx/RxQuery;)Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->forCurrentThread()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->listLazyUncached()Lorg/greenrobot/greendao/query/LazyList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 89
    .local v2, "lazyList":Lorg/greenrobot/greendao/query/LazyList;, "Lorg/greenrobot/greendao/query/LazyList<TT;>;"
    :try_start_1
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/LazyList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    .end local v1    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/LazyList;->close()V

    .line 98
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    .end local v2    # "lazyList":Lorg/greenrobot/greendao/query/LazyList;, "Lorg/greenrobot/greendao/query/LazyList<TT;>;"
    :cond_1
    :goto_1
    return-void

    .line 93
    .restart local v1    # "entity":Ljava/lang/Object;, "TT;"
    .restart local v2    # "lazyList":Lorg/greenrobot/greendao/query/LazyList;, "Lorg/greenrobot/greendao/query/LazyList<TT;>;"
    :cond_2
    :try_start_3
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 96
    .end local v1    # "entity":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/LazyList;->close()V

    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 101
    .end local v2    # "lazyList":Lorg/greenrobot/greendao/query/LazyList;, "Lorg/greenrobot/greendao/query/LazyList<TT;>;"
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 103
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
