.class Lorg/pgsqlite/SQLitePlugin$DBRunner;
.super Ljava/lang/Object;
.source "SQLitePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pgsqlite/SQLitePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBRunner"
.end annotation


# instance fields
.field private androidLockWorkaround:Z

.field private assetFilename:Ljava/lang/String;

.field final dbname:Ljava/lang/String;

.field mydb:Landroid/database/sqlite/SQLiteDatabase;

.field final openCbc:Lorg/pgsqlite/CallbackContext;

.field final openFlags:I

.field final q:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/pgsqlite/SQLitePlugin$DBQuery;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/pgsqlite/SQLitePlugin;


# direct methods
.method constructor <init>(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;Lorg/json/JSONObject;Lorg/pgsqlite/CallbackContext;)V
    .locals 5
    .param p2, "dbname"    # Ljava/lang/String;
    .param p3, "options"    # Lorg/json/JSONObject;
    .param p4, "cbc"    # Lorg/pgsqlite/CallbackContext;

    .prologue
    const/4 v3, 0x1

    .line 900
    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->this$0:Lorg/pgsqlite/SQLitePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    iput-object p2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    .line 902
    const/high16 v1, 0x10000000

    .line 904
    .local v1, "openFlags":I
    :try_start_0
    const-string v4, "assetFilename"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "assetFilename"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->assetFilename:Ljava/lang/String;

    .line 905
    iget-object v4, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->assetFilename:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->assetFilename:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 906
    const-string v4, "readOnly"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "readOnly"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 907
    .local v2, "readOnly":Z
    :goto_1
    if-eqz v2, :cond_0

    move v1, v3

    .line 912
    .end local v2    # "readOnly":Z
    :cond_0
    :goto_2
    iput v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->openFlags:I

    .line 913
    const-string v3, "androidLockWorkaround"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->androidLockWorkaround:Z

    .line 914
    iget-boolean v3, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->androidLockWorkaround:Z

    if-eqz v3, :cond_1

    .line 915
    sget-object v3, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v4, "Android db closing/locking workaround applied"

    invoke-static {v3, v4}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_1
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v3, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    .line 918
    iput-object p4, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->openCbc:Lorg/pgsqlite/CallbackContext;

    .line 919
    return-void

    .line 904
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 906
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v4, "Error retrieving assetFilename this.mode from options:"

    invoke-static {v3, v4, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 923
    :try_start_0
    iget-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->this$0:Lorg/pgsqlite/SQLitePlugin;

    iget-object v2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    iget-object v3, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->assetFilename:Ljava/lang/String;

    iget v4, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->openFlags:I

    iget-object v5, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->openCbc:Lorg/pgsqlite/CallbackContext;

    invoke-static {v1, v2, v3, v4, v5}, Lorg/pgsqlite/SQLitePlugin;->access$000(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;Ljava/lang/String;ILorg/pgsqlite/CallbackContext;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->mydb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    const/4 v7, 0x0

    .line 933
    .local v7, "dbq":Lorg/pgsqlite/SQLitePlugin$DBQuery;
    :try_start_1
    iget-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/pgsqlite/SQLitePlugin$DBQuery;

    move-object v7, v0

    .line 935
    :goto_0
    iget-boolean v1, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->stop:Z

    if-nez v1, :cond_2

    .line 936
    iget-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->this$0:Lorg/pgsqlite/SQLitePlugin;

    iget-object v2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    iget-object v3, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    iget-object v4, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->jsonparams:[Lorg/json/JSONArray;

    iget-object v5, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queryIDs:[Ljava/lang/String;

    iget-object v6, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    invoke-static/range {v1 .. v6}, Lorg/pgsqlite/SQLitePlugin;->access$100(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;[Ljava/lang/String;[Lorg/json/JSONArray;[Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V

    .line 939
    iget-boolean v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->androidLockWorkaround:Z

    if-eqz v1, :cond_0

    iget-object v1, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "COMMIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->this$0:Lorg/pgsqlite/SQLitePlugin;

    iget-object v2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/pgsqlite/SQLitePlugin;->access$200(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;)V

    .line 942
    iget-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->this$0:Lorg/pgsqlite/SQLitePlugin;

    iget-object v2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    const-string v3, ""

    iget v4, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->openFlags:I

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lorg/pgsqlite/SQLitePlugin;->access$000(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;Ljava/lang/String;ILorg/pgsqlite/CallbackContext;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    .line 946
    :cond_0
    iget-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/pgsqlite/SQLitePlugin$DBQuery;

    move-object v7, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 924
    .end local v7    # "dbq":Lorg/pgsqlite/SQLitePlugin$DBQuery;
    :catch_0
    move-exception v9

    .line 925
    .local v9, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v2, "unexpected error, stopping db thread"

    invoke-static {v1, v2, v9}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 926
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 948
    .restart local v7    # "dbq":Lorg/pgsqlite/SQLitePlugin$DBQuery;
    :catch_1
    move-exception v9

    .line 949
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v2, "unexpected error"

    invoke-static {v1, v2, v9}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 952
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v7, :cond_1

    iget-boolean v1, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->close:Z

    if-eqz v1, :cond_1

    .line 954
    :try_start_2
    iget-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->this$0:Lorg/pgsqlite/SQLitePlugin;

    iget-object v2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/pgsqlite/SQLitePlugin;->access$200(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;)V

    .line 956
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    iget-boolean v1, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->delete:Z

    if-nez v1, :cond_3

    .line 959
    iget-object v1, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    const-string v2, "database removed"

    invoke-virtual {v1, v2}, Lorg/pgsqlite/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 973
    :catch_2
    move-exception v9

    .line 974
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v2, "couldn\'t close database"

    invoke-static {v1, v2, v9}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 975
    iget-object v1, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    if-eqz v1, :cond_1

    .line 976
    iget-object v1, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t close database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 962
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->this$0:Lorg/pgsqlite/SQLitePlugin;

    iget-object v2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/pgsqlite/SQLitePlugin;->access$300(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;)Z

    move-result v8

    .line 963
    .local v8, "deleteResult":Z
    if-eqz v8, :cond_4

    .line 964
    iget-object v1, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    const-string v2, "database removed"

    invoke-virtual {v1, v2}, Lorg/pgsqlite/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 968
    .end local v8    # "deleteResult":Z
    :catch_3
    move-exception v9

    .line 969
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v2, "couldn\'t delete database"

    invoke-static {v1, v2, v9}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 970
    iget-object v1, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t delete database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 966
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "deleteResult":Z
    :cond_4
    :try_start_5
    iget-object v1, v7, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    const-string v2, "couldn\'t delete database"

    invoke-virtual {v1, v2}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1
.end method
