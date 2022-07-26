.class Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;
.super Ljava/lang/Object;
.source "MD360BitmapTexture.java"

# interfaces
.implements Lcom/asha/vrlib/texture/MD360BitmapTexture$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/texture/MD360BitmapTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncCallback"
.end annotation


# instance fields
.field private bitmapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->maxSize:I

    .line 150
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->bitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->bitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxTextureSize()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->maxSize:I

    return v0
.end method

.method public hasBitmap()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->bitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->bitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseBitmap()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->bitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->bitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->bitmapRef:Ljava/lang/ref/SoftReference;

    .line 175
    return-void
.end method

.method public texture(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/asha/vrlib/texture/MD360BitmapTexture$AsyncCallback;->bitmapRef:Ljava/lang/ref/SoftReference;

    .line 155
    return-void
.end method
