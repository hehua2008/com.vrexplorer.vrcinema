.class public Lcom/asha/vrlib/model/MDHotspotBuilder;
.super Ljava/lang/Object;
.source "MDHotspotBuilder.java"


# instance fields
.field public builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

.field public checkedStatusList:[I

.field public imageLoadProvider:Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;

.field public statusList:[I

.field public uriList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;)V
    .locals 2
    .param p1, "imageLoadProvider"    # Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/asha/vrlib/model/MDHotspotBuilder;->uriList:Landroid/util/SparseArray;

    .line 31
    iput-object p1, p0, Lcom/asha/vrlib/model/MDHotspotBuilder;->imageLoadProvider:Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;

    .line 32
    new-instance v0, Lcom/asha/vrlib/model/MDPluginBuilder;

    invoke-direct {v0}, Lcom/asha/vrlib/model/MDPluginBuilder;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/model/MDHotspotBuilder;->builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

    .line 33
    return-void
.end method

.method private checkedStatus(III)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 2
    .param p1, "normal"    # I
    .param p2, "focused"    # I
    .param p3, "pressed"    # I

    .prologue
    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Lcom/asha/vrlib/model/MDHotspotBuilder;->checkedStatusList:[I

    .line 50
    return-object p0
.end method

.method public static create(Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p0, "imageLoadProvider"    # Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;

    .prologue
    .line 27
    new-instance v0, Lcom/asha/vrlib/model/MDHotspotBuilder;

    invoke-direct {v0, p0}, Lcom/asha/vrlib/model/MDHotspotBuilder;-><init>(Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;)V

    return-object v0
.end method

.method private status(III)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 2
    .param p1, "normal"    # I
    .param p2, "focused"    # I
    .param p3, "pressed"    # I

    .prologue
    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Lcom/asha/vrlib/model/MDHotspotBuilder;->statusList:[I

    .line 37
    return-object p0
.end method


# virtual methods
.method public checkedStatus(I)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "normal"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1, p1}, Lcom/asha/vrlib/model/MDHotspotBuilder;->checkedStatus(II)Lcom/asha/vrlib/model/MDHotspotBuilder;

    move-result-object v0

    return-object v0
.end method

.method public checkedStatus(II)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "normal"    # I
    .param p2, "focused"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p2}, Lcom/asha/vrlib/model/MDHotspotBuilder;->checkedStatus(III)Lcom/asha/vrlib/model/MDHotspotBuilder;

    move-result-object v0

    return-object v0
.end method

.method public listenClick(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "listener"    # Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/asha/vrlib/model/MDHotspotBuilder;->builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/model/MDPluginBuilder;->listenClick(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;)Lcom/asha/vrlib/model/MDPluginBuilder;

    .line 110
    return-object p0
.end method

.method public position(Lcom/asha/vrlib/model/MDPosition;)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "position"    # Lcom/asha/vrlib/model/MDPosition;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/asha/vrlib/model/MDHotspotBuilder;->builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/model/MDPluginBuilder;->position(Lcom/asha/vrlib/model/MDPosition;)Lcom/asha/vrlib/model/MDPluginBuilder;

    .line 105
    return-object p0
.end method

.method public provider(ILandroid/content/Context;I)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "key"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "drawableRes"    # I

    .prologue
    .line 82
    invoke-static {p2, p3}, Lcom/asha/vrlib/common/MDUtil;->getDrawableUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/asha/vrlib/model/MDHotspotBuilder;->provider(ILandroid/net/Uri;)Lcom/asha/vrlib/model/MDHotspotBuilder;

    .line 83
    return-object p0
.end method

.method public provider(ILandroid/net/Uri;)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "key"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/asha/vrlib/model/MDHotspotBuilder;->uriList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 88
    return-object p0
.end method

.method public provider(ILjava/lang/String;)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "key"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/asha/vrlib/model/MDHotspotBuilder;->provider(ILandroid/net/Uri;)Lcom/asha/vrlib/model/MDHotspotBuilder;

    .line 78
    return-object p0
.end method

.method public provider(Landroid/content/Context;I)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableRes"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/asha/vrlib/model/MDHotspotBuilder;->provider(ILandroid/content/Context;I)Lcom/asha/vrlib/model/MDHotspotBuilder;

    .line 73
    return-object p0
.end method

.method public provider(Landroid/net/Uri;)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/asha/vrlib/model/MDHotspotBuilder;->provider(ILandroid/net/Uri;)Lcom/asha/vrlib/model/MDHotspotBuilder;

    .line 63
    return-object p0
.end method

.method public provider(Ljava/lang/String;)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/asha/vrlib/model/MDHotspotBuilder;->provider(ILjava/lang/String;)Lcom/asha/vrlib/model/MDHotspotBuilder;

    .line 68
    return-object p0
.end method

.method public size(FF)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 99
    iget-object v0, p0, Lcom/asha/vrlib/model/MDHotspotBuilder;->builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/asha/vrlib/model/MDPluginBuilder;->size(FF)Lcom/asha/vrlib/model/MDPluginBuilder;

    .line 100
    return-object p0
.end method

.method public status(I)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "normal"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1, p1}, Lcom/asha/vrlib/model/MDHotspotBuilder;->status(II)Lcom/asha/vrlib/model/MDHotspotBuilder;

    move-result-object v0

    return-object v0
.end method

.method public status(II)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "normal"    # I
    .param p2, "focused"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p2}, Lcom/asha/vrlib/model/MDHotspotBuilder;->status(III)Lcom/asha/vrlib/model/MDHotspotBuilder;

    move-result-object v0

    return-object v0
.end method

.method public tag(Ljava/lang/String;)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/asha/vrlib/model/MDHotspotBuilder;->builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/model/MDPluginBuilder;->tag(Ljava/lang/String;)Lcom/asha/vrlib/model/MDPluginBuilder;

    .line 115
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/asha/vrlib/model/MDHotspotBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/asha/vrlib/model/MDHotspotBuilder;->builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/model/MDPluginBuilder;->title(Ljava/lang/String;)Lcom/asha/vrlib/model/MDPluginBuilder;

    .line 95
    return-object p0
.end method
