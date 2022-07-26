.class public Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;
.super Ljava/lang/Object;
.source "AnimatedDrawableUtil.java"


# static fields
.field private static final FRAME_DURATION_MS_FOR_MIN:I = 0x64

.field private static final MIN_FRAME_DURATION_MS:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOutsideRange(III)Z
    .locals 3
    .param p0, "startFrame"    # I
    .param p1, "endFrame"    # I
    .param p2, "frameNumber"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 133
    if-eq p0, v2, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 144
    :goto_0
    return v0

    .line 138
    :cond_1
    if-gt p0, p1, :cond_4

    .line 139
    if-lt p2, p0, :cond_2

    if-le p2, p1, :cond_3

    :cond_2
    move v0, v1

    .local v0, "outsideRange":Z
    :cond_3
    goto :goto_0

    .line 142
    .end local v0    # "outsideRange":Z
    :cond_4
    if-ge p2, p0, :cond_5

    if-le p2, p1, :cond_5

    move v0, v1

    .restart local v0    # "outsideRange":Z
    :cond_5
    goto :goto_0
.end method


# virtual methods
.method public appendMemoryString(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "kiloBytes"    # I

    .prologue
    .line 30
    const/16 v2, 0x400

    if-ge p2, v2, :cond_0

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "KB"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :goto_0
    return-void

    .line 34
    :cond_0
    div-int/lit16 v0, p2, 0x400

    .line 35
    .local v0, "mbUsed":I
    rem-int/lit16 v2, p2, 0x400

    div-int/lit8 v1, v2, 0x64

    .line 36
    .local v1, "mbUsedDecimal":I
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v2, "MB"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public fixFrameDurations([I)V
    .locals 3
    .param p1, "frameDurationMs"    # [I

    .prologue
    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 55
    aget v1, p1, v0

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 56
    const/16 v1, 0x64

    aput v1, p1, v0

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public getFrameForTimestampMs([II)I
    .locals 2
    .param p1, "frameTimestampsMs"    # [I
    .param p2, "timestampMs"    # I

    .prologue
    .line 101
    invoke-static {p1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 102
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 103
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 105
    .end local v0    # "index":I
    :cond_0
    return v0
.end method

.method public getFrameTimeStampsFromDurations([I)[I
    .locals 4
    .param p1, "frameDurationsMs"    # [I

    .prologue
    .line 83
    array-length v3, p1

    new-array v1, v3, [I

    .line 84
    .local v1, "frameTimestampsMs":[I
    const/4 v0, 0x0

    .line 85
    .local v0, "accumulatedDurationMs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 86
    aput v0, v1, v2

    .line 87
    aget v3, p1, v2

    add-int/2addr v0, v3

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-object v1
.end method

.method public getSizeOfBitmap(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    .line 117
    :goto_0
    return v0

    .line 113
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public getTotalDurationFromFrameDurations([I)I
    .locals 3
    .param p1, "frameDurationMs"    # [I

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "totalMs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 70
    aget v2, p1, v0

    add-int/2addr v1, v2

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return v1
.end method
