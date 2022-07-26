.class public Lcom/asha/vrlib/model/BarrelDistortionConfig;
.super Ljava/lang/Object;
.source "BarrelDistortionConfig.java"


# instance fields
.field private defaultEnabled:Z

.field private paramA:D

.field private paramB:D

.field private paramC:D

.field private scale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide v0, -0x404e978d4fdf3b64L    # -0.068

    iput-wide v0, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->paramA:D

    .line 18
    const-wide v0, 0x3fd47ae147ae147bL    # 0.32

    iput-wide v0, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->paramB:D

    .line 19
    const-wide v0, -0x4036666666666666L    # -0.2

    iput-wide v0, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->paramC:D

    .line 20
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->scale:F

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->defaultEnabled:Z

    .line 22
    return-void
.end method


# virtual methods
.method public getParamA()D
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->paramA:D

    return-wide v0
.end method

.method public getParamB()D
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->paramB:D

    return-wide v0
.end method

.method public getParamC()D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->paramC:D

    return-wide v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->scale:F

    return v0
.end method

.method public isDefaultEnabled()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->defaultEnabled:Z

    return v0
.end method

.method public setDefaultEnabled(Z)Lcom/asha/vrlib/model/BarrelDistortionConfig;
    .locals 0
    .param p1, "defaultEnabled"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->defaultEnabled:Z

    .line 46
    return-object p0
.end method

.method public setParamA(D)Lcom/asha/vrlib/model/BarrelDistortionConfig;
    .locals 1
    .param p1, "paramA"    # D

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->paramA:D

    .line 26
    return-object p0
.end method

.method public setParamB(D)Lcom/asha/vrlib/model/BarrelDistortionConfig;
    .locals 1
    .param p1, "paramB"    # D

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->paramB:D

    .line 31
    return-object p0
.end method

.method public setParamC(D)Lcom/asha/vrlib/model/BarrelDistortionConfig;
    .locals 1
    .param p1, "paramC"    # D

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->paramC:D

    .line 36
    return-object p0
.end method

.method public setScale(F)Lcom/asha/vrlib/model/BarrelDistortionConfig;
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/asha/vrlib/model/BarrelDistortionConfig;->scale:F

    .line 41
    return-object p0
.end method
