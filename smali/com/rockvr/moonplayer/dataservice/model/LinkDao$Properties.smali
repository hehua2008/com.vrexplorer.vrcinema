.class public Lcom/rockvr/moonplayer/dataservice/model/LinkDao$Properties;
.super Ljava/lang/Object;
.source "LinkDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/model/LinkDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Icon:Lorg/greenrobot/greendao/Property;

.field public static final Title:Lorg/greenrobot/greendao/Property;

.field public static final Url:Lorg/greenrobot/greendao/Property;

.field public static final Uuid:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 25
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/String;

    const-string v3, "uuid"

    const-string v5, "UUID"

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/LinkDao$Properties;->Uuid:Lorg/greenrobot/greendao/Property;

    .line 26
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    const-string v5, "title"

    const-string v7, "TITLE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/rockvr/moonplayer/dataservice/model/LinkDao$Properties;->Title:Lorg/greenrobot/greendao/Property;

    .line 27
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "url"

    const-string v7, "URL"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/rockvr/moonplayer/dataservice/model/LinkDao$Properties;->Url:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "icon"

    const-string v7, "ICON"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/rockvr/moonplayer/dataservice/model/LinkDao$Properties;->Icon:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
