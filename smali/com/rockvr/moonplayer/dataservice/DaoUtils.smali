.class public Lcom/rockvr/moonplayer/dataservice/DaoUtils;
.super Ljava/lang/Object;
.source "DaoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer/dataservice/DaoUtils$MyOpenHelper;
    }
.end annotation


# static fields
.field private static Instance:Lcom/rockvr/moonplayer/dataservice/DaoUtils;


# instance fields
.field private final mDaoSession:Lcom/rockvr/moonplayer/dataservice/model/DaoSession;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Lcom/rockvr/moonplayer/dataservice/DaoUtils$MyOpenHelper;

    const-string v2, "dataservice-db"

    invoke-direct {v1, p1, v2}, Lcom/rockvr/moonplayer/dataservice/DaoUtils$MyOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .local v1, "openHelper":Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$OpenHelper;
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;

    invoke-virtual {v1}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    .local v0, "daoMaster":Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;
    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;->newSession()Lcom/rockvr/moonplayer/dataservice/model/DaoSession;

    move-result-object v2

    iput-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DaoUtils;->mDaoSession:Lcom/rockvr/moonplayer/dataservice/model/DaoSession;

    .line 58
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/DaoUtils;->Instance:Lcom/rockvr/moonplayer/dataservice/DaoUtils;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/DaoUtils;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer/dataservice/DaoUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/DaoUtils;->Instance:Lcom/rockvr/moonplayer/dataservice/DaoUtils;

    .line 64
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/rockvr/moonplayer/dataservice/DaoUtils;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/DaoUtils;->Instance:Lcom/rockvr/moonplayer/dataservice/DaoUtils;

    return-object v0
.end method


# virtual methods
.method public getAirPlayConfigDao()Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DaoUtils;->mDaoSession:Lcom/rockvr/moonplayer/dataservice/model/DaoSession;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->getAirPlayConfigDao()Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;

    move-result-object v0

    return-object v0
.end method

.method public getLinkDao()Lcom/rockvr/moonplayer/dataservice/model/LinkDao;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DaoUtils;->mDaoSession:Lcom/rockvr/moonplayer/dataservice/model/DaoSession;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->getLinkDao()Lcom/rockvr/moonplayer/dataservice/model/LinkDao;

    move-result-object v0

    return-object v0
.end method

.method public getLocalVideoDao()Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DaoUtils;->mDaoSession:Lcom/rockvr/moonplayer/dataservice/model/DaoSession;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/DaoSession;->getLocalVideoMediaDao()Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    move-result-object v0

    return-object v0
.end method
