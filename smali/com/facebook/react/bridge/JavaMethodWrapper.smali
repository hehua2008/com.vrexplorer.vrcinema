.class public Lcom/facebook/react/bridge/JavaMethodWrapper;
.super Ljava/lang/Object;
.source "JavaMethodWrapper.java"

# interfaces
.implements Lcom/facebook/react/bridge/NativeModule$NativeMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    }
.end annotation


# static fields
.field private static final ARGUMENT_EXTRACTOR_ARRAY:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor",
            "<",
            "Lcom/facebook/react/bridge/ReadableNativeArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final ARGUMENT_EXTRACTOR_BOOLEAN:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ARGUMENT_EXTRACTOR_CALLBACK:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor",
            "<",
            "Lcom/facebook/react/bridge/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static final ARGUMENT_EXTRACTOR_DOUBLE:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final ARGUMENT_EXTRACTOR_DYNAMIC:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor",
            "<",
            "Lcom/facebook/react/bridge/Dynamic;",
            ">;"
        }
    .end annotation
.end field

.field private static final ARGUMENT_EXTRACTOR_FLOAT:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ARGUMENT_EXTRACTOR_INTEGER:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ARGUMENT_EXTRACTOR_MAP:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor",
            "<",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final ARGUMENT_EXTRACTOR_PROMISE:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor",
            "<",
            "Lcom/facebook/react/bridge/Promise;",
            ">;"
        }
    .end annotation
.end field

.field private static final ARGUMENT_EXTRACTOR_STRING:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArgumentExtractors:[Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mArguments:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mArgumentsProcessed:Z

.field private mJSArgumentsNeeded:I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMethod:Ljava/lang/reflect/Method;

.field private final mModuleWrapper:Lcom/facebook/react/bridge/JavaModuleWrapper;

.field private final mParamLength:I

.field private final mParameterTypes:[Ljava/lang/Class;

.field private mSignature:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/facebook/react/bridge/JavaMethodWrapper$1;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaMethodWrapper$1;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_BOOLEAN:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    .line 43
    new-instance v0, Lcom/facebook/react/bridge/JavaMethodWrapper$2;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaMethodWrapper$2;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_DOUBLE:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    .line 52
    new-instance v0, Lcom/facebook/react/bridge/JavaMethodWrapper$3;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaMethodWrapper$3;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_FLOAT:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    .line 61
    new-instance v0, Lcom/facebook/react/bridge/JavaMethodWrapper$4;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaMethodWrapper$4;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_INTEGER:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    .line 70
    new-instance v0, Lcom/facebook/react/bridge/JavaMethodWrapper$5;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaMethodWrapper$5;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_STRING:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    .line 79
    new-instance v0, Lcom/facebook/react/bridge/JavaMethodWrapper$6;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaMethodWrapper$6;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_ARRAY:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    .line 88
    new-instance v0, Lcom/facebook/react/bridge/JavaMethodWrapper$7;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaMethodWrapper$7;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_DYNAMIC:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    .line 97
    new-instance v0, Lcom/facebook/react/bridge/JavaMethodWrapper$8;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaMethodWrapper$8;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_MAP:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    .line 106
    new-instance v0, Lcom/facebook/react/bridge/JavaMethodWrapper$9;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaMethodWrapper$9;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_CALLBACK:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    .line 120
    new-instance v0, Lcom/facebook/react/bridge/JavaMethodWrapper$10;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaMethodWrapper$10;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_PROMISE:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/JavaModuleWrapper;Ljava/lang/reflect/Method;Z)V
    .locals 2
    .param p1, "module"    # Lcom/facebook/react/bridge/JavaModuleWrapper;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "isSync"    # Z

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const-string v0, "async"

    iput-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mType:Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArgumentsProcessed:Z

    .line 213
    iput-object p1, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mModuleWrapper:Lcom/facebook/react/bridge/JavaModuleWrapper;

    .line 214
    iput-object p2, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mMethod:Ljava/lang/reflect/Method;

    .line 215
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 216
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mParameterTypes:[Ljava/lang/Class;

    .line 217
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mParameterTypes:[Ljava/lang/Class;

    array-length v0, v0

    iput v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mParamLength:I

    .line 219
    if-eqz p3, :cond_1

    .line 220
    const-string v0, "sync"

    iput-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mType:Ljava/lang/String;

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mParamLength:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mParameterTypes:[Ljava/lang/Class;

    iget v1, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mParamLength:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const-class v1, Lcom/facebook/react/bridge/Promise;

    if-ne v0, v1, :cond_0

    .line 222
    const-string v0, "promise"

    iput-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mType:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100()Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_CALLBACK:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    return-object v0
.end method

.method private buildArgumentExtractors([Ljava/lang/Class;)[Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    .locals 6
    .param p1, "paramTypes"    # [Ljava/lang/Class;

    .prologue
    .line 283
    array-length v3, p1

    new-array v1, v3, [Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    .line 284
    .local v1, "argumentExtractors":[Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_f

    .line 285
    aget-object v0, p1, v2

    .line 286
    .local v0, "argumentClass":Ljava/lang/Class;
    const-class v3, Ljava/lang/Boolean;

    if-eq v0, v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_1

    .line 287
    :cond_0
    sget-object v3, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_BOOLEAN:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    aput-object v3, v1, v2

    .line 284
    :goto_1
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;->getJSArgumentsNeeded()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 288
    :cond_1
    const-class v3, Ljava/lang/Integer;

    if-eq v0, v3, :cond_2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_3

    .line 289
    :cond_2
    sget-object v3, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_INTEGER:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    aput-object v3, v1, v2

    goto :goto_1

    .line 290
    :cond_3
    const-class v3, Ljava/lang/Double;

    if-eq v0, v3, :cond_4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_5

    .line 291
    :cond_4
    sget-object v3, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_DOUBLE:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    aput-object v3, v1, v2

    goto :goto_1

    .line 292
    :cond_5
    const-class v3, Ljava/lang/Float;

    if-eq v0, v3, :cond_6

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_7

    .line 293
    :cond_6
    sget-object v3, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_FLOAT:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    aput-object v3, v1, v2

    goto :goto_1

    .line 294
    :cond_7
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_8

    .line 295
    sget-object v3, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_STRING:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    aput-object v3, v1, v2

    goto :goto_1

    .line 296
    :cond_8
    const-class v3, Lcom/facebook/react/bridge/Callback;

    if-ne v0, v3, :cond_9

    .line 297
    sget-object v3, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_CALLBACK:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    aput-object v3, v1, v2

    goto :goto_1

    .line 298
    :cond_9
    const-class v3, Lcom/facebook/react/bridge/Promise;

    if-ne v0, v3, :cond_b

    .line 299
    sget-object v3, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_PROMISE:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    aput-object v3, v1, v2

    .line 300
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_a

    const/4 v3, 0x1

    :goto_2
    const-string v4, "Promise must be used as last parameter only"

    invoke-static {v3, v4}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    goto :goto_2

    .line 302
    :cond_b
    const-class v3, Lcom/facebook/react/bridge/ReadableMap;

    if-ne v0, v3, :cond_c

    .line 303
    sget-object v3, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_MAP:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    aput-object v3, v1, v2

    goto :goto_1

    .line 304
    :cond_c
    const-class v3, Lcom/facebook/react/bridge/ReadableArray;

    if-ne v0, v3, :cond_d

    .line 305
    sget-object v3, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_ARRAY:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    aput-object v3, v1, v2

    goto :goto_1

    .line 306
    :cond_d
    const-class v3, Lcom/facebook/react/bridge/Dynamic;

    if-ne v0, v3, :cond_e

    .line 307
    sget-object v3, Lcom/facebook/react/bridge/JavaMethodWrapper;->ARGUMENT_EXTRACTOR_DYNAMIC:Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    aput-object v3, v1, v2

    goto :goto_1

    .line 309
    :cond_e
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got unknown argument class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 310
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    .end local v0    # "argumentClass":Ljava/lang/Class;
    :cond_f
    return-object v1
.end method

.method private buildSignature(Ljava/lang/reflect/Method;[Ljava/lang/Class;Z)Ljava/lang/String;
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "paramTypes"    # [Ljava/lang/Class;
    .param p3, "isSync"    # Z

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v3, p2

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 263
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_1

    .line 264
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/react/bridge/JavaMethodWrapper;->returnTypeToChar(Ljava/lang/Class;)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_3

    .line 271
    aget-object v2, p2, v1

    .line 272
    .local v2, "paramClass":Ljava/lang/Class;
    const-class v3, Lcom/facebook/react/bridge/Promise;

    if-ne v2, v3, :cond_0

    .line 273
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    const-string v4, "Promise must be used as last parameter only"

    invoke-static {v3, v4}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 276
    :cond_0
    invoke-static {v2}, Lcom/facebook/react/bridge/JavaMethodWrapper;->paramTypeToChar(Ljava/lang/Class;)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 267
    .end local v1    # "i":I
    .end local v2    # "paramClass":Ljava/lang/Class;
    :cond_1
    const-string v3, "v."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 273
    .restart local v1    # "i":I
    .restart local v2    # "paramClass":Ljava/lang/Class;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 279
    .end local v2    # "paramClass":Ljava/lang/Class;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private calculateJSArgumentsNeeded()I
    .locals 6

    .prologue
    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, "n":I
    iget-object v2, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArgumentExtractors:[Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 319
    .local v0, "extractor":Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    invoke-virtual {v0}, Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;->getJSArgumentsNeeded()I

    move-result v5

    add-int/2addr v1, v5

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    .end local v0    # "extractor":Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
    :cond_0
    return v1
.end method

.method private static commonTypeToChar(Ljava/lang/Class;)C
    .locals 1
    .param p0, "typeClass"    # Ljava/lang/Class;

    .prologue
    .line 178
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 179
    const/16 v0, 0x7a

    .line 197
    :goto_0
    return v0

    .line 180
    :cond_0
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_1

    .line 181
    const/16 v0, 0x5a

    goto :goto_0

    .line 182
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 183
    const/16 v0, 0x69

    goto :goto_0

    .line 184
    :cond_2
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_3

    .line 185
    const/16 v0, 0x49

    goto :goto_0

    .line 186
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 187
    const/16 v0, 0x64

    goto :goto_0

    .line 188
    :cond_4
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_5

    .line 189
    const/16 v0, 0x44

    goto :goto_0

    .line 190
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 191
    const/16 v0, 0x66

    goto :goto_0

    .line 192
    :cond_6
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_7

    .line 193
    const/16 v0, 0x46

    goto :goto_0

    .line 194
    :cond_7
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_8

    .line 195
    const/16 v0, 0x53

    goto :goto_0

    .line 197
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAffectedRange(II)Ljava/lang/String;
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "jsArgumentsNeeded"    # I

    .prologue
    .line 325
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static paramTypeToChar(Ljava/lang/Class;)C
    .locals 4
    .param p0, "paramClass"    # Ljava/lang/Class;

    .prologue
    .line 139
    invoke-static {p0}, Lcom/facebook/react/bridge/JavaMethodWrapper;->commonTypeToChar(Ljava/lang/Class;)C

    move-result v0

    .line 140
    .local v0, "tryCommon":C
    if-eqz v0, :cond_0

    .line 152
    .end local v0    # "tryCommon":C
    :goto_0
    return v0

    .line 143
    .restart local v0    # "tryCommon":C
    :cond_0
    const-class v1, Lcom/facebook/react/bridge/Callback;

    if-ne p0, v1, :cond_1

    .line 144
    const/16 v0, 0x58

    goto :goto_0

    .line 145
    :cond_1
    const-class v1, Lcom/facebook/react/bridge/Promise;

    if-ne p0, v1, :cond_2

    .line 146
    const/16 v0, 0x50

    goto :goto_0

    .line 147
    :cond_2
    const-class v1, Lcom/facebook/react/bridge/ReadableMap;

    if-ne p0, v1, :cond_3

    .line 148
    const/16 v0, 0x4d

    goto :goto_0

    .line 149
    :cond_3
    const-class v1, Lcom/facebook/react/bridge/ReadableArray;

    if-ne p0, v1, :cond_4

    .line 150
    const/16 v0, 0x41

    goto :goto_0

    .line 151
    :cond_4
    const-class v1, Lcom/facebook/react/bridge/Dynamic;

    if-ne p0, v1, :cond_5

    .line 152
    const/16 v0, 0x59

    goto :goto_0

    .line 154
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got unknown param class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private processArguments()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 227
    iget-boolean v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArgumentsProcessed:Z

    if-eqz v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string v0, "processArguments"

    invoke-static {v4, v5, v0}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string v1, "method"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mModuleWrapper:Lcom/facebook/react/bridge/JavaModuleWrapper;

    .line 231
    invoke-virtual {v3}, Lcom/facebook/react/bridge/JavaModuleWrapper;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 234
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArgumentsProcessed:Z

    .line 235
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mParameterTypes:[Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/JavaMethodWrapper;->buildArgumentExtractors([Ljava/lang/Class;)[Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArgumentExtractors:[Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    .line 236
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mParameterTypes:[Ljava/lang/Class;

    iget-object v2, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mType:Ljava/lang/String;

    const-string v3, "sync"

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 236
    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/react/bridge/JavaMethodWrapper;->buildSignature(Ljava/lang/reflect/Method;[Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mSignature:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mParameterTypes:[Ljava/lang/Class;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArguments:[Ljava/lang/Object;

    .line 243
    invoke-direct {p0}, Lcom/facebook/react/bridge/JavaMethodWrapper;->calculateJSArgumentsNeeded()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mJSArgumentsNeeded:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-static {v4, v5}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    throw v0
.end method

.method private static returnTypeToChar(Ljava/lang/Class;)C
    .locals 4
    .param p0, "returnClass"    # Ljava/lang/Class;

    .prologue
    .line 161
    invoke-static {p0}, Lcom/facebook/react/bridge/JavaMethodWrapper;->commonTypeToChar(Ljava/lang/Class;)C

    move-result v0

    .line 162
    .local v0, "tryCommon":C
    if-eqz v0, :cond_0

    .line 170
    .end local v0    # "tryCommon":C
    :goto_0
    return v0

    .line 165
    .restart local v0    # "tryCommon":C
    :cond_0
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_1

    .line 166
    const/16 v0, 0x76

    goto :goto_0

    .line 167
    :cond_1
    const-class v1, Lcom/facebook/react/bridge/WritableMap;

    if-ne p0, v1, :cond_2

    .line 168
    const/16 v0, 0x4d

    goto :goto_0

    .line 169
    :cond_2
    const-class v1, Lcom/facebook/react/bridge/WritableArray;

    if-ne p0, v1, :cond_3

    .line 170
    const/16 v0, 0x41

    goto :goto_0

    .line 172
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got unknown return class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArgumentsProcessed:Z

    if-nez v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/facebook/react/bridge/JavaMethodWrapper;->processArguments()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mSignature:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public invoke(Lcom/facebook/react/bridge/JSInstance;Lcom/facebook/react/bridge/ReadableNativeArray;)V
    .locals 12
    .param p1, "jsInstance"    # Lcom/facebook/react/bridge/JSInstance;
    .param p2, "parameters"    # Lcom/facebook/react/bridge/ReadableNativeArray;

    .prologue
    const-wide/16 v10, 0x0

    .line 331
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mModuleWrapper:Lcom/facebook/react/bridge/JavaModuleWrapper;

    invoke-virtual {v8}, Lcom/facebook/react/bridge/JavaModuleWrapper;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 332
    .local v6, "traceName":Ljava/lang/String;
    const-string v7, "callJavaModuleMethod"

    invoke-static {v10, v11, v7}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v7

    const-string v8, "method"

    .line 333
    invoke-virtual {v7, v8, v6}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v7

    .line 334
    invoke-virtual {v7}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 336
    :try_start_0
    iget-boolean v7, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArgumentsProcessed:Z

    if-nez v7, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/facebook/react/bridge/JavaMethodWrapper;->processArguments()V

    .line 339
    :cond_0
    iget-object v7, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArguments:[Ljava/lang/Object;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArgumentExtractors:[Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    if-nez v7, :cond_2

    .line 340
    :cond_1
    new-instance v7, Ljava/lang/Error;

    const-string v8, "processArguments failed"

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :catchall_0
    move-exception v7

    invoke-static {v10, v11}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    throw v7

    .line 342
    :cond_2
    :try_start_1
    iget v7, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mJSArgumentsNeeded:I

    invoke-virtual {p2}, Lcom/facebook/react/bridge/ReadableNativeArray;->size()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 343
    new-instance v7, Lcom/facebook/react/bridge/NativeArgumentsParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 344
    invoke-virtual {p2}, Lcom/facebook/react/bridge/ReadableNativeArray;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " arguments, expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mJSArgumentsNeeded:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/facebook/react/bridge/NativeArgumentsParseException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v5, 0x0

    .line 349
    .local v5, "jsArgumentsConsumed":I
    :goto_0
    :try_start_2
    iget-object v7, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArgumentExtractors:[Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    array-length v7, v7

    if-ge v1, v7, :cond_4

    .line 350
    iget-object v7, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArguments:[Ljava/lang/Object;

    iget-object v8, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArgumentExtractors:[Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    aget-object v8, v8, v1

    invoke-virtual {v8, p1, p2, v5}, Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;->extractArgument(Lcom/facebook/react/bridge/JSInstance;Lcom/facebook/react/bridge/ReadableNativeArray;I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v1

    .line 352
    iget-object v7, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArgumentExtractors:[Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;->getJSArgumentsNeeded()I
    :try_end_2
    .catch Lcom/facebook/react/bridge/UnexpectedNativeTypeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    add-int/2addr v5, v7

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Lcom/facebook/react/bridge/UnexpectedNativeTypeException;
    :try_start_3
    new-instance v7, Lcom/facebook/react/bridge/NativeArgumentsParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    invoke-virtual {v0}, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (constructing arguments for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at argument index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArgumentExtractors:[Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;

    aget-object v9, v9, v1

    .line 357
    invoke-virtual {v9}, Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;->getJSArgumentsNeeded()I

    move-result v9

    invoke-direct {p0, v5, v9}, Lcom/facebook/react/bridge/JavaMethodWrapper;->getAffectedRange(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/facebook/react/bridge/NativeArgumentsParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 363
    .end local v0    # "e":Lcom/facebook/react/bridge/UnexpectedNativeTypeException;
    :cond_4
    :try_start_4
    iget-object v7, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mMethod:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mModuleWrapper:Lcom/facebook/react/bridge/JavaModuleWrapper;

    invoke-virtual {v8}, Lcom/facebook/react/bridge/JavaModuleWrapper;->getModule()Lcom/facebook/react/bridge/BaseJavaModule;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/react/bridge/JavaMethodWrapper;->mArguments:[Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 377
    invoke-static {v10, v11}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 379
    return-void

    .line 364
    :catch_1
    move-exception v3

    .line 365
    .local v3, "ie":Ljava/lang/IllegalArgumentException;
    :try_start_5
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not invoke "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 366
    .end local v3    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 367
    .local v2, "iae":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not invoke "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 368
    .end local v2    # "iae":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 371
    .local v4, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_5

    .line 372
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/lang/RuntimeException;

    throw v7

    .line 374
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not invoke "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
