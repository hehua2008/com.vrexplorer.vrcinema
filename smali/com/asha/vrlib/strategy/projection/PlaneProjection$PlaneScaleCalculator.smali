.class public Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;
.super Ljava/lang/Object;
.source "PlaneProjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/strategy/projection/PlaneProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaneScaleCalculator"
.end annotation


# static fields
.field private static final sBaseValue:F = 1.0f


# instance fields
.field private mScaleType:I

.field private mTextureHeight:F

.field private mTextureSize:Landroid/graphics/RectF;

.field private mTextureWidth:F

.field private mViewportHeight:F

.field private mViewportRatio:F

.field private mViewportWidth:F


# direct methods
.method public constructor <init>(ILandroid/graphics/RectF;)V
    .locals 1
    .param p1, "scaleType"    # I
    .param p2, "textureSize"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportWidth:F

    .line 86
    iput v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportHeight:F

    .line 88
    iput v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureWidth:F

    .line 90
    iput v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureHeight:F

    .line 93
    iput p1, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mScaleType:I

    .line 94
    iput-object p2, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureSize:Landroid/graphics/RectF;

    .line 95
    return-void
.end method


# virtual methods
.method public calculate()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 106
    iget v1, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportRatio:F

    .line 107
    .local v1, "viewportRatio":F
    invoke-virtual {p0}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->getTextureRatio()F

    move-result v0

    .line 109
    .local v0, "textureRatio":F
    iget v2, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mScaleType:I

    packed-switch v2, :pswitch_data_0

    .line 153
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    .line 164
    mul-float v2, v3, v1

    iput v2, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportWidth:F

    .line 165
    iput v3, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportHeight:F

    .line 167
    mul-float v2, v3, v0

    iput v2, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureWidth:F

    .line 168
    iput v3, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureHeight:F

    .line 190
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iput v3, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureHeight:F

    iput v3, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureWidth:F

    iput v3, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportHeight:F

    iput v3, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportWidth:F

    goto :goto_0

    .line 115
    :pswitch_1
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 126
    mul-float v2, v3, v1

    iput v2, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportWidth:F

    .line 127
    iput v3, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportHeight:F

    .line 129
    mul-float v2, v3, v0

    iput v2, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureWidth:F

    .line 130
    iput v3, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureHeight:F

    goto :goto_0

    .line 144
    :cond_0
    iput v3, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportWidth:F

    .line 145
    div-float v2, v3, v1

    iput v2, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportHeight:F

    .line 147
    iput v3, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureWidth:F

    .line 148
    div-float v2, v3, v0

    iput v2, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureHeight:F

    goto :goto_0

    .line 182
    :cond_1
    iput v3, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportWidth:F

    .line 183
    div-float v2, v3, v1

    iput v2, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportHeight:F

    .line 185
    iput v3, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureWidth:F

    .line 186
    div-float v2, v3, v0

    iput v2, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureHeight:F

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0xd0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTextureHeight()F
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureHeight:F

    return v0
.end method

.method public getTextureRatio()F
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureSize:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureSize:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTextureWidth()F
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mTextureWidth:F

    return v0
.end method

.method public getViewportHeight()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportHeight:F

    return v0
.end method

.method public getViewportWidth()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportWidth:F

    return v0
.end method

.method public setViewportRatio(F)V
    .locals 0
    .param p1, "viewportRatio"    # F

    .prologue
    .line 102
    iput p1, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;->mViewportRatio:F

    .line 103
    return-void
.end method
