.class public final Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-PlayUtils"

.field private static final TAG:Ljava/lang/String; = "PlayUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToMediaProviderIds(Landroid/content/Context;[J)[J
    .locals 11

    const-string v0, "_id"

    .line 60
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->convertToWhereString(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v4

    .line 61
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->d:Landroid/net/Uri;

    const-string v0, "source_id"

    const-string v1, "_id"

    const-string v3, "cp_attrs"

    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 62
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 65
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "source_id"

    .line 66
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "_id"

    .line 67
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "cp_attrs"

    .line 68
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 70
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    const-wide/16 v6, -0x1

    .line 75
    :cond_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->c(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 76
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 78
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_2

    .line 81
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->getRandomMediaId(Landroid/content/Context;)J

    move-result-wide v6

    .line 83
    :cond_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 85
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 86
    invoke-static {v5, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->getArrangeIdsAslong(Landroid/util/LongSparseArray;[J)[J

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, p0

    .line 61
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    .line 88
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    throw p0

    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v1
.end method

.method public static convertToMusicProviderIds(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "source_id"

    .line 46
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->convertToWhereString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->getIds(Landroid/content/Context;Ljava/lang/String;)Landroid/util/LongSparseArray;

    move-result-object p0

    .line 48
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->getArrangeIds(Landroid/util/LongSparseArray;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMusicProviderIds(Landroid/content/Context;[J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "source_id"

    .line 34
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->convertToWhereString(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->getIds(Landroid/content/Context;Ljava/lang/String;)Landroid/util/LongSparseArray;

    move-result-object p0

    .line 36
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->getArrangeIds(Landroid/util/LongSparseArray;[J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static convertToWhereString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 142
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " IN ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_1

    .line 146
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    if-ge p0, v2, :cond_0

    const/16 v2, 0x2c

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    .line 151
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static convertToWhereString(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 4

    .line 128
    array-length v0, p1

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " IN ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_1

    .line 132
    aget-wide v2, p1, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    if-ge p0, v2, :cond_0

    const/16 v2, 0x2c

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getArrangeIds(Landroid/util/LongSparseArray;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 202
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 204
    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->getLongFromSparseArray(Landroid/util/LongSparseArray;J)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "SMUSIC-PlayUtils"

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert id but meida id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " is not exist in MusicProvider."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getArrangeIds(Landroid/util/LongSparseArray;[J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;[J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 185
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, p1, v2

    .line 187
    invoke-static {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->getLongFromSparseArray(Landroid/util/LongSparseArray;J)Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "SMUSIC-PlayUtils"

    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Convert id but meida id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " is not exist in MusicProvider."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getArrangeIdsAslong(Landroid/util/LongSparseArray;[J)[J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;[J)[J"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 159
    :cond_0
    array-length v0, p1

    .line 160
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 162
    aget-wide v3, p1, v2

    invoke-static {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->getLongFromSparseArray(Landroid/util/LongSparseArray;J)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "SMUSIC-PlayUtils"

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert id but music id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, p1, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " is not exist in MusicProvider."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIds(Landroid/content/Context;Ljava/lang/String;)Landroid/util/LongSparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 110
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->d:Landroid/net/Uri;

    const-string v0, "source_id"

    const-string v2, "_id"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 111
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    .line 114
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "source_id"

    .line 115
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "_id"

    .line 116
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 117
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 119
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 120
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    if-eqz p0, :cond_1

    .line 123
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 123
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    throw v0

    :cond_4
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p1
.end method

.method private static getLongFromSparseArray(Landroid/util/LongSparseArray;J)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;J)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 175
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getRandomMediaId(Landroid/content/Context;)J
    .locals 6

    .line 93
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "title != \'\' AND is_music=1"

    const-string v5, "_id LIMIT 1"

    const/4 v4, 0x0

    move-object v0, p0

    .line 94
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    .line 99
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 100
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 102
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    .line 102
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw v1

    :cond_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    const-wide/16 v0, 0x0

    return-wide v0
.end method
