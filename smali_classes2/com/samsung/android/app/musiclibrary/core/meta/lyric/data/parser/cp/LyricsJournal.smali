.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field private static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LyricsJournal"


# instance fields
.field private final mDiskCacheSize:I

.field private final mJournalFolder:Ljava/lang/String;

.field private mLyricsDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->mJournalFolder:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->mDiskCacheSize:I

    return-void
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private deleteFiles(Ljava/lang/String;Z)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 71
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->deleteFiles(Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 79
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p2

    .line 80
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", deleted : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private ensureDiskCacheJournal()Z
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->mLyricsDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->mJournalFolder:Ljava/lang/String;

    .line 142
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v3, Ljava/io/File;

    const-string v4, "journal.bkp"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->deleteFiles(Ljava/lang/String;Z)V

    .line 151
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->mDiskCacheSize:I

    int-to-long v2, v0

    invoke-static {v4, v1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Ljava/io/File;IIJ)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->mLyricsDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 154
    :catch_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "(Fatal error) Disk cache journal open failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->mLyricsDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private hashKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "MD5"

    .line 40
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 42
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hashKeyForDisk - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 5

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->ensureDiskCacheJournal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->mLyricsDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->hashKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    if-nez p1, :cond_2

    .line 89
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Snapshot is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 97
    :try_start_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    return-object v1

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    .line 92
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/ObjectInputStream;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->a(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 94
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_3

    .line 97
    :try_start_6
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    return-object v2

    :catchall_1
    move-exception v2

    move-object v3, v1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 92
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    :goto_0
    if-eqz v3, :cond_4

    .line 94
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_9
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    :goto_1
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_3
    move-exception v0

    .line 95
    :try_start_a
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Deserialization failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz p1, :cond_7

    .line 97
    :try_start_b
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    .line 87
    :goto_2
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v2, :cond_5

    .line 97
    :try_start_d
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_4

    :catch_4
    move-exception p1

    :try_start_e
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->close()V

    :cond_6
    :goto_4
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :catch_5
    move-exception p1

    .line 98
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unknown fail - get"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_5
    return-object v1
.end method

.method public put(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 5

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->ensureDiskCacheJournal()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-ne p2, v0, :cond_1

    return-void

    .line 111
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->hashKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->mLyricsDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 115
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->mLyricsDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->b(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v1, p1

    goto :goto_3

    .line 117
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    move-result-object p1

    .line 119
    :goto_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    const/4 v3, 0x0

    .line 120
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a(I)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a()V

    .line 123
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Commit object!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    .line 125
    :try_start_4
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object p2, v1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 119
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p2

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_1
    if-eqz p2, :cond_3

    .line 124
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_7
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    :goto_2
    throw p1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 112
    :goto_3
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    .line 125
    :try_start_9
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    :catch_3
    move-exception p2

    :try_start_a
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->close()V

    :cond_5
    :goto_5
    throw p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception p1

    .line 127
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Unknown fail - put"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_6
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->ensureDiskCacheJournal()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;->mLyricsDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->c(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    return v0
.end method
