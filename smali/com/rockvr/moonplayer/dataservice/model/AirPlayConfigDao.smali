.class public Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "AirPlayConfigDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao",
        "<",
        "Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "AIR_PLAY_CONFIG"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/rockvr/moonplayer/dataservice/model/DaoSession;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/rockvr/moonplayer/dataservice/model/DaoSession;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 39
    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 3
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 43
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 44
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"AIR_PLAY_CONFIG\" ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"VERSION\" INTEGER NOT NULL ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"SERVER_NAME\" TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"SERVER_UUID\" TEXT PRIMARY KEY NOT NULL ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ADDRESS\" TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"LIST_ENDPOINT\" TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 50
    return-void

    .line 43
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 3
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifExists"    # Z

    .prologue
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v1, "IF EXISTS "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"AIR_PLAY_CONFIG\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "sql":Ljava/lang/String;
    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 56
    return-void

    .line 54
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;)V
    .locals 8
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 87
    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getVersion()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p1, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 89
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getServerName()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "serverName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 91
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    :cond_0
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getServerUuid()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "serverUuid":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 96
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 99
    :cond_1
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 101
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 104
    :cond_2
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getListEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "listEndpoint":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 106
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    :cond_3
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    invoke-virtual {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;)V
    .locals 8
    .param p1, "stmt"    # Lorg/greenrobot/greendao/database/DatabaseStatement;
    .param p2, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    .prologue
    .line 60
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 61
    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getVersion()I

    move-result v5

    int-to-long v6, v5

    invoke-interface {p1, v4, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 63
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getServerName()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "serverName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 65
    const/4 v4, 0x2

    invoke-interface {p1, v4, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getServerUuid()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "serverUuid":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 70
    const/4 v4, 0x3

    invoke-interface {p1, v4, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 73
    :cond_1
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 75
    const/4 v4, 0x4

    invoke-interface {p1, v4, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 78
    :cond_2
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getListEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "listEndpoint":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 80
    const/4 v4, 0x5

    invoke-interface {p1, v4, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 82
    :cond_3
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    invoke-virtual {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;->getKey(Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getServerUuid()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKey(Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;)Z
    .locals 1
    .param p1, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getServerUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;->hasKey(Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;)Z

    move-result v0

    return v0
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v5, 0x0

    .line 117
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    add-int/lit8 v1, p2, 0x0

    .line 118
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    .line 119
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v5

    :goto_0
    add-int/lit8 v3, p2, 0x2

    .line 120
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v5

    :goto_1
    add-int/lit8 v4, p2, 0x3

    .line 121
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v5

    :goto_2
    add-int/lit8 v6, p2, 0x4

    .line 122
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_3
    invoke-direct/range {v0 .. v5}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v0, "entity":Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;
    return-object v0

    .line 119
    .end local v0    # "entity":Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;
    :cond_0
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 120
    :cond_1
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 121
    :cond_2
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 122
    :cond_3
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;->readEntity(Landroid/database/Cursor;I)Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 129
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->setVersion(I)V

    .line 130
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->setServerName(Ljava/lang/String;)V

    .line 131
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->setServerUuid(Ljava/lang/String;)V

    .line 132
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->setAddress(Ljava/lang/String;)V

    .line 133
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p2, v1}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->setListEndpoint(Ljava/lang/String;)V

    .line 134
    return-void

    .line 130
    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_1
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 132
    :cond_2
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 133
    :cond_3
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;->readEntity(Landroid/database/Cursor;Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 112
    add-int/lit8 v0, p2, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 16
    check-cast p1, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;->updateKeyAfterInsert(Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final updateKeyAfterInsert(Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;J)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;
    .param p2, "rowId"    # J

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getServerUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
