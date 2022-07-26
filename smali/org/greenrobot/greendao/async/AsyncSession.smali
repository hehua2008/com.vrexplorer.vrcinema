.class public Lorg/greenrobot/greendao/async/AsyncSession;
.super Ljava/lang/Object;
.source "AsyncSession.java"


# instance fields
.field private final daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

.field private final executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

.field private sessionFlags:I


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDaoSession;)V
    .locals 1
    .param p1, "daoSession"    # Lorg/greenrobot/greendao/AbstractDaoSession;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 46
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-direct {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 47
    return-void
.end method

.method private enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 6
    .param p1, "type"    # Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Object;",
            "I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 335
    .local p2, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v2

    .line 336
    .local v2, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<**>;"
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation;

    const/4 v3, 0x0

    iget v1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->sessionFlags:I

    or-int v5, p4, v1

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/async/AsyncOperation;-><init>(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/database/Database;Ljava/lang/Object;I)V

    .line 337
    .local v0, "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->enqueue(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 338
    return-object v0
.end method

.method private enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 6
    .param p1, "type"    # Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .param p2, "param"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .prologue
    .line 324
    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v3

    .line 325
    .local v3, "database":Lorg/greenrobot/greendao/database/Database;
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation;

    const/4 v2, 0x0

    iget v1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->sessionFlags:I

    or-int v5, p3, v1

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/async/AsyncOperation;-><init>(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/database/Database;Ljava/lang/Object;I)V

    .line 326
    .local v0, "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->enqueue(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 327
    return-object v0
.end method

.method private enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "type"    # Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .param p2, "entity"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .prologue
    .line 331
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public callInTx(Ljava/util/concurrent/Callable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->callInTx(Ljava/util/concurrent/Callable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public callInTx(Ljava/util/concurrent/Callable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->TransactionCallable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public count(Ljava/lang/Class;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->count(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public count(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 2
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Count:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->delete(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 200
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Delete:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteAll(Ljava/lang/Class;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->deleteAll(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteAll(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 2
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteByKey(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->deleteByKey(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteByKey(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 210
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteByKey:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs deleteInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "entities":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->deleteInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs deleteInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->deleteInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public getListener()Lorg/greenrobot/greendao/async/AsyncOperationListener;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->getListener()Lorg/greenrobot/greendao/async/AsyncOperationListener;

    move-result-object v0

    return-object v0
.end method

.method public getListenerMainThread()Lorg/greenrobot/greendao/async/AsyncOperationListener;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->getListenerMainThread()Lorg/greenrobot/greendao/async/AsyncOperationListener;

    move-result-object v0

    return-object v0
.end method

.method public getMaxOperationCountToMerge()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->getMaxOperationCountToMerge()I

    move-result v0

    return v0
.end method

.method public getSessionFlags()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->sessionFlags:I

    return v0
.end method

.method public getWaitForMergeMillis()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->getWaitForMergeMillis()I

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->insert(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 110
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Insert:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "entities":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->insertInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->insertInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplace(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->insertOrReplace(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplace(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 140
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplace:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertOrReplaceInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "entities":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplaceInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->insertOrReplaceInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplaceInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertOrReplaceInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->insertOrReplaceInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/Class;Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->load(Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Load:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/lang/Class;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->loadAll(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 2
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->LoadAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public queryList(Lorg/greenrobot/greendao/query/Query;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query",
            "<*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "query":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->queryList(Lorg/greenrobot/greendao/query/Query;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public queryList(Lorg/greenrobot/greendao/query/Query;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query",
            "<*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "query":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<*>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->QueryList:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public queryUnique(Lorg/greenrobot/greendao/query/Query;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query",
            "<*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "query":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->queryUnique(Lorg/greenrobot/greendao/query/Query;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public queryUnique(Lorg/greenrobot/greendao/query/Query;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query",
            "<*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "query":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<*>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->QueryUnique:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->refresh(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 320
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Refresh:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public runInTx(Ljava/lang/Runnable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->runInTx(Ljava/lang/Runnable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public runInTx(Ljava/lang/Runnable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "flags"    # I

    .prologue
    .line 250
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->TransactionRunnable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->setListener(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V

    .line 71
    return-void
.end method

.method public setListenerMainThread(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V
    .locals 1
    .param p1, "listenerMainThread"    # Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->setListenerMainThread(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V

    .line 79
    return-void
.end method

.method public setMaxOperationCountToMerge(I)V
    .locals 1
    .param p1, "maxOperationCountToMerge"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->setMaxOperationCountToMerge(I)V

    .line 55
    return-void
.end method

.method public setSessionFlags(I)V
    .locals 0
    .param p1, "sessionFlags"    # I

    .prologue
    .line 348
    iput p1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->sessionFlags:I

    .line 349
    return-void
.end method

.method public setWaitForMergeMillis(I)V
    .locals 1
    .param p1, "waitForMergeMillis"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->setWaitForMergeMillis(I)V

    .line 63
    return-void
.end method

.method public update(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->update(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 170
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Update:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs updateInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "entities":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->UpdateInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public updateInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->updateInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public updateInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->UpdateInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs updateInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->updateInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public waitForCompletion()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->waitForCompletion()V

    .line 91
    return-void
.end method

.method public waitForCompletion(I)Z
    .locals 1
    .param p1, "maxMillis"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->waitForCompletion(I)Z

    move-result v0

    return v0
.end method