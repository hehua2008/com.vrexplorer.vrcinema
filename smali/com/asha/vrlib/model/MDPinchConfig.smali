.class public Lcom/asha/vrlib/model/MDPinchConfig;
.super Ljava/lang/Object;
.source "MDPinchConfig.java"


# instance fields
.field private defaultValue:F

.field private mSensitivity:F

.field private max:F

.field private min:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/asha/vrlib/model/MDPinchConfig;->max:F

    .line 10
    iput v1, p0, Lcom/asha/vrlib/model/MDPinchConfig;->min:F

    .line 11
    iput v1, p0, Lcom/asha/vrlib/model/MDPinchConfig;->defaultValue:F

    .line 12
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/asha/vrlib/model/MDPinchConfig;->mSensitivity:F

    return-void
.end method


# virtual methods
.method public getDefaultValue()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/asha/vrlib/model/MDPinchConfig;->defaultValue:F

    return v0
.end method

.method public getMax()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/asha/vrlib/model/MDPinchConfig;->max:F

    return v0
.end method

.method public getMin()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/asha/vrlib/model/MDPinchConfig;->min:F

    return v0
.end method

.method public getSensitivity()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/asha/vrlib/model/MDPinchConfig;->mSensitivity:F

    return v0
.end method

.method public setDefaultValue(F)Lcom/asha/vrlib/model/MDPinchConfig;
    .locals 0
    .param p1, "defaultValue"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/asha/vrlib/model/MDPinchConfig;->defaultValue:F

    .line 26
    return-object p0
.end method

.method public setMax(F)Lcom/asha/vrlib/model/MDPinchConfig;
    .locals 0
    .param p1, "max"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/asha/vrlib/model/MDPinchConfig;->max:F

    .line 16
    return-object p0
.end method

.method public setMin(F)Lcom/asha/vrlib/model/MDPinchConfig;
    .locals 0
    .param p1, "min"    # F

    .prologue
    .line 20
    iput p1, p0, Lcom/asha/vrlib/model/MDPinchConfig;->min:F

    .line 21
    return-object p0
.end method

.method public setSensitivity(F)Lcom/asha/vrlib/model/MDPinchConfig;
    .locals 0
    .param p1, "mSensitivity"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/asha/vrlib/model/MDPinchConfig;->mSensitivity:F

    .line 31
    return-object p0
.end method
