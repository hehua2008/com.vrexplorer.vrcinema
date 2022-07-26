.class public Lcom/rockvr/moonplayer/dataservice/model/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final airPlayConfigDao:Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;

.field private final airPlayConfigDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final linkDao:Lcom/rockvr/moonplayer/dataservice/model/LinkDao;

.field private final linkDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final localVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

.field private final localVideoMediaDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 2
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p2, "type"    # Lorg/greenrobot/greendao/identityscope/IdentityScopeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "daoConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;Lorg/greenrobot/greendao/internal/DaoConfig;>;"
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 40
    const-class v0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->airPlayConfigDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 41
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->airPlayConfigDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 43
    const-class v0, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->linkDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 44
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->linkDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 46
    const-class v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->localVideoMediaDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 47
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->localVideoMediaDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 49
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->airPlayConfigDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/rockvr/moonplayer/dataservice/model/DaoSession;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->airPlayConfigDao:Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;

    .line 50
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->linkDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/rockvr/moonplayer/dataservice/model/DaoSession;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->linkDao:Lcom/rockvr/moonplayer/dataservice/model/LinkDao;

    .line 51
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->localVideoMediaDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/rockvr/moonplayer/dataservice/model/DaoSession;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->localVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    .line 53
    const-class v0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->airPlayConfigDao:Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;

    invoke-virtual {p0, v0, v1}, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 54
    const-class v0, Lcom/rockvr/moonplayer/dataservice/model/Link;

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->linkDao:Lcom/rockvr/moonplayer/dataservice/model/LinkDao;

    invoke-virtual {p0, v0, v1}, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 55
    const-class v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->localVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    invoke-virtual {p0, v0, v1}, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 56
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->airPlayConfigDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 60
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->linkDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 61
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->localVideoMediaDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 62
    return-void
.end method

.method public getAirPlayConfigDao()Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->airPlayConfigDao:Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;

    return-object v0
.end method

.method public getLinkDao()Lcom/rockvr/moonplayer/dataservice/model/LinkDao;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->linkDao:Lcom/rockvr/moonplayer/dataservice/model/LinkDao;

    return-object v0
.end method

.method public getLocalVideoMediaDao()Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->localVideoMediaDao:Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    return-object v0
.end method
