.class public abstract Lorg/greenrobot/greendao/database/DatabaseOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private encryptedHelper:Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

.field private loadSQLCipherNativeLibs:Z

.field private final name:Ljava/lang/String;

.field private final version:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->loadSQLCipherNativeLibs:Z

    .line 42
    iput-object p1, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->name:Ljava/lang/String;

    .line 44
    iput p4, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->version:I

    .line 45
    return-void
.end method

.method private checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    .locals 6

    .prologue
    .line 120
    iget-object v0, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->encryptedHelper:Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    iget-object v2, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->name:Ljava/lang/String;

    iget v4, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->version:I

    iget-boolean v5, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->loadSQLCipherNativeLibs:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;-><init>(Lorg/greenrobot/greendao/database/DatabaseOpenHelper;Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->encryptedHelper:Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->encryptedHelper:Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    return-object v0
.end method


# virtual methods
.method public getEncryptedReadableDb(Ljava/lang/String;)Lorg/greenrobot/greendao/database/Database;
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    move-result-object v0

    .line 156
    .local v0, "encryptedHelper":Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    return-object v1
.end method

.method public getEncryptedReadableDb([C)Lorg/greenrobot/greendao/database/Database;
    .locals 2
    .param p1, "password"    # [C

    .prologue
    .line 166
    invoke-direct {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    move-result-object v0

    .line 167
    .local v0, "encryptedHelper":Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->getReadableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    return-object v1
.end method

.method public getEncryptedWritableDb(Ljava/lang/String;)Lorg/greenrobot/greendao/database/Database;
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    move-result-object v0

    .line 134
    .local v0, "encryptedHelper":Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    return-object v1
.end method

.method public getEncryptedWritableDb([C)Lorg/greenrobot/greendao/database/Database;
    .locals 2
    .param p1, "password"    # [C

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    move-result-object v0

    .line 145
    .local v0, "encryptedHelper":Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->getWritableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    return-object v1
.end method

.method public getReadableDb()Lorg/greenrobot/greendao/database/Database;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDb()Lorg/greenrobot/greendao/database/Database;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onCreate(Lorg/greenrobot/greendao/database/Database;)V

    .line 80
    return-void
.end method

.method public onCreate(Lorg/greenrobot/greendao/database/Database;)V
    .locals 0
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;

    .prologue
    .line 87
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onOpen(Lorg/greenrobot/greendao/database/Database;)V

    .line 110
    return-void
.end method

.method public onOpen(Lorg/greenrobot/greendao/database/Database;)V
    .locals 0
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;

    .prologue
    .line 117
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V

    .line 95
    return-void
.end method

.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .locals 0
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 102
    return-void
.end method

.method public setLoadSQLCipherNativeLibs(Z)V
    .locals 0
    .param p1, "loadSQLCipherNativeLibs"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->loadSQLCipherNativeLibs:Z

    .line 52
    return-void
.end method

.method protected wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;
    .locals 1
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 71
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method
