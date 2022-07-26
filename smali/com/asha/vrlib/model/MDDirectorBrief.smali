.class public Lcom/asha/vrlib/model/MDDirectorBrief;
.super Ljava/lang/Object;
.source "MDDirectorBrief.java"


# instance fields
.field private pitch:F

.field private roll:F

.field private yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPitch()F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/asha/vrlib/model/MDDirectorBrief;->pitch:F

    return v0
.end method

.method public getRoll()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/asha/vrlib/model/MDDirectorBrief;->roll:F

    return v0
.end method

.method public getYaw()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/asha/vrlib/model/MDDirectorBrief;->yaw:F

    return v0
.end method

.method public make(Lcom/asha/vrlib/model/MDQuaternion;)V
    .locals 1
    .param p1, "quaternion"    # Lcom/asha/vrlib/model/MDQuaternion;

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDQuaternion;->getPitch()F

    move-result v0

    iput v0, p0, Lcom/asha/vrlib/model/MDDirectorBrief;->pitch:F

    .line 16
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDQuaternion;->getYaw()F

    move-result v0

    iput v0, p0, Lcom/asha/vrlib/model/MDDirectorBrief;->yaw:F

    .line 17
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDQuaternion;->getRoll()F

    move-result v0

    iput v0, p0, Lcom/asha/vrlib/model/MDDirectorBrief;->roll:F

    .line 18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{pitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asha/vrlib/model/MDDirectorBrief;->pitch:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asha/vrlib/model/MDDirectorBrief;->yaw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asha/vrlib/model/MDDirectorBrief;->roll:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
