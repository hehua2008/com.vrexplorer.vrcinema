.class Lcom/rockvr/moonplayer/dataservice/DaoUtils$MyOpenHelper;
.super Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$OpenHelper;
.source "DaoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/DaoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyOpenHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    packed-switch p2, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 38
    :pswitch_0
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;

    aput-object v2, v1, v3

    const-class v2, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v3, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMediaDao;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->migrate(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    goto :goto_0

    .line 42
    :pswitch_1
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->migrate(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    goto :goto_0

    .line 46
    :pswitch_2
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Lcom/rockvr/moonplayer/dataservice/model/LinkDao;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/rockvr/moonplayer/dataservice/MigrationHelper;->migrateLink(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
