.class public Lcom/BV/LinearGradient/LinearGradientManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "LinearGradientManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager",
        "<",
        "Lcom/BV/LinearGradient/LinearGradientView;",
        ">;"
    }
.end annotation


# static fields
.field public static final PROP_BORDER_RADII:Ljava/lang/String; = "borderRadii"

.field public static final PROP_COLORS:Ljava/lang/String; = "colors"

.field public static final PROP_END_POS:Ljava/lang/String; = "end"

.field public static final PROP_LOCATIONS:Ljava/lang/String; = "locations"

.field public static final PROP_START_POS:Ljava/lang/String; = "start"

.field public static final REACT_CLASS:Ljava/lang/String; = "BVLinearGradient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/BV/LinearGradient/LinearGradientManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/BV/LinearGradient/LinearGradientView;

    move-result-object v0

    return-object v0
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/BV/LinearGradient/LinearGradientView;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 27
    new-instance v0, Lcom/BV/LinearGradient/LinearGradientView;

    invoke-direct {v0, p1}, Lcom/BV/LinearGradient/LinearGradientView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "BVLinearGradient"

    return-object v0
.end method

.method public setBorderRadii(Lcom/BV/LinearGradient/LinearGradientView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "gradientView"    # Lcom/BV/LinearGradient/LinearGradientView;
    .param p2, "borderRadii"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "borderRadii"
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1, p2}, Lcom/BV/LinearGradient/LinearGradientView;->setBorderRadii(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 57
    return-void
.end method

.method public setColors(Lcom/BV/LinearGradient/LinearGradientView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "gradientView"    # Lcom/BV/LinearGradient/LinearGradientView;
    .param p2, "colors"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "colors"
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1, p2}, Lcom/BV/LinearGradient/LinearGradientView;->setColors(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 33
    return-void
.end method

.method public setEndPosition(Lcom/BV/LinearGradient/LinearGradientView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "gradientView"    # Lcom/BV/LinearGradient/LinearGradientView;
    .param p2, "endPos"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "end"
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1, p2}, Lcom/BV/LinearGradient/LinearGradientView;->setEndPosition(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 50
    return-void
.end method

.method public setLocations(Lcom/BV/LinearGradient/LinearGradientView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "gradientView"    # Lcom/BV/LinearGradient/LinearGradientView;
    .param p2, "locations"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "locations"
    .end annotation

    .prologue
    .line 37
    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p1, p2}, Lcom/BV/LinearGradient/LinearGradientView;->setLocations(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 40
    :cond_0
    return-void
.end method

.method public setStartPosition(Lcom/BV/LinearGradient/LinearGradientView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "gradientView"    # Lcom/BV/LinearGradient/LinearGradientView;
    .param p2, "startPos"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "start"
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1, p2}, Lcom/BV/LinearGradient/LinearGradientView;->setStartPosition(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 45
    return-void
.end method
