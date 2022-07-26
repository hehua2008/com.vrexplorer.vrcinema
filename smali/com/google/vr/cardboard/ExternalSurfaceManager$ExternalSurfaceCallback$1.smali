.class Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback$1;
.super Ljava/lang/Object;
.source "ExternalSurfaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;-><init>(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    invoke-static {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->access$100(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;->onFrameAvailable()V

    .line 240
    return-void
.end method
