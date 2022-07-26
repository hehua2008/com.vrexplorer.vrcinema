.class final Lorg/pgsqlite/SQLitePlugin$DBQuery;
.super Ljava/lang/Object;
.source "SQLitePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pgsqlite/SQLitePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DBQuery"
.end annotation


# instance fields
.field final cbc:Lorg/pgsqlite/CallbackContext;

.field final close:Z

.field final delete:Z

.field final jsonparams:[Lorg/json/JSONArray;

.field final queries:[Ljava/lang/String;

.field final queryIDs:[Ljava/lang/String;

.field final stop:Z

.field final synthetic this$0:Lorg/pgsqlite/SQLitePlugin;


# direct methods
.method constructor <init>(Lorg/pgsqlite/SQLitePlugin;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1014
    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->this$0:Lorg/pgsqlite/SQLitePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->stop:Z

    .line 1016
    iput-boolean v2, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->close:Z

    .line 1017
    iput-boolean v2, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->delete:Z

    .line 1018
    iput-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    .line 1019
    iput-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queryIDs:[Ljava/lang/String;

    .line 1020
    iput-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->jsonparams:[Lorg/json/JSONArray;

    .line 1021
    iput-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    .line 1022
    return-void
.end method

.method constructor <init>(Lorg/pgsqlite/SQLitePlugin;ZLorg/pgsqlite/CallbackContext;)V
    .locals 2
    .param p2, "delete"    # Z
    .param p3, "cbc"    # Lorg/pgsqlite/CallbackContext;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1003
    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->this$0:Lorg/pgsqlite/SQLitePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1004
    iput-boolean v1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->stop:Z

    .line 1005
    iput-boolean v1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->close:Z

    .line 1006
    iput-boolean p2, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->delete:Z

    .line 1007
    iput-object v0, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    .line 1008
    iput-object v0, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queryIDs:[Ljava/lang/String;

    .line 1009
    iput-object v0, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->jsonparams:[Lorg/json/JSONArray;

    .line 1010
    iput-object p3, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    .line 1011
    return-void
.end method

.method constructor <init>(Lorg/pgsqlite/SQLitePlugin;[Ljava/lang/String;[Ljava/lang/String;[Lorg/json/JSONArray;Lorg/pgsqlite/CallbackContext;)V
    .locals 1
    .param p2, "myqueries"    # [Ljava/lang/String;
    .param p3, "qids"    # [Ljava/lang/String;
    .param p4, "params"    # [Lorg/json/JSONArray;
    .param p5, "c"    # Lorg/pgsqlite/CallbackContext;

    .prologue
    const/4 v0, 0x0

    .line 993
    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->this$0:Lorg/pgsqlite/SQLitePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    iput-boolean v0, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->stop:Z

    .line 995
    iput-boolean v0, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->close:Z

    .line 996
    iput-boolean v0, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->delete:Z

    .line 997
    iput-object p2, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    .line 998
    iput-object p3, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queryIDs:[Ljava/lang/String;

    .line 999
    iput-object p4, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->jsonparams:[Lorg/json/JSONArray;

    .line 1000
    iput-object p5, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    .line 1001
    return-void
.end method
