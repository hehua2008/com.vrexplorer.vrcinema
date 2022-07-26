.class public Lcom/asha/vrlib/MDTouchHelper;
.super Ljava/lang/Object;
.source "MDTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/MDTouchHelper$PinchInfo;
    }
.end annotation


# static fields
.field private static final MODE_INIT:I = 0x0

.field private static final MODE_PINCH:I = 0x1


# instance fields
.field private defaultScale:F

.field private mAdvanceGestureListener:Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;

.field private mClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asha/vrlib/MDVRLibrary$IGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMode:I

.field private mFlingConfig:Lcom/asha/vrlib/model/MDFlingConfig;

.field private mFlingEnabled:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlobalScale:F

.field private mPinchEnabled:Z

.field private mPinchInfo:Lcom/asha/vrlib/MDTouchHelper$PinchInfo;

.field private mSensitivity:F

.field private maxScale:F

.field private minScale:F

.field private valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mClickListeners:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mCurrentMode:I

    .line 28
    new-instance v0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;-><init>(Lcom/asha/vrlib/MDTouchHelper;Lcom/asha/vrlib/MDTouchHelper$1;)V

    iput-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mPinchInfo:Lcom/asha/vrlib/MDTouchHelper$PinchInfo;

    .line 44
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/asha/vrlib/MDTouchHelper$1;

    invoke-direct {v1, p0}, Lcom/asha/vrlib/MDTouchHelper$1;-><init>(Lcom/asha/vrlib/MDTouchHelper;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/asha/vrlib/MDTouchHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDTouchHelper;

    .prologue
    .line 22
    iget v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/asha/vrlib/MDTouchHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDTouchHelper;

    .prologue
    .line 22
    iget v0, p0, Lcom/asha/vrlib/MDTouchHelper;->minScale:F

    return v0
.end method

.method static synthetic access$1100(Lcom/asha/vrlib/MDTouchHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDTouchHelper;

    .prologue
    .line 22
    iget v0, p0, Lcom/asha/vrlib/MDTouchHelper;->maxScale:F

    return v0
.end method

.method static synthetic access$1200(Lcom/asha/vrlib/MDTouchHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDTouchHelper;

    .prologue
    .line 22
    iget v0, p0, Lcom/asha/vrlib/MDTouchHelper;->defaultScale:F

    return v0
.end method

.method static synthetic access$200(Lcom/asha/vrlib/MDTouchHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDTouchHelper;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mClickListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asha/vrlib/MDTouchHelper;)Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDTouchHelper;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mAdvanceGestureListener:Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asha/vrlib/MDTouchHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDTouchHelper;

    .prologue
    .line 22
    iget v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mGlobalScale:F

    return v0
.end method

.method static synthetic access$500(Lcom/asha/vrlib/MDTouchHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDTouchHelper;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mFlingEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/asha/vrlib/MDTouchHelper;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/asha/vrlib/MDTouchHelper;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/asha/vrlib/MDTouchHelper;->animStart(FF)V

    return-void
.end method

.method static synthetic access$700(Lcom/asha/vrlib/MDTouchHelper;)Lcom/asha/vrlib/model/MDFlingConfig;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDTouchHelper;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mFlingConfig:Lcom/asha/vrlib/model/MDFlingConfig;

    return-object v0
.end method

.method static synthetic access$800(FFFF)F
    .locals 1
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 22
    invoke-static {p0, p1, p2, p3}, Lcom/asha/vrlib/MDTouchHelper;->calDistance(FFFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/asha/vrlib/MDTouchHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MDTouchHelper;

    .prologue
    .line 22
    iget v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mSensitivity:F

    return v0
.end method

.method private animCancel()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 80
    :cond_0
    return-void
.end method

.method private animStart(FF)V
    .locals 8
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    invoke-direct {p0}, Lcom/asha/vrlib/MDTouchHelper;->animCancel()V

    .line 85
    const-string v2, "vx"

    new-array v3, v6, [F

    aput p1, v3, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 86
    .local v0, "hvx":Landroid/animation/PropertyValuesHolder;
    const-string v2, "vy"

    new-array v3, v6, [F

    aput p2, v3, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 87
    .local v1, "hvy":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/asha/vrlib/MDTouchHelper;->mFlingConfig:Lcom/asha/vrlib/model/MDFlingConfig;

    invoke-virtual {v3}, Lcom/asha/vrlib/model/MDFlingConfig;->getDuring()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/asha/vrlib/MDTouchHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 88
    iget-object v2, p0, Lcom/asha/vrlib/MDTouchHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/asha/vrlib/MDTouchHelper;->mFlingConfig:Lcom/asha/vrlib/model/MDFlingConfig;

    invoke-virtual {v3}, Lcom/asha/vrlib/model/MDFlingConfig;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    iget-object v2, p0, Lcom/asha/vrlib/MDTouchHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/asha/vrlib/MDTouchHelper$2;

    invoke-direct {v3, p0}, Lcom/asha/vrlib/MDTouchHelper$2;-><init>(Lcom/asha/vrlib/MDTouchHelper;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 105
    iget-object v2, p0, Lcom/asha/vrlib/MDTouchHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 106
    return-void
.end method

.method private static calDistance(FFFF)F
    .locals 6
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 175
    sub-float v0, p0, p2

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v2, p1, p3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private handlePinch(F)V
    .locals 1
    .param p1, "distance"    # F

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mPinchEnabled:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mPinchInfo:Lcom/asha/vrlib/MDTouchHelper$PinchInfo;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->pinch(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/asha/vrlib/MDTouchHelper;->setScaleInner(F)V

    .line 162
    :cond_0
    return-void
.end method

.method private markPinchInfo(FFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 171
    iget-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mPinchInfo:Lcom/asha/vrlib/MDTouchHelper$PinchInfo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->mark(FFFF)V

    .line 172
    return-void
.end method

.method private setScaleInner(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 165
    iget-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mAdvanceGestureListener:Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mAdvanceGestureListener:Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;

    invoke-interface {v0, p1}, Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;->onPinch(F)V

    .line 167
    :cond_0
    iput p1, p0, Lcom/asha/vrlib/MDTouchHelper;->mGlobalScale:F

    .line 168
    return-void
.end method


# virtual methods
.method public addClickListener(Lcom/asha/vrlib/MDVRLibrary$IGestureListener;)V
    .locals 1
    .param p1, "gestureListener"    # Lcom/asha/vrlib/MDVRLibrary$IGestureListener;

    .prologue
    .line 179
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 110
    .local v0, "action":I
    if-eq v0, v6, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 111
    :cond_0
    iget v2, p0, Lcom/asha/vrlib/MDTouchHelper;->mCurrentMode:I

    if-ne v2, v6, :cond_1

    .line 114
    :cond_1
    iput v3, p0, Lcom/asha/vrlib/MDTouchHelper;->mCurrentMode:I

    .line 145
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/asha/vrlib/MDTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 146
    return v6

    .line 115
    :cond_3
    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    .line 117
    iget v2, p0, Lcom/asha/vrlib/MDTouchHelper;->mCurrentMode:I

    if-ne v2, v6, :cond_2

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v5, :cond_2

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_4

    .line 122
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/asha/vrlib/MDTouchHelper;->markPinchInfo(FFFF)V

    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_2

    .line 125
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/asha/vrlib/MDTouchHelper;->markPinchInfo(FFFF)V

    goto :goto_0

    .line 129
    :cond_5
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 131
    iput v6, p0, Lcom/asha/vrlib/MDTouchHelper;->mCurrentMode:I

    .line 132
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/asha/vrlib/MDTouchHelper;->markPinchInfo(FFFF)V

    goto :goto_0

    .line 133
    :cond_6
    if-ne v0, v5, :cond_7

    .line 135
    iget v2, p0, Lcom/asha/vrlib/MDTouchHelper;->mCurrentMode:I

    if-ne v2, v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v6, :cond_2

    .line 136
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/asha/vrlib/MDTouchHelper;->calDistance(FFFF)F

    move-result v1

    .line 139
    .local v1, "distance":F
    invoke-direct {p0, v1}, Lcom/asha/vrlib/MDTouchHelper;->handlePinch(F)V

    goto/16 :goto_0

    .line 141
    .end local v1    # "distance":F
    :cond_7
    if-nez v0, :cond_2

    .line 142
    invoke-direct {p0}, Lcom/asha/vrlib/MDTouchHelper;->animCancel()V

    goto/16 :goto_0
.end method

.method public isFlingEnabled()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mFlingEnabled:Z

    return v0
.end method

.method public isPinchEnabled()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mPinchEnabled:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mPinchInfo:Lcom/asha/vrlib/MDTouchHelper$PinchInfo;

    invoke-virtual {v0}, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->reset()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/asha/vrlib/MDTouchHelper;->setScaleInner(F)V

    .line 156
    return-void
.end method

.method public scaleTo(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 151
    iget-object v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mPinchInfo:Lcom/asha/vrlib/MDTouchHelper$PinchInfo;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->setScale(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/asha/vrlib/MDTouchHelper;->setScaleInner(F)V

    .line 152
    return-void
.end method

.method public setAdvanceGestureListener(Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/asha/vrlib/MDTouchHelper;->mAdvanceGestureListener:Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;

    .line 184
    return-void
.end method

.method public setFlingConfig(Lcom/asha/vrlib/model/MDFlingConfig;)V
    .locals 0
    .param p1, "flingConfig"    # Lcom/asha/vrlib/model/MDFlingConfig;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/asha/vrlib/MDTouchHelper;->mFlingConfig:Lcom/asha/vrlib/model/MDFlingConfig;

    .line 214
    return-void
.end method

.method public setFlingEnabled(Z)V
    .locals 0
    .param p1, "flingEnabled"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/asha/vrlib/MDTouchHelper;->mFlingEnabled:Z

    .line 210
    return-void
.end method

.method public setPinchConfig(Lcom/asha/vrlib/model/MDPinchConfig;)V
    .locals 2
    .param p1, "pinchConfig"    # Lcom/asha/vrlib/model/MDPinchConfig;

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDPinchConfig;->getMin()F

    move-result v0

    iput v0, p0, Lcom/asha/vrlib/MDTouchHelper;->minScale:F

    .line 196
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDPinchConfig;->getMax()F

    move-result v0

    iput v0, p0, Lcom/asha/vrlib/MDTouchHelper;->maxScale:F

    .line 197
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDPinchConfig;->getSensitivity()F

    move-result v0

    iput v0, p0, Lcom/asha/vrlib/MDTouchHelper;->mSensitivity:F

    .line 198
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDPinchConfig;->getDefaultValue()F

    move-result v0

    iput v0, p0, Lcom/asha/vrlib/MDTouchHelper;->defaultScale:F

    .line 199
    iget v0, p0, Lcom/asha/vrlib/MDTouchHelper;->minScale:F

    iget v1, p0, Lcom/asha/vrlib/MDTouchHelper;->defaultScale:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/asha/vrlib/MDTouchHelper;->defaultScale:F

    .line 200
    iget v0, p0, Lcom/asha/vrlib/MDTouchHelper;->maxScale:F

    iget v1, p0, Lcom/asha/vrlib/MDTouchHelper;->defaultScale:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/asha/vrlib/MDTouchHelper;->defaultScale:F

    .line 201
    iget v0, p0, Lcom/asha/vrlib/MDTouchHelper;->defaultScale:F

    invoke-direct {p0, v0}, Lcom/asha/vrlib/MDTouchHelper;->setScaleInner(F)V

    .line 202
    return-void
.end method

.method public setPinchEnabled(Z)V
    .locals 0
    .param p1, "mPinchEnabled"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/asha/vrlib/MDTouchHelper;->mPinchEnabled:Z

    .line 192
    return-void
.end method
