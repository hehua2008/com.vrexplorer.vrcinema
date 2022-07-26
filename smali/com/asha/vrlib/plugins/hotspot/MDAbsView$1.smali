.class Lcom/asha/vrlib/plugins/hotspot/MDAbsView$1;
.super Ljava/lang/Object;
.source "MDAbsView.java"

# interfaces
.implements Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->initInGL(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/plugins/hotspot/MDAbsView;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/plugins/hotspot/MDAbsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/plugins/hotspot/MDAbsView;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$1;->this$0:Lcom/asha/vrlib/plugins/hotspot/MDAbsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProvideBitmap(Lcom/asha/vrlib/texture/MD360BitmapTexture$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/asha/vrlib/texture/MD360BitmapTexture$Callback;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$1;->this$0:Lcom/asha/vrlib/plugins/hotspot/MDAbsView;

    invoke-static {v0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->access$000(Lcom/asha/vrlib/plugins/hotspot/MDAbsView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$1;->this$0:Lcom/asha/vrlib/plugins/hotspot/MDAbsView;

    invoke-static {v0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->access$000(Lcom/asha/vrlib/plugins/hotspot/MDAbsView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/asha/vrlib/texture/MD360BitmapTexture$Callback;->texture(Landroid/graphics/Bitmap;)V

    .line 106
    :cond_0
    return-void
.end method
