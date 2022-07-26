.class Lcom/asha/vrlib/strategy/projection/StereoSphereProjection$FixedDirectorFactory;
.super Lcom/asha/vrlib/MD360DirectorFactory;
.source "StereoSphereProjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/strategy/projection/StereoSphereProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedDirectorFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/asha/vrlib/MD360DirectorFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/strategy/projection/StereoSphereProjection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/strategy/projection/StereoSphereProjection$1;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/asha/vrlib/strategy/projection/StereoSphereProjection$FixedDirectorFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createDirector(I)Lcom/asha/vrlib/MD360Director;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 25
    invoke-static {}, Lcom/asha/vrlib/MD360Director;->builder()Lcom/asha/vrlib/MD360Director$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asha/vrlib/MD360Director$Builder;->build()Lcom/asha/vrlib/MD360Director;

    move-result-object v0

    return-object v0
.end method
