.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-ShaderCompiler"

.field private static final sTempTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->sTempTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDefines([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    .line 138
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    const-string v4, "#define "

    .line 139
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compile(Landroid/content/Context;[Ljava/lang/String;II)I
    .locals 0

    .line 52
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->loadShader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 53
    invoke-static {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->loadShader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-static {p1, p2, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->compile([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static compile([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const v0, 0x8b31

    .line 66
    invoke-static {v0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 67
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->addDefines([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 68
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    .line 70
    new-array v1, p1, [I

    const v2, 0x8b81

    const/4 v3, 0x0

    .line 71
    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 72
    aget v4, v1, v3

    if-nez v4, :cond_0

    .line 73
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SMUSIC-ShaderCompiler"

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VertexShader compilation log: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const v5, 0x8b30

    .line 78
    invoke-static {v5}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v5

    .line 79
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->addDefines([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 80
    invoke-static {v5}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 82
    invoke-static {v5, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 83
    aget p0, v1, v3

    if-nez p0, :cond_1

    .line 84
    invoke-static {v5}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "SMUSIC-ShaderCompiler"

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FragmentShader compilation log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    if-nez p1, :cond_2

    .line 93
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p0

    .line 94
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 95
    invoke-static {p0, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 96
    invoke-static {p0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    return p0

    .line 90
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to compile shader, check log for detail"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadShader(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    .line 111
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->sTempTypedValue:Landroid/util/TypedValue;

    monitor-enter v0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->sTempTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object p0

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x400

    .line 115
    :try_start_1
    new-array v0, p1, [B

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    .line 119
    new-instance v4, Ljava/lang/String;

    const-string v5, "US-ASCII"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v0, v3, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 124
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    const/4 p0, 0x0

    return-object p0

    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 130
    :catch_3
    throw p1

    :catchall_1
    move-exception p0

    .line 113
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method
