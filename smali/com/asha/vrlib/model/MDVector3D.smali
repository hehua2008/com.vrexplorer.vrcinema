.class public Lcom/asha/vrlib/model/MDVector3D;
.super Ljava/lang/Object;
.source "MDVector3D.java"


# instance fields
.field private values:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/asha/vrlib/model/MDVector3D;->values:[F

    .line 15
    iget-object v0, p0, Lcom/asha/vrlib/model/MDVector3D;->values:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 16
    return-void
.end method

.method public static len(FFF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    .line 72
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public getX()F
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/asha/vrlib/model/MDVector3D;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/asha/vrlib/model/MDVector3D;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getZ()F
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asha/vrlib/model/MDVector3D;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public multiplyMV([F)V
    .locals 6
    .param p1, "mat"    # [F

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/asha/vrlib/model/MDVector3D;->values:[F

    iget-object v4, p0, Lcom/asha/vrlib/model/MDVector3D;->values:[F

    move-object v2, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 59
    return-void
.end method

.method public setX(F)Lcom/asha/vrlib/model/MDVector3D;
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 19
    iget-object v0, p0, Lcom/asha/vrlib/model/MDVector3D;->values:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 20
    return-object p0
.end method

.method public setY(F)Lcom/asha/vrlib/model/MDVector3D;
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 24
    iget-object v0, p0, Lcom/asha/vrlib/model/MDVector3D;->values:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 25
    return-object p0
.end method

.method public setZ(F)Lcom/asha/vrlib/model/MDVector3D;
    .locals 2
    .param p1, "z"    # F

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asha/vrlib/model/MDVector3D;->values:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 30
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDVector3D{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/asha/vrlib/model/MDVector3D;->getZ()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public x()F
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/asha/vrlib/model/MDVector3D;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public y()F
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/asha/vrlib/model/MDVector3D;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public z()F
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/asha/vrlib/model/MDVector3D;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method
