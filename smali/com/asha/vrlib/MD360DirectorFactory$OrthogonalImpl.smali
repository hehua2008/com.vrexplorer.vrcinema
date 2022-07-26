.class public Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalImpl;
.super Lcom/asha/vrlib/MD360DirectorFactory;
.source "MD360DirectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MD360DirectorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrthogonalImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/asha/vrlib/MD360DirectorFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createDirector(I)Lcom/asha/vrlib/MD360Director;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 26
    .line 27
    new-instance v0, Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalDirector;

    new-instance v1, Lcom/asha/vrlib/MD360Director$Builder;

    invoke-direct {v1}, Lcom/asha/vrlib/MD360Director$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalDirector;-><init>(Lcom/asha/vrlib/MD360Director$Builder;Lcom/asha/vrlib/MD360DirectorFactory$1;)V

    return-object v0
.end method
