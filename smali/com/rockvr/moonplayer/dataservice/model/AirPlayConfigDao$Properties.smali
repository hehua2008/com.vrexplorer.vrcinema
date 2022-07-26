.class public Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao$Properties;
.super Ljava/lang/Object;
.source "AirPlayConfigDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Address:Lorg/greenrobot/greendao/Property;

.field public static final ListEndpoint:Lorg/greenrobot/greendao/Property;

.field public static final ServerName:Lorg/greenrobot/greendao/Property;

.field public static final ServerUuid:Lorg/greenrobot/greendao/Property;

.field public static final Version:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 25
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "version"

    const-string v5, "VERSION"

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao$Properties;->Version:Lorg/greenrobot/greendao/Property;

    .line 26
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const-class v4, Ljava/lang/String;

    const-string v5, "serverName"

    const-string v7, "SERVER_NAME"

    move v3, v8

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao$Properties;->ServerName:Lorg/greenrobot/greendao/Property;

    .line 27
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "serverUuid"

    const-string v7, "SERVER_UUID"

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao$Properties;->ServerUuid:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "address"

    const-string v7, "ADDRESS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao$Properties;->Address:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string v5, "listEndpoint"

    const-string v7, "LIST_ENDPOINT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfigDao$Properties;->ListEndpoint:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
