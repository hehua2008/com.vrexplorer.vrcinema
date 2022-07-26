.class public Lcom/asha/vrlib/common/GLUtil;
.super Ljava/lang/Object;
.source "GLUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GLUtil"

.field public static final sIdentityMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/asha/vrlib/common/GLUtil;->sIdentityMatrix:[F

    .line 34
    sget-object v0, Lcom/asha/vrlib/common/GLUtil;->sIdentityMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compileShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "shaderSource"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 93
    .local v1, "shaderHandle":I
    if-eqz v1, :cond_0

    .line 95
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 98
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 101
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 102
    .local v0, "compileStatus":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 105
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 106
    const-string v2, "GLUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error compiling shader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 108
    const/4 v1, 0x0

    .line 112
    .end local v0    # "compileStatus":[I
    :cond_0
    if-nez v1, :cond_1

    .line 113
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error creating shader."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_1
    return v1
.end method

.method public static createAndLinkProgram(II[Ljava/lang/String;)I
    .locals 7
    .param p0, "vertexShaderHandle"    # I
    .param p1, "fragmentShaderHandle"    # I
    .param p2, "attributes"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 128
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 130
    .local v2, "programHandle":I
    if-eqz v2, :cond_1

    .line 132
    invoke-static {v2, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 135
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 138
    if-eqz p2, :cond_0

    .line 139
    array-length v3, p2

    .line 140
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 141
    aget-object v4, p2, v0

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_0
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 149
    const/4 v4, 0x1

    new-array v1, v4, [I

    .line 150
    .local v1, "linkStatus":[I
    const v4, 0x8b82

    invoke-static {v2, v4, v1, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 153
    aget v4, v1, v5

    if-nez v4, :cond_1

    .line 154
    const-string v4, "GLUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error compiling program: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 156
    const/4 v2, 0x0

    .line 160
    .end local v1    # "linkStatus":[I
    :cond_1
    if-nez v2, :cond_2

    .line 161
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error creating program."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_2
    return v2
.end method

.method public static glCheck(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 55
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 56
    const-string v1, "GLUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public static identityMatrix()[F
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/asha/vrlib/common/GLUtil;->sIdentityMatrix:[F

    return-object v0
.end method

.method public static loadObject3D(Landroid/content/Context;ILcom/asha/vrlib/objects/MDAbsObject3D;)V
    .locals 36
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .param p2, "output"    # Lcom/asha/vrlib/objects/MDAbsObject3D;

    .prologue
    .line 168
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v28, "vertexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v21, "textures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v8, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 173
    .local v10, "iStream":Ljava/io/InputStream;
    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 174
    .local v12, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 177
    .local v3, "bReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "line":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 178
    const-string v29, "v "

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1

    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_1
    const-string v29, "vt "

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2

    const/16 v29, 0x3

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_2
    const-string v29, "f "

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_0

    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v14    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 183
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 186
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v29

    mul-int/lit8 v29, v29, 0x3

    mul-int/lit8 v29, v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v24, v0

    .line 187
    .local v24, "vertexBuffer":[F
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v29

    mul-int/lit8 v29, v29, 0x3

    mul-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 188
    .local v17, "textureBuffer":[F
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v29

    mul-int/lit8 v29, v29, 0x3

    move/from16 v0, v29

    new-array v11, v0, [S

    .line 190
    .local v11, "indexBuffer":[S
    const/16 v26, 0x0

    .line 191
    .local v26, "vertexIndex":I
    const/16 v19, 0x0

    .line 193
    .local v19, "textureIndex":I
    const/4 v6, 0x0

    .line 195
    .local v6, "faceIndex":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_7

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 196
    .local v9, "i":Ljava/lang/String;
    const-string v29, " "

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v33, v0

    const/16 v29, 0x0

    move/from16 v30, v29

    move v7, v6

    .end local v6    # "faceIndex":I
    .local v7, "faceIndex":I
    :goto_2
    move/from16 v0, v30

    move/from16 v1, v33

    if-ge v0, v1, :cond_6

    aget-object v13, v32, v30

    .line 197
    .local v13, "j":Ljava/lang/String;
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "faceIndex":I
    .restart local v6    # "faceIndex":I
    int-to-short v0, v7

    move/from16 v29, v0

    aput-short v29, v11, v7

    .line 198
    const-string v29, "/"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "faceComponent":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v29, v5, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 202
    .local v23, "vertex":Ljava/lang/String;
    const/16 v29, 0x1

    aget-object v29, v5, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 205
    .local v16, "texture":Ljava/lang/String;
    const-string v29, " "

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 206
    .local v25, "vertexComp":[Ljava/lang/String;
    const-string v29, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 209
    .local v18, "textureComp":[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v34, v0

    const/16 v29, 0x0

    move/from16 v27, v26

    .end local v26    # "vertexIndex":I
    .local v27, "vertexIndex":I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v34

    if-ge v0, v1, :cond_4

    aget-object v22, v25, v29

    .local v22, "v":Ljava/lang/String;
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "vertexIndex":I
    .restart local v26    # "vertexIndex":I
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v35

    aput v35, v24, v27

    add-int/lit8 v29, v29, 0x1

    move/from16 v27, v26

    .end local v26    # "vertexIndex":I
    .restart local v27    # "vertexIndex":I
    goto :goto_3

    .line 210
    .end local v22    # "v":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v34, v0

    const/16 v29, 0x0

    move/from16 v20, v19

    .end local v19    # "textureIndex":I
    .local v20, "textureIndex":I
    :goto_4
    move/from16 v0, v29

    move/from16 v1, v34

    if-ge v0, v1, :cond_5

    aget-object v15, v18, v29

    .local v15, "t":Ljava/lang/String;
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "textureIndex":I
    .restart local v19    # "textureIndex":I
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v35

    aput v35, v17, v20

    add-int/lit8 v29, v29, 0x1

    move/from16 v20, v19

    .end local v19    # "textureIndex":I
    .restart local v20    # "textureIndex":I
    goto :goto_4

    .line 196
    .end local v15    # "t":Ljava/lang/String;
    :cond_5
    add-int/lit8 v29, v30, 0x1

    move/from16 v30, v29

    move v7, v6

    .end local v6    # "faceIndex":I
    .restart local v7    # "faceIndex":I
    move/from16 v19, v20

    .end local v20    # "textureIndex":I
    .restart local v19    # "textureIndex":I
    move/from16 v26, v27

    .end local v27    # "vertexIndex":I
    .restart local v26    # "vertexIndex":I
    goto/16 :goto_2

    .end local v5    # "faceComponent":[Ljava/lang/String;
    .end local v13    # "j":Ljava/lang/String;
    .end local v16    # "texture":Ljava/lang/String;
    .end local v18    # "textureComp":[Ljava/lang/String;
    .end local v23    # "vertex":Ljava/lang/String;
    .end local v25    # "vertexComp":[Ljava/lang/String;
    :cond_6
    move v6, v7

    .line 213
    .end local v7    # "faceIndex":I
    .restart local v6    # "faceIndex":I
    goto/16 :goto_1

    .line 216
    .end local v9    # "i":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v29

    .line 217
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v23

    .line 218
    .local v23, "vertex":Ljava/nio/FloatBuffer;
    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v29

    .line 222
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v16

    .line 223
    .local v16, "texture":Ljava/nio/FloatBuffer;
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 226
    const/16 v29, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setVerticesBuffer(ILjava/nio/FloatBuffer;)V

    .line 227
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 228
    const/16 v29, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setTexCoordinateBuffer(ILjava/nio/FloatBuffer;)V

    .line 229
    array-length v0, v11

    move/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->setNumIndices(I)V

    .line 232
    return-void
.end method

.method public static readTextFileFromRaw(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 63
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 65
    .local v4, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "body":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "nextLine":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v5    # "nextLine":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v6

    .restart local v5    # "nextLine":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static supportsEs2(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 49
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 50
    .local v1, "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
