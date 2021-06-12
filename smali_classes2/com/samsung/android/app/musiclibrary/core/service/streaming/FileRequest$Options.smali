.class public Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public final findFullCacheOnly:Z

.field public final maxCacheSize:J

.field public final partialDownload:Z

.field public final requestSize:J

.field public final saveFullCacheOnly:Z


# direct methods
.method private constructor <init>(ZJJ)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->findFullCacheOnly:Z

    .line 182
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->saveFullCacheOnly:Z

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->partialDownload:Z

    .line 184
    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->maxCacheSize:J

    .line 185
    iput-wide p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->requestSize:J

    return-void
.end method

.method public static obtain(Z)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;
    .locals 7

    .line 168
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;-><init>(ZJJ)V

    return-object v6
.end method

.method public static obtain(ZJ)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;
    .locals 7

    .line 172
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    const-wide/16 v4, 0x0

    move-object v0, v6

    move v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;-><init>(ZJJ)V

    return-object v6
.end method

.method public static obtain(ZJJ)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;
    .locals 7

    .line 177
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    move-object v0, v6

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;-><init>(ZJJ)V

    return-object v6
.end method


# virtual methods
.method public isPreCache()Z
    .locals 4

    .line 190
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->requestSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->requestSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
