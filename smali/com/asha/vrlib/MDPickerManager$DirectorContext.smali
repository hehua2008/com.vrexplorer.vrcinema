.class Lcom/asha/vrlib/MDPickerManager$DirectorContext;
.super Ljava/lang/Object;
.source "MDPickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MDPickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectorContext"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asha/vrlib/model/MDDirectorSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/MDPickerManager$DirectorContext;->list:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/MDPickerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/MDPickerManager$1;

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/asha/vrlib/MDPickerManager$DirectorContext;-><init>()V

    return-void
.end method

.method private ensureSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 338
    iput p1, p0, Lcom/asha/vrlib/MDPickerManager$DirectorContext;->size:I

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$DirectorContext;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$DirectorContext;->list:Ljava/util/List;

    new-instance v1, Lcom/asha/vrlib/model/MDDirectorSnapshot;

    invoke-direct {v1}, Lcom/asha/vrlib/model/MDDirectorSnapshot;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_0
    return-void
.end method


# virtual methods
.method public getSnapshot(I)Lcom/asha/vrlib/model/MDDirectorSnapshot;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 346
    iget v0, p0, Lcom/asha/vrlib/MDPickerManager$DirectorContext;->size:I

    if-ge p1, v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$DirectorContext;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/model/MDDirectorSnapshot;

    .line 350
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public snapshot(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/asha/vrlib/MD360Director;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "directorList":Ljava/util/List;, "Ljava/util/List<Lcom/asha/vrlib/MD360Director;>;"
    const-string v1, "snapshot must in gl thread!"

    invoke-static {v1}, Lcom/asha/vrlib/common/VRUtil;->checkGLThread(Ljava/lang/String;)V

    .line 331
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/asha/vrlib/MDPickerManager$DirectorContext;->ensureSize(I)V

    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/asha/vrlib/MDPickerManager$DirectorContext;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asha/vrlib/model/MDDirectorSnapshot;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asha/vrlib/MD360Director;

    invoke-virtual {v1, v2}, Lcom/asha/vrlib/model/MDDirectorSnapshot;->copy(Lcom/asha/vrlib/MD360Director;)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    return-void
.end method
