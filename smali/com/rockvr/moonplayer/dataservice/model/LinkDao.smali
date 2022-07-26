.class public Lcom/rockvr/moonplayer/dataservice/model/LinkDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "LinkDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer/dataservice/model/LinkDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao",
        "<",
        "Lcom/rockvr/moonplayer/dataservice/model/Link;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "LINK"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/rockvr/moonplayer/dataservice/model/DaoSession;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/rockvr/moonplayer/dataservice/model/DaoSession;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 38
    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 3
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 42
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 43
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"LINK\" ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"UUID\" TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"TITLE\" TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"URL\" TEXT UNIQUE ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ICON\" TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 48
    return-void

    .line 42
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
    .line 52
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

    const-string v2, "\"LINK\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "sql":Ljava/lang/String;
    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 54
    return-void

    .line 52
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/rockvr/moonplayer/dataservice/model/Link;)V
    .locals 5
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/Link;

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 85
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/Link;->getUuid()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "uuid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 87
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 90
    :cond_0
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/Link;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "title":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 92
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 95
    :cond_1
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/Link;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 97
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 100
    :cond_2
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/Link;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "icon":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 102
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 104
    :cond_3
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Lcom/rockvr/moonplayer/dataservice/model/Link;

    invoke-virtual {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/rockvr/moonplayer/dataservice/model/Link;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/rockvr/moonplayer/dataservice/model/Link;)V
    .locals 5
    .param p1, "stmt"    # Lorg/greenrobot/greendao/database/DatabaseStatement;
    .param p2, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/Link;

    .prologue
    .line 58
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 60
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/Link;->getUuid()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "uuid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 62
    const/4 v4, 0x1

    invoke-interface {p1, v4, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/Link;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "title":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 67
    const/4 v4, 0x2

    invoke-interface {p1, v4, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 70
    :cond_1
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/Link;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 72
    const/4 v4, 0x3

    invoke-interface {p1, v4, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 75
    :cond_2
    invoke-virtual {p2}, Lcom/rockvr/moonplayer/dataservice/model/Link;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "icon":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 77
    const/4 v4, 0x4

    invoke-interface {p1, v4, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 79
    :cond_3
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Lcom/rockvr/moonplayer/dataservice/model/Link;

    invoke-virtual {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/rockvr/moonplayer/dataservice/model/Link;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/rockvr/moonplayer/dataservice/model/Link;

    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;->getKey(Lcom/rockvr/moonplayer/dataservice/model/Link;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Lcom/rockvr/moonplayer/dataservice/model/Link;)Ljava/lang/Void;
    .locals 1
    .param p1, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/Link;

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasKey(Lcom/rockvr/moonplayer/dataservice/model/Link;)Z
    .locals 1
    .param p1, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/Link;

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/rockvr/moonplayer/dataservice/model/Link;

    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;->hasKey(Lcom/rockvr/moonplayer/dataservice/model/Link;)Z

    move-result v0

    return v0
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/rockvr/moonplayer/dataservice/model/Link;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 113
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/Link;

    add-int/lit8 v1, p2, 0x0

    .line 114
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 115
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    :goto_1
    add-int/lit8 v4, p2, 0x2

    .line 116
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    :goto_2
    add-int/lit8 v5, p2, 0x3

    .line 117
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_3
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/rockvr/moonplayer/dataservice/model/Link;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v0, "entity":Lcom/rockvr/moonplayer/dataservice/model/Link;
    return-object v0

    .line 114
    .end local v0    # "entity":Lcom/rockvr/moonplayer/dataservice/model/Link;
    :cond_0
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_1
    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 116
    :cond_2
    add-int/lit8 v4, p2, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 117
    :cond_3
    add-int/lit8 v2, p2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;->readEntity(Landroid/database/Cursor;I)Lcom/rockvr/moonplayer/dataservice/model/Link;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/rockvr/moonplayer/dataservice/model/Link;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/Link;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 124
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/rockvr/moonplayer/dataservice/model/Link;->setUuid(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/rockvr/moonplayer/dataservice/model/Link;->setTitle(Ljava/lang/String;)V

    .line 126
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Lcom/rockvr/moonplayer/dataservice/model/Link;->setUrl(Ljava/lang/String;)V

    .line 127
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p2, v1}, Lcom/rockvr/moonplayer/dataservice/model/Link;->setIcon(Ljava/lang/String;)V

    .line 128
    return-void

    .line 124
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 126
    :cond_2
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 127
    :cond_3
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Lcom/rockvr/moonplayer/dataservice/model/Link;

    invoke-virtual {p0, p1, p2, p3}, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;->readEntity(Landroid/database/Cursor;Lcom/rockvr/moonplayer/dataservice/model/Link;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Void;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 16
    check-cast p1, Lcom/rockvr/moonplayer/dataservice/model/Link;

    invoke-virtual {p0, p1, p2, p3}, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;->updateKeyAfterInsert(Lcom/rockvr/moonplayer/dataservice/model/Link;J)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final updateKeyAfterInsert(Lcom/rockvr/moonplayer/dataservice/model/Link;J)Ljava/lang/Void;
    .locals 1
    .param p1, "entity"    # Lcom/rockvr/moonplayer/dataservice/model/Link;
    .param p2, "rowId"    # J

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method
