.class Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalDirector;
.super Lcom/asha/vrlib/MD360Director;
.source "MD360DirectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MD360DirectorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrthogonalDirector"
.end annotation


# direct methods
.method private constructor <init>(Lcom/asha/vrlib/MD360Director$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/asha/vrlib/MD360Director$Builder;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MD360Director;-><init>(Lcom/asha/vrlib/MD360Director$Builder;)V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/MD360Director$Builder;Lcom/asha/vrlib/MD360DirectorFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/MD360Director$Builder;
    .param p2, "x1"    # Lcom/asha/vrlib/MD360DirectorFactory$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalDirector;-><init>(Lcom/asha/vrlib/MD360Director$Builder;)V

    return-void
.end method


# virtual methods
.method public setDeltaX(F)V
    .locals 0
    .param p1, "mDeltaX"    # F

    .prologue
    .line 42
    return-void
.end method

.method public setDeltaY(F)V
    .locals 0
    .param p1, "mDeltaY"    # F

    .prologue
    .line 47
    return-void
.end method

.method protected updateProjection()V
    .locals 13

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 56
    const/high16 v10, -0x40800000    # -1.0f

    .line 57
    .local v10, "left":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 58
    .local v11, "right":F
    const/high16 v8, -0x40800000    # -1.0f

    .line 59
    .local v8, "bottom":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 60
    .local v12, "top":F
    const/high16 v9, 0x43fa0000    # 500.0f

    .line 61
    .local v9, "far":F
    invoke-virtual {p0}, Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalDirector;->getProjectionMatrix()[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalDirector;->getNear()F

    move-result v6

    const/high16 v7, 0x43fa0000    # 500.0f

    move v4, v2

    move v5, v3

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 62
    return-void
.end method

.method public updateSensorMatrix([F)V
    .locals 0
    .param p1, "sensorMatrix"    # [F

    .prologue
    .line 52
    return-void
.end method
