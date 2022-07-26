.class public Lcom/asha/vrlib/MD360DirectorFactory$DefaultImpl;
.super Lcom/asha/vrlib/MD360DirectorFactory;
.source "MD360DirectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MD360DirectorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/asha/vrlib/MD360DirectorFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createDirector(I)Lcom/asha/vrlib/MD360Director;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 15
    .line 17
    invoke-static {}, Lcom/asha/vrlib/MD360Director;->builder()Lcom/asha/vrlib/MD360Director$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asha/vrlib/MD360Director$Builder;->build()Lcom/asha/vrlib/MD360Director;

    move-result-object v0

    return-object v0
.end method
