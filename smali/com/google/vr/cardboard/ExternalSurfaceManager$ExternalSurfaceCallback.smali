.class Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;
.super Ljava/lang/Object;
.source "ExternalSurfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/ExternalSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalSurfaceCallback"
.end annotation


# instance fields
.field private final frameAvailableRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;


# direct methods
.method public constructor <init>(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->listener:Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;

    .line 235
    iput-object p2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->handler:Landroid/os/Handler;

    .line 236
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback$1;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback$1;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->frameAvailableRunnable:Ljava/lang/Runnable;

    .line 242
    return-void
.end method

.method static synthetic access$100(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->listener:Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;

    return-object v0
.end method


# virtual methods
.method public postOnAvailable(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback$2;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback$2;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method

.method public postOnFrameAvailable()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->frameAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    return-void
.end method
