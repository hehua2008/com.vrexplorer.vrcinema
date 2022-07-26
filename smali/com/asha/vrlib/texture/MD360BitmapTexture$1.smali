.class Lcom/asha/vrlib/texture/MD360BitmapTexture$1;
.super Ljava/lang/Object;
.source "MD360BitmapTexture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/texture/MD360BitmapTexture;->loadTexture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/texture/MD360BitmapTexture;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/texture/MD360BitmapTexture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/texture/MD360BitmapTexture;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture$1;->this$0:Lcom/asha/vrlib/texture/MD360BitmapTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture$1;->this$0:Lcom/asha/vrlib/texture/MD360BitmapTexture;

    invoke-static {v0}, Lcom/asha/vrlib/texture/MD360BitmapTexture;->access$100(Lcom/asha/vrlib/texture/MD360BitmapTexture;)Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture$1;->this$0:Lcom/asha/vrlib/texture/MD360BitmapTexture;

    invoke-static {v1}, Lcom/asha/vrlib/texture/MD360BitmapTexture;->access$000(Lcom/asha/vrlib/texture/MD360BitmapTexture;)Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;->onProvideBitmap(Lcom/asha/vrlib/texture/MD360BitmapTexture$Callback;)V

    .line 95
    return-void
.end method
