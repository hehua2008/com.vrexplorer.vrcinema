.class Lcom/google/vr/cardboard/UiLayer$8;
.super Ljava/lang/Object;
.source "UiLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/UiLayer;->setAlignmentMarkerScale(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/UiLayer;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiLayer;F)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    iput p2, p0, Lcom/google/vr/cardboard/UiLayer$8;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    .line 274
    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$800(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 275
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->access$000(Lcom/google/vr/cardboard/UiLayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/vr/cardboard/R$dimen;->alignment_marker_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 276
    int-to-float v1, v1

    iget v2, p0, Lcom/google/vr/cardboard/UiLayer$8;->val$scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 279
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 280
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 284
    :goto_0
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->access$800(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    return-void

    .line 282
    :cond_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0
.end method
