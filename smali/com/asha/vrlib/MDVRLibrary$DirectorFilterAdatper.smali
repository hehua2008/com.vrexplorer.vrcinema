.class public Lcom/asha/vrlib/MDVRLibrary$DirectorFilterAdatper;
.super Ljava/lang/Object;
.source "MDVRLibrary.java"

# interfaces
.implements Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MDVRLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectorFilterAdatper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterPitch(F)F
    .locals 0
    .param p1, "input"    # F

    .prologue
    .line 539
    return p1
.end method

.method public onFilterRoll(F)F
    .locals 0
    .param p1, "input"    # F

    .prologue
    .line 549
    return p1
.end method

.method public onFilterYaw(F)F
    .locals 0
    .param p1, "input"    # F

    .prologue
    .line 544
    return p1
.end method
