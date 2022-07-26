.class public Lcom/facebook/react/bridge/Arguments;
.super Ljava/lang/Object;
.source "Arguments.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    return-void
.end method

.method private static addEntry(Lcom/facebook/react/bridge/WritableNativeMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "nativeMap"    # Lcom/facebook/react/bridge/WritableNativeMap;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 102
    invoke-static {p2}, Lcom/facebook/react/bridge/Arguments;->makeNativeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 103
    if-nez p2, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/WritableNativeMap;->putNull(Ljava/lang/String;)V

    .line 120
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 105
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 106
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 107
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 108
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 109
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 110
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 111
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 112
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v0, p2, Lcom/facebook/react/bridge/WritableNativeArray;

    if-eqz v0, :cond_5

    .line 114
    check-cast p2, Lcom/facebook/react/bridge/WritableNativeArray;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/bridge/WritableNativeMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_0

    .line 115
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v0, p2, Lcom/facebook/react/bridge/WritableNativeMap;

    if-eqz v0, :cond_6

    .line 116
    check-cast p2, Lcom/facebook/react/bridge/WritableNativeMap;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 118
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createArray()Lcom/facebook/react/bridge/WritableArray;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    return-object v0
.end method

.method public static createMap()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    return-object v0
.end method

.method public static fromArray(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;
    .locals 8
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 208
    .local v0, "catalystArray":Lcom/facebook/react/bridge/WritableArray;
    instance-of v4, p0, [Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 209
    check-cast p0, [Ljava/lang/String;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/String;

    array-length v4, p0

    :goto_0
    if-ge v1, v4, :cond_6

    aget-object v2, p0, v1

    .line 210
    .local v2, "v":Ljava/lang/String;
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "v":Ljava/lang/String;
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v4, p0, [Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 213
    check-cast p0, [Landroid/os/Bundle;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Landroid/os/Bundle;

    array-length v4, p0

    :goto_1
    if-ge v1, v4, :cond_6

    aget-object v2, p0, v1

    .line 214
    .local v2, "v":Landroid/os/Bundle;
    invoke-static {v2}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    .end local v2    # "v":Landroid/os/Bundle;
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v4, p0, [I

    if-eqz v4, :cond_2

    .line 217
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    array-length v4, p0

    :goto_2
    if-ge v1, v4, :cond_6

    aget v2, p0, v1

    .line 218
    .local v2, "v":I
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 220
    .end local v2    # "v":I
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v4, p0, [F

    if-eqz v4, :cond_3

    .line 221
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    array-length v4, p0

    :goto_3
    if-ge v1, v4, :cond_6

    aget v2, p0, v1

    .line 222
    .local v2, "v":F
    float-to-double v6, v2

    invoke-interface {v0, v6, v7}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 224
    .end local v2    # "v":F
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v4, p0, [D

    if-eqz v4, :cond_4

    .line 225
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    array-length v4, p0

    :goto_4
    if-ge v1, v4, :cond_6

    aget-wide v2, p0, v1

    .line 226
    .local v2, "v":D
    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 228
    .end local v2    # "v":D
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v4, p0, [Z

    if-eqz v4, :cond_5

    .line 229
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Z

    array-length v4, p0

    :goto_5
    if-ge v1, v4, :cond_6

    aget-boolean v2, p0, v1

    .line 230
    .local v2, "v":Z
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushBoolean(Z)V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 233
    .end local v2    # "v":Z
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown array type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    .end local p0    # "array":Ljava/lang/Object;
    :cond_6
    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 254
    .local v1, "map":Lcom/facebook/react/bridge/WritableMap;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 256
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 257
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    invoke-static {v2}, Lcom/facebook/react/bridge/Arguments;->fromArray(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_0

    .line 260
    :cond_1
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 261
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_4

    .line 263
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 264
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v0, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 266
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_3
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-interface {v1, v0, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 268
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    .line 269
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v1, v0, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 270
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v4, v2, Landroid/os/Bundle;

    if-eqz v4, :cond_6

    .line 271
    check-cast v2, Landroid/os/Bundle;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 273
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not convert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 276
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_7
    return-object v1
.end method

.method public static fromJavaArgs([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableNativeArray;
    .locals 7
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 168
    new-instance v2, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v2}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 169
    .local v2, "arguments":Lcom/facebook/react/bridge/WritableNativeArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_8

    .line 170
    aget-object v0, p0, v3

    .line 171
    .local v0, "argument":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 172
    invoke-virtual {v2}, Lcom/facebook/react/bridge/WritableNativeArray;->pushNull()V

    .line 169
    .end local v0    # "argument":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 177
    .local v1, "argumentClass":Ljava/lang/Class;
    const-class v4, Ljava/lang/Boolean;

    if-ne v1, v4, :cond_1

    .line 178
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "argument":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/facebook/react/bridge/WritableNativeArray;->pushBoolean(Z)V

    goto :goto_1

    .line 179
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_1
    const-class v4, Ljava/lang/Integer;

    if-ne v1, v4, :cond_2

    .line 180
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "argument":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/facebook/react/bridge/WritableNativeArray;->pushDouble(D)V

    goto :goto_1

    .line 181
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_2
    const-class v4, Ljava/lang/Double;

    if-ne v1, v4, :cond_3

    .line 182
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "argument":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/facebook/react/bridge/WritableNativeArray;->pushDouble(D)V

    goto :goto_1

    .line 183
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_3
    const-class v4, Ljava/lang/Float;

    if-ne v1, v4, :cond_4

    .line 184
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "argument":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/facebook/react/bridge/WritableNativeArray;->pushDouble(D)V

    goto :goto_1

    .line 185
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_4
    const-class v4, Ljava/lang/String;

    if-ne v1, v4, :cond_5

    .line 186
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/react/bridge/WritableNativeArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_5
    const-class v4, Lcom/facebook/react/bridge/WritableNativeMap;

    if-ne v1, v4, :cond_6

    .line 188
    check-cast v0, Lcom/facebook/react/bridge/WritableNativeMap;

    .end local v0    # "argument":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Lcom/facebook/react/bridge/WritableNativeArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_1

    .line 189
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_6
    const-class v4, Lcom/facebook/react/bridge/WritableNativeArray;

    if-ne v1, v4, :cond_7

    .line 190
    check-cast v0, Lcom/facebook/react/bridge/WritableNativeArray;

    .end local v0    # "argument":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Lcom/facebook/react/bridge/WritableNativeArray;->pushArray(Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_1

    .line 192
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_7
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot convert argument of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    .end local v0    # "argument":Ljava/lang/Object;
    .end local v1    # "argumentClass":Ljava/lang/Class;
    :cond_8
    return-object v2
.end method

.method public static makeNativeArray(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableNativeArray;
    .locals 1
    .param p0, "objects"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/react/bridge/WritableNativeArray;"
        }
    .end annotation

    .prologue
    .line 85
    if-nez p0, :cond_0

    .line 86
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 90
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/Arguments$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/bridge/Arguments$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->makeNativeArray(Ljava/util/List;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeNativeArray(Ljava/util/List;)Lcom/facebook/react/bridge/WritableNativeArray;
    .locals 6
    .param p0, "objects"    # Ljava/util/List;

    .prologue
    .line 53
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 54
    .local v1, "nativeArray":Lcom/facebook/react/bridge/WritableNativeArray;
    if-nez p0, :cond_1

    .line 77
    :cond_0
    return-object v1

    .line 57
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "elem":Ljava/lang/Object;
    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->makeNativeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    invoke-virtual {v1}, Lcom/facebook/react/bridge/WritableNativeArray;->pushNull()V

    goto :goto_0

    .line 61
    :cond_2
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 62
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/WritableNativeArray;->pushBoolean(Z)V

    goto :goto_0

    .line 63
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_3
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 64
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/WritableNativeArray;->pushInt(I)V

    goto :goto_0

    .line 65
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_4
    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_5

    .line 66
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/facebook/react/bridge/WritableNativeArray;->pushDouble(D)V

    goto :goto_0

    .line 67
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_5
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 68
    check-cast v0, Ljava/lang/String;

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/facebook/react/bridge/WritableNativeArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_6
    instance-of v3, v0, Lcom/facebook/react/bridge/WritableNativeArray;

    if-eqz v3, :cond_7

    .line 70
    check-cast v0, Lcom/facebook/react/bridge/WritableNativeArray;

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/facebook/react/bridge/WritableNativeArray;->pushArray(Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_0

    .line 71
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_7
    instance-of v3, v0, Lcom/facebook/react/bridge/WritableNativeMap;

    if-eqz v3, :cond_8

    .line 72
    check-cast v0, Lcom/facebook/react/bridge/WritableNativeMap;

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/facebook/react/bridge/WritableNativeArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 74
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static makeNativeMap(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableNativeMap;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 143
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 144
    .local v1, "nativeMap":Lcom/facebook/react/bridge/WritableNativeMap;
    if-nez p0, :cond_1

    .line 150
    :cond_0
    return-object v1

    .line 147
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/facebook/react/bridge/Arguments;->addEntry(Lcom/facebook/react/bridge/WritableNativeMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/facebook/react/bridge/WritableNativeMap;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "objects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 130
    .local v1, "nativeMap":Lcom/facebook/react/bridge/WritableNativeMap;
    if-nez p0, :cond_1

    .line 136
    :cond_0
    return-object v1

    .line 133
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/facebook/react/bridge/Arguments;->addEntry(Lcom/facebook/react/bridge/WritableNativeMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static makeNativeObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 23
    if-nez p0, :cond_1

    .line 24
    const/4 p0, 0x0

    .line 40
    .end local p0    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 25
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/Double;

    check-cast p0, Ljava/lang/Number;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object p0, v0

    goto :goto_0

    .line 30
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    invoke-static {p0}, Lcom/facebook/react/bridge/Arguments;->makeNativeArray(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object p0

    goto :goto_0

    .line 32
    :cond_4
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 33
    check-cast p0, Ljava/util/List;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/facebook/react/bridge/Arguments;->makeNativeArray(Ljava/util/List;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object p0

    goto :goto_0

    .line 34
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 35
    check-cast p0, Ljava/util/Map;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object p0

    goto :goto_0

    .line 36
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Landroid/os/Bundle;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object p0

    goto :goto_0
.end method

.method public static toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;
    .locals 8
    .param p0, "readableMap"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 287
    if-nez p0, :cond_1

    move-object v0, v4

    .line 322
    :cond_0
    return-object v0

    .line 291
    :cond_1
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 293
    .local v1, "iterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    .line 297
    .local v3, "readableType":Lcom/facebook/react/bridge/ReadableType;
    sget-object v5, Lcom/facebook/react/bridge/Arguments$2;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 318
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not convert object with key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 299
    :pswitch_0
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :pswitch_1
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 306
    :pswitch_2
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 309
    :pswitch_3
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :pswitch_4
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 316
    :pswitch_5
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Arrays aren\'t supported yet."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
