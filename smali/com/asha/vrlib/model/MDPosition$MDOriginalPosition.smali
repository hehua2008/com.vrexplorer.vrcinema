.class Lcom/asha/vrlib/model/MDPosition$MDOriginalPosition;
.super Lcom/asha/vrlib/model/MDPosition;
.source "MDPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/model/MDPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MDOriginalPosition"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asha/vrlib/model/MDPosition;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/model/MDPosition$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/model/MDPosition$1;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asha/vrlib/model/MDPosition$MDOriginalPosition;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatrix()[F
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/asha/vrlib/common/GLUtil;->identityMatrix()[F

    move-result-object v0

    return-object v0
.end method

.method public setRotationMatrix([F)V
    .locals 2
    .param p1, "rotation"    # [F

    .prologue
    .line 41
    const-string v0, "ContentValues"

    const-string v1, "call setRotationMatrix to MDOriginalPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method
