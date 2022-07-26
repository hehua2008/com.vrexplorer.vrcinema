.class public Lcom/asha/vrlib/MDDirectorCamUpdate;
.super Ljava/lang/Object;
.source "MDDirectorCamUpdate.java"


# instance fields
.field private delegate:Lcom/asha/vrlib/MDDirectorCamera;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/asha/vrlib/MDDirectorCamera;

    invoke-direct {v0}, Lcom/asha/vrlib/MDDirectorCamera;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    .line 13
    invoke-virtual {p0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->clear()V

    .line 14
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setLookX(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 123
    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setLookY(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 124
    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setEyeX(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 125
    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setEyeY(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 126
    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setEyeZ(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 127
    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setNearScale(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 128
    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setPitch(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 129
    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setYaw(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 130
    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setRoll(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 131
    return-void
.end method

.method public consumeChanged()V
    .locals 0

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->consumePositionValidate()V

    .line 151
    invoke-virtual {p0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->consumeRotationValidate()V

    .line 152
    invoke-virtual {p0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->consumeProjectionValidate()V

    .line 153
    return-void
.end method

.method public consumePositionValidate()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->consumePositionValidate()V

    .line 111
    return-void
.end method

.method public consumeProjectionValidate()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->consumeProjectionValidate()V

    .line 115
    return-void
.end method

.method public consumeRotationValidate()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->consumeRotationValidate()V

    .line 119
    return-void
.end method

.method public copy(Lcom/asha/vrlib/MDDirectorCamUpdate;)V
    .locals 1
    .param p1, "cameraUpdate"    # Lcom/asha/vrlib/MDDirectorCamUpdate;

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getLookX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setLookX(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 135
    invoke-virtual {p1}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getLookY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setLookY(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 136
    invoke-virtual {p1}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getEyeX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setEyeX(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 137
    invoke-virtual {p1}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getEyeY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setEyeY(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 138
    invoke-virtual {p1}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getEyeZ()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setEyeZ(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 139
    invoke-virtual {p1}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getNearScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setNearScale(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 140
    invoke-virtual {p1}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getPitch()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setPitch(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 141
    invoke-virtual {p1}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getYaw()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setYaw(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 142
    invoke-virtual {p1}, Lcom/asha/vrlib/MDDirectorCamUpdate;->getRoll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->setRoll(F)Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 143
    return-void
.end method

.method public getEyeX()F
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getEyeX()F

    move-result v0

    return v0
.end method

.method public getEyeY()F
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getEyeY()F

    move-result v0

    return v0
.end method

.method public getEyeZ()F
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getEyeZ()F

    move-result v0

    return v0
.end method

.method public getLookX()F
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getLookX()F

    move-result v0

    return v0
.end method

.method public getLookY()F
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getLookY()F

    move-result v0

    return v0
.end method

.method public getNearScale()F
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getNearScale()F

    move-result v0

    return v0
.end method

.method public getPitch()F
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getPitch()F

    move-result v0

    return v0
.end method

.method public getRoll()F
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getRoll()F

    move-result v0

    return v0
.end method

.method public getYaw()F
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->getYaw()F

    move-result v0

    return v0
.end method

.method public isChanged()Z
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->isPositionValidate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->isRotationValidate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/asha/vrlib/MDDirectorCamUpdate;->isProjectionValidate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPositionValidate()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->isPositionValidate()Z

    move-result v0

    return v0
.end method

.method public isProjectionValidate()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->isProjectionValidate()Z

    move-result v0

    return v0
.end method

.method public isRotationValidate()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDDirectorCamera;->isRotationValidate()Z

    move-result v0

    return v0
.end method

.method public setEyeX(F)Lcom/asha/vrlib/MDDirectorCamUpdate;
    .locals 1
    .param p1, "mEyeX"    # F

    .prologue
    .line 27
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setEyeX(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 28
    return-object p0
.end method

.method public setEyeY(F)Lcom/asha/vrlib/MDDirectorCamUpdate;
    .locals 1
    .param p1, "mEyeY"    # F

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setEyeY(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 33
    return-object p0
.end method

.method public setEyeZ(F)Lcom/asha/vrlib/MDDirectorCamUpdate;
    .locals 1
    .param p1, "mEyeZ"    # F

    .prologue
    .line 37
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setEyeZ(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 38
    return-object p0
.end method

.method public setLookX(F)Lcom/asha/vrlib/MDDirectorCamUpdate;
    .locals 1
    .param p1, "mLookX"    # F

    .prologue
    .line 17
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setLookX(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 18
    return-object p0
.end method

.method public setLookY(F)Lcom/asha/vrlib/MDDirectorCamUpdate;
    .locals 1
    .param p1, "mLookY"    # F

    .prologue
    .line 22
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setLookY(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 23
    return-object p0
.end method

.method public setNearScale(F)Lcom/asha/vrlib/MDDirectorCamUpdate;
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setNearScale(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 43
    return-object p0
.end method

.method public setPitch(F)Lcom/asha/vrlib/MDDirectorCamUpdate;
    .locals 1
    .param p1, "pitch"    # F

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setPitch(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 77
    return-object p0
.end method

.method public setRoll(F)Lcom/asha/vrlib/MDDirectorCamUpdate;
    .locals 1
    .param p1, "roll"    # F

    .prologue
    .line 71
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setRoll(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 72
    return-object p0
.end method

.method public setYaw(F)Lcom/asha/vrlib/MDDirectorCamUpdate;
    .locals 1
    .param p1, "yaw"    # F

    .prologue
    .line 81
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorCamUpdate;->delegate:Lcom/asha/vrlib/MDDirectorCamera;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setYaw(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 82
    return-object p0
.end method
