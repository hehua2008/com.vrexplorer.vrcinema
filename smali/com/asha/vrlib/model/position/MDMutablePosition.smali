.class public Lcom/asha/vrlib/model/position/MDMutablePosition;
.super Lcom/asha/vrlib/model/MDPosition;
.source "MDMutablePosition.java"


# static fields
.field private static final sSharedTmpMatrix:[F


# instance fields
.field private changed:Z

.field private mAngleX:F

.field private mAngleY:F

.field private mAngleZ:F

.field private mModelMatrix:[F

.field private mPitch:F

.field private mRoll:F

.field private mRotationMatrix:[F

.field private mX:F

.field private mY:F

.field private mYaw:F

.field private mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/asha/vrlib/model/position/MDMutablePosition;->sSharedTmpMatrix:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/asha/vrlib/model/MDPosition;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    .line 18
    iput-object v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mRotationMatrix:[F

    .line 33
    iput v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mZ:F

    iput v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mY:F

    iput v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mX:F

    .line 34
    iput v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleZ:F

    iput v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleY:F

    iput v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleX:F

    .line 35
    iput v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mRoll:F

    iput v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mYaw:F

    iput v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mPitch:F

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    .line 37
    return-void
.end method

.method private ensure()V
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    if-nez v0, :cond_0

    .line 166
    new-array v0, v11, [F

    iput-object v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    .line 167
    iget-object v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    if-nez v0, :cond_1

    .line 193
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 176
    iget-object v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    invoke-virtual {p0}, Lcom/asha/vrlib/model/position/MDMutablePosition;->getAngleX()F

    move-result v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 177
    iget-object v5, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    invoke-virtual {p0}, Lcom/asha/vrlib/model/position/MDMutablePosition;->getAngleY()F

    move-result v7

    move v6, v1

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 178
    iget-object v5, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    invoke-virtual {p0}, Lcom/asha/vrlib/model/position/MDMutablePosition;->getAngleZ()F

    move-result v7

    move v6, v1

    move v8, v4

    move v9, v4

    move v10, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 180
    iget-object v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    invoke-virtual {p0}, Lcom/asha/vrlib/model/position/MDMutablePosition;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/asha/vrlib/model/position/MDMutablePosition;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/asha/vrlib/model/position/MDMutablePosition;->getZ()F

    move-result v6

    invoke-static {v0, v1, v2, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 182
    iget-object v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    invoke-virtual {p0}, Lcom/asha/vrlib/model/position/MDMutablePosition;->getYaw()F

    move-result v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 183
    iget-object v5, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    invoke-virtual {p0}, Lcom/asha/vrlib/model/position/MDMutablePosition;->getPitch()F

    move-result v7

    move v6, v1

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 184
    iget-object v5, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    invoke-virtual {p0}, Lcom/asha/vrlib/model/position/MDMutablePosition;->getRoll()F

    move-result v7

    move v6, v1

    move v8, v4

    move v9, v4

    move v10, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 187
    iget-object v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mRotationMatrix:[F

    if-eqz v0, :cond_2

    .line 188
    sget-object v0, Lcom/asha/vrlib/model/position/MDMutablePosition;->sSharedTmpMatrix:[F

    iget-object v2, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mRotationMatrix:[F

    iget-object v4, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 189
    sget-object v0, Lcom/asha/vrlib/model/position/MDMutablePosition;->sSharedTmpMatrix:[F

    iget-object v2, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    invoke-static {v0, v1, v2, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    :cond_2
    iput-boolean v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    goto :goto_0
.end method

.method public static newInstance()Lcom/asha/vrlib/model/position/MDMutablePosition;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/asha/vrlib/model/position/MDMutablePosition;

    invoke-direct {v0}, Lcom/asha/vrlib/model/position/MDMutablePosition;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAngleX()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleX:F

    return v0
.end method

.method public getAngleY()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleY:F

    return v0
.end method

.method public getAngleZ()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleZ:F

    return v0
.end method

.method public getMatrix()[F
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/asha/vrlib/model/position/MDMutablePosition;->ensure()V

    .line 211
    iget-object v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mModelMatrix:[F

    return-object v0
.end method

.method public getPitch()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mPitch:F

    return v0
.end method

.method public getRoll()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mRoll:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mY:F

    return v0
.end method

.method public getYaw()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mYaw:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mZ:F

    return v0
.end method

.method public setAngleX(F)Lcom/asha/vrlib/model/position/MDMutablePosition;
    .locals 2
    .param p1, "angleX"    # F

    .prologue
    .line 109
    iget-boolean v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    .line 110
    iput p1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleX:F

    .line 111
    return-object p0

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAngleY(F)Lcom/asha/vrlib/model/position/MDMutablePosition;
    .locals 2
    .param p1, "angleY"    # F

    .prologue
    .line 124
    iget-boolean v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    .line 125
    iput p1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleY:F

    .line 126
    return-object p0

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAngleZ(F)Lcom/asha/vrlib/model/position/MDMutablePosition;
    .locals 2
    .param p1, "angleZ"    # F

    .prologue
    .line 139
    iget-boolean v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    .line 140
    iput p1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleZ:F

    .line 141
    return-object p0

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPitch(F)Lcom/asha/vrlib/model/position/MDMutablePosition;
    .locals 2
    .param p1, "pitch"    # F

    .prologue
    .line 44
    iget-boolean v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mPitch:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    .line 45
    iput p1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mPitch:F

    .line 46
    return-object p0

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRoll(F)Lcom/asha/vrlib/model/position/MDMutablePosition;
    .locals 2
    .param p1, "roll"    # F

    .prologue
    .line 64
    iget-boolean v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mRoll:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    .line 65
    iput p1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mRoll:F

    .line 66
    return-object p0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRotationMatrix([F)V
    .locals 3
    .param p1, "rotationMatrix"    # [F

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 197
    const-string v0, "rotationMatrix can\'t be null!"

    invoke-static {p1, v0}, Lcom/asha/vrlib/common/VRUtil;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    const-string v0, "setRotationMatrix must called in gl thread!"

    invoke-static {v0}, Lcom/asha/vrlib/common/VRUtil;->checkGLThread(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mRotationMatrix:[F

    if-nez v0, :cond_0

    .line 201
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mRotationMatrix:[F

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mRotationMatrix:[F

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    .line 206
    return-void
.end method

.method public setX(F)Lcom/asha/vrlib/model/position/MDMutablePosition;
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 74
    iget-boolean v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    .line 75
    iput p1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mX:F

    .line 76
    return-object p0

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setY(F)Lcom/asha/vrlib/model/position/MDMutablePosition;
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 84
    iget-boolean v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    .line 85
    iput p1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mY:F

    .line 86
    return-object p0

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setYaw(F)Lcom/asha/vrlib/model/position/MDMutablePosition;
    .locals 2
    .param p1, "yaw"    # F

    .prologue
    .line 54
    iget-boolean v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mYaw:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    .line 55
    iput p1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mYaw:F

    .line 56
    return-object p0

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setZ(F)Lcom/asha/vrlib/model/position/MDMutablePosition;
    .locals 2
    .param p1, "z"    # F

    .prologue
    .line 94
    iget-boolean v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    iget v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->changed:Z

    .line 95
    iput p1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mZ:F

    .line 96
    return-object p0

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDPosition{mX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAngleX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAngleY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAngleZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mAngleZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mPitch:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mYaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mYaw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asha/vrlib/model/position/MDMutablePosition;->mRoll:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
