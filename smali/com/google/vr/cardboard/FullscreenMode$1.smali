.class Lcom/google/vr/cardboard/FullscreenMode$1;
.super Ljava/lang/Object;
.source "FullscreenMode.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/FullscreenMode;->setImmersiveStickyModeCompat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/FullscreenMode;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/FullscreenMode;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/vr/cardboard/FullscreenMode$1;->this$0:Lcom/google/vr/cardboard/FullscreenMode;

    iput-object p2, p0, Lcom/google/vr/cardboard/FullscreenMode$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4

    .prologue
    .line 41
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/vr/cardboard/FullscreenMode$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/cardboard/FullscreenMode$1$1;

    invoke-direct {v1, p0}, Lcom/google/vr/cardboard/FullscreenMode$1$1;-><init>(Lcom/google/vr/cardboard/FullscreenMode$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    :cond_0
    return-void
.end method
