.class Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;
.super Ljava/lang/Object;
.source "ExternalSurfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/ExternalSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalSurfaceData"
.end annotation


# instance fields
.field final surfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;",
            ">;"
        }
    .end annotation
.end field

.field final surfacesToRelease:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    .line 212
    return-void
.end method

.method constructor <init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;)V
    .locals 2

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    .line 217
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    .line 218
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-static {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->access$000(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 224
    :cond_1
    return-void
.end method
