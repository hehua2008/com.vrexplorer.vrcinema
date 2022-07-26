.class public final Lcom/rockvr/moonplayer/dataservice/MigrationHelper;
.super Ljava/lang/Object;
.source "MigrationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs createAllTables(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)V
    .locals 1
    .param p0, "db"    # Lorg/greenrobot/greendao/database/StandardDatabase;
    .param p1, "ifNotExists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "Z[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "daoClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;"
    const-string v0, "createTable"

    invoke-static {p0, v0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->reflectMethod(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;Z[Ljava/lang/Class;)V

    .line 62
    return-void
.end method

.method private static varargs dropAllTables(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)V
    .locals 1
    .param p0, "db"    # Lorg/greenrobot/greendao/database/StandardDatabase;
    .param p1, "ifExists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "Z[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "daoClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;"
    const-string v0, "dropTable"

    invoke-static {p0, v0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->reflectMethod(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;Z[Ljava/lang/Class;)V

    .line 58
    return-void
.end method

.method private static varargs generateNewTablesIfNotExists(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V
    .locals 2
    .param p0, "db"    # Lorg/greenrobot/greendao/database/StandardDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "daoClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;"
    const-string v0, "createTable"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->reflectMethod(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;Z[Ljava/lang/Class;)V

    .line 42
    return-void
.end method

.method private static varargs generateTempTables(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V
    .locals 7
    .param p0, "db"    # Lorg/greenrobot/greendao/database/StandardDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "daoClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_0

    .line 46
    new-instance v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    aget-object v5, p1, v1

    invoke-direct {v0, p0, v5}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    .line 47
    .local v0, "daoConfig":Lorg/greenrobot/greendao/internal/DaoConfig;
    iget-object v3, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 48
    .local v3, "tableName":Ljava/lang/String;
    iget-object v5, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    const-string v6, "_TEMP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "tempTableName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v2, "insertTableStringBuilder":Ljava/lang/StringBuilder;
    const-string v5, "CREATE TEMP TABLE "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v5, " AS SELECT * FROM "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/greenrobot/greendao/database/StandardDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "daoConfig":Lorg/greenrobot/greendao/internal/DaoConfig;
    .end local v2    # "insertTableStringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "tableName":Ljava/lang/String;
    .end local v4    # "tempTableName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static getColumns(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "db"    # Lorg/greenrobot/greendao/database/StandardDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 120
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " limit 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/greenrobot/greendao/database/StandardDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 122
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 127
    :cond_0
    if-eqz v1, :cond_1

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_1
    if-nez v0, :cond_2

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .restart local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    if-eqz v1, :cond_3

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_3
    if-nez v0, :cond_2

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 127
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_4
    if-nez v0, :cond_5

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    throw v3
.end method

.method public static varargs migrate(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V
    .locals 1
    .param p0, "db"    # Lorg/greenrobot/greendao/database/StandardDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "daoClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;"
    invoke-static {p0, p1}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->generateNewTablesIfNotExists(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    .line 21
    invoke-static {p0, p1}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->generateTempTables(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    .line 22
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->dropAllTables(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)V

    .line 23
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->createAllTables(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)V

    .line 24
    invoke-static {p0, p1}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->restoreData(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    .line 25
    return-void
.end method

.method public static varargs migrateLink(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V
    .locals 1
    .param p0, "db"    # Lorg/greenrobot/greendao/database/StandardDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "daoClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;"
    invoke-static {p0, p1}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->generateNewTablesIfNotExists(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    .line 29
    invoke-static {p0, p1}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->generateTempTables(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    .line 31
    const-string v0, "delete from LINK_TEMP where URL in (select URL from LINK_TEMP group by URL having count(URL) > 1) and rowid not in (select min(rowid) from LINK_TEMP group by URL having count(URL)>1)"

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/database/StandardDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->dropAllTables(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)V

    .line 36
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->createAllTables(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)V

    .line 37
    invoke-static {p0, p1}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->restoreData(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    .line 38
    return-void
.end method

.method private static varargs reflectMethod(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;Z[Ljava/lang/Class;)V
    .locals 9
    .param p0, "db"    # Lorg/greenrobot/greendao/database/StandardDatabase;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "isExists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "daoClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;"
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 68
    array-length v4, p3

    if-ge v4, v5, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    :try_start_0
    array-length v4, p3

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p3, v3

    .line 73
    .local v0, "cls":Ljava/lang/Class;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lorg/greenrobot/greendao/database/Database;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 74
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 76
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private static varargs restoreData(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V
    .locals 13
    .param p0, "db"    # Lorg/greenrobot/greendao/database/StandardDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "daoClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v11, p1

    if-ge v5, v11, :cond_3

    .line 87
    new-instance v3, Lorg/greenrobot/greendao/internal/DaoConfig;

    aget-object v11, p1, v5

    invoke-direct {v3, p0, v11}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    .line 88
    .local v3, "daoConfig":Lorg/greenrobot/greendao/internal/DaoConfig;
    iget-object v9, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 89
    .local v9, "tableName":Ljava/lang/String;
    iget-object v11, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    const-string v12, "_TEMP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, "tempTableName":Ljava/lang/String;
    invoke-static {p0, v10}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->getColumns(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 92
    .local v2, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v8, "properties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    iget-object v11, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    array-length v11, v11

    if-ge v7, v11, :cond_1

    .line 94
    iget-object v11, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    aget-object v11, v11, v7

    iget-object v0, v11, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 95
    .local v0, "columnName":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 96
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 99
    .end local v0    # "columnName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 100
    const-string v11, ","

    invoke-static {v11, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "columnSQL":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v6, "insertTableStringBuilder":Ljava/lang/StringBuilder;
    const-string v11, "INSERT INTO "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v11, ") SELECT "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v11, " FROM "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/greenrobot/greendao/database/StandardDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    .end local v1    # "columnSQL":Ljava/lang/String;
    .end local v6    # "insertTableStringBuilder":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v4, "dropTableStringBuilder":Ljava/lang/StringBuilder;
    const-string v11, "DROP TABLE "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/greenrobot/greendao/database/StandardDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 114
    .end local v2    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "daoConfig":Lorg/greenrobot/greendao/internal/DaoConfig;
    .end local v4    # "dropTableStringBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "j":I
    .end local v8    # "properties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "tableName":Ljava/lang/String;
    .end local v10    # "tempTableName":Ljava/lang/String;
    :cond_3
    return-void
.end method
