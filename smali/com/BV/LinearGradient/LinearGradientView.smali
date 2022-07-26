.class public Lcom/BV/LinearGradient/LinearGradientView;
.super Landroid/view/View;
.source "LinearGradientView.java"


# instance fields
.field private mBorderRadii:[F

.field private mColors:[I

.field private mEndPos:[F

.field private mLocations:[F

.field private final mPaint:Landroid/graphics/Paint;

.field private mPathForBorderRadius:Landroid/graphics/Path;

.field private mShader:Landroid/graphics/LinearGradient;

.field private mSize:[I

.field private mStartPos:[F

.field private mTempRectForBorderRadius:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPaint:Landroid/graphics/Paint;

    .line 23
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mStartPos:[F

    .line 24
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mEndPos:[F

    .line 26
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mSize:[I

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mBorderRadii:[F

    .line 32
    return-void

    .line 23
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 24
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 26
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 27
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private drawGradient()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mColors:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mLocations:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mColors:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mLocations:[F

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mStartPos:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/BV/LinearGradient/LinearGradientView;->mSize:[I

    aget v2, v2, v5

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/BV/LinearGradient/LinearGradientView;->mStartPos:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/BV/LinearGradient/LinearGradientView;->mSize:[I

    aget v3, v3, v6

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/BV/LinearGradient/LinearGradientView;->mEndPos:[F

    aget v3, v3, v5

    iget-object v4, p0, Lcom/BV/LinearGradient/LinearGradientView;->mSize:[I

    aget v4, v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/BV/LinearGradient/LinearGradientView;->mEndPos:[F

    aget v4, v4, v6

    iget-object v5, p0, Lcom/BV/LinearGradient/LinearGradientView;->mSize:[I

    aget v5, v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/BV/LinearGradient/LinearGradientView;->mColors:[I

    iget-object v6, p0, Lcom/BV/LinearGradient/LinearGradientView;->mLocations:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mShader:Landroid/graphics/LinearGradient;

    .line 94
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 95
    invoke-virtual {p0}, Lcom/BV/LinearGradient/LinearGradientView;->invalidate()V

    goto :goto_0
.end method

.method private updatePath()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 104
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mTempRectForBorderRadius:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mSize:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/BV/LinearGradient/LinearGradientView;->mSize:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mTempRectForBorderRadius:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/BV/LinearGradient/LinearGradientView;->mBorderRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 109
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mSize:[I

    .line 78
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->updatePath()V

    .line 79
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    .line 80
    return-void
.end method

.method public setBorderRadii(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .param p1, "borderRadii"    # Lcom/facebook/react/bridge/ReadableArray;

    .prologue
    .line 65
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    new-array v0, v2, [F

    .line 66
    .local v0, "_radii":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 68
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v2

    aput v2, v0, v1

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mBorderRadii:[F

    .line 71
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->updatePath()V

    .line 72
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    .line 73
    return-void
.end method

.method public setColors(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p1, "colors"    # Lcom/facebook/react/bridge/ReadableArray;

    .prologue
    .line 45
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    new-array v0, v2, [I

    .line 46
    .local v0, "_colors":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 48
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mColors:[I

    .line 51
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    .line 52
    return-void
.end method

.method public setEndPosition(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 6
    .param p1, "endPos"    # Lcom/facebook/react/bridge/ReadableArray;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, v0, v4

    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, v0, v5

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mEndPos:[F

    .line 41
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    .line 42
    return-void
.end method

.method public setLocations(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .param p1, "locations"    # Lcom/facebook/react/bridge/ReadableArray;

    .prologue
    .line 55
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    new-array v0, v2, [F

    .line 56
    .local v0, "_locations":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 58
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mLocations:[F

    .line 61
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    .line 62
    return-void
.end method

.method public setStartPosition(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 6
    .param p1, "startPos"    # Lcom/facebook/react/bridge/ReadableArray;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, v0, v4

    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, v0, v5

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mStartPos:[F

    .line 36
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    .line 37
    return-void
.end method
