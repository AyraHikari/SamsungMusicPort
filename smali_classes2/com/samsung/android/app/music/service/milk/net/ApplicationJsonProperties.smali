.class public Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;


# static fields
.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Z


# instance fields
.field private final h:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->g:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->i:Z

    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->h:Lorg/json/JSONObject;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .locals 1

    const-class v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .locals 2

    const-class v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    monitor-enter v0

    :try_start_0
    const-string v1, "usm.json"

    .line 50
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .locals 6

    const-class p0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    monitor-enter p0

    .line 55
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 60
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 64
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_1

    :try_start_2
    const-string v1, "ApplicationJsonProperties"

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "propertiesFile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v2, 0x1

    .line 69
    :try_start_3
    sput-boolean v2, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->i:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v0

    :goto_0
    :try_start_4
    const-string v3, "ApplicationJsonProperties"

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "propertiesFile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_4

    .line 80
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->b()Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 81
    :try_start_5
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ApplicationJsonProperties"

    const-string v3, "getInstance return emptyProperties"

    .line 82
    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_2

    .line 105
    :try_start_6
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->b()Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v2

    .line 106
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ApplicationJsonProperties"

    const-string v0, "getInstance return emptyProperties"

    .line 107
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_2
    if-eqz v1, :cond_3

    .line 111
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catch_2
    move-exception p1

    .line 113
    :try_start_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 116
    :cond_3
    :goto_2
    monitor-exit p0

    return-object v2

    :catchall_0
    move-object v0, v2

    goto/16 :goto_8

    :catch_3
    move-object v0, v2

    goto/16 :goto_6

    .line 85
    :cond_4
    :try_start_9
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 91
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApplicationJsonProperties"

    .line 92
    invoke-static {v3, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 95
    new-instance v3, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    check-cast v2, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;-><init>(Lorg/json/JSONObject;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 96
    :try_start_a
    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;)V

    .line 97
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v0, v3

    goto :goto_4

    :catchall_1
    move-object v0, v3

    goto :goto_8

    :catch_4
    move-object v0, v3

    goto :goto_6

    :cond_6
    :try_start_b
    const-string v2, "ApplicationJsonProperties"

    const-string v3, "getInstance Unable to initialize RadioProperties!"

    .line 99
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_4
    if-nez v0, :cond_7

    .line 105
    :try_start_c
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->b()Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    .line 106
    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ApplicationJsonProperties"

    const-string v2, "getInstance return emptyProperties"

    .line 107
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :cond_7
    if-eqz v1, :cond_8

    .line 111
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_5

    :catch_5
    move-exception p1

    .line 113
    :try_start_e
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 116
    :cond_8
    :goto_5
    monitor-exit p0

    return-object v0

    :catchall_2
    move-object v1, v0

    goto :goto_8

    :catch_6
    move-object v1, v0

    :catch_7
    :goto_6
    :try_start_f
    const-string v2, "ApplicationJsonProperties"

    const-string v3, "getInstance Unable to parse JSON properties file!"

    .line 102
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-nez v0, :cond_9

    .line 105
    :try_start_10
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->b()Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    .line 106
    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ApplicationJsonProperties"

    const-string v2, "getInstance return emptyProperties"

    .line 107
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :cond_9
    if-eqz v1, :cond_a

    .line 111
    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_7

    :catch_8
    move-exception p1

    .line 113
    :try_start_12
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 116
    :cond_a
    :goto_7
    monitor-exit p0

    return-object v0

    :catchall_3
    nop

    :goto_8
    if-nez v0, :cond_b

    .line 105
    :try_start_13
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->b()Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    .line 106
    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ApplicationJsonProperties"

    const-string v2, "getInstance return emptyProperties"

    .line 107
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :cond_b
    if-eqz v1, :cond_c

    .line 111
    :try_start_14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto :goto_9

    :catch_9
    move-exception p1

    .line 113
    :try_start_15
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 116
    :cond_c
    :goto_9
    monitor-exit p0

    return-object v0

    .line 119
    :cond_d
    :try_start_16
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    monitor-exit p0

    return-object p1

    :catchall_4
    move-exception p1

    .line 54
    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized a()V
    .locals 3

    const-class v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    monitor-enter v0

    :try_start_0
    const-string v1, "ApplicationJsonProperties"

    const-string v2, "clearProperties"

    .line 152
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 151
    monitor-exit v0

    throw v1
.end method

.method private static a(Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 158
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->b(Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;)V

    :cond_0
    return-void
.end method

.method private static b()Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .locals 3

    .line 125
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\"dummy\":\"dummy\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    new-instance v2, Lorg/json/JSONTokener;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static b(Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;)V
    .locals 2

    const-string v0, "loglevel"

    const/4 v1, 0x2

    .line 163
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;I)I

    move-result p0

    .line 165
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/util/MLog;->a(I)V

    .line 166
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(I)V

    .line 167
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->a(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;I)I
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)Z
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
