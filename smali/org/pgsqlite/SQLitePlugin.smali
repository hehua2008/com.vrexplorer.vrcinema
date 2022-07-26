.class public Lorg/pgsqlite/SQLitePlugin;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "SQLitePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pgsqlite/SQLitePlugin$QueryType;,
        Lorg/pgsqlite/SQLitePlugin$Action;,
        Lorg/pgsqlite/SQLitePlugin$DBQuery;,
        Lorg/pgsqlite/SQLitePlugin$DBRunner;
    }
.end annotation


# static fields
.field private static final FIRST_WORD:Ljava/util/regex/Pattern;

.field private static final PLUGIN_NAME:Ljava/lang/String; = "SQLite"

.field public static final TAG:Ljava/lang/String;

.field static dbrmap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/pgsqlite/SQLitePlugin$DBRunner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected context:Landroid/content/Context;

.field protected threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-class v0, Lorg/pgsqlite/SQLitePlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 55
    const-string v0, "^\\s*(\\S+)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/pgsqlite/SQLitePlugin;->FIRST_WORD:Ljava/util/regex/Pattern;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/pgsqlite/SQLitePlugin;->context:Landroid/content/Context;

    .line 77
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/pgsqlite/SQLitePlugin;->context:Landroid/content/Context;

    .line 78
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/pgsqlite/SQLitePlugin;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;Ljava/lang/String;ILorg/pgsqlite/CallbackContext;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lorg/pgsqlite/SQLitePlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lorg/pgsqlite/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/pgsqlite/SQLitePlugin;->openDatabase(Ljava/lang/String;Ljava/lang/String;ILorg/pgsqlite/CallbackContext;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;[Ljava/lang/String;[Lorg/json/JSONArray;[Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lorg/pgsqlite/SQLitePlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Lorg/json/JSONArray;
    .param p4, "x4"    # [Ljava/lang/String;
    .param p5, "x5"    # Lorg/pgsqlite/CallbackContext;

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lorg/pgsqlite/SQLitePlugin;->executeSqlBatch(Ljava/lang/String;[Ljava/lang/String;[Lorg/json/JSONArray;[Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V

    return-void
.end method

.method static synthetic access$200(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/pgsqlite/SQLitePlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/pgsqlite/SQLitePlugin;->closeDatabaseNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/pgsqlite/SQLitePlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/pgsqlite/SQLitePlugin;->deleteDatabaseNow(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private attachDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V
    .locals 11
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbNameToAttach"    # Ljava/lang/String;
    .param p3, "dbAlias"    # Ljava/lang/String;
    .param p4, "cbc"    # Lorg/pgsqlite/CallbackContext;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 517
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    .line 518
    .local v9, "runner":Lorg/pgsqlite/SQLitePlugin$DBRunner;
    if-eqz v9, :cond_0

    .line 519
    invoke-virtual {p0}, Lorg/pgsqlite/SQLitePlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 520
    .local v6, "databasePath":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 521
    .local v8, "filePathToAttached":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTACH DATABASE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 523
    .local v10, "statement":Ljava/lang/String;
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$DBQuery;

    new-array v2, v4, [Ljava/lang/String;

    aput-object v10, v2, v5

    new-array v3, v4, [Ljava/lang/String;

    const-string v1, "1111"

    aput-object v1, v3, v5

    new-array v4, v4, [Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    aput-object v1, v4, v5

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/pgsqlite/SQLitePlugin$DBQuery;-><init>(Lorg/pgsqlite/SQLitePlugin;[Ljava/lang/String;[Ljava/lang/String;[Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)V

    .line 526
    .local v0, "query":Lorg/pgsqlite/SQLitePlugin$DBQuery;
    :try_start_0
    iget-object v1, v9, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v0    # "query":Lorg/pgsqlite/SQLitePlugin$DBQuery;
    .end local v6    # "databasePath":Ljava/io/File;
    .end local v8    # "filePathToAttached":Ljava/lang/String;
    .end local v10    # "statement":Ljava/lang/String;
    :goto_0
    return-void

    .line 527
    .restart local v0    # "query":Lorg/pgsqlite/SQLitePlugin$DBQuery;
    .restart local v6    # "databasePath":Ljava/io/File;
    .restart local v8    # "filePathToAttached":Ljava/lang/String;
    .restart local v10    # "statement":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 528
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v1, "Can\'t put query in the queue. Interrupted."

    invoke-virtual {p4, v1}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    .end local v0    # "query":Lorg/pgsqlite/SQLitePlugin$DBQuery;
    .end local v6    # "databasePath":Ljava/io/File;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "filePathToAttached":Ljava/lang/String;
    .end local v10    # "statement":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "i s not created yet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private bindArgsToStatement(Landroid/database/sqlite/SQLiteStatement;Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "myStatement"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "sqlArgs"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 772
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 773
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Float;

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 774
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 772
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 775
    :cond_1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 776
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_1

    .line 777
    :cond_2
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 778
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 780
    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 783
    :cond_4
    return-void
.end method

.method private bindRow(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;I)V
    .locals 4
    .param p1, "row"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "cur"    # Landroid/database/Cursor;
    .param p4, "i"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    .line 860
    .local v0, "curType":I
    packed-switch v0, :pswitch_data_0

    .line 875
    :pswitch_0
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 878
    :goto_0
    return-void

    .line 862
    :pswitch_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 865
    :pswitch_2
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 868
    :pswitch_3
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {p1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    .line 871
    :pswitch_4
    new-instance v1, Ljava/lang/String;

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 860
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private closeDatabase(Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V
    .locals 5
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "cbc"    # Lorg/pgsqlite/CallbackContext;

    .prologue
    .line 478
    sget-object v2, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    .line 479
    .local v1, "r":Lorg/pgsqlite/SQLitePlugin$DBRunner;
    if-eqz v1, :cond_2

    .line 481
    :try_start_0
    iget-object v2, v1, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v3, Lorg/pgsqlite/SQLitePlugin$DBQuery;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p2}, Lorg/pgsqlite/SQLitePlugin$DBQuery;-><init>(Lorg/pgsqlite/SQLitePlugin;ZLorg/pgsqlite/CallbackContext;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_1

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t close database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    .line 486
    :cond_1
    sget-object v2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v3, "couldn\'t close database"

    invoke-static {v2, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 489
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz p2, :cond_0

    .line 490
    const-string v2, "database closed"

    invoke-virtual {p2, v2}, Lorg/pgsqlite/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closeDatabaseNow(Ljava/lang/String;)V
    .locals 1
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lorg/pgsqlite/SQLitePlugin;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 503
    .local v0, "mydb":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 506
    :cond_0
    return-void
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 881
    if-eqz p1, :cond_0

    .line 883
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 884
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private createFromAssets(Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;)V
    .locals 11
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbfile"    # Ljava/io/File;
    .param p3, "assetFileInputStream"    # Ljava/io/InputStream;

    .prologue
    .line 442
    const/4 v6, 0x0

    .line 445
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    sget-object v8, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v9, "Copying pre-populated DB content"

    invoke-static {v8, v9}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "dbPath":Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 449
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .local v2, "dbPathFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 451
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 453
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v5, "newDbFile":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v8, 0x400

    :try_start_1
    new-array v0, v8, [B

    .line 460
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_1

    .line 461
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 464
    .end local v0    # "buf":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 465
    .end local v1    # "dbPath":Ljava/lang/String;
    .end local v2    # "dbPathFile":Ljava/io/File;
    .end local v5    # "newDbFile":Ljava/io/File;
    .end local v7    # "out":Ljava/io/OutputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    sget-object v8, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v9, "No pre-populated DB found."

    invoke-static {v8, v9, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    invoke-direct {p0, v6}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    .line 469
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 463
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "dbPath":Ljava/lang/String;
    .restart local v2    # "dbPathFile":Ljava/io/File;
    .restart local v4    # "len":I
    .restart local v5    # "newDbFile":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :cond_1
    :try_start_3
    sget-object v8, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Copied pre-populated DB content to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 467
    invoke-direct {p0, v7}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    move-object v6, v7

    .line 468
    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 467
    .end local v0    # "buf":[B
    .end local v1    # "dbPath":Ljava/lang/String;
    .end local v2    # "dbPathFile":Ljava/io/File;
    .end local v4    # "len":I
    .end local v5    # "newDbFile":Ljava/io/File;
    :catchall_0
    move-exception v8

    :goto_3
    invoke-direct {p0, v6}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v1    # "dbPath":Ljava/lang/String;
    .restart local v2    # "dbPathFile":Ljava/io/File;
    .restart local v5    # "newDbFile":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 464
    .end local v1    # "dbPath":Ljava/lang/String;
    .end local v2    # "dbPathFile":Ljava/io/File;
    .end local v5    # "newDbFile":Ljava/io/File;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private deleteDatabase(Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V
    .locals 6
    .param p1, "dbname"    # Ljava/lang/String;
    .param p2, "cbc"    # Lorg/pgsqlite/CallbackContext;

    .prologue
    .line 541
    sget-object v3, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    .line 542
    .local v2, "r":Lorg/pgsqlite/SQLitePlugin$DBRunner;
    if-eqz v2, :cond_1

    .line 544
    :try_start_0
    iget-object v3, v2, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v4, Lorg/pgsqlite/SQLitePlugin$DBQuery;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, p2}, Lorg/pgsqlite/SQLitePlugin$DBQuery;-><init>(Lorg/pgsqlite/SQLitePlugin;ZLorg/pgsqlite/CallbackContext;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v1

    .line 546
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_0

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t close database"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    .line 549
    :cond_0
    sget-object v3, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v4, "couldn\'t close database"

    invoke-static {v3, v4, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 552
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, p1}, Lorg/pgsqlite/SQLitePlugin;->deleteDatabaseNow(Ljava/lang/String;)Z

    move-result v0

    .line 553
    .local v0, "deleteResult":Z
    if-eqz v0, :cond_2

    .line 554
    const-string v3, "database deleted"

    invoke-virtual {p2, v3}, Lorg/pgsqlite/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_2
    const-string v3, "couldn\'t delete database"

    invoke-virtual {p2, v3}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteDatabaseNow(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dbname"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0}, Lorg/pgsqlite/SQLitePlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 571
    .local v0, "dbfile":Ljava/io/File;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method private executeAndPossiblyThrow(Lorg/pgsqlite/SQLitePlugin$Action;Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)Z
    .locals 21
    .param p1, "action"    # Lorg/pgsqlite/SQLitePlugin$Action;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "cbc"    # Lorg/pgsqlite/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 224
    sget-object v4, Lorg/pgsqlite/SQLitePlugin$1;->$SwitchMap$org$pgsqlite$SQLitePlugin$Action:[I

    invoke-virtual/range {p1 .. p1}, Lorg/pgsqlite/SQLitePlugin$Action;->ordinal()I

    move-result v8

    aget v4, v4, v8

    packed-switch v4, :pswitch_data_0

    .line 307
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 226
    :pswitch_0
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 227
    .local v18, "o":Lorg/json/JSONObject;
    const-string v4, "value"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, "echo_value":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lorg/pgsqlite/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    .end local v14    # "echo_value":Ljava/lang/String;
    .end local v18    # "o":Lorg/json/JSONObject;
    :pswitch_1
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 233
    .restart local v18    # "o":Lorg/json/JSONObject;
    const-string v4, "name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 235
    .local v12, "dbname":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-direct {v0, v12, v1, v2}, Lorg/pgsqlite/SQLitePlugin;->startDatabase(Ljava/lang/String;Lorg/json/JSONObject;Lorg/pgsqlite/CallbackContext;)V

    goto :goto_0

    .line 239
    .end local v12    # "dbname":Ljava/lang/String;
    .end local v18    # "o":Lorg/json/JSONObject;
    :pswitch_2
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 240
    .restart local v18    # "o":Lorg/json/JSONObject;
    const-string v4, "path"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 242
    .restart local v12    # "dbname":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lorg/pgsqlite/SQLitePlugin;->closeDatabase(Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V

    goto :goto_0

    .line 246
    .end local v12    # "dbname":Ljava/lang/String;
    .end local v18    # "o":Lorg/json/JSONObject;
    :pswitch_3
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 247
    .restart local v18    # "o":Lorg/json/JSONObject;
    const-string v4, "path"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 250
    .restart local v12    # "dbname":Ljava/lang/String;
    const-string v4, "dbName"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "dbAlias"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v4, v8, v1}, Lorg/pgsqlite/SQLitePlugin;->attachDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V

    goto :goto_0

    .line 254
    .end local v12    # "dbname":Ljava/lang/String;
    .end local v18    # "o":Lorg/json/JSONObject;
    :pswitch_4
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 255
    .restart local v18    # "o":Lorg/json/JSONObject;
    const-string v4, "path"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 257
    .restart local v12    # "dbname":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lorg/pgsqlite/SQLitePlugin;->deleteDatabase(Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V

    goto/16 :goto_0

    .line 264
    .end local v12    # "dbname":Ljava/lang/String;
    .end local v18    # "o":Lorg/json/JSONObject;
    :pswitch_5
    const/4 v6, 0x0

    .line 267
    .local v6, "queryIDs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 269
    .local v7, "jsonparams":[Lorg/json/JSONArray;
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 270
    .local v10, "allargs":Lorg/json/JSONObject;
    const-string v4, "dbargs"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 271
    .local v11, "dbargs":Lorg/json/JSONObject;
    const-string v4, "dbname"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 272
    .restart local v12    # "dbname":Ljava/lang/String;
    const-string v4, "executes"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 274
    .local v20, "txargs":Lorg/json/JSONArray;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    .line 292
    .local v5, "queries":[Ljava/lang/String;
    :cond_0
    new-instance v3, Lorg/pgsqlite/SQLitePlugin$DBQuery;

    move-object/from16 v4, p0

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/pgsqlite/SQLitePlugin$DBQuery;-><init>(Lorg/pgsqlite/SQLitePlugin;[Ljava/lang/String;[Ljava/lang/String;[Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)V

    .line 293
    .local v3, "q":Lorg/pgsqlite/SQLitePlugin$DBQuery;
    sget-object v4, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    .line 294
    .local v19, "r":Lorg/pgsqlite/SQLitePlugin$DBRunner;
    if-eqz v19, :cond_2

    .line 296
    :try_start_0
    move-object/from16 v0, v19

    iget-object v4, v0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 297
    :catch_0
    move-exception v13

    .line 298
    .local v13, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v8, "couldn\'t add to queue"

    invoke-static {v4, v8, v13}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    const-string v4, "couldn\'t add to queue"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    .end local v3    # "q":Lorg/pgsqlite/SQLitePlugin$DBQuery;
    .end local v5    # "queries":[Ljava/lang/String;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v19    # "r":Lorg/pgsqlite/SQLitePlugin$DBRunner;
    :cond_1
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v17

    .line 278
    .local v17, "len":I
    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    .line 279
    .restart local v5    # "queries":[Ljava/lang/String;
    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    .line 280
    move/from16 v0, v17

    new-array v7, v0, [Lorg/json/JSONArray;

    .line 282
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    .line 283
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 284
    .local v9, "a":Lorg/json/JSONObject;
    const-string v4, "sql"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v15

    .line 285
    const-string v4, "qid"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v15

    .line 286
    const-string v4, "params"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 287
    .local v16, "jsonArr":Lorg/json/JSONArray;
    aput-object v16, v7, v15

    .line 282
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 302
    .end local v9    # "a":Lorg/json/JSONObject;
    .end local v15    # "i":I
    .end local v16    # "jsonArr":Lorg/json/JSONArray;
    .end local v17    # "len":I
    .restart local v3    # "q":Lorg/pgsqlite/SQLitePlugin$DBQuery;
    .restart local v19    # "r":Lorg/pgsqlite/SQLitePlugin$DBRunner;
    :cond_2
    const-string v4, "database not open"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private executeSqlBatch(Ljava/lang/String;[Ljava/lang/String;[Lorg/json/JSONArray;[Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V
    .locals 24
    .param p1, "dbname"    # Ljava/lang/String;
    .param p2, "queryarr"    # [Ljava/lang/String;
    .param p3, "jsonparams"    # [Lorg/json/JSONArray;
    .param p4, "queryIDs"    # [Ljava/lang/String;
    .param p5, "cbc"    # Lorg/pgsqlite/CallbackContext;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 597
    invoke-direct/range {p0 .. p1}, Lorg/pgsqlite/SQLitePlugin;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 599
    .local v13, "mydb":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v13, :cond_0

    .line 601
    const-string v22, "database has been closed"

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    .line 757
    :goto_0
    return-void

    .line 607
    :cond_0
    move-object/from16 v0, p2

    array-length v9, v0

    .line 608
    .local v9, "len":I
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 610
    .local v4, "batchResults":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_9

    .line 611
    aget-object v19, p4, v8

    .line 613
    .local v19, "query_id":Ljava/lang/String;
    const/16 v16, 0x0

    .line 614
    .local v16, "queryResult":Lorg/json/JSONObject;
    const-string v6, "unknown"

    .line 617
    .local v6, "errorMessage":Ljava/lang/String;
    const/4 v14, 0x1

    .line 619
    .local v14, "needRawQuery":Z
    :try_start_0
    aget-object v15, p2, v8

    .line 621
    .local v15, "query":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/pgsqlite/SQLitePlugin;->getQueryType(Ljava/lang/String;)Lorg/pgsqlite/SQLitePlugin$QueryType;

    move-result-object v18

    .line 623
    .local v18, "queryType":Lorg/pgsqlite/SQLitePlugin$QueryType;
    sget-object v22, Lorg/pgsqlite/SQLitePlugin$QueryType;->update:Lorg/pgsqlite/SQLitePlugin$QueryType;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    sget-object v22, Lorg/pgsqlite/SQLitePlugin$QueryType;->delete:Lorg/pgsqlite/SQLitePlugin$QueryType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 624
    :cond_1
    const/4 v12, 0x0

    .line 625
    .local v12, "myStatement":Landroid/database/sqlite/SQLiteStatement;
    const/16 v21, -0x1

    .line 628
    .local v21, "rowsAffected":I
    :try_start_1
    invoke-virtual {v13, v15}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 629
    if-eqz p3, :cond_2

    .line 630
    aget-object v22, p3, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v1}, Lorg/pgsqlite/SQLitePlugin;->bindArgsToStatement(Landroid/database/sqlite/SQLiteStatement;Lorg/json/JSONArray;)V

    .line 633
    :cond_2
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v21

    .line 635
    const/4 v14, 0x0

    .line 642
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    .line 645
    :goto_2
    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 646
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 647
    .end local v16    # "queryResult":Lorg/json/JSONObject;
    .local v17, "queryResult":Lorg/json/JSONObject;
    :try_start_3
    const-string v22, "rowsAffected"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 652
    .end local v12    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .end local v21    # "rowsAffected":I
    :goto_3
    sget-object v22, Lorg/pgsqlite/SQLitePlugin$QueryType;->insert:Lorg/pgsqlite/SQLitePlugin$QueryType;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    if-eqz p3, :cond_3

    .line 653
    const/4 v14, 0x0

    .line 655
    invoke-virtual {v13, v15}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 657
    .restart local v12    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    aget-object v22, p3, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v1}, Lorg/pgsqlite/SQLitePlugin;->bindArgsToStatement(Landroid/database/sqlite/SQLiteStatement;Lorg/json/JSONArray;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 662
    :try_start_4
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v10

    .line 665
    .local v10, "insertId":J
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 666
    .end local v17    # "queryResult":Lorg/json/JSONObject;
    .restart local v16    # "queryResult":Lorg/json/JSONObject;
    const-wide/16 v22, -0x1

    cmp-long v22, v10, v22

    if-eqz v22, :cond_7

    .line 667
    :try_start_5
    const-string v22, "insertId"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 668
    const-string v22, "rowsAffected"

    const/16 v23, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 678
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v17, v16

    .line 682
    .end local v10    # "insertId":J
    .end local v12    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .end local v16    # "queryResult":Lorg/json/JSONObject;
    .restart local v17    # "queryResult":Lorg/json/JSONObject;
    :cond_3
    :goto_5
    :try_start_7
    sget-object v22, Lorg/pgsqlite/SQLitePlugin$QueryType;->begin:Lorg/pgsqlite/SQLitePlugin$QueryType;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 683
    const/4 v14, 0x0

    .line 685
    :try_start_8
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 687
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 688
    .end local v17    # "queryResult":Lorg/json/JSONObject;
    .restart local v16    # "queryResult":Lorg/json/JSONObject;
    :try_start_9
    const-string v22, "rowsAffected"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object/from16 v17, v16

    .line 695
    .end local v16    # "queryResult":Lorg/json/JSONObject;
    .restart local v17    # "queryResult":Lorg/json/JSONObject;
    :cond_4
    :goto_6
    :try_start_a
    sget-object v22, Lorg/pgsqlite/SQLitePlugin$QueryType;->commit:Lorg/pgsqlite/SQLitePlugin$QueryType;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 696
    const/4 v14, 0x0

    .line 698
    :try_start_b
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 699
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 701
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 702
    .end local v17    # "queryResult":Lorg/json/JSONObject;
    .restart local v16    # "queryResult":Lorg/json/JSONObject;
    :try_start_c
    const-string v22, "rowsAffected"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    move-object/from16 v17, v16

    .line 709
    .end local v16    # "queryResult":Lorg/json/JSONObject;
    .restart local v17    # "queryResult":Lorg/json/JSONObject;
    :cond_5
    :goto_7
    :try_start_d
    sget-object v22, Lorg/pgsqlite/SQLitePlugin$QueryType;->rollback:Lorg/pgsqlite/SQLitePlugin$QueryType;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 710
    const/4 v14, 0x0

    .line 712
    :try_start_e
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 714
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 715
    .end local v17    # "queryResult":Lorg/json/JSONObject;
    .restart local v16    # "queryResult":Lorg/json/JSONObject;
    :try_start_f
    const-string v22, "rowsAffected"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 723
    :goto_8
    if-eqz v14, :cond_6

    .line 724
    :try_start_10
    aget-object v22, p3, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p5

    invoke-direct {v0, v13, v15, v1, v2}, Lorg/pgsqlite/SQLitePlugin;->executeSqlStatementQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)Lorg/json/JSONObject;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    move-result-object v16

    .line 732
    .end local v15    # "query":Ljava/lang/String;
    .end local v18    # "queryType":Lorg/pgsqlite/SQLitePlugin$QueryType;
    :cond_6
    :goto_9
    if-eqz v16, :cond_8

    .line 733
    :try_start_11
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 734
    .local v20, "r":Lorg/json/JSONObject;
    const-string v22, "qid"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 736
    const-string v22, "type"

    const-string v23, "success"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 737
    const-string v22, "result"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 739
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_6

    .line 610
    .end local v20    # "r":Lorg/json/JSONObject;
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 636
    .restart local v12    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .restart local v15    # "query":Ljava/lang/String;
    .restart local v18    # "queryType":Lorg/pgsqlite/SQLitePlugin$QueryType;
    .restart local v21    # "rowsAffected":I
    :catch_0
    move-exception v7

    .line 638
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_12
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 639
    sget-object v22, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v23, "SQLiteStatement.executeUpdateDelete() failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 640
    const/4 v14, 0x0

    .line 642
    :try_start_13
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    goto/16 :goto_2

    .line 726
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    .end local v12    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .end local v15    # "query":Ljava/lang/String;
    .end local v18    # "queryType":Lorg/pgsqlite/SQLitePlugin$QueryType;
    .end local v21    # "rowsAffected":I
    :catch_1
    move-exception v7

    .line 727
    .local v7, "ex":Ljava/lang/Exception;
    :goto_b
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 728
    sget-object v22, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v23, "SQLitePlugin.executeSql[Batch](): failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 642
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v12    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .restart local v15    # "query":Ljava/lang/String;
    .restart local v18    # "queryType":Lorg/pgsqlite/SQLitePlugin$QueryType;
    .restart local v21    # "rowsAffected":I
    :catchall_0
    move-exception v22

    :try_start_14
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    throw v22
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    .line 670
    .end local v21    # "rowsAffected":I
    .restart local v10    # "insertId":J
    :cond_7
    :try_start_15
    const-string v22, "rowsAffected"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_4

    .line 672
    :catch_2
    move-exception v7

    .line 675
    .end local v10    # "insertId":J
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :goto_c
    :try_start_16
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 676
    sget-object v22, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v23, "SQLiteDatabase.executeInsert() failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 678
    :try_start_17
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    move-object/from16 v17, v16

    .line 679
    .end local v16    # "queryResult":Lorg/json/JSONObject;
    .restart local v17    # "queryResult":Lorg/json/JSONObject;
    goto/16 :goto_5

    .line 678
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v22

    move-object/from16 v16, v17

    .end local v17    # "queryResult":Lorg/json/JSONObject;
    .restart local v16    # "queryResult":Lorg/json/JSONObject;
    :goto_d
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    throw v22

    .line 689
    .end local v12    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .end local v16    # "queryResult":Lorg/json/JSONObject;
    .restart local v17    # "queryResult":Lorg/json/JSONObject;
    :catch_3
    move-exception v7

    move-object/from16 v16, v17

    .line 690
    .end local v17    # "queryResult":Lorg/json/JSONObject;
    .restart local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    .restart local v16    # "queryResult":Lorg/json/JSONObject;
    :goto_e
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 691
    sget-object v22, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v23, "SQLiteDatabase.beginTransaction() failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v17, v16

    .end local v16    # "queryResult":Lorg/json/JSONObject;
    .restart local v17    # "queryResult":Lorg/json/JSONObject;
    goto/16 :goto_6

    .line 703
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catch_4
    move-exception v7

    move-object/from16 v16, v17

    .line 704
    .end local v17    # "queryResult":Lorg/json/JSONObject;
    .restart local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    .restart local v16    # "queryResult":Lorg/json/JSONObject;
    :goto_f
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 705
    sget-object v22, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v23, "SQLiteDatabase.setTransactionSuccessful/endTransaction() failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v17, v16

    .end local v16    # "queryResult":Lorg/json/JSONObject;
    .restart local v17    # "queryResult":Lorg/json/JSONObject;
    goto/16 :goto_7

    .line 716
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catch_5
    move-exception v7

    move-object/from16 v16, v17

    .line 717
    .end local v17    # "queryResult":Lorg/json/JSONObject;
    .restart local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    .restart local v16    # "queryResult":Lorg/json/JSONObject;
    :goto_10
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 718
    sget-object v22, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v23, "SQLiteDatabase.endTransaction() failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    goto/16 :goto_8

    .line 741
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    .end local v15    # "query":Ljava/lang/String;
    .end local v18    # "queryType":Lorg/pgsqlite/SQLitePlugin$QueryType;
    :cond_8
    :try_start_18
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 742
    .restart local v20    # "r":Lorg/json/JSONObject;
    const-string v22, "qid"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    const-string v22, "type"

    const-string v23, "error"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 746
    .local v5, "er":Lorg/json/JSONObject;
    const-string v22, "message"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 747
    const-string v22, "result"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 749
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_6

    goto/16 :goto_a

    .line 751
    .end local v5    # "er":Lorg/json/JSONObject;
    .end local v20    # "r":Lorg/json/JSONObject;
    :catch_6
    move-exception v7

    .line 752
    .local v7, "ex":Lorg/json/JSONException;
    sget-object v22, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v23, "SQLitePlugin.executeSql[Batch]() failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 756
    .end local v6    # "errorMessage":Ljava/lang/String;
    .end local v7    # "ex":Lorg/json/JSONException;
    .end local v14    # "needRawQuery":Z
    .end local v16    # "queryResult":Lorg/json/JSONObject;
    .end local v19    # "query_id":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lorg/pgsqlite/CallbackContext;->success(Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 726
    .restart local v6    # "errorMessage":Ljava/lang/String;
    .restart local v14    # "needRawQuery":Z
    .restart local v15    # "query":Ljava/lang/String;
    .restart local v17    # "queryResult":Lorg/json/JSONObject;
    .restart local v18    # "queryType":Lorg/pgsqlite/SQLitePlugin$QueryType;
    .restart local v19    # "query_id":Ljava/lang/String;
    :catch_7
    move-exception v7

    move-object/from16 v16, v17

    .end local v17    # "queryResult":Lorg/json/JSONObject;
    .restart local v16    # "queryResult":Lorg/json/JSONObject;
    goto/16 :goto_b

    .line 716
    :catch_8
    move-exception v7

    goto :goto_10

    .line 703
    :catch_9
    move-exception v7

    goto :goto_f

    .line 689
    :catch_a
    move-exception v7

    goto/16 :goto_e

    .line 678
    .restart local v12    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_2
    move-exception v22

    goto/16 :goto_d

    .line 672
    .end local v16    # "queryResult":Lorg/json/JSONObject;
    .restart local v17    # "queryResult":Lorg/json/JSONObject;
    :catch_b
    move-exception v7

    move-object/from16 v16, v17

    .end local v17    # "queryResult":Lorg/json/JSONObject;
    .restart local v16    # "queryResult":Lorg/json/JSONObject;
    goto/16 :goto_c

    .end local v12    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .end local v16    # "queryResult":Lorg/json/JSONObject;
    .restart local v17    # "queryResult":Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v16, v17

    .end local v17    # "queryResult":Lorg/json/JSONObject;
    .restart local v16    # "queryResult":Lorg/json/JSONObject;
    goto/16 :goto_8

    :cond_b
    move-object/from16 v17, v16

    .end local v16    # "queryResult":Lorg/json/JSONObject;
    .restart local v17    # "queryResult":Lorg/json/JSONObject;
    goto/16 :goto_3
.end method

.method private executeSqlStatementQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)Lorg/json/JSONObject;
    .locals 14
    .param p1, "mydb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "paramsAsJson"    # Lorg/json/JSONArray;
    .param p4, "cbc"    # Lorg/pgsqlite/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 798
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 800
    .local v11, "rowsResult":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 805
    .local v2, "cur":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-array v8, v12, [Ljava/lang/String;

    .line 807
    .local v8, "params":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_1

    .line 808
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 809
    const-string v12, ""

    aput-object v12, v8, v6

    .line 807
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 811
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 816
    .end local v6    # "j":I
    .end local v8    # "params":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 817
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v12, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v13, "SQLitePlugin.executeSql[Batch]() failed"

    invoke-static {v12, v13, v4}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 818
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 850
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    invoke-direct {p0, v2}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    throw v12

    .line 815
    .restart local v6    # "j":I
    .restart local v8    # "params":[Ljava/lang/String;
    :cond_1
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 822
    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 823
    new-instance v10, Lorg/pgsqlite/SQLiteArray;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v10, v12}, Lorg/pgsqlite/SQLiteArray;-><init>(I)V

    .line 825
    .local v10, "rowsArrayResult":Lorg/json/JSONArray;
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 829
    .local v1, "colCount":I
    :cond_2
    new-instance v9, Lorg/pgsqlite/SQLiteObject;

    invoke-direct {v9, v1}, Lorg/pgsqlite/SQLiteObject;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 831
    .local v9, "row":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v1, :cond_3

    .line 832
    :try_start_4
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v7

    .line 833
    .local v7, "key":Ljava/lang/String;
    invoke-direct {p0, v9, v7, v2, v5}, Lorg/pgsqlite/SQLitePlugin;->bindRow(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 831
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 836
    .end local v7    # "key":Ljava/lang/String;
    :cond_3
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 841
    :goto_3
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v12

    if-nez v12, :cond_2

    .line 844
    :try_start_6
    const-string v12, "rows"

    invoke-virtual {v11, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 850
    .end local v1    # "colCount":I
    .end local v5    # "i":I
    .end local v9    # "row":Lorg/json/JSONObject;
    .end local v10    # "rowsArrayResult":Lorg/json/JSONArray;
    :cond_4
    :goto_4
    invoke-direct {p0, v2}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    .line 853
    return-object v11

    .line 838
    .restart local v1    # "colCount":I
    .restart local v5    # "i":I
    .restart local v9    # "row":Lorg/json/JSONObject;
    .restart local v10    # "rowsArrayResult":Lorg/json/JSONArray;
    :catch_1
    move-exception v3

    .line 839
    .local v3, "e":Lorg/json/JSONException;
    :try_start_7
    sget-object v12, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 845
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v3

    .line 846
    .restart local v3    # "e":Lorg/json/JSONException;
    sget-object v12, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method

.method private getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p1, "dbname"    # Ljava/lang/String;

    .prologue
    .line 580
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    .line 581
    .local v0, "r":Lorg/pgsqlite/SQLitePlugin$DBRunner;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method private getQueryType(Ljava/lang/String;)Lorg/pgsqlite/SQLitePlugin$QueryType;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 760
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->FIRST_WORD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 761
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/pgsqlite/SQLitePlugin$QueryType;->valueOf(Ljava/lang/String;)Lorg/pgsqlite/SQLitePlugin$QueryType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 768
    :goto_0
    return-object v1

    .line 764
    :catch_0
    move-exception v1

    .line 768
    :cond_0
    sget-object v1, Lorg/pgsqlite/SQLitePlugin$QueryType;->other:Lorg/pgsqlite/SQLitePlugin$QueryType;

    goto :goto_0
.end method

.method private openDatabase(Ljava/lang/String;Ljava/lang/String;ILorg/pgsqlite/CallbackContext;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 11
    .param p1, "dbname"    # Ljava/lang/String;
    .param p2, "assetFilePath"    # Ljava/lang/String;
    .param p3, "openFlags"    # I
    .param p4, "cbc"    # Lorg/pgsqlite/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v5, 0x0

    .line 370
    .local v5, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 372
    .local v2, "dbfile":Ljava/io/File;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/pgsqlite/SQLitePlugin;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 373
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 376
    if-eqz p4, :cond_0

    const-string v8, "database already open"

    invoke-virtual {p4, v8}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    .line 377
    :cond_0
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "database already open"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    .end local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v3

    .line 425
    .local v3, "ex":Landroid/database/sqlite/SQLiteException;
    :goto_0
    if-eqz p4, :cond_1

    .line 426
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can\'t open database "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p4, v8}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    .line 427
    :cond_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    .end local v3    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v8

    :goto_1
    invoke-direct {p0, v5}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .line 380
    .restart local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    if-eqz p2, :cond_3

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 381
    const-string v8, "1"

    invoke-virtual {p2, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_7

    .line 382
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "www/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 383
    invoke-virtual {p0}, Lorg/pgsqlite/SQLitePlugin;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 384
    sget-object v8, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Located pre-populated DB asset in app bundle www subdirectory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_3
    :goto_2
    if-nez v2, :cond_5

    .line 403
    const/high16 p3, 0x10000000

    .line 404
    invoke-virtual {p0}, Lorg/pgsqlite/SQLitePlugin;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v5, :cond_4

    .line 407
    sget-object v8, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v9, "Copying pre-populated db asset to destination"

    invoke-static {v8, v9}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-direct {p0, p1, v2, v5}, Lorg/pgsqlite/SQLitePlugin;->createFromAssets(Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;)V

    .line 411
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 412
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 416
    :cond_5
    sget-object v8, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Opening sqlite db: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, p3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 420
    .local v7, "mydb":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p4, :cond_6

    .line 421
    const-string v8, "database open"

    invoke-virtual {p4, v8}, Lorg/pgsqlite/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    :cond_6
    invoke-direct {p0, v5}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    return-object v7

    .line 385
    .end local v7    # "mydb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_7
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7e

    if-ne v8, v9, :cond_9

    .line 386
    const-string v8, "~/"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x2

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 387
    :goto_3
    invoke-virtual {p0}, Lorg/pgsqlite/SQLitePlugin;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 388
    sget-object v8, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Located pre-populated DB asset in app bundle subdirectory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 386
    :cond_8
    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 390
    :cond_9
    invoke-virtual {p0}, Lorg/pgsqlite/SQLitePlugin;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 391
    .local v4, "filesDir":Ljava/io/File;
    const-string v8, "/"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 392
    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 393
    .local v0, "assetFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 394
    .end local v5    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    :try_start_4
    sget-object v8, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Located pre-populated DB asset in Files subdirectory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v8, 0x1

    if-ne p3, v8, :cond_b

    .line 396
    move-object v2, v0

    .line 397
    sget-object v8, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v9, "Detected read-only mode request for external asset."

    invoke-static {v8, v9}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_b
    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 429
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 424
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto/16 :goto_0
.end method

.method private startDatabase(Ljava/lang/String;Lorg/json/JSONObject;Lorg/pgsqlite/CallbackContext;)V
    .locals 2
    .param p1, "dbname"    # Ljava/lang/String;
    .param p2, "options"    # Lorg/json/JSONObject;
    .param p3, "cbc"    # Lorg/pgsqlite/CallbackContext;

    .prologue
    .line 343
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    .line 346
    .local v0, "r":Lorg/pgsqlite/SQLitePlugin$DBRunner;
    if-eqz v0, :cond_0

    .line 350
    const-string v1, "database started"

    invoke-virtual {p3, v1}, Lorg/pgsqlite/CallbackContext;->success(Ljava/lang/String;)V

    .line 356
    :goto_0
    return-void

    .line 352
    :cond_0
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    .end local v0    # "r":Lorg/pgsqlite/SQLitePlugin$DBRunner;
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/pgsqlite/SQLitePlugin$DBRunner;-><init>(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;Lorg/json/JSONObject;Lorg/pgsqlite/CallbackContext;)V

    .line 353
    .restart local v0    # "r":Lorg/pgsqlite/SQLitePlugin$DBRunner;
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-virtual {p0}, Lorg/pgsqlite/SQLitePlugin;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public attach(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .param p1, "args"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 115
    const-string v0, "attach"

    .line 117
    .local v0, "actionAsString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 118
    .local v2, "params":Lorg/json/JSONArray;
    invoke-static {p1}, Lorg/pgsqlite/SQLitePluginConverter;->reactToJSON(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 119
    new-instance v3, Lorg/pgsqlite/CallbackContext;

    invoke-direct {v3, p2, p3}, Lorg/pgsqlite/CallbackContext;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, v2, v3}, Lorg/pgsqlite/SQLitePlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v2    # "params":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public backgroundExecuteSqlBatch(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .param p1, "args"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 139
    const-string v0, "backgroundExecuteSqlBatch"

    .line 141
    .local v0, "actionAsString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 142
    .local v2, "params":Lorg/json/JSONArray;
    invoke-static {p1}, Lorg/pgsqlite/SQLitePluginConverter;->reactToJSON(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 143
    new-instance v3, Lorg/pgsqlite/CallbackContext;

    invoke-direct {v3, p2, p3}, Lorg/pgsqlite/CallbackContext;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, v2, v3}, Lorg/pgsqlite/SQLitePlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v2    # "params":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public close(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .param p1, "args"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 103
    const-string v0, "close"

    .line 105
    .local v0, "actionAsString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 106
    .local v2, "params":Lorg/json/JSONArray;
    invoke-static {p1}, Lorg/pgsqlite/SQLitePluginConverter;->reactToJSON(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 107
    new-instance v3, Lorg/pgsqlite/CallbackContext;

    invoke-direct {v3, p2, p3}, Lorg/pgsqlite/CallbackContext;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, v2, v3}, Lorg/pgsqlite/SQLitePlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v2    # "params":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public closeAllOpenDatabases()V
    .locals 6

    .prologue
    .line 314
    :goto_0
    sget-object v3, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    sget-object v3, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    .local v0, "dbname":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/pgsqlite/SQLitePlugin;->closeDatabaseNow(Ljava/lang/String;)V

    .line 319
    sget-object v3, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    .line 322
    .local v2, "r":Lorg/pgsqlite/SQLitePlugin$DBRunner;
    :try_start_0
    iget-object v3, v2, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v4, Lorg/pgsqlite/SQLitePlugin$DBQuery;

    invoke-direct {v4, p0}, Lorg/pgsqlite/SQLitePlugin$DBQuery;-><init>(Lorg/pgsqlite/SQLitePlugin;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_1
    sget-object v3, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t stop db thread for db: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 328
    .end local v0    # "dbname":Ljava/lang/String;
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "r":Lorg/pgsqlite/SQLitePlugin$DBRunner;
    :cond_0
    return-void
.end method

.method public delete(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .param p1, "args"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 127
    const-string v0, "delete"

    .line 129
    .local v0, "actionAsString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 130
    .local v2, "params":Lorg/json/JSONArray;
    invoke-static {p1}, Lorg/pgsqlite/SQLitePluginConverter;->reactToJSON(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 131
    new-instance v3, Lorg/pgsqlite/CallbackContext;

    invoke-direct {v3, p2, p3}, Lorg/pgsqlite/CallbackContext;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, v2, v3}, Lorg/pgsqlite/SQLitePlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v2    # "params":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public echoStringValue(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 6
    .param p1, "args"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 163
    const-string v0, "echoStringValue"

    .line 165
    .local v0, "actionAsString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 166
    .local v2, "params":Lorg/json/JSONArray;
    invoke-static {p1}, Lorg/pgsqlite/SQLitePluginConverter;->reactToJSON(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 167
    new-instance v3, Lorg/pgsqlite/CallbackContext;

    invoke-direct {v3, p2, p3}, Lorg/pgsqlite/CallbackContext;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, v2, v3}, Lorg/pgsqlite/SQLitePlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v2    # "params":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Unexpected error"

    aput-object v5, v3, v4

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)Z
    .locals 4
    .param p1, "actionAsString"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "cbc"    # Lorg/pgsqlite/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    :try_start_0
    invoke-static {p1}, Lorg/pgsqlite/SQLitePlugin$Action;->valueOf(Ljava/lang/String;)Lorg/pgsqlite/SQLitePlugin$Action;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    .local v0, "action":Lorg/pgsqlite/SQLitePlugin$Action;
    :try_start_1
    invoke-direct {p0, v0, p2, p3}, Lorg/pgsqlite/SQLitePlugin;->executeAndPossiblyThrow(Lorg/pgsqlite/SQLitePlugin$Action;Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 203
    .end local v0    # "action":Lorg/pgsqlite/SQLitePlugin$Action;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v3, "unexpected error"

    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    throw v1

    .line 211
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "action":Lorg/pgsqlite/SQLitePlugin$Action;
    :catch_1
    move-exception v1

    .line 213
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v3, "unexpected error"

    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    throw v1
.end method

.method public executeSqlBatch(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 6
    .param p1, "args"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 151
    const-string v0, "executeSqlBatch"

    .line 153
    .local v0, "actionAsString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 154
    .local v2, "params":Lorg/json/JSONArray;
    invoke-static {p1}, Lorg/pgsqlite/SQLitePluginConverter;->reactToJSON(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 155
    new-instance v3, Lorg/pgsqlite/CallbackContext;

    invoke-direct {v3, p2, p3}, Lorg/pgsqlite/CallbackContext;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, v2, v3}, Lorg/pgsqlite/SQLitePlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v2    # "params":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Unexpected error"

    aput-object v5, v3, v4

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/pgsqlite/SQLitePlugin;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "SQLite"

    return-object v0
.end method

.method protected getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/pgsqlite/SQLitePlugin;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .param p1, "args"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 91
    const-string v0, "open"

    .line 93
    .local v0, "actionAsString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 94
    .local v2, "params":Lorg/json/JSONArray;
    invoke-static {p1}, Lorg/pgsqlite/SQLitePluginConverter;->reactToJSON(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 95
    new-instance v3, Lorg/pgsqlite/CallbackContext;

    invoke-direct {v3, p2, p3}, Lorg/pgsqlite/CallbackContext;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, v2, v3}, Lorg/pgsqlite/SQLitePlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v2    # "params":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method
