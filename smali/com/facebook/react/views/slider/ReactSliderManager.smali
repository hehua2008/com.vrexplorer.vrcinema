.class public Lcom/facebook/react/views/slider/ReactSliderManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "ReactSliderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager",
        "<",
        "Lcom/facebook/react/views/slider/ReactSlider;",
        ">;"
    }
.end annotation


# static fields
.field private static final ON_CHANGE_LISTENER:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private static final REACT_CLASS:Ljava/lang/String; = "RCTSlider"

.field private static final STYLE:I = 0x101007b


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/facebook/react/views/slider/ReactSliderManager$1;

    invoke-direct {v0}, Lcom/facebook/react/views/slider/ReactSliderManager$1;-><init>()V

    sput-object v0, Lcom/facebook/react/views/slider/ReactSliderManager;->ON_CHANGE_LISTENER:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 42
    check-cast p2, Lcom/facebook/react/views/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/slider/ReactSliderManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/slider/ReactSlider;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/slider/ReactSlider;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "view"    # Lcom/facebook/react/views/slider/ReactSlider;

    .prologue
    .line 187
    sget-object v0, Lcom/facebook/react/views/slider/ReactSliderManager;->ON_CHANGE_LISTENER:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/slider/ReactSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 188
    return-void
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;-><init>(Lcom/facebook/react/views/slider/ReactSliderManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/facebook/react/views/slider/ReactSliderManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/slider/ReactSliderManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/slider/ReactSlider;

    move-result-object v0

    return-object v0
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/slider/ReactSlider;
    .locals 3
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 124
    new-instance v0, Lcom/facebook/react/views/slider/ReactSlider;

    const/4 v1, 0x0

    const v2, 0x101007b

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/react/views/slider/ReactSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 3

    .prologue
    .line 192
    const-string v0, "topSlidingComplete"

    const-string v1, "registrationName"

    const-string v2, "onSlidingComplete"

    .line 194
    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 192
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "RCTSlider"

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;

    return-object v0
.end method

.method public setEnabled(Lcom/facebook/react/views/slider/ReactSlider;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/slider/ReactSlider;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "enabled"
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/slider/ReactSlider;->setEnabled(Z)V

    .line 130
    return-void
.end method

.method public setMaximumTrackTintColor(Lcom/facebook/react/views/slider/ReactSlider;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "view"    # Lcom/facebook/react/views/slider/ReactSlider;
    .param p2, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "maximumTrackTintColor"
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/facebook/react/views/slider/ReactSlider;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 177
    .local v0, "drawable":Landroid/graphics/drawable/LayerDrawable;
    const v2, 0x102000d

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 178
    .local v1, "progress":Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_0

    .line 179
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public setMaximumValue(Lcom/facebook/react/views/slider/ReactSlider;D)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/slider/ReactSlider;
    .param p2, "value"    # D
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultDouble = 1.0
        name = "maximumValue"
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/views/slider/ReactSlider;->setMaxValue(D)V

    .line 147
    return-void
.end method

.method public setMinimumTrackTintColor(Lcom/facebook/react/views/slider/ReactSlider;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "view"    # Lcom/facebook/react/views/slider/ReactSlider;
    .param p2, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "minimumTrackTintColor"
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/facebook/react/views/slider/ReactSlider;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 166
    .local v1, "drawable":Landroid/graphics/drawable/LayerDrawable;
    const/high16 v2, 0x1020000

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public setMinimumValue(Lcom/facebook/react/views/slider/ReactSlider;D)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/slider/ReactSlider;
    .param p2, "value"    # D
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultDouble = 0.0
        name = "minimumValue"
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/views/slider/ReactSlider;->setMinValue(D)V

    .line 142
    return-void
.end method

.method public setStep(Lcom/facebook/react/views/slider/ReactSlider;D)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/slider/ReactSlider;
    .param p2, "value"    # D
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultDouble = 0.0
        name = "step"
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/views/slider/ReactSlider;->setStep(D)V

    .line 152
    return-void
.end method

.method public setThumbTintColor(Lcom/facebook/react/views/slider/ReactSlider;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/slider/ReactSlider;
    .param p2, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "thumbTintColor"
    .end annotation

    .prologue
    .line 156
    if-nez p2, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/facebook/react/views/slider/ReactSlider;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/slider/ReactSlider;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public setValue(Lcom/facebook/react/views/slider/ReactSlider;D)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/slider/ReactSlider;
    .param p2, "value"    # D
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultDouble = 0.0
        name = "value"
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/slider/ReactSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/views/slider/ReactSlider;->setValue(D)V

    .line 136
    sget-object v0, Lcom/facebook/react/views/slider/ReactSliderManager;->ON_CHANGE_LISTENER:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/slider/ReactSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 137
    return-void
.end method
