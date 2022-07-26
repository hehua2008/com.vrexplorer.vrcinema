.class Lcom/asha/vrlib/model/MDHitPoint$NotHit;
.super Lcom/asha/vrlib/model/MDHitPoint;
.source "MDHitPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/model/MDHitPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotHit"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/asha/vrlib/model/MDHitPoint;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/model/MDHitPoint$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/model/MDHitPoint$1;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/asha/vrlib/model/MDHitPoint$NotHit;-><init>()V

    return-void
.end method


# virtual methods
.method public set(FFF)V
    .locals 2
    .param p1, "t"    # F
    .param p2, "u"    # F
    .param p3, "v"    # F

    .prologue
    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NotHit can\'t be set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
