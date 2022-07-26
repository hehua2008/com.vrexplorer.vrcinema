.class public Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$DevOpenHelper;
.super Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$OpenHelper;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevOpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 92
    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .locals 3
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 96
    const-string v0, "greenDAO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading schema from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by dropping all tables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster;->dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/DaoMaster$DevOpenHelper;->onCreate(Lorg/greenrobot/greendao/database/Database;)V

    .line 99
    return-void
.end method
