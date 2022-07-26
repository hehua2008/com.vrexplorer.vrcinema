.class Lcom/google/vr/cardboard/TransitionView$1;
.super Ljava/lang/Object;
.source "TransitionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/TransitionView;->inflateContentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/TransitionView;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/TransitionView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/vr/cardboard/TransitionView$1;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView$1;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/cardboard/UiUtils;->launchOrInstallCardboard(Landroid/content/Context;)V

    .line 111
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView$1;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-static {v0}, Lcom/google/vr/cardboard/TransitionView;->access$000(Lcom/google/vr/cardboard/TransitionView;)Lcom/google/vr/cardboard/TransitionView$TransitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView$1;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-static {v0}, Lcom/google/vr/cardboard/TransitionView;->access$000(Lcom/google/vr/cardboard/TransitionView;)Lcom/google/vr/cardboard/TransitionView$TransitionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/vr/cardboard/TransitionView$TransitionListener;->onSwitchViewer()V

    .line 114
    :cond_0
    return-void
.end method
