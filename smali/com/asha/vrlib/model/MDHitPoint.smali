.class public Lcom/asha/vrlib/model/MDHitPoint;
.super Ljava/lang/Object;
.source "MDHitPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/model/MDHitPoint$NotHit;
    }
.end annotation


# static fields
.field private static final sNotHit:F = 3.4028235E38f

.field private static final sPointNotHit:Lcom/asha/vrlib/model/MDHitPoint;


# instance fields
.field private distance:F

.field private u:F

.field private v:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/asha/vrlib/model/MDHitPoint$NotHit;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/asha/vrlib/model/MDHitPoint$NotHit;-><init>(Lcom/asha/vrlib/model/MDHitPoint$1;)V

    sput-object v0, Lcom/asha/vrlib/model/MDHitPoint;->sPointNotHit:Lcom/asha/vrlib/model/MDHitPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDHitPoint;->asNotHit()V

    .line 22
    return-void
.end method

.method public static min(Lcom/asha/vrlib/model/MDHitPoint;Lcom/asha/vrlib/model/MDHitPoint;)Lcom/asha/vrlib/model/MDHitPoint;
    .locals 2
    .param p0, "a"    # Lcom/asha/vrlib/model/MDHitPoint;
    .param p1, "b"    # Lcom/asha/vrlib/model/MDHitPoint;

    .prologue
    .line 51
    iget v0, p0, Lcom/asha/vrlib/model/MDHitPoint;->distance:F

    iget v1, p1, Lcom/asha/vrlib/model/MDHitPoint;->distance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .end local p0    # "a":Lcom/asha/vrlib/model/MDHitPoint;
    :goto_0
    return-object p0

    .restart local p0    # "a":Lcom/asha/vrlib/model/MDHitPoint;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public static notHit()Lcom/asha/vrlib/model/MDHitPoint;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/asha/vrlib/model/MDHitPoint;->sPointNotHit:Lcom/asha/vrlib/model/MDHitPoint;

    return-object v0
.end method


# virtual methods
.method public asNotHit()V
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/asha/vrlib/model/MDHitPoint;->distance:F

    .line 26
    return-void
.end method

.method public getU()F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/asha/vrlib/model/MDHitPoint;->u:F

    return v0
.end method

.method public getV()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/asha/vrlib/model/MDHitPoint;->v:F

    return v0
.end method

.method public isNotHit()Z
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lcom/asha/vrlib/model/MDHitPoint;->distance:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nearThen(Lcom/asha/vrlib/model/MDHitPoint;)Z
    .locals 2
    .param p1, "other"    # Lcom/asha/vrlib/model/MDHitPoint;

    .prologue
    .line 33
    iget v0, p0, Lcom/asha/vrlib/model/MDHitPoint;->distance:F

    iget v1, p1, Lcom/asha/vrlib/model/MDHitPoint;->distance:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(FFF)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "u"    # F
    .param p3, "v"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/asha/vrlib/model/MDHitPoint;->distance:F

    .line 46
    iput p2, p0, Lcom/asha/vrlib/model/MDHitPoint;->u:F

    .line 47
    iput p3, p0, Lcom/asha/vrlib/model/MDHitPoint;->v:F

    .line 48
    return-void
.end method
