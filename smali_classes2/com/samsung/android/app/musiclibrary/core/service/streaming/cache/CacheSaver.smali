.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final MAX_SIZE:I = 0x3e800000

.field private static final RESTORE_SIZE:I = 0x3200000

.field private static final SUB_TAG:Ljava/lang/String; = "CacheManager> "


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

.field private final mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    return-void
.end method

.method private deleteFileAndCp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 165
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "deleteFileAndCp. File remove error !!"

    .line 168
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->printInfoLog(Ljava/lang/String;)V

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFileAndCp. File removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->printInfoLog(Ljava/lang/String;)V

    .line 172
    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private encryptAndSave(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 14
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-wide/16 v9, 0x0

    cmp-long v2, p5, v9

    if-gtz v2, :cond_0

    const-string v0, ""

    return-object v0

    .line 97
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->getFreeSpace(Landroid/content/Context;)J

    move-result-wide v11

    const-wide/32 v2, 0x3200000

    cmp-long v2, v11, v2

    if-gtz v2, :cond_1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encryptAndSave free space is not enough : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->printLog(Ljava/lang/String;)V

    return-object v1

    .line 105
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    iget-boolean v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->saveFullCacheOnly:Z

    if-eqz v2, :cond_3

    cmp-long v2, p5, p7

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    move-object v13, v1

    const/4 v8, 0x1

    goto :goto_1

    .line 107
    :cond_3
    :goto_0
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->getCacheId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-interface {v3, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;->getSecureType()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v2

    move v8, v3

    :goto_1
    move-object v1, p1

    move-object/from16 v2, p3

    move-object v3, v13

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    .line 119
    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->save(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Ljava/lang/String;JJI)V

    .line 129
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    iget-wide v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->maxCacheSize:J

    cmp-long v2, v0, v9

    if-lez v2, :cond_5

    .line 131
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    cmp-long v3, v11, v0

    if-lez v3, :cond_4

    move-wide v11, v0

    :cond_4
    const-wide/32 v0, 0x3200000

    move-object/from16 p2, v2

    move-wide/from16 p3, v11

    move-wide/from16 p5, v0

    .line 132
    invoke-static/range {p1 .. p6}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->cleanCachedSize(Landroid/content/Context;Ljava/lang/String;JJ)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    const-wide/32 v1, 0x3e800000

    cmp-long v3, v11, v1

    if-lez v3, :cond_6

    move-wide v11, v1

    :cond_6
    const-wide/32 v1, 0x3200000

    move-object/from16 p2, v0

    move-wide/from16 p3, v11

    move-wide/from16 p5, v1

    .line 135
    invoke-static/range {p1 .. p6}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->cleanCachedSize(Landroid/content/Context;Ljava/lang/String;JJ)V

    :goto_2
    return-object v13

    :catch_0
    move-exception v0

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "do not encryptAndSave!, cafe fail! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->printErrorLog(Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    .line 111
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->deleteFileAndCp(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public static getCacheId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 147
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 149
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 150
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 152
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getFreeSpace(Landroid/content/Context;)J
    .locals 2

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->getBaseCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method static hasFreeSpace(Landroid/content/Context;)Z
    .locals 4

    .line 70
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->getFreeSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 74
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasFreeSpace free space is not enough : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->printLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static printErrorLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method deleteFileAndCp(Ljava/lang/String;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->deleteFileAndCp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method encrypt(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;
    .locals 14

    .line 48
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getAvailableBytes()J

    move-result-wide v9

    .line 50
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getTotalBytes()J

    move-result-wide v11

    .line 51
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    move-object v0, p0

    move-wide v5, v9

    move-wide v7, v11

    .line 52
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->encryptAndSave(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v6

    .line 53
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->serverTimeStamp:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    .line 54
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;->getSecureType()I

    move-result v1

    const/4 v13, 0x1

    move-object v5, p1

    move-wide v7, v9

    move-wide v9, v11

    move-object v11, v0

    move v12, v1

    invoke-direct/range {v5 .. v13}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;-><init>(Ljava/lang/String;JJLjava/lang/String;IZ)V

    return-object p1
.end method
