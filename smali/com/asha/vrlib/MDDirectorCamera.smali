.class public Lcom/asha/vrlib/MDDirectorCamera;
.super Ljava/lang/Object;
.source "MDDirectorCamera.java"


# instance fields
.field private mEyeX:F

.field private mEyeY:F

.field private mEyeZ:F

.field private mLookX:F

.field private mLookY:F

.field private mNearScale:F

.field private mPositionValidate:Z

.field private mProjectionValidate:Z

.field private mRatio:F

.field private final mRotation:Lcom/asha/vrlib/model/position/MDMutablePosition;

.field private mRotationValidate:Z

.field private mViewportHeight:I

.field private mViewportWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mEyeX:F

    .line 14
    iput v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mEyeY:F

    .line 15
    iput v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mEyeZ:F

    .line 16
    iput v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mLookX:F

    .line 17
    iput v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mLookY:F

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mNearScale:F

    .line 21
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRatio:F

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mViewportWidth:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mViewportHeight:I

    .line 26
    invoke-static {}, Lcom/asha/vrlib/model/position/MDMutablePosition;->newInstance()Lcom/asha/vrlib/model/position/MDMutablePosition;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRotation:Lcom/asha/vrlib/model/position/MDMutablePosition;

    return-void
.end method


# virtual methods
.method public consumePositionValidate()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mPositionValidate:Z

    .line 153
    return-void
.end method

.method public consumeProjectionValidate()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mProjectionValidate:Z

    .line 157
    return-void
.end method

.method public consumeRotationValidate()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRotationValidate:Z

    .line 161
    return-void
.end method

.method getEyeX()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mEyeX:F

    return v0
.end method

.method getEyeY()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mEyeY:F

    return v0
.end method

.method getEyeZ()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mEyeZ:F

    return v0
.end method

.method getLookX()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mLookX:F

    return v0
.end method

.method getLookY()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mLookY:F

    return v0
.end method

.method getNearScale()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mNearScale:F

    return v0
.end method

.method getPitch()F
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRotation:Lcom/asha/vrlib/model/position/MDMutablePosition;

    invoke-virtual {v0}, Lcom/asha/vrlib/model/position/MDMutablePosition;->getPitch()F

    move-result v0

    return v0
.end method

.method getRatio()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRatio:F

    return v0
.end method

.method getRoll()F
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRotation:Lcom/asha/vrlib/model/position/MDMutablePosition;

    invoke-virtual {v0}, Lcom/asha/vrlib/model/position/MDMutablePosition;->getRoll()F

    move-result v0

    return v0
.end method

.method getViewportHeight()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mViewportHeight:I

    return v0
.end method

.method getViewportWidth()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mViewportWidth:I

    return v0
.end method

.method getYaw()F
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRotation:Lcom/asha/vrlib/model/position/MDMutablePosition;

    invoke-virtual {v0}, Lcom/asha/vrlib/model/position/MDMutablePosition;->getYaw()F

    move-result v0

    return v0
.end method

.method public isPositionValidate()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mPositionValidate:Z

    return v0
.end method

.method public isProjectionValidate()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mProjectionValidate:Z

    return v0
.end method

.method isRotationValidate()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRotationValidate:Z

    return v0
.end method

.method setEyeX(F)Lcom/asha/vrlib/MDDirectorCamera;
    .locals 1
    .param p1, "mEyeX"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/asha/vrlib/MDDirectorCamera;->mEyeX:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mPositionValidate:Z

    .line 44
    return-object p0
.end method

.method setEyeY(F)Lcom/asha/vrlib/MDDirectorCamera;
    .locals 1
    .param p1, "mEyeY"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/asha/vrlib/MDDirectorCamera;->mEyeY:F

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mPositionValidate:Z

    .line 50
    return-object p0
.end method

.method setEyeZ(F)Lcom/asha/vrlib/MDDirectorCamera;
    .locals 1
    .param p1, "mEyeZ"    # F

    .prologue
    .line 54
    iput p1, p0, Lcom/asha/vrlib/MDDirectorCamera;->mEyeZ:F

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mPositionValidate:Z

    .line 56
    return-object p0
.end method

.method setLookX(F)Lcom/asha/vrlib/MDDirectorCamera;
    .locals 1
    .param p1, "mLookX"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/asha/vrlib/MDDirectorCamera;->mLookX:F

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mPositionValidate:Z

    .line 32
    return-object p0
.end method

.method setLookY(F)Lcom/asha/vrlib/MDDirectorCamera;
    .locals 1
    .param p1, "mLookY"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/asha/vrlib/MDDirectorCamera;->mLookY:F

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mPositionValidate:Z

    .line 38
    return-object p0
.end method

.method setNearScale(F)Lcom/asha/vrlib/MDDirectorCamera;
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 84
    iput p1, p0, Lcom/asha/vrlib/MDDirectorCamera;->mNearScale:F

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mProjectionValidate:Z

    .line 86
    return-object p0
.end method

.method setPitch(F)Lcom/asha/vrlib/MDDirectorCamera;
    .locals 1
    .param p1, "pitch"    # F

    .prologue
    .line 96
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRotation:Lcom/asha/vrlib/model/position/MDMutablePosition;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/model/position/MDMutablePosition;->setPitch(F)Lcom/asha/vrlib/model/position/MDMutablePosition;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRotationValidate:Z

    .line 98
    return-object p0
.end method

.method setRoll(F)Lcom/asha/vrlib/MDDirectorCamera;
    .locals 1
    .param p1, "roll"    # F

    .prologue
    .line 90
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRotation:Lcom/asha/vrlib/model/position/MDMutablePosition;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/model/position/MDMutablePosition;->setRoll(F)Lcom/asha/vrlib/model/position/MDMutablePosition;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRotationValidate:Z

    .line 92
    return-object p0
.end method

.method setYaw(F)Lcom/asha/vrlib/MDDirectorCamera;
    .locals 1
    .param p1, "yaw"    # F

    .prologue
    .line 102
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRotation:Lcom/asha/vrlib/model/position/MDMutablePosition;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/model/position/MDMutablePosition;->setYaw(F)Lcom/asha/vrlib/model/position/MDMutablePosition;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRotationValidate:Z

    .line 104
    return-object p0
.end method

.method updateViewport(II)Lcom/asha/vrlib/MDDirectorCamera;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/asha/vrlib/MDDirectorCamera;->mViewportWidth:I

    .line 121
    iput p2, p0, Lcom/asha/vrlib/MDDirectorCamera;->mViewportHeight:I

    .line 122
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mRatio:F

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/MDDirectorCamera;->mProjectionValidate:Z

    .line 124
    return-object p0
.end method
