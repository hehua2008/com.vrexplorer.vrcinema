.class public Lorg/pgsqlite/SQLiteArray;
.super Lorg/json/JSONArray;
.source "SQLiteArray.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 23
    :try_start_0
    const-class v2, Lorg/json/JSONArray;

    const-string v3, "values"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 24
    .local v1, "valuesField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .end local v1    # "valuesField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-object v2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 28
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
