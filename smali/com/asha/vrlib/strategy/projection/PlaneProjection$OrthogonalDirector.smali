.class Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;
.super Lcom/asha/vrlib/MD360Director;
.source "PlaneProjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/strategy/projection/PlaneProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrthogonalDirector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/strategy/projection/PlaneProjection;


# direct methods
.method private constructor <init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection;Lcom/asha/vrlib/MD360Director$Builder;)V
    .locals 0
    .param p2, "builder"    # Lcom/asha/vrlib/MD360Director$Builder;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;->this$0:Lcom/asha/vrlib/strategy/projection/PlaneProjection;

    .line 219
    invoke-direct {p0, p2}, Lcom/asha/vrlib/MD360Director;-><init>(Lcom/asha/vrlib/MD360Director$Builder;)V

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection;Lcom/asha/vrlib/MD360Director$Builder;Lcom/asha/vrlib/strategy/projection/PlaneProjection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/strategy/projection/PlaneProjection;
    .param p2, "x1"    # Lcom/asha/vrlib/MD360Director$Builder;
    .param p3, "x2"    # Lcom/asha/vrlib/strategy/projection/PlaneProjection$1;

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;-><init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection;Lcom/asha/vrlib/MD360Director$Builder;)V

    return-void
.end method


# virtual methods
.method public setDeltaX(F)V
    .locals 0
    .param p1, "mDeltaX"    # F

    .prologue
    .line 225
    return-void
.end method

.method public setDeltaY(F)V
    .locals 0
    .param p1, "mDeltaY"    # F

    .prologue
    .line 230
    return-void
.end method

.method protected updateProjection()V
    .locals 9

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 239
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;->this$0:Lcom/asha/vrlib/strategy/projection/PlaneProjection;

    invoke-static {v0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->access$200(Lcom/asha/vrlib/strategy/projection/PlaneProjection;)Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;->getRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->setViewportRatio(F)V

    .line 240
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;->this$0:Lcom/asha/vrlib/strategy/projection/PlaneProjection;

    invoke-static {v0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->access$200(Lcom/asha/vrlib/strategy/projection/PlaneProjection;)Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->calculate()V

    .line 241
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;->this$0:Lcom/asha/vrlib/strategy/projection/PlaneProjection;

    invoke-static {v0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->access$200(Lcom/asha/vrlib/strategy/projection/PlaneProjection;)Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->getViewportWidth()F

    move-result v0

    neg-float v0, v0

    div-float v2, v0, v6

    .line 242
    .local v2, "left":F
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;->this$0:Lcom/asha/vrlib/strategy/projection/PlaneProjection;

    invoke-static {v0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->access$200(Lcom/asha/vrlib/strategy/projection/PlaneProjection;)Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->getViewportWidth()F

    move-result v0

    div-float v3, v0, v6

    .line 243
    .local v3, "right":F
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;->this$0:Lcom/asha/vrlib/strategy/projection/PlaneProjection;

    invoke-static {v0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->access$200(Lcom/asha/vrlib/strategy/projection/PlaneProjection;)Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->getViewportHeight()F

    move-result v0

    neg-float v0, v0

    div-float v4, v0, v6

    .line 244
    .local v4, "bottom":F
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;->this$0:Lcom/asha/vrlib/strategy/projection/PlaneProjection;

    invoke-static {v0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->access$200(Lcom/asha/vrlib/strategy/projection/PlaneProjection;)Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->getViewportHeight()F

    move-result v0

    div-float v5, v0, v6

    .line 245
    .local v5, "top":F
    const/high16 v8, 0x43fa0000    # 500.0f

    .line 246
    .local v8, "far":F
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;->getProjectionMatrix()[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;->getNear()F

    move-result v6

    const/high16 v7, 0x43fa0000    # 500.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 247
    return-void
.end method

.method public updateSensorMatrix([F)V
    .locals 0
    .param p1, "sensorMatrix"    # [F

    .prologue
    .line 235
    return-void
.end method
