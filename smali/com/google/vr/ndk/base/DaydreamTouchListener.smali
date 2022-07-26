.class Lcom/google/vr/ndk/base/DaydreamTouchListener;
.super Ljava/lang/Object;
.source "DaydreamTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/DaydreamTouchListener$FinishInitilizationTask;,
        Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;
    }
.end annotation


# static fields
.field private static final MAX_TOUCH_DISTANCE_SQUARED_METERS:D = 2.25E-4

.field private static final TAG:Ljava/lang/String; = "DaydreamTouchListener"


# instance fields
.field private borderSizeMeters:F

.field private currentMarkerBestDists:[D

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private enabled:Z

.field private final gvrApi:Lcom/google/vr/ndk/base/GvrApi;

.field private final isDaydreamImageAlignmentEnabled:Z

.field private lastMotionEventInHeadset:Z

.field private lastTranslation:[F

.field private markerBestTouch:[I

.field private markersInPixels:[[F

.field private mostTouchesSeen:I

.field private pixelTranslation:[F

.field private touchBestMarker:[I

.field private translation:[F

.field private final vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

.field private xMetersPerPixel:F

.field private yMetersPerPixel:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrApi;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->pixelTranslation:[F

    .line 53
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->enabled:Z

    .line 55
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->lastTranslation:[F

    .line 56
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->translation:[F

    .line 65
    invoke-virtual {p2}, Lcom/google/vr/ndk/base/GvrApi;->getSdkConfigurationParams()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->daydreamImageAlignment:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->isDaydreamImageAlignmentEnabled:Z

    .line 68
    invoke-static {p1}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    .line 70
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamTouchListener$FinishInitilizationTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/vr/ndk/base/DaydreamTouchListener$FinishInitilizationTask;-><init>(Lcom/google/vr/ndk/base/DaydreamTouchListener;Lcom/google/vr/ndk/base/DaydreamTouchListener$1;)V

    .line 71
    invoke-static {p1}, Lcom/google/vr/cardboard/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v2

    iput-object v2, v0, Lcom/google/vr/ndk/base/DaydreamTouchListener$FinishInitilizationTask;->display:Landroid/view/Display;

    .line 72
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/DaydreamTouchListener$FinishInitilizationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    iput-object p2, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 74
    return-void

    :cond_0
    move v0, v1

    .line 65
    goto :goto_0
.end method

.method constructor <init>(Lcom/google/vr/cardboard/VrParamsProvider;Landroid/util/DisplayMetrics;Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;Lcom/google/vr/ndk/base/GvrApi;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->pixelTranslation:[F

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->enabled:Z

    .line 55
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->lastTranslation:[F

    .line 56
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->translation:[F

    .line 83
    iput-boolean p5, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->isDaydreamImageAlignmentEnabled:Z

    .line 84
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    .line 85
    iput-object p4, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 87
    invoke-direct {p0, p2, p3}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->init(Landroid/util/DisplayMetrics;Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)V

    .line 88
    return-void
.end method

.method static synthetic access$1000(Lcom/google/vr/ndk/base/DaydreamTouchListener;Landroid/util/DisplayMetrics;Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->init(Landroid/util/DisplayMetrics;Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/vr/ndk/base/DaydreamTouchListener;)Lcom/google/vr/cardboard/VrParamsProvider;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/vr/ndk/base/DaydreamTouchListener;)[[F
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/vr/ndk/base/DaydreamTouchListener;[[F)[[F
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/vr/ndk/base/DaydreamTouchListener;[D)[D
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->currentMarkerBestDists:[D

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/vr/ndk/base/DaydreamTouchListener;[I)[I
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markerBestTouch:[I

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/vr/ndk/base/DaydreamTouchListener;)Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/vr/ndk/base/DaydreamTouchListener;)F
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->xMetersPerPixel:F

    return v0
.end method

.method static synthetic access$800(Lcom/google/vr/ndk/base/DaydreamTouchListener;)F
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->borderSizeMeters:F

    return v0
.end method

.method static synthetic access$900(Lcom/google/vr/ndk/base/DaydreamTouchListener;)F
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->yMetersPerPixel:F

    return v0
.end method

.method private init(Landroid/util/DisplayMetrics;Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)V
    .locals 1

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 347
    invoke-static {p2}, Lcom/google/vr/cardboard/DisplayUtils;->getBorderSizeMeters(Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)F

    move-result v0

    iput v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->borderSizeMeters:F

    .line 349
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v0}, Lcom/google/vr/cardboard/DisplayUtils;->getMetersPerPixelFromDotsPerInch(F)F

    move-result v0

    iput v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->xMetersPerPixel:F

    .line 350
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v0}, Lcom/google/vr/cardboard/DisplayUtils;->getMetersPerPixelFromDotsPerInch(F)F

    move-result v0

    iput v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->yMetersPerPixel:F

    .line 353
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->resetTrackingState()V

    .line 356
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->refreshViewerProfile()V

    .line 357
    return-void
.end method

.method private resetTrackingState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 360
    iput-boolean v2, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->lastMotionEventInHeadset:Z

    .line 361
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->pixelTranslation:[F

    aput v3, v0, v2

    .line 362
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->pixelTranslation:[F

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 363
    iput v2, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->mostTouchesSeen:I

    .line 364
    return-void
.end method


# virtual methods
.method getTranslationInPixels([F)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Translation array too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->pixelTranslation:[F

    aget v0, v0, v2

    aput v0, p1, v2

    .line 213
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->pixelTranslation:[F

    aget v0, v0, v3

    aput v0, p1, v3

    .line 214
    return-void
.end method

.method public getTranslationInScreenSpace([F)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Translation array too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->pixelTranslation:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    aput v0, p1, v2

    .line 229
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->pixelTranslation:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    aput v0, p1, v3

    .line 232
    aget v0, p1, v2

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    aput v0, p1, v2

    .line 233
    aget v0, p1, v3

    const/high16 v1, -0x40000000    # -2.0f

    mul-float/2addr v0, v1

    aput v0, p1, v3

    .line 234
    return-void
.end method

.method isDaydreamImageAlignmentEnabled()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->isDaydreamImageAlignmentEnabled:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p2}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->processMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    :goto_0
    return v0

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->translation:[F

    invoke-virtual {p0, v2}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->getTranslationInScreenSpace([F)V

    .line 99
    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->translation:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->lastTranslation:[F

    aget v3, v3, v0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->translation:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->lastTranslation:[F

    aget v3, v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->lastTranslation:[F

    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->translation:[F

    aget v3, v3, v0

    aput v3, v2, v0

    .line 101
    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->lastTranslation:[F

    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->translation:[F

    aget v3, v3, v1

    aput v3, v2, v1

    .line 102
    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->translation:[F

    aget v0, v3, v0

    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->translation:[F

    aget v3, v3, v1

    invoke-virtual {v2, v0, v3}, Lcom/google/vr/ndk/base/GvrApi;->setLensOffset(FF)V

    :cond_2
    move v0, v1

    .line 104
    goto :goto_0
.end method

.method public processMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->viewerNeedsTouchProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->lastMotionEventInHeadset:Z

    .line 126
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->isDaydreamImageAlignmentEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 139
    iget v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->mostTouchesSeen:I

    if-le v6, v0, :cond_2

    .line 140
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->touchBestMarker:[I

    .line 141
    iput v6, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->mostTouchesSeen:I

    .line 144
    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markerBestTouch:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 146
    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->currentMarkerBestDists:[D

    const-wide v2, 0x3f2d7dbf487fcb92L    # 2.25E-4

    aput-wide v2, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v6, :cond_7

    .line 152
    const-wide v2, 0x3f2d7dbf487fcb92L    # 2.25E-4

    .line 153
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->touchBestMarker:[I

    const/4 v4, -0x1

    aput v4, v0, v1

    .line 154
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 155
    iget-object v4, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->xMetersPerPixel:F

    mul-float/2addr v4, v5

    .line 156
    iget-object v5, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F

    aget-object v5, v5, v0

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->yMetersPerPixel:F

    mul-float/2addr v5, v7

    .line 157
    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    .line 158
    cmpg-double v7, v4, v2

    if-gez v7, :cond_4

    .line 160
    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->touchBestMarker:[I

    aput v0, v2, v1

    move-wide v2, v4

    .line 162
    :cond_4
    iget-object v7, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->currentMarkerBestDists:[D

    aget-wide v8, v7, v0

    cmpg-double v7, v4, v8

    if-gez v7, :cond_5

    .line 163
    iget-object v7, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->currentMarkerBestDists:[D

    aput-wide v4, v7, v0

    .line 164
    iget-object v4, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markerBestTouch:[I

    aput v1, v4, v0

    .line 154
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 151
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 169
    :cond_7
    const/4 v3, 0x0

    .line 170
    const/4 v2, 0x0

    .line 171
    const/4 v1, 0x0

    .line 177
    const/4 v0, 0x0

    :goto_4
    iget-object v4, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markerBestTouch:[I

    array-length v4, v4

    if-ge v0, v4, :cond_a

    .line 178
    iget-object v4, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markerBestTouch:[I

    aget v4, v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 181
    iget-object v4, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->touchBestMarker:[I

    iget-object v5, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markerBestTouch:[I

    aget v5, v5, v0

    aget v4, v4, v5

    if-eq v4, v0, :cond_9

    .line 182
    iget-object v4, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markerBestTouch:[I

    const/4 v5, -0x1

    aput v5, v4, v0

    .line 177
    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 184
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 185
    iget-object v4, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markerBestTouch:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget-object v5, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F

    aget-object v5, v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 186
    iget-object v4, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markerBestTouch:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v2, v4

    goto :goto_5

    .line 192
    :cond_a
    if-lez v1, :cond_b

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->lastMotionEventInHeadset:Z

    .line 194
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->pixelTranslation:[F

    const/4 v4, 0x0

    int-to-float v5, v1

    div-float/2addr v3, v5

    aput v3, v0, v4

    .line 195
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->pixelTranslation:[F

    const/4 v3, 0x1

    int-to-float v1, v1

    div-float v1, v2, v1

    aput v1, v0, v3

    .line 202
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 197
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->lastMotionEventInHeadset:Z

    .line 198
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->pixelTranslation:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 199
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->pixelTranslation:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    goto :goto_6
.end method

.method public refreshViewerProfile()V
    .locals 2

    .prologue
    .line 271
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;-><init>(Lcom/google/vr/ndk/base/DaydreamTouchListener;Lcom/google/vr/ndk/base/DaydreamTouchListener$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 272
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->enabled:Z

    .line 110
    if-nez p1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->resetTrackingState()V

    .line 113
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    .line 279
    return-void
.end method

.method viewerNeedsTouchProcessing()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method wasLastMotionEventInViewer()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener;->lastMotionEventInHeadset:Z

    return v0
.end method
