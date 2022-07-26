.class public abstract Lorg/pgsqlite/SQLitePluginConverter;
.super Ljava/lang/Object;
.source "SQLitePluginConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static jsonToReact(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;
    .locals 6
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    .line 109
    .local v2, "writableArray":Lcom/facebook/react/bridge/WritableArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 110
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 111
    .local v1, "value":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Float;

    if-nez v3, :cond_0

    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_2

    .line 112
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    .line 109
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_2
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 114
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    goto :goto_1

    .line 115
    :cond_3
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 116
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_4
    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 118
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lorg/pgsqlite/SQLitePluginConverter;->jsonToReact(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_1

    .line 119
    :cond_5
    instance-of v3, v1, Lorg/json/JSONArray;

    if-eqz v3, :cond_6

    .line 120
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lorg/pgsqlite/SQLitePluginConverter;->jsonToReact(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_1

    .line 121
    :cond_6
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v1, v3, :cond_1

    .line 122
    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableArray;->pushNull()V

    goto :goto_1

    .line 125
    .end local v1    # "value":Ljava/lang/Object;
    :cond_7
    return-object v2
.end method

.method static jsonToReact(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 85
    .local v3, "writableMap":Lcom/facebook/react/bridge/WritableMap;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 86
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 89
    .local v2, "value":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/Float;

    if-nez v4, :cond_1

    instance-of v4, v2, Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 90
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-interface {v3, v1, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 91
    :cond_2
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_3

    .line 92
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-interface {v3, v1, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 93
    :cond_3
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 94
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_4
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_5

    .line 96
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lorg/pgsqlite/SQLitePluginConverter;->jsonToReact(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 97
    :cond_5
    instance-of v4, v2, Lorg/json/JSONArray;

    if-eqz v4, :cond_6

    .line 98
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lorg/pgsqlite/SQLitePluginConverter;->jsonToReact(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_0

    .line 99
    :cond_6
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v2, v4, :cond_0

    .line 100
    invoke-interface {v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_7
    return-object v3
.end method

.method static reactToJSON(Lcom/facebook/react/bridge/ReadableArray;)Lorg/json/JSONArray;
    .locals 6
    .param p0, "readableArray"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 57
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 58
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    .line 59
    .local v2, "valueType":Lcom/facebook/react/bridge/ReadableType;
    sget-object v3, Lorg/pgsqlite/SQLitePluginConverter$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 57
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :pswitch_0
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 64
    :pswitch_1
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    goto :goto_1

    .line 67
    :pswitch_2
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    goto :goto_1

    .line 70
    :pswitch_3
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 73
    :pswitch_4
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-static {v3}, Lorg/pgsqlite/SQLitePluginConverter;->reactToJSON(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 76
    :pswitch_5
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    invoke-static {v3}, Lorg/pgsqlite/SQLitePluginConverter;->reactToJSON(Lcom/facebook/react/bridge/ReadableArray;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 80
    .end local v2    # "valueType":Lcom/facebook/react/bridge/ReadableType;
    :cond_0
    return-object v1

    .line 59
    nop

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

.method static reactToJSON(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "readableMap"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 27
    .local v0, "iterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    .line 30
    .local v3, "valueType":Lcom/facebook/react/bridge/ReadableType;
    sget-object v4, Lorg/pgsqlite/SQLitePluginConverter$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 32
    :pswitch_0
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 35
    :pswitch_1
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 38
    :pswitch_2
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    .line 41
    :pswitch_3
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 44
    :pswitch_4
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    invoke-static {v4}, Lorg/pgsqlite/SQLitePluginConverter;->reactToJSON(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 47
    :pswitch_5
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v4

    invoke-static {v4}, Lorg/pgsqlite/SQLitePluginConverter;->reactToJSON(Lcom/facebook/react/bridge/ReadableArray;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 52
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "valueType":Lcom/facebook/react/bridge/ReadableType;
    :cond_0
    return-object v1

    .line 30
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
