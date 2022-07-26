.class public Lcom/asha/vrlib/MD360Director$Builder;
.super Ljava/lang/Object;
.source "MD360Director.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MD360Director;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCamera:Lcom/asha/vrlib/MDDirectorCamera;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Lcom/asha/vrlib/MDDirectorCamera;

    invoke-direct {v0}, Lcom/asha/vrlib/MDDirectorCamera;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/MD360Director$Builder;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    return-void
.end method

.method static synthetic access$000(Lcom/asha/vrlib/MD360Director$Builder;)Lcom/asha/vrlib/MDDirectorCamera;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/MD360Director$Builder;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director$Builder;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    return-object v0
.end method

.method private camera()Lcom/asha/vrlib/MDDirectorCamera;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/asha/vrlib/MD360Director$Builder;->mCamera:Lcom/asha/vrlib/MDDirectorCamera;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/asha/vrlib/MD360Director;
    .locals 1

    .prologue
    .line 316
    new-instance v0, Lcom/asha/vrlib/MD360Director;

    invoke-direct {v0, p0}, Lcom/asha/vrlib/MD360Director;-><init>(Lcom/asha/vrlib/MD360Director$Builder;)V

    return-object v0
.end method

.method public setEyeX(F)Lcom/asha/vrlib/MD360Director$Builder;
    .locals 1
    .param p1, "mEyeX"    # F

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director$Builder;->camera()Lcom/asha/vrlib/MDDirectorCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setEyeX(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 282
    return-object p0
.end method

.method public setEyeY(F)Lcom/asha/vrlib/MD360Director$Builder;
    .locals 1
    .param p1, "mEyeY"    # F

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director$Builder;->camera()Lcom/asha/vrlib/MDDirectorCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setEyeY(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 287
    return-object p0
.end method

.method public setEyeZ(F)Lcom/asha/vrlib/MD360Director$Builder;
    .locals 1
    .param p1, "mEyeZ"    # F

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director$Builder;->camera()Lcom/asha/vrlib/MDDirectorCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setEyeZ(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 292
    return-object p0
.end method

.method public setLookX(F)Lcom/asha/vrlib/MD360Director$Builder;
    .locals 1
    .param p1, "mLookX"    # F

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director$Builder;->camera()Lcom/asha/vrlib/MDDirectorCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setLookX(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 272
    return-object p0
.end method

.method public setLookY(F)Lcom/asha/vrlib/MD360Director$Builder;
    .locals 1
    .param p1, "mLookY"    # F

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director$Builder;->camera()Lcom/asha/vrlib/MDDirectorCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setLookY(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 277
    return-object p0
.end method

.method public setNearScale(F)Lcom/asha/vrlib/MD360Director$Builder;
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director$Builder;->camera()Lcom/asha/vrlib/MDDirectorCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setNearScale(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 297
    return-object p0
.end method

.method public setPitch(F)Lcom/asha/vrlib/MD360Director$Builder;
    .locals 1
    .param p1, "pitch"    # F

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director$Builder;->camera()Lcom/asha/vrlib/MDDirectorCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setPitch(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 307
    return-object p0
.end method

.method public setRoll(F)Lcom/asha/vrlib/MD360Director$Builder;
    .locals 1
    .param p1, "roll"    # F

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director$Builder;->camera()Lcom/asha/vrlib/MDDirectorCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setRoll(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 302
    return-object p0
.end method

.method public setYaw(F)Lcom/asha/vrlib/MD360Director$Builder;
    .locals 1
    .param p1, "yaw"    # F

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/asha/vrlib/MD360Director$Builder;->camera()Lcom/asha/vrlib/MDDirectorCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDDirectorCamera;->setYaw(F)Lcom/asha/vrlib/MDDirectorCamera;

    .line 312
    return-object p0
.end method
