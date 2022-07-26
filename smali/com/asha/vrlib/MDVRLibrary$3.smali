.class Lcom/asha/vrlib/MDVRLibrary$3;
.super Ljava/lang/Object;
.source "MDVRLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/MDVRLibrary;->resetTouch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/MDVRLibrary;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/MDVRLibrary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/MDVRLibrary;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$3;->this$0:Lcom/asha/vrlib/MDVRLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 317
    iget-object v2, p0, Lcom/asha/vrlib/MDVRLibrary$3;->this$0:Lcom/asha/vrlib/MDVRLibrary;

    invoke-static {v2}, Lcom/asha/vrlib/MDVRLibrary;->access$1200(Lcom/asha/vrlib/MDVRLibrary;)Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getDirectors()Ljava/util/List;

    move-result-object v1

    .line 318
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

    .line 319
    .local v0, "director":Lcom/asha/vrlib/MD360Director;
    invoke-virtual {v0}, Lcom/asha/vrlib/MD360Director;->reset()V

    goto :goto_0

    .line 321
    .end local v0    # "director":Lcom/asha/vrlib/MD360Director;
    :cond_0
    return-void
.end method
