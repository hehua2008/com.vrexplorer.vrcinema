.class Lcom/google/vr/cardboard/TransitionView$2;
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
    .line 119
    iput-object p1, p0, Lcom/google/vr/cardboard/TransitionView$2;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView$2;->this$0:Lcom/google/vr/cardboard/TransitionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->access$100(Lcom/google/vr/cardboard/TransitionView;Z)V

    .line 123
    return-void
.end method
