.class public Lcom/google/vr/cardboard/ScreenOrientationDetector;
.super Landroid/view/OrientationEventListener;
.source "ScreenOrientationDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;,
        Lcom/google/vr/cardboard/ScreenOrientationDetector$Orientation;
    }
.end annotation


# static fields
.field private static final DEFAULT_LANDSCAPE_TOLERANCE_DEGREES:I = 0xa

.field private static final DEFAULT_PORTRAIT_TOLERANCE_DEGREES:I = 0x1e


# instance fields
.field private final clientListener:Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;

.field private currentScreenOrientation:I

.field private final landscapeToleranceDegrees:I

.field private final portraitToleranceDegrees:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;)V
    .locals 2

    .prologue
    .line 51
    const/16 v0, 0x1e

    const/16 v1, 0xa

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/vr/cardboard/ScreenOrientationDetector;-><init>(Landroid/content/Context;Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;II)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->currentScreenOrientation:I

    .line 61
    add-int v0, p3, p4

    const/16 v1, 0x5a

    if-le v0, v1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Portrait and landscape detection thresholds must sum to to <= 90 degrees"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p2, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->clientListener:Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;

    .line 66
    iput p3, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->portraitToleranceDegrees:I

    .line 67
    iput p4, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->landscapeToleranceDegrees:I

    .line 68
    return-void
.end method

.method private determineScreenOrientation(I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 103
    if-ne p1, v0, :cond_0

    .line 127
    :goto_0
    return v0

    .line 110
    :cond_0
    rem-int/lit16 v0, p1, 0x168

    .line 111
    iget v1, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->portraitToleranceDegrees:I

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->portraitToleranceDegrees:I

    rsub-int v1, v1, 0x168

    if-lt v0, v1, :cond_2

    .line 113
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 115
    :cond_2
    add-int/lit8 v1, v0, -0x5a

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->landscapeToleranceDegrees:I

    if-gt v1, v2, :cond_3

    .line 116
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    :cond_3
    add-int/lit16 v1, v0, -0xb4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->portraitToleranceDegrees:I

    if-gt v1, v2, :cond_4

    .line 119
    const/4 v0, 0x3

    goto :goto_0

    .line 121
    :cond_4
    add-int/lit16 v0, v0, -0x10e

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->landscapeToleranceDegrees:I

    if-gt v0, v1, :cond_5

    .line 122
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_5
    iget v0, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->currentScreenOrientation:I

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->currentScreenOrientation:I

    .line 80
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->currentScreenOrientation:I

    .line 73
    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    .line 74
    return-void
.end method

.method public getCurrentScreenOrientation()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->currentScreenOrientation:I

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/vr/cardboard/ScreenOrientationDetector;->determineScreenOrientation(I)I

    move-result v0

    .line 85
    iget v1, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->currentScreenOrientation:I

    if-eq v0, v1, :cond_0

    .line 86
    iput v0, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->currentScreenOrientation:I

    .line 87
    iget-object v1, p0, Lcom/google/vr/cardboard/ScreenOrientationDetector;->clientListener:Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;

    invoke-interface {v1, v0}, Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;->onScreenOrientationChanged(I)V

    .line 89
    :cond_0
    return-void
.end method
