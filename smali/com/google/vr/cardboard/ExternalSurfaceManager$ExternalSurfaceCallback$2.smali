.class Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback$2;
.super Ljava/lang/Object;
.source "ExternalSurfaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->postOnAvailable(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

.field final synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback$2;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    iput-object p2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback$2;->val$surface:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback$2;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    invoke-static {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->access$100(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback$2;->val$surface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;->onSurfaceAvailable(Landroid/view/Surface;)V

    .line 251
    return-void
.end method
