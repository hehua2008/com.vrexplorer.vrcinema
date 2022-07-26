.class public Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$DevOpenHelper;,
        Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x8


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 47
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;

    .prologue
    .line 51
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    .line 52
    const-class v0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 54
    const-class v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 55
    return-void
.end method

.method public static createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 25
    invoke-static {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 26
    invoke-static {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 27
    return-void
.end method

.method public static dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifExists"    # Z

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 32
    invoke-static {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 33
    invoke-static {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 34
    return-void
.end method

.method public static newDevSession(Landroid/content/Context;Ljava/lang/String;)Lcom/rockvr/moonplayer/dataservice/model/DaoSession;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v2, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$DevOpenHelper;

    invoke-direct {v2, p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$DevOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    .line 42
    .local v1, "db":Lorg/greenrobot/greendao/database/Database;
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;

    invoke-direct {v0, v1}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 43
    .local v0, "daoMaster":Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;
    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;->newSession()Lcom/rockvr/moonplayer/dataservice/model/DaoSession;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public newSession()Lcom/rockvr/moonplayer/dataservice/model/DaoSession;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/rockvr/moonplayer/dataservice/model/DaoSession;
    .locals 3
    .param p1, "type"    # Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    .prologue
    .line 62
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;->newSession()Lcom/rockvr/moonplayer/dataservice/model/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/rockvr/moonplayer/dataservice/model/DaoSession;

    move-result-object v0

    return-object v0
.end method
