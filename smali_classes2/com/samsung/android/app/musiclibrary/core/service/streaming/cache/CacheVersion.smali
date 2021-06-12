.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CAFE:Ljava/lang/String; = "cafe"

.field private static final CAFE_NAME:Ljava/lang/String; = ".cafe"

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final SUB_TAG:Ljava/lang/String; = "CacheManager> "

.field private static final UNDEFINED:J = -0x1L

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final VERSION_CODE:J = 0x5L


# instance fields
.field private final mCachePath:Ljava/lang/String;

.field private mCafe:Ljava/lang/String;

.field private final mCafePath:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mVersion:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 47
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mVersion:J

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mCachePath:Ljava/lang/String;

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mCachePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".cafe"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mCafePath:Ljava/lang/String;

    return-void
.end method

.method private getVersion()J
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mVersion:J

    return-wide v0
.end method

.method private jsonRead(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 153
    :try_start_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 154
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mVersion:J

    goto :goto_0

    :cond_0
    const-string v2, "cafe"

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mCafe:Ljava/lang/String;

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 152
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_3

    .line 165
    :try_start_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    :goto_2
    throw v1
.end method

.method private jsonWrite(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    new-instance v0, Landroid/util/JsonWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    .line 144
    :try_start_0
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v1, "version"

    .line 145
    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v1, "cafe"

    .line 146
    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mCafe:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 147
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_0

    .line 148
    :try_start_2
    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    :goto_1
    throw v1
.end method

.method private makeDir(Ljava/lang/String;)V
    .locals 1

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "makeDir. mkdirs failed."

    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->printInfoLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private printErrorLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateCafe(JJ)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cafe updated from  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->printInfoLog(Ljava/lang/String;)V

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "/mod"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/caches/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 112
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/streams/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->delete(Ljava/io/File;)V

    .line 114
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->delete(Ljava/io/File;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public ensureCafe()V
    .locals 8

    const-string v0, "ensureCafe."

    .line 67
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->printInfoLog(Ljava/lang/String;)V

    .line 68
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mVersion:J

    const-wide/16 v2, 0x5

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureCafe. mVersion different "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mVersion:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->printInfoLog(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mCafePath:Ljava/lang/String;

    const-wide/16 v4, -0x1

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mCachePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->makeDir(Ljava/lang/String;)V

    .line 75
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 78
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->jsonRead(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 80
    :try_start_2
    iput-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mVersion:J

    const-string v6, "It is fail to during setup."

    .line 81
    invoke-direct {p0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->printErrorLog(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ensureCafe. mVersion after read "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mVersion:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->printInfoLog(Ljava/lang/String;)V

    .line 86
    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mVersion:J

    cmp-long v1, v6, v2

    if-gez v1, :cond_2

    .line 87
    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mVersion:J

    invoke-direct {p0, v6, v7, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->updateCafe(JJ)V

    .line 88
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->clearCache(Landroid/content/Context;)V

    .line 89
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mCachePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->makeDir(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mCafe:Ljava/lang/String;

    .line 91
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->jsonWrite(Ljava/io/OutputStream;)V

    .line 92
    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mVersion:J

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureCafe. write version and mCafe... mVersion after read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->printInfoLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 97
    iput-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mVersion:J

    const-string v1, "It is fail to during setup."

    .line 98
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->printErrorLog(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public getCafe()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mCafe:Ljava/lang/String;

    return-object v0
.end method

.method public hasCafe()Z
    .locals 4

    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->mCafePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->getVersion()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
