.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SUB_TAG:Ljava/lang/String; = "---- ProviderInserter >> "

.field private static final TAG:Ljava/lang/String; = "SV-List"

.field private static final UNDEFINED_ID:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsCancel:Z

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final mPosition:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Ljava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mIsCancel:Z

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 48
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mItems:Ljava/util/List;

    .line 49
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mPosition:I

    .line 50
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;

    return-void
.end method

.method private addSong(Landroid/media/session/MediaSession$QueueItem;)J
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v0

    const-wide/16 v1, -0x1

    .line 145
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->convert(Landroid/media/session/MediaSession$QueueItem;)Landroid/content/ContentValues;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "SV-List"

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---- ProviderInserter >> addSong but fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " try it one more time."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "SV-List"

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- ProviderInserter >> addSong but failed again why? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 159
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception p1

    const-string v0, "SV-List"

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- ProviderInserter >> addSong but fail when convert it."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method private checkId(Landroid/media/session/MediaSession$QueueItem;)J
    .locals 8

    .line 114
    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    const/4 v3, 0x1

    .line 120
    invoke-interface {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v3

    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "source_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    .line 123
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 120
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 127
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, p1

    goto :goto_1

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->addSong(Landroid/media/session/MediaSession$QueueItem;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 137
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v2

    .line 119
    :goto_1
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 137
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    throw p1
.end method

.method private convert(Landroid/media/session/MediaSession$QueueItem;)Landroid/content/ContentValues;
    .locals 11

    .line 164
    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 165
    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.music.mediasession.music_metadata"

    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/MediaMetadata;

    const-string v1, "android.media.metadata.TITLE"

    .line 167
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "android.media.metadata.ARTIST"

    .line 168
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "android.media.metadata.ALBUM"

    .line 169
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "android.media.metadata.DURATION"

    .line 170
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 172
    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.samsung.android.app.music.metadata.music_metadata.META_OTHERS"

    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/media/MediaMetadata;

    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    .line 174
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    move-object v1, p0

    .line 175
    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->makeOnlineTrackContentValue(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method private doInsertDB()V
    .locals 12

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mPosition:I

    .line 72
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v6, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/session/MediaSession$QueueItem;

    .line 73
    iget-boolean v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mIsCancel:Z

    if-eqz v8, :cond_0

    const-string v0, "SV-List"

    const-string v1, "---- ProviderInserter >> doInsertDB is Canceled!"

    .line 78
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_0
    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->checkId(Landroid/media/session/MediaSession$QueueItem;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    add-int/lit8 v10, v2, 0x1

    .line 84
    aput-wide v8, v0, v2

    .line 85
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v10

    goto :goto_1

    .line 87
    :cond_1
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mPosition:I

    if-ge v5, v7, :cond_2

    add-int/lit8 v6, v6, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "SV-List"

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---- ProviderInserter >> doInsertDB mItems.size() "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " real size "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 96
    new-array v3, v2, [J

    .line 97
    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 105
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;

    if-eqz v2, :cond_5

    .line 106
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;

    invoke-interface {v2, v0, v1, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;->onResult([JLjava/util/List;I)V

    :cond_5
    return-void
.end method

.method private makeOnlineTrackContentValue(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;
    .locals 3

    .line 180
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "source_id"

    .line 181
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "_data"

    .line 184
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 185
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title_key"

    const-string p2, "title_key_dummy"

    .line 186
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "duration"

    .line 187
    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "artist"

    .line 188
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "album"

    .line 189
    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "album_id"

    .line 190
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mIsCancel:Z

    return-void
.end method

.method public run()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->doInsertDB()V

    return-void
.end method
