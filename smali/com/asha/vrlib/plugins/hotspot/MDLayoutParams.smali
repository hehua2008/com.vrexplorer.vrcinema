.class public Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MDLayoutParams.java"


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    return-void
.end method
