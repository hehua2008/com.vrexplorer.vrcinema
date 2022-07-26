.class Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;
.super Ljava/lang/Object;
.source "ApkSigningPayload.java"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final id:I


# direct methods
.method constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;->id:I

    .line 14
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v1, :cond_0

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    iput-object p2, p0, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;->buffer:Ljava/nio/ByteBuffer;

    .line 18
    return-void
.end method


# virtual methods
.method public getByteBuffer()[B
    .locals 4

    .prologue
    .line 25
    iget-object v2, p0, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 26
    .local v0, "array":[B
    iget-object v2, p0, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    .line 27
    .local v1, "arrayOffset":I
    iget-object v2, p0, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;->buffer:Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr v3, v1

    .line 27
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;->id:I

    return v0
.end method
