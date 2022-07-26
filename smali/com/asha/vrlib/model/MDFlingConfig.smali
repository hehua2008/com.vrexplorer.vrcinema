.class public Lcom/asha/vrlib/model/MDFlingConfig;
.super Ljava/lang/Object;
.source "MDFlingConfig.java"


# instance fields
.field private mDuring:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mSensitivity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/model/MDFlingConfig;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 15
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/asha/vrlib/model/MDFlingConfig;->mDuring:J

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/asha/vrlib/model/MDFlingConfig;->mSensitivity:F

    return-void
.end method


# virtual methods
.method public getDuring()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/asha/vrlib/model/MDFlingConfig;->mDuring:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asha/vrlib/model/MDFlingConfig;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getSensitivity()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/asha/vrlib/model/MDFlingConfig;->mSensitivity:F

    return v0
.end method

.method public setDuring(J)Lcom/asha/vrlib/model/MDFlingConfig;
    .locals 1
    .param p1, "during"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/asha/vrlib/model/MDFlingConfig;->mDuring:J

    .line 30
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/asha/vrlib/model/MDFlingConfig;
    .locals 0
    .param p1, "i"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/asha/vrlib/model/MDFlingConfig;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 22
    return-object p0
.end method

.method public setSensitivity(F)Lcom/asha/vrlib/model/MDFlingConfig;
    .locals 0
    .param p1, "sensitivity"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/asha/vrlib/model/MDFlingConfig;->mSensitivity:F

    .line 38
    return-object p0
.end method
