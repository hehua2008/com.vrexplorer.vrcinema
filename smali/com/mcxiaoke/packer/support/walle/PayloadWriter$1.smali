.class final Lcom/mcxiaoke/packer/support/walle/PayloadWriter$1;
.super Ljava/lang/Object;
.source "PayloadWriter.java"

# interfaces
.implements Lcom/mcxiaoke/packer/support/walle/PayloadWriter$ApkSigningBlockHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcxiaoke/packer/support/walle/PayloadWriter;->writeValues(Ljava/io/File;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$idValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mcxiaoke/packer/support/walle/PayloadWriter$1;->val$idValues:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/util/Map;)Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "originIdValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    iget-object v4, p0, Lcom/mcxiaoke/packer/support/walle/PayloadWriter$1;->val$idValues:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mcxiaoke/packer/support/walle/PayloadWriter$1;->val$idValues:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 44
    iget-object v4, p0, Lcom/mcxiaoke/packer/support/walle/PayloadWriter$1;->val$idValues:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 46
    :cond_0
    new-instance v0, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;

    invoke-direct {v0}, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;-><init>()V

    .line 47
    .local v0, "apkSigningBlock":Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 48
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    new-instance v3, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-direct {v3, v6, v4}, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;-><init>(ILjava/nio/ByteBuffer;)V

    .line 50
    .local v3, "payload":Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;
    invoke-virtual {v0, v3}, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;->addPayload(Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;)V

    goto :goto_0

    .line 52
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    .end local v3    # "payload":Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;
    :cond_1
    return-object v0
.end method
