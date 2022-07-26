.class Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;
.super Ljava/lang/Object;
.source "MDVRLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MDVRLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatePinchRunnable"
.end annotation


# instance fields
.field private scale:F

.field final synthetic this$0:Lcom/asha/vrlib/MDVRLibrary;


# direct methods
.method private constructor <init>(Lcom/asha/vrlib/MDVRLibrary;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;->this$0:Lcom/asha/vrlib/MDVRLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/MDVRLibrary;Lcom/asha/vrlib/MDVRLibrary$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/MDVRLibrary;
    .param p2, "x1"    # Lcom/asha/vrlib/MDVRLibrary$1;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;-><init>(Lcom/asha/vrlib/MDVRLibrary;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 168
    iget-object v2, p0, Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;->this$0:Lcom/asha/vrlib/MDVRLibrary;

    invoke-static {v2}, Lcom/asha/vrlib/MDVRLibrary;->access$1200(Lcom/asha/vrlib/MDVRLibrary;)Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getDirectors()Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, "directors":Ljava/util/List;, "Ljava/util/List<Lcom/asha/vrlib/MD360Director;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/MD360Director;

    .line 170
    .local v0, "director":Lcom/asha/vrlib/MD360Director;
    iget v3, p0, Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;->scale:F

    invoke-virtual {v0, v3}, Lcom/asha/vrlib/MD360Director;->setNearScale(F)V

    goto :goto_0

    .line 172
    .end local v0    # "director":Lcom/asha/vrlib/MD360Director;
    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 163
    iput p1, p0, Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;->scale:F

    .line 164
    return-void
.end method
