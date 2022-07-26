.class public Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "LocalVideoMediaDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao",
        "<",
        "Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "LOCAL_VIDEO_MEDIA"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/rockvr/moonplayer/dataservice/model/DaoSession;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/rockvr/moonplayer/dataservice/model/DaoSession;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 41
    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 3
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 45
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 46
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"LOCAL_VIDEO_MEDIA\" ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ID\" TEXT PRIMARY KEY NOT NULL ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"NAME\" TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"THUMBNAIL_PATH\" TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"DURATION\" INTEGER NOT NULL ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"PARENT_PATH\" TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"HASH_VALUE\" TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"FILE_SIZE\" INTEGER NOT NULL );"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 54
    return-void

    .line 45
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
    .line 58
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

    const-string v2, "\"LOCAL_VIDEO_MEDIA\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "sql":Ljava/lang/String;
    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 60
    return-void

    .line 58
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 8
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 98
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getId()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 100
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getName()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 105
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    :cond_1
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "thumbnailPath":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 110
    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 112
    :cond_2
    const/4 v5, 0x4

    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getDuration()J

    move-result-wide v6

    invoke-virtual {p1, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 114
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getParentPath()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "parentPath":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 116
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 119
    :cond_3
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getHashValue()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "hashValue":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 121
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 123
    :cond_4
    const/4 v5, 0x7

    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getFileSize()J

    move-result-wide v6

    invoke-virtual {p1, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 124
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    invoke-virtual {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 8
    .param p1, "stmt"    # Lorg/greenrobot/greendao/database/DatabaseStatement;
    .param p2, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 64
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 66
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getId()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 68
    const/4 v5, 0x1

    invoke-interface {p1, v5, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 71
    :cond_0
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getName()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 73
    const/4 v5, 0x2

    invoke-interface {p1, v5, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 76
    :cond_1
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "thumbnailPath":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 78
    const/4 v5, 0x3

    invoke-interface {p1, v5, v4}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 80
    :cond_2
    const/4 v5, 0x4

    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getDuration()J

    move-result-wide v6

    invoke-interface {p1, v5, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 82
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getParentPath()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "parentPath":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 84
    const/4 v5, 0x5

    invoke-interface {p1, v5, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 87
    :cond_3
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getHashValue()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "hashValue":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 89
    const/4 v5, 0x6

    invoke-interface {p1, v5, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 91
    :cond_4
    const/4 v5, 0x7

    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getFileSize()J

    move-result-wide v6

    invoke-interface {p1, v5, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 92
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    invoke-virtual {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->getKey(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getId()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKey(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)Z
    .locals 1
    .param p1, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getId()Ljava/lang/String;

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
    check-cast p1, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->hasKey(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)Z

    move-result v0

    return v0
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v7, 0x0

    .line 133
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    add-int/lit8 v1, p2, 0x0

    .line 134
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v7

    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 135
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v7

    :goto_1
    add-int/lit8 v3, p2, 0x2

    .line 136
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v7

    :goto_2
    add-int/lit8 v4, p2, 0x3

    .line 137
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-int/lit8 v6, p2, 0x4

    .line 138
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v7

    :goto_3
    add-int/lit8 v8, p2, 0x5

    .line 139
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_4
    add-int/lit8 v8, p2, 0x6

    .line 140
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct/range {v0 .. v9}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V

    .line 142
    .local v0, "entity":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    return-object v0

    .line 134
    .end local v0    # "entity":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    :cond_0
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 135
    :cond_1
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 136
    :cond_2
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 138
    :cond_3
    add-int/lit8 v6, p2, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 139
    :cond_4
    add-int/lit8 v7, p2, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->readEntity(Landroid/database/Cursor;I)Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 147
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setId(Ljava/lang/String;)V

    .line 148
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setName(Ljava/lang/String;)V

    .line 149
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setThumbnailPath(Ljava/lang/String;)V

    .line 150
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setDuration(J)V

    .line 151
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    invoke-virtual {p2, v0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setParentPath(Ljava/lang/String;)V

    .line 152
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p2, v1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setHashValue(Ljava/lang/String;)V

    .line 153
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setFileSize(J)V

    .line 154
    return-void

    .line 147
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 149
    :cond_2
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 151
    :cond_3
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 152
    :cond_4
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    invoke-virtual {p0, p1, p2, p3}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->readEntity(Landroid/database/Cursor;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 128
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 16
    check-cast p1, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    invoke-virtual {p0, p1, p2, p3}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->updateKeyAfterInsert(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final updateKeyAfterInsert(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;J)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    .param p2, "rowId"    # J

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
