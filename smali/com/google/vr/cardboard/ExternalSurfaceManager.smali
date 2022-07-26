.class public Lcom/google/vr/cardboard/ExternalSurfaceManager;
.super Ljava/lang/Object;
.source "ExternalSurfaceManager.java"

# interfaces
.implements Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;,
        Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;,
        Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final gvrApi:Lcom/google/vr/ndk/base/GvrApi;

.field private nextID:I

.field private volatile surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

.field private final surfaceDataUpdateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/vr/cardboard/ExternalSurfaceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/ndk/base/GvrApi;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    invoke-direct {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;-><init>()V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceDataUpdateLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->nextID:I

    .line 52
    iput-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 53
    return-void
.end method

.method private createExternalSurfaceImpl(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)I
    .locals 7

    .prologue
    .line 98
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceDataUpdateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    new-instance v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    invoke-direct {v2, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;)V

    .line 100
    iget v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->nextID:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->nextID:I

    .line 101
    const/4 v0, 0x0

    .line 102
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 103
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    invoke-direct {v0, p1, p2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;-><init>(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)V

    .line 105
    :cond_0
    iget-object v4, v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-direct {v6, v3, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;-><init>(ILcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iput-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 107
    monitor-exit v1

    return v3

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public consumerAttachToCurrentGLContext()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 166
    iget-object v0, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 167
    invoke-virtual {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->maybeAttachToCurrentGLContext()V

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method public consumerDetachFromCurrentGLContext()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 178
    iget-object v0, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 179
    invoke-virtual {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->maybeDetachFromCurrentGLContext()V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->removeAllSurfacesReprojectionThread()V

    .line 185
    return-void
.end method

.method public consumerUpdateManagedSurfaces()V
    .locals 4

    .prologue
    .line 194
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 195
    iget-object v0, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 196
    iget-object v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0, v3}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->updateSurfaceTexture(Lcom/google/vr/ndk/base/GvrApi;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 200
    iget-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0, v2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->shutdown(Lcom/google/vr/ndk/base/GvrApi;)V

    goto :goto_1

    .line 202
    :cond_1
    return-void
.end method

.method public createExternalSurface()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->createExternalSurfaceImpl(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public createExternalSurface(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)I
    .locals 2

    .prologue
    .line 81
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener and handler must both be both non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->createExternalSurfaceImpl(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public getSurface(I)Landroid/view/Surface;
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 151
    iget-object v1, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v0, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 154
    :cond_0
    sget-object v0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->TAG:Ljava/lang/String;

    const/16 v1, 0x3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Surface with ID "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist, returning null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSurfaceCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    iget-object v0, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public releaseExternalSurface(I)V
    .locals 5

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceDataUpdateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    new-instance v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    invoke-direct {v2, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;)V

    .line 119
    iget-object v0, v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    iget-object v3, v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iput-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 126
    :goto_0
    monitor-exit v1

    return-void

    .line 124
    :cond_0
    sget-object v0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->TAG:Ljava/lang/String;

    const/16 v2, 0x30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Not releasing nonexistent surface ID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 5

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceDataUpdateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 62
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    invoke-direct {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;-><init>()V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 63
    iget-object v0, v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 64
    iget-object v4, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0, v4}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->shutdown(Lcom/google/vr/ndk/base/GvrApi;)V

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 66
    :cond_0
    :try_start_1
    iget-object v0, v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 67
    iget-object v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0, v3}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->shutdown(Lcom/google/vr/ndk/base/GvrApi;)V

    goto :goto_1

    .line 69
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
