.class public Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "album"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "artist"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "album_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "artist_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "duration"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "_data"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "mime_type"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "genre"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "bitrate"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "duration"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->f:Z

    if-eqz v1, :cond_0

    const-string v1, "is_secretbox"

    goto :goto_0

    :cond_0
    const-string v1, "0 AS is_secretbox"

    :goto_0
    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .locals 7

    const/4 v0, 0x0

    .line 33
    :try_start_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 34
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_4

    .line 36
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    :try_start_2
    iput-object p1, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->b:Landroid/net/Uri;

    const-string v0, "title"

    .line 39
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->c:Ljava/lang/String;

    const-string v0, "album"

    .line 41
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->d:Ljava/lang/String;

    const-string v0, "artist"

    .line 43
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->e:Ljava/lang/String;

    const-string p0, "album_id"

    .line 44
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    int-to-long v3, p0

    iput-wide v3, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->g:J

    const-string p0, "artist_id"

    .line 45
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    int-to-long v3, p0

    iput-wide v3, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->f:J

    const-string p0, "duration"

    .line 46
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->h:J

    const-string p0, "mime_type"

    .line 47
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->i:Ljava/lang/String;

    const-string p0, "_data"

    .line 48
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->j:Ljava/lang/String;

    .line 49
    iget-object p0, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->c:Ljava/lang/String;

    if-nez p0, :cond_0

    .line 50
    iget-object p0, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->c:Ljava/lang/String;

    :cond_0
    const-string p0, "genre"

    .line 52
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->p:Ljava/lang/String;

    const-string p0, "is_secretbox"

    .line 53
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->q:Z

    .line 55
    sget-boolean p0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->d:Z

    if-eqz p0, :cond_2

    const-string p0, "sampling_rate"

    .line 56
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const-string v0, "bit_depth"

    .line 57
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 58
    iget-object v3, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->i:Ljava/lang/String;

    .line 59
    invoke-static {p0, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(IILjava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->r:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    :try_start_3
    const-string p0, "SMUSIC-DefaultMediaDbUtils"

    const-string v2, "getAlbumInfo: cursor.moveToFirst() FAIL"

    .line 62
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_5

    :cond_4
    const-string p0, "SMUSIC-DefaultMediaDbUtils"

    const-string v2, "getAlbumInfo: cursor==null"

    .line 65
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v1, :cond_5

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    const-string p0, "DefaultMediaDbUtils"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaInfo uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_6

    const-string p1, "null"

    goto :goto_2

    .line 72
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " title : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_7

    const-string p1, "null"

    goto :goto_3

    :cond_7
    iget-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->c:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " album id : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_8

    const-string p1, "null"

    goto :goto_4

    :cond_8
    iget-wide v2, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->g:J

    .line 74
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_5
    if-eqz v1, :cond_9

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMediaInfo uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_a

    const-string p1, "null"

    goto :goto_6

    .line 72
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " title : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_b

    const-string p1, "null"

    goto :goto_7

    :cond_b
    iget-object p1, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->c:Ljava/lang/String;

    :goto_7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " album id : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_c

    const-string p1, "null"

    goto :goto_8

    :cond_c
    iget-wide v1, v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->g:J

    .line 74
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultMediaDbUtils"

    .line 71
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x2e

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method
