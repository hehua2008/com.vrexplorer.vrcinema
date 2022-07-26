.class public abstract Lcom/facebook/react/uimanager/BaseViewManager;
.super Lcom/facebook/react/uimanager/ViewManager;
.source "BaseViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "C:",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        ">",
        "Lcom/facebook/react/uimanager/ViewManager",
        "<TT;TC;>;"
    }
.end annotation


# static fields
.field private static final CAMERA_DISTANCE_NORMALIZATION_MULTIPLIER:F = 5.0f

.field private static final PERSPECTIVE_ARRAY_INVERTED_CAMERA_DISTANCE_INDEX:I = 0x2

.field private static final PROP_ACCESSIBILITY_COMPONENT_TYPE:Ljava/lang/String; = "accessibilityComponentType"

.field private static final PROP_ACCESSIBILITY_LABEL:Ljava/lang/String; = "accessibilityLabel"

.field private static final PROP_ACCESSIBILITY_LIVE_REGION:Ljava/lang/String; = "accessibilityLiveRegion"

.field private static final PROP_BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field private static final PROP_ELEVATION:Ljava/lang/String; = "elevation"

.field private static final PROP_IMPORTANT_FOR_ACCESSIBILITY:Ljava/lang/String; = "importantForAccessibility"

.field public static final PROP_NATIVE_ID:Ljava/lang/String; = "nativeID"

.field private static final PROP_OPACITY:Ljava/lang/String; = "opacity"

.field private static final PROP_RENDER_TO_HARDWARE_TEXTURE:Ljava/lang/String; = "renderToHardwareTextureAndroid"

.field private static final PROP_ROTATION:Ljava/lang/String; = "rotation"

.field private static final PROP_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final PROP_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final PROP_TEST_ID:Ljava/lang/String; = "testID"

.field private static final PROP_TRANSFORM:Ljava/lang/String; = "transform"

.field private static final PROP_TRANSLATE_X:Ljava/lang/String; = "translateX"

.field private static final PROP_TRANSLATE_Y:Ljava/lang/String; = "translateY"

.field private static final PROP_Z_INDEX:Ljava/lang/String; = "zIndex"

.field private static sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

.field private static sTransformDecompositionArray:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [D

    sput-object v0, Lcom/facebook/react/uimanager/BaseViewManager;->sTransformDecompositionArray:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewManager;-><init>()V

    return-void
.end method

.method private static resetTransformProperty(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 201
    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 202
    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 203
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    .line 204
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 205
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 206
    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 207
    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 208
    invoke-virtual {p0, v1}, Landroid/view/View;->setCameraDistance(F)V

    .line 209
    return-void
.end method

.method private static setTransformProperty(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "transforms"    # Lcom/facebook/react/bridge/ReadableArray;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 171
    sget-object v5, Lcom/facebook/react/uimanager/BaseViewManager;->sTransformDecompositionArray:[D

    invoke-static {p1, v5}, Lcom/facebook/react/uimanager/TransformHelper;->processTransform(Lcom/facebook/react/bridge/ReadableArray;[D)V

    .line 172
    sget-object v5, Lcom/facebook/react/uimanager/BaseViewManager;->sTransformDecompositionArray:[D

    sget-object v6, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    invoke-static {v5, v6}, Lcom/facebook/react/uimanager/MatrixMathHelper;->decomposeMatrix([DLcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;)V

    .line 173
    sget-object v5, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v5, v5, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->translation:[D

    aget-wide v6, v5, v8

    double-to-float v5, v6

    .line 174
    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v5

    .line 173
    invoke-virtual {p0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 175
    sget-object v5, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v5, v5, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->translation:[D

    aget-wide v6, v5, v9

    double-to-float v5, v6

    .line 176
    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v5

    .line 175
    invoke-virtual {p0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 177
    sget-object v5, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v5, v5, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v6, v5, v10

    double-to-float v5, v6

    invoke-virtual {p0, v5}, Landroid/view/View;->setRotation(F)V

    .line 178
    sget-object v5, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v5, v5, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v6, v5, v8

    double-to-float v5, v6

    invoke-virtual {p0, v5}, Landroid/view/View;->setRotationX(F)V

    .line 179
    sget-object v5, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v5, v5, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v6, v5, v9

    double-to-float v5, v6

    invoke-virtual {p0, v5}, Landroid/view/View;->setRotationY(F)V

    .line 180
    sget-object v5, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v5, v5, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->scale:[D

    aget-wide v6, v5, v8

    double-to-float v5, v6

    invoke-virtual {p0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 181
    sget-object v5, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v5, v5, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->scale:[D

    aget-wide v6, v5, v9

    double-to-float v5, v6

    invoke-virtual {p0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 183
    sget-object v5, Lcom/facebook/react/uimanager/BaseViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    iget-object v3, v5, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->perspective:[D

    .line 185
    .local v3, "perspectiveArray":[D
    array-length v5, v3

    if-le v5, v10, :cond_0

    .line 186
    aget-wide v6, v3, v10

    double-to-float v1, v6

    .line 187
    .local v1, "invertedCameraDistance":F
    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_0

    .line 188
    const/high16 v5, -0x40800000    # -1.0f

    div-float v0, v5, v1

    .line 189
    .local v0, "cameraDistance":F
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->density:F

    .line 193
    .local v4, "scale":F
    mul-float v5, v4, v0

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float v2, v5, v6

    .line 195
    .local v2, "normalizedCameraDistance":F
    invoke-virtual {p0, v2}, Landroid/view/View;->setCameraDistance(F)V

    .line 198
    .end local v0    # "cameraDistance":F
    .end local v1    # "invertedCameraDistance":F
    .end local v2    # "normalizedCameraDistance":F
    .end local v4    # "scale":F
    :cond_0
    return-void
.end method


# virtual methods
.method public setAccessibilityComponentType(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p2, "accessibilityComponentType"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityComponentType"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/AccessibilityHelper;->updateAccessibilityComponentType(Landroid/view/View;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setAccessibilityLabel(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p2, "accessibilityLabel"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityLabel"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p2, "liveRegion"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityLiveRegion"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 160
    if-eqz p2, :cond_0

    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    const-string v0, "polite"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    goto :goto_0

    .line 164
    :cond_3
    const-string v0, "assertive"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    goto :goto_0
.end method

.method public setBackgroundColor(Landroid/view/View;I)V
    .locals 0
    .param p2, "backgroundColor"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        defaultInt = 0x0
        name = "backgroundColor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 2
    .param p2, "elevation"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "elevation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 74
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 77
    :cond_0
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p2, "importantForAccessibility"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "importantForAccessibility"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    if-eqz p2, :cond_0

    const-string v0, "auto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    const-string v0, "yes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 120
    :cond_3
    const-string v0, "no"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 122
    :cond_4
    const-string v0, "no-hide-descendants"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method public setNativeId(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p2, "nativeId"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nativeID"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Lcom/facebook/react/R$id;->view_tag_native_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 101
    invoke-static {p1}, Lcom/facebook/react/uimanager/util/ReactFindViewUtil;->notifyViewRendered(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method public setOpacity(Landroid/view/View;F)V
    .locals 0
    .param p2, "opacity"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "opacity"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 69
    return-void
.end method

.method public setRenderToHardwareTexture(Landroid/view/View;Z)V
    .locals 2
    .param p2, "useHWTexture"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "renderToHardwareTextureAndroid"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 88
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRotation(Landroid/view/View;F)V
    .locals 0
    .param p2, "rotation"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "rotation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 131
    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .locals 0
    .param p2, "scaleX"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "scaleX"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 137
    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .locals 0
    .param p2, "scaleY"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "scaleY"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 143
    return-void
.end method

.method public setTestId(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p2, "testId"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "testID"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    sget v0, Lcom/facebook/react/R$id;->react_test_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public setTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p2, "matrix"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "transform"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    if-nez p2, :cond_0

    .line 60
    invoke-static {p1}, Lcom/facebook/react/uimanager/BaseViewManager;->resetTransformProperty(Landroid/view/View;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setTransformProperty(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0
.end method

.method public setTranslateX(Landroid/view/View;F)V
    .locals 1
    .param p2, "translateX"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "translateX"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 149
    return-void
.end method

.method public setTranslateY(Landroid/view/View;F)V
    .locals 1
    .param p2, "translateY"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "translateY"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 155
    return-void
.end method

.method public setZIndex(Landroid/view/View;F)V
    .locals 1
    .param p2, "zIndex"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "zIndex"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/facebook/react/uimanager/BaseViewManager;, "Lcom/facebook/react/uimanager/BaseViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 82
    .local v0, "integerZIndex":I
    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->setViewZIndex(Landroid/view/View;I)V

    .line 83
    return-void
.end method
