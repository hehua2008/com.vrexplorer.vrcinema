.class Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot$1;
.super Ljava/lang/Object;
.source "MDSimpleHotspot.java"

# interfaces
.implements Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->initInGL(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot$1;->this$0:Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProvideBitmap(Lcom/asha/vrlib/texture/MD360BitmapTexture$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/asha/vrlib/texture/MD360BitmapTexture$Callback;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot$1;->this$0:Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;

    invoke-static {v1}, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->access$100(Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot$1;->this$0:Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;

    invoke-static {v2}, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->access$000(Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 47
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot$1;->this$0:Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;

    invoke-static {v1}, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->access$200(Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;)Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;->onProvideBitmap(Landroid/net/Uri;Lcom/asha/vrlib/texture/MD360BitmapTexture$Callback;)V

    .line 50
    :cond_0
    return-void
.end method
