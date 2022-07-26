.class public Lcom/asha/vrlib/MD360Director;
.super Ljava/lang/Object;
.source "MD360Director.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/MD360Director$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MD360Director"

.field private static final sNear:F = 0.7f


# instance fields
.field private final mCamera:Lcom/asha/vrlib/MDDirectorCamera;

.field private mCameraMatrix:[F

.field private final mCameraRotation:Lcom/asha/vrlib/model/position/MDMutablePosition;

.field private final mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

.field private mCurrentRotationPost:[F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDirectorFilter:Lcom/asha/vrlib/MDDirectorFilter;

.field private mMVMatrix:[F

.field private mMVPMatrix:[F

.field private mProjectionMatrix:[F

.field private mSensorMatrix:[F

.field private mTempMatrix:[F

.field private mViewMatrix:[F

.field private final mViewQuaternion:Lcom/asha/vrlib/model/MDQuaternion;

.field private mWorldRotationInvertMatrix:[F

.field private mWorldRotationMatrix:[F

.field private mWorldRotationMatrixInvalidate:Z


# direct methods
.method protected constructor <init>(Lcom/asha/vrlib/MD360Director$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/asha/vrlib/MD360Director$Builder;

    .prologue
    const/16 v1, 0x10

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director;->mViewMatrix:[F

    .line 23
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director;->mProjectionMatrix:[F

    .line 25
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director;->mMVMatrix:[F

    .line 26
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director;->mMVPMatrix:[F

    .line 28
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationMatrix:[F

    .line 29
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationInvertMatrix:[F

    .line 30
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCurrentRotationPost:[F

    .line 31
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director;->mSensorMatrix:[F

    .line 32
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director;->mTempMatrix:[F

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCameraMatrix:[F

    .line 36
    new-instance v0, Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-direct {v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 37
    invoke-static {}, Lcom/asha/vrlib/model/position/MDMutablePosition;->newInstance()Lcom/asha/vrlib/model/position/MDMutablePosition;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCameraRotation:Lcom/asha/vrlib/model/position/MDMutablePosition;

    .line 38
    new-instance v0, Lcom/asha/vrlib/model/MDQuaternion;

    invoke-direct {v0}, Lcom/asha/vrlib/model/MDQuaternion;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director;->mViewQuaternion:Lcom/asha/vrlib/model/MDQuaternion;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationMatrixInvalidate:Z

    .line 47
    invoke-static {p1}, Lcom/asha/vrlib/MD360Director$Builder;->access$000(Lcom/asha/vrlib/MD360Director$Builder;)Lcom/asha/vrlib/MDDirectorCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    .line 48
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director;->initModel()V

    .line 49
    return-void
.end method

.method public static builder()Lcom/asha/vrlib/MD360Director$Builder;
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/asha/vrlib/MD360Director$Builder;

    invoke-direct {v0}, Lcom/asha/vrlib/MD360Director$Builder;-><init>()V

    return-object v0
.end method

.method private filterViewMatrix()V
    .locals 8

    .prologue
    .line 126
    iget-object v6, p0, Lcom/asha/vrlib/MD360Director;->mDirectorFilter:Lcom/asha/vrlib/MDDirectorFilter;

    if-nez v6, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v6, p0, Lcom/asha/vrlib/MD360Director;->mViewQuaternion:Lcom/asha/vrlib/model/MDQuaternion;

    iget-object v7, p0, Lcom/asha/vrlib/MD360Director;->mViewMatrix:[F

    invoke-virtual {v6, v7}, Lcom/asha/vrlib/model/MDQuaternion;->fromMatrix([F)V

    .line 131
    iget-object v6, p0, Lcom/asha/vrlib/MD360Director;->mViewQuaternion:Lcom/asha/vrlib/model/MDQuaternion;

    invoke-virtual {v6}, Lcom/asha/vrlib/model/MDQuaternion;->getPitch()F

    move-result v3

    .line 132
    .local v3, "pitch":F
    iget-object v6, p0, Lcom/asha/vrlib/MD360Director;->mViewQuaternion:Lcom/asha/vrlib/model/MDQuaternion;

    invoke-virtual {v6}, Lcom/asha/vrlib/model/MDQuaternion;->getYaw()F

    move-result v5

    .line 133
    .local v5, "yaw":F
    iget-object v6, p0, Lcom/asha/vrlib/MD360Director;->mViewQuaternion:Lcom/asha/vrlib/model/MDQuaternion;

    invoke-virtual {v6}, Lcom/asha/vrlib/model/MDQuaternion;->getRoll()F

    move-result v4

    .line 135
    .local v4, "roll":F
    iget-object v6, p0, Lcom/asha/vrlib/MD360Director;->mDirectorFilter:Lcom/asha/vrlib/MDDirectorFilter;

    invoke-virtual {v6, v3}, Lcom/asha/vrlib/MDDirectorFilter;->onFilterPitch(F)F

    move-result v0

    .line 136
    .local v0, "filterPitch":F
    iget-object v6, p0, Lcom/asha/vrlib/MD360Director;->mDirectorFilter:Lcom/asha/vrlib/MDDirectorFilter;

    invoke-virtual {v6, v5}, Lcom/asha/vrlib/MDDirectorFilter;->onFilterYaw(F)F

    move-result v2

    .line 137
    .local v2, "filterYaw":F
    iget-object v6, p0, Lcom/asha/vrlib/MD360Director;->mDirectorFilter:Lcom/asha/vrlib/MDDirectorFilter;

    invoke-virtual {v6, v4}, Lcom/asha/vrlib/MDDirectorFilter;->onFilterRoll(F)F

    move-result v1

    .line 139
    .local v1, "filterRoll":F
    cmpl-float v6, v3, v0

    if-nez v6, :cond_2

    cmpl-float v6, v5, v2

    if-nez v6, :cond_2

    cmpl-float v6, v4, v1

    if-eqz v6, :cond_0

    .line 140
    :cond_2
    iget-object v6, p0, Lcom/asha/vrlib/MD360Director;->mViewQuaternion:Lcom/asha/vrlib/model/MDQuaternion;

    invoke-virtual {v6, v0, v2, v1}, Lcom/asha/vrlib/model/MDQuaternion;->setEulerAngles(FFF)V

    .line 141
    iget-object v6, p0, Lcom/asha/vrlib/MD360Director;->mViewQuaternion:Lcom/asha/vrlib/model/MDQuaternion;

    iget-object v7, p0, Lcom/asha/vrlib/MD360Director;->mViewMatrix:[F

    invoke-virtual {v6, v7}, Lcom/asha/vrlib/model/MDQuaternion;->toMatrix([F)V

    goto :goto_0
.end method

.method private initModel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mViewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 71
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mSensorMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 72
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mViewQuaternion:Lcom/asha/vrlib/model/MDQuaternion;

    iget-object v1, p0, Lcom/asha/vrlib/MD360Director;->mViewMatrix:[F

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/model/MDQuaternion;->fromMatrix([F)V

    .line 73
    return-void
.end method

.method private updateCameraMatrix()V
    .locals 15

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 200
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getEyeX()F

    move-result v0

    iget-object v7, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v7}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getEyeX()F

    move-result v7

    add-float v2, v0, v7

    .line 201
    .local v2, "eyeX":F
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getEyeY()F

    move-result v0

    iget-object v7, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v7}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getEyeY()F

    move-result v7

    add-float v3, v0, v7

    .line 202
    .local v3, "eyeY":F
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getEyeZ()F

    move-result v0

    iget-object v7, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v7}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getEyeZ()F

    move-result v7

    add-float v4, v0, v7

    .line 203
    .local v4, "eyeZ":F
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getLookX()F

    move-result v0

    iget-object v7, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v7}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getLookX()F

    move-result v7

    add-float v5, v0, v7

    .line 204
    .local v5, "lookX":F
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getLookY()F

    move-result v0

    iget-object v7, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v7}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getLookY()F

    move-result v7

    add-float v6, v0, v7

    .line 205
    .local v6, "lookY":F
    const/high16 v11, -0x40800000    # -1.0f

    .line 206
    .local v11, "lookZ":F
    const/4 v12, 0x0

    .line 207
    .local v12, "upX":F
    const/high16 v13, 0x3f800000    # 1.0f

    .line 208
    .local v13, "upY":F
    const/4 v14, 0x0

    .line 209
    .local v14, "upZ":F
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCameraMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 210
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCameraMatrix:[F

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v10, v8

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 211
    return-void
.end method

.method private updateProjectionIfNeed()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->isProjectionValidate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->isProjectionValidate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/asha/vrlib/MD360Director;->updateProjection()V

    .line 157
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->consumeProjectionValidate()V

    .line 158
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->consumeProjectionValidate()V

    .line 160
    :cond_1
    return-void
.end method

.method private updateViewMatrixIfNeed()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v2}, Lcom/asha/vrlib/MDDirectorCamera;->isPositionValidate()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v2}, Lcom/asha/vrlib/MDDirectorCamUpdate;->isPositionValidate()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    move v6, v0

    .line 99
    .local v6, "camera":Z
    :goto_0
    iget-boolean v2, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationMatrixInvalidate:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v2}, Lcom/asha/vrlib/MDDirectorCamera;->isRotationValidate()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v2}, Lcom/asha/vrlib/MDDirectorCamUpdate;->isRotationValidate()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    move v7, v0

    .line 101
    .local v7, "world":Z
    :goto_1
    if-eqz v6, :cond_2

    .line 102
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director;->updateCameraMatrix()V

    .line 103
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->consumePositionValidate()V

    .line 104
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->consumePositionValidate()V

    .line 107
    :cond_2
    if-eqz v7, :cond_3

    .line 108
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCameraRotation:Lcom/asha/vrlib/model/position/MDMutablePosition;

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v2}, Lcom/asha/vrlib/MDDirectorCamera;->getPitch()F

    move-result v2

    iget-object v3, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v3}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getPitch()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/asha/vrlib/model/position/MDMutablePosition;->setPitch(F)Lcom/asha/vrlib/model/position/MDMutablePosition;

    .line 109
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCameraRotation:Lcom/asha/vrlib/model/position/MDMutablePosition;

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v2}, Lcom/asha/vrlib/MDDirectorCamera;->getRoll()F

    move-result v2

    iget-object v3, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v3}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getRoll()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/asha/vrlib/model/position/MDMutablePosition;->setRoll(F)Lcom/asha/vrlib/model/position/MDMutablePosition;

    .line 110
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCameraRotation:Lcom/asha/vrlib/model/position/MDMutablePosition;

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v2}, Lcom/asha/vrlib/MDDirectorCamera;->getYaw()F

    move-result v2

    iget-object v3, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v3}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getYaw()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/asha/vrlib/model/position/MDMutablePosition;->setYaw(F)Lcom/asha/vrlib/model/position/MDMutablePosition;

    .line 113
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director;->updateWorldRotationMatrix()V

    .line 114
    iput-boolean v1, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationMatrixInvalidate:Z

    .line 115
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->consumeRotationValidate()V

    .line 116
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->consumeRotationValidate()V

    .line 119
    :cond_3
    if-nez v6, :cond_4

    if-eqz v7, :cond_5

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mViewMatrix:[F

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mCameraMatrix:[F

    iget-object v4, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 121
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director;->filterViewMatrix()V

    .line 123
    :cond_5
    return-void

    .end local v6    # "camera":Z
    .end local v7    # "world":Z
    :cond_6
    move v6, v1

    .line 98
    goto :goto_0

    .restart local v6    # "camera":Z
    :cond_7
    move v7, v1

    .line 99
    goto :goto_1
.end method

.method private updateWorldRotationMatrix()V
    .locals 12

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 215
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationMatrix:[F

    iget v2, p0, Lcom/asha/vrlib/MD360Director;->mDeltaY:F

    neg-float v2, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 216
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCurrentRotationPost:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 217
    iget-object v5, p0, Lcom/asha/vrlib/MD360Director;->mCurrentRotationPost:[F

    iget v0, p0, Lcom/asha/vrlib/MD360Director;->mDeltaX:F

    neg-float v7, v0

    move v6, v1

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 219
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mTempMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 220
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mTempMatrix:[F

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mCurrentRotationPost:[F

    iget-object v3, p0, Lcom/asha/vrlib/MD360Director;->mCameraRotation:Lcom/asha/vrlib/model/position/MDMutablePosition;

    invoke-virtual {v3}, Lcom/asha/vrlib/model/position/MDMutablePosition;->getMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 222
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCurrentRotationPost:[F

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mSensorMatrix:[F

    iget-object v4, p0, Lcom/asha/vrlib/MD360Director;->mTempMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 223
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mTempMatrix:[F

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationMatrix:[F

    iget-object v4, p0, Lcom/asha/vrlib/MD360Director;->mCurrentRotationPost:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 224
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mTempMatrix:[F

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationMatrix:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationInvertMatrix:[F

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationMatrix:[F

    invoke-static {v0, v2}, Lcom/asha/vrlib/common/VRUtil;->invertM([F[F)Z

    move-result v11

    .line 227
    .local v11, "success":Z
    if-nez v11, :cond_0

    .line 228
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationInvertMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 231
    :cond_0
    return-void
.end method


# virtual methods
.method public applyFilter(Lcom/asha/vrlib/MDDirectorFilter;)V
    .locals 0
    .param p1, "directorFilter"    # Lcom/asha/vrlib/MDDirectorFilter;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/asha/vrlib/MD360Director;->mDirectorFilter:Lcom/asha/vrlib/MDDirectorFilter;

    .line 260
    return-void
.end method

.method public applyUpdate(Lcom/asha/vrlib/MDDirectorCamUpdate;)V
    .locals 1
    .param p1, "cameraUpdate"    # Lcom/asha/vrlib/MDDirectorCamUpdate;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamUpdate;->copy(Lcom/asha/vrlib/MDDirectorCamUpdate;)V

    .line 256
    return-void
.end method

.method public beforeShot()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director;->updateProjectionIfNeed()V

    .line 77
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director;->updateViewMatrixIfNeed()V

    .line 78
    return-void
.end method

.method public getDeltaX()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/asha/vrlib/MD360Director;->mDeltaX:F

    return v0
.end method

.method public getDeltaY()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/asha/vrlib/MD360Director;->mDeltaY:F

    return v0
.end method

.method protected getNear()F
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getNearScale()F

    move-result v0

    iget-object v1, p0, Lcom/asha/vrlib/MD360Director;->mCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v1}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getNearScale()F

    move-result v1

    add-float/2addr v0, v1

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getProjectionMatrix()[F
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mProjectionMatrix:[F

    return-object v0
.end method

.method protected getRatio()F
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getRatio()F

    move-result v0

    return v0
.end method

.method public getViewMatrix()[F
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mViewMatrix:[F

    return-object v0
.end method

.method public getViewQuaternion()Lcom/asha/vrlib/model/MDQuaternion;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mViewQuaternion:Lcom/asha/vrlib/model/MDQuaternion;

    return-object v0
.end method

.method public getViewportHeight()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getViewportHeight()I

    move-result v0

    return v0
.end method

.method public getViewportWidth()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getViewportWidth()I

    move-result v0

    return v0
.end method

.method public getWorldRotationInvert()[F
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationInvertMatrix:[F

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lcom/asha/vrlib/MD360Director;->mDeltaY:F

    iput v0, p0, Lcom/asha/vrlib/MD360Director;->mDeltaX:F

    .line 242
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mSensorMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationMatrixInvalidate:Z

    .line 244
    return-void
.end method

.method public setDeltaX(F)V
    .locals 1
    .param p1, "mDeltaX"    # F

    .prologue
    .line 65
    iput p1, p0, Lcom/asha/vrlib/MD360Director;->mDeltaX:F

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationMatrixInvalidate:Z

    .line 67
    return-void
.end method

.method public setDeltaY(F)V
    .locals 1
    .param p1, "mDeltaY"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/asha/vrlib/MD360Director;->mDeltaY:F

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationMatrixInvalidate:Z

    .line 58
    return-void
.end method

.method public setNearScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 151
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setNearScale(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 152
    return-void
.end method

.method public setViewport(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0, p1, p2}, Lcom/asha/vrlib/MDDirectorCamera;->updateViewport(II)Lcom/asha/vrlib/MDDirectorCamera;

    .line 148
    return-void
.end method

.method public shot(Lcom/asha/vrlib/MD360Program;Lcom/asha/vrlib/model/MDPosition;)V
    .locals 7
    .param p1, "program"    # Lcom/asha/vrlib/MD360Program;
    .param p2, "modelPosition"    # Lcom/asha/vrlib/model/MDPosition;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mMVMatrix:[F

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mViewMatrix:[F

    invoke-virtual {p2}, Lcom/asha/vrlib/model/MDPosition;->getMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 88
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/asha/vrlib/MD360Director;->mMVMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 91
    invoke-virtual {p1}, Lcom/asha/vrlib/MD360Program;->getMVMatrixHandle()I

    move-result v0

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mMVMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 94
    invoke-virtual {p1}, Lcom/asha/vrlib/MD360Program;->getMVPMatrixHandle()I

    move-result v0

    iget-object v2, p0, Lcom/asha/vrlib/MD360Director;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 95
    return-void
.end method

.method protected updateProjection()V
    .locals 11

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 163
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getRatio()F

    move-result v0

    neg-float v0, v0

    div-float v2, v0, v1

    .line 164
    .local v2, "left":F
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getRatio()F

    move-result v0

    div-float v3, v0, v1

    .line 165
    .local v3, "right":F
    const/high16 v8, -0x41000000    # -0.5f

    .line 166
    .local v8, "bottom":F
    const/high16 v10, 0x3f000000    # 0.5f

    .line 167
    .local v10, "top":F
    const/high16 v9, 0x43fa0000    # 500.0f

    .line 168
    .local v9, "far":F
    invoke-virtual {p0}, Lcom/asha/vrlib/MD360Director;->getProjectionMatrix()[F

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v4, -0x41000000    # -0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/asha/vrlib/MD360Director;->getNear()F

    move-result v6

    const/high16 v7, 0x43fa0000    # 500.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 169
    return-void
.end method

.method public updateSensorMatrix([F)V
    .locals 3
    .param p1, "sensorMatrix"    # [F

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director;->mSensorMatrix:[F

    const/16 v1, 0x10

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MD360Director;->mWorldRotationMatrixInvalidate:Z

    .line 237
    return-void
.end method
