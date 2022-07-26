.class public abstract Lcom/asha/vrlib/MD360DirectorFactory;
.super Ljava/lang/Object;
.source "MD360DirectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalDirector;,
        Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalImpl;,
        Lcom/asha/vrlib/MD360DirectorFactory$DefaultImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createDirector(I)Lcom/asha/vrlib/MD360Director;
.end method
