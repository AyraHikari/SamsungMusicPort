.class public Lcom/samsung/android/sdk/smp/common/FileIOUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "FileIOUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/samsung/android/sdk/smp/common/FileIOUtil;

    monitor-enter v0

    .line 54
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 59
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 64
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 53
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/samsung/android/sdk/smp/common/FileIOUtil;

    monitor-enter v0

    .line 74
    :try_start_0
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 75
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 81
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Z
    .locals 8

    const-class v0, Lcom/samsung/android/sdk/smp/common/FileIOUtil;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 25
    monitor-exit v0

    return v1

    .line 27
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-nez p0, :cond_1

    .line 29
    monitor-exit v0

    return v3

    .line 33
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 35
    array-length v4, p0

    const/4 v3, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v6, p0, v3

    .line 36
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 37
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_3

    :goto_1
    const/4 v5, 0x0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v5

    .line 47
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v3

    .line 50
    :goto_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-class v0, Lcom/samsung/android/sdk/smp/common/FileIOUtil;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 92
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipFile;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 94
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v3, v4, p2}, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_1

    .line 108
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 97
    :catch_0
    monitor-exit v0

    return v2

    .line 100
    :cond_2
    :try_start_4
    sget-object p2, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unzip success ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p0, 0x1

    .line 108
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 101
    :catch_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    .line 103
    :goto_0
    :try_start_6
    sget-object p1, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unzip fail. "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_3

    .line 108
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 104
    :catch_4
    :cond_3
    monitor-exit v0

    return v2

    :goto_1
    if-eqz v1, :cond_4

    .line 108
    :try_start_8
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 111
    :catch_5
    :cond_4
    :try_start_9
    throw p0

    .line 86
    :cond_5
    :goto_2
    sget-object p0, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a:Ljava/lang/String;

    const-string p1, "unzip fail. invalid params"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 87
    monitor-exit v0

    return v2

    :catchall_2
    move-exception p0

    .line 84
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-class v0, Lcom/samsung/android/sdk/smp/common/FileIOUtil;

    monitor-enter v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 124
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 125
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 127
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    sget-object p0, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unzip fail. cannot make directory:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 129
    monitor-exit v0

    return v3

    :cond_0
    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 133
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v1, v5, :cond_2

    .line 135
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 138
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v5, 0x400

    .line 139
    :try_start_3
    new-array v5, v5, [B

    .line 142
    :goto_0
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_1

    .line 143
    invoke-virtual {v1, v5, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 146
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    :try_start_4
    invoke-virtual {v6, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v6

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v6, v2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v6, v2

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v1, v2

    move-object v6, v1

    :goto_1
    move-object v2, p0

    move-object p0, p1

    goto :goto_9

    :catch_2
    move-exception p1

    move-object v1, v2

    move-object v6, v1

    :goto_2
    move-object v2, p0

    move-object p0, p1

    goto :goto_6

    :cond_2
    move-object p0, v2

    move-object v1, p0

    :goto_3
    if-eqz p0, :cond_3

    .line 157
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catch_3
    nop

    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    .line 164
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    :catch_4
    nop

    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 171
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 150
    :catch_5
    :cond_5
    monitor-exit v0

    return v4

    :catchall_3
    move-exception p0

    move-object v1, v2

    move-object v6, v1

    goto :goto_9

    :catch_6
    move-exception p0

    move-object v1, v2

    move-object v6, v1

    .line 152
    :goto_6
    :try_start_8
    sget-object p1, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unzip fail. "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v2, :cond_6

    .line 157
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    :catch_7
    nop

    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    .line 164
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_8

    :catch_8
    nop

    :cond_7
    :goto_8
    if-eqz v6, :cond_8

    .line 171
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 153
    :catch_9
    :cond_8
    monitor-exit v0

    return v3

    :catchall_4
    move-exception p0

    :goto_9
    if-eqz v2, :cond_9

    .line 157
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception p0

    goto :goto_c

    :catch_a
    nop

    :cond_9
    :goto_a
    if-eqz v1, :cond_a

    .line 164
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_b

    :catch_b
    nop

    :cond_a
    :goto_b
    if-eqz v6, :cond_b

    .line 171
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 174
    :catch_c
    :cond_b
    :try_start_f
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 116
    :goto_c
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/samsung/android/sdk/smp/common/FileIOUtil;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 70
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 181
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 184
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 185
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 187
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
