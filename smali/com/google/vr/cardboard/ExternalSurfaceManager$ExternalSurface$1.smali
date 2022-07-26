.class Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;
.super Ljava/lang/Object;
.source "ExternalSurfaceManager.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->maybeAttachToCurrentGLContext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-static {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->access$200(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 304
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-static {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->access$300(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-static {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->access$300(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->postOnFrameAvailable()V

    .line 307
    :cond_0
    return-void
.end method
