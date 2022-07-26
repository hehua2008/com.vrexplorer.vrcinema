.class public Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;
.super Ljava/lang/Object;
.source "OnScrollDispatchHelper.java"


# static fields
.field private static final MIN_EVENT_SEPARATION_MS:I = 0xa

.field private static final THRESHOLD:F = 0.1f


# instance fields
.field private mLastScrollEventTimeMs:J

.field private mPrevX:I

.field private mPrevY:I

.field private mXFlingVelocity:F

.field private mYFlingVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v1, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevX:I

    .line 24
    iput v1, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevY:I

    .line 25
    iput v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mXFlingVelocity:F

    .line 26
    iput v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mYFlingVelocity:F

    .line 28
    const-wide/16 v0, -0xb

    iput-wide v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mLastScrollEventTimeMs:J

    return-void
.end method


# virtual methods
.method public getXFlingVelocity()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mXFlingVelocity:F

    return v0
.end method

.method public getYFlingVelocity()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mYFlingVelocity:F

    return v0
.end method

.method public onScrollChanged(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const v8, 0x3dcccccd    # 0.1f

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 38
    .local v0, "eventTime":J
    iget-wide v4, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mLastScrollEventTimeMs:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xa

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevX:I

    if-ne v3, p1, :cond_0

    iget v3, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevY:I

    if-eq v3, p2, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 44
    .local v2, "shouldDispatch":Z
    :goto_0
    iget v3, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mXFlingVelocity:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gez v3, :cond_1

    iget v3, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mYFlingVelocity:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gez v3, :cond_1

    .line 45
    const/4 v2, 0x0

    .line 48
    :cond_1
    iget-wide v4, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mLastScrollEventTimeMs:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 49
    iget v3, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    iget-wide v4, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mLastScrollEventTimeMs:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mXFlingVelocity:F

    .line 50
    iget v3, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget-wide v4, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mLastScrollEventTimeMs:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mYFlingVelocity:F

    .line 53
    :cond_2
    iput-wide v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mLastScrollEventTimeMs:J

    .line 54
    iput p1, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevX:I

    .line 55
    iput p2, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevY:I

    .line 57
    return v2

    .line 38
    .end local v2    # "shouldDispatch":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
