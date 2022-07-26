.class public final Lcom/google/vr/vrcore/library/api/ObjectWrapper;
.super Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;
.source "ObjectWrapper.java"


# annotations
.annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
    value = "ObjectWrapper.java"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;"
    }
.end annotation


# instance fields
.field private final wrappedObject:Ljava/lang/Object;
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
        value = "ObjectWrapper.java"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrappedObject:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public static unwrap(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/vr/vrcore/library/api/IObjectWrapper;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 51
    instance-of v0, p0, Lcom/google/vr/vrcore/library/api/ObjectWrapper;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Lcom/google/vr/vrcore/library/api/ObjectWrapper;

    iget-object v0, p0, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrappedObject:Ljava/lang/Object;

    .line 71
    :goto_0
    return-object v0

    .line 55
    :cond_0
    invoke-interface {p0}, Lcom/google/vr/vrcore/library/api/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 62
    array-length v2, v1

    if-ne v2, v3, :cond_3

    .line 63
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 64
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteBinder is the wrong class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Binder object is null."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :cond_1
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "remoteBinder is the wrong class."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :catch_2
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not access the field in remoteBinder."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/vr/vrcore/library/api/IObjectWrapper;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/google/vr/vrcore/library/api/ObjectWrapper;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
