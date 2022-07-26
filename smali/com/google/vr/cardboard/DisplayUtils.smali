.class public Lcom/google/vr/cardboard/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# static fields
.field private static final DEFAULT_BORDER_SIZE_METERS:F = 0.003f

.field public static final EXTERNAL_DISPLAY_RESOURCE_NAME:Ljava/lang/String; = "display_manager_hdmi_display_name"

.field private static final METERS_PER_INCH:F = 0.0254f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBorderSizeMeters(Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)F
    .locals 1

    .prologue
    .line 131
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->hasBottomBezelHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->getBottomBezelHeight()F

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    const v0, 0x3b449ba6    # 0.003f

    goto :goto_0
.end method

.method public static getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    .prologue
    .line 50
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 51
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayMetricsLandscape(Landroid/view/Display;)Landroid/util/DisplayMetrics;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    :goto_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    .line 75
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 76
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    iput v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 86
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 87
    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 88
    iput v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 90
    return-object v0

    .line 69
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public static getDisplayMetricsLandscapeWithOverride(Landroid/view/Display;Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 107
    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getDisplayMetricsLandscape(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 109
    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->hasXPpi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->getXPpi()F

    move-result v1

    iput v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->hasYPpi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->getYPpi()F

    move-result v1

    iput v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 120
    :cond_1
    return-object v0
.end method

.method public static getExternalDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 158
    const-string v1, "display_manager_hdmi_display_name"

    const-string v2, "string"

    const-string v3, "android"

    .line 159
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 161
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMetersPerPixelFromDotsPerInch(F)F
    .locals 1

    .prologue
    .line 146
    const v0, 0x3cd013a9    # 0.0254f

    div-float/2addr v0, p0

    return v0
.end method

.method public static hasExternalDisplay(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-gt v0, v2, :cond_0

    move v0, v1

    .line 192
    :goto_0
    return v0

    .line 179
    :cond_0
    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getExternalDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 180
    if-nez v2, :cond_1

    move v0, v1

    .line 181
    goto :goto_0

    .line 184
    :cond_1
    const-string v0, "display"

    .line 185
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 186
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 187
    invoke-virtual {v5}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 192
    goto :goto_0
.end method

.method public static isSameDisplay(Landroid/view/Display;Landroid/view/Display;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 207
    if-ne p0, p1, :cond_1

    .line 208
    const/4 v0, 0x1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/view/Display;->isValid()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/Display;->isValid()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 223
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 224
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 225
    invoke-virtual {p1, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 226
    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->equals(Landroid/util/DisplayMetrics;)Z

    move-result v0

    goto :goto_0
.end method
