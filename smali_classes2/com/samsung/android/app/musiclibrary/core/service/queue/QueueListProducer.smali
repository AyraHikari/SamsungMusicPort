.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_TSP:Z = false

.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final SUB_TAG:Ljava/lang/String; = "---- QueueBuilder >> "

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private final mBaseUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mIds:[J

.field private mIsCancel:Z

.field private mIsRunning:Z

.field private final mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final mSupportOnline:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[JZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 67
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[JZLcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[JZLcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIsCancel:Z

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIsRunning:Z

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 74
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mBaseUri:Landroid/net/Uri;

    .line 75
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIds:[J

    .line 76
    iput-boolean p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mSupportOnline:Z

    .line 77
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;

    return-void
.end method

.method private doWork()V
    .locals 3

    .line 95
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIsCancel:Z

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-SV-List"

    const-string v1, "---- QueueBuilder >> Cancel compose this queue! - run"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->getQueueItems()Ljava/util/List;

    move-result-object v0

    .line 100
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIsCancel:Z

    if-eqz v1, :cond_1

    const-string v0, "SMUSIC-SV-List"

    const-string v1, "---- QueueBuilder >> Cancel compose this queue! - getQueueItems"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIds:[J

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;->onResult([JLjava/util/List;)V

    :cond_2
    return-void
.end method

.method private static getAttribute(Landroid/database/Cursor;Z)J
    .locals 4

    const-string v0, "is_secretbox"

    .line 190
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_3

    const-string p1, "explicit"

    .line 195
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 197
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string v3, "is_celeb"

    .line 201
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4

    .line 203
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-ne p0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move v2, v1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    .line 211
    :cond_4
    :goto_3
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;-><init>()V

    if-eqz v0, :cond_5

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putPrivateAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    :cond_5
    if-eqz p1, :cond_6

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putExplicitAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    :cond_6
    if-eqz v2, :cond_7

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putCelebAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    .line 221
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->build()J

    move-result-wide p0

    return-wide p0
.end method

.method private getQueueFromCursor(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[J)Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;",
            "Landroid/net/Uri;",
            "[J)",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    const-string v0, "SMUSIC-SV-List"

    const-string v1, "---- QueueBuilder >> 1 start query"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 136
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;

    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mSupportOnline:Z

    invoke-direct {v3, p3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;-><init>(Landroid/net/Uri;Z)V

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->projection:[Ljava/lang/String;

    invoke-direct {v2, p1, p3, p4, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[J[Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    const-string p3, "SMUSIC-SV-List"

    .line 138
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---- QueueBuilder >> 2 query complete. takes : "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long/2addr v3, v0

    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 138
    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p2, "SMUSIC-SV-List"

    const-string p3, "---- QueueBuilder >> No data now playing queue"

    .line 141
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object p2

    .line 145
    :cond_0
    :try_start_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 147
    :cond_1
    iget-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIsCancel:Z

    if-eqz p4, :cond_2

    const-string p2, "SV-List"

    const-string p3, "---- QueueBuilder >> Cancel compose this queue! - getQueueItem"

    .line 148
    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object p2

    .line 152
    :cond_2
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result p4

    int-to-long v0, p4

    iget-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mSupportOnline:Z

    invoke-static {p2, v2, v0, v1, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->getQueueItem(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/database/Cursor;JZ)Landroid/media/session/MediaSession$QueueItem;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 154
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-nez p4, :cond_1

    const-string p2, "SMUSIC-SV-List"

    .line 157
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "---- QueueBuilder >> 3 composed Queue size : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object p3

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p1, :cond_4

    .line 159
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_1
    throw p2
.end method

.method private static getQueueItem(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/database/Cursor;JZ)Landroid/media/session/MediaSession$QueueItem;
    .locals 19

    move-object/from16 v0, p1

    const/16 v1, 0x63

    .line 164
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v1, "title"

    .line 165
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "artist"

    .line 166
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "album"

    .line 167
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "genre"

    .line 168
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "duration"

    .line 169
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v1, "album_id"

    .line 170
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    :try_start_0
    const-string v1, "cp_attrs"

    .line 175
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    .line 177
    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->a([I)I

    move-result v1

    :goto_0
    move v14, v1

    const-string v1, "sampling_rate"

    .line 179
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "bit_depth"

    .line 180
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "mime_type"

    .line 181
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(IILjava/lang/String;)J

    move-result-wide v15

    move/from16 v1, p4

    .line 184
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->getAttribute(Landroid/database/Cursor;Z)J

    move-result-wide v17

    move-wide/from16 v0, p2

    .line 185
    invoke-static {v4, v5, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->getQueueItemId(JJ)J

    move-result-wide v2

    invoke-static/range {v2 .. v18}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueItemUtils;->obtainItem(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJJ)Landroid/media/session/MediaSession$QueueItem;

    move-result-object v0

    return-object v0
.end method

.method public static getQueueItemId(JJ)J
    .locals 1

    const/16 v0, 0x11

    shl-long/2addr p0, v0

    or-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIsCancel:Z

    return-void
.end method

.method public getQueueItems()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    const-string v0, "SV-List"

    const-string v1, "---- QueueBuilder >> Open a new list, Start to making QueueItem List"

    .line 118
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mBaseUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIds:[J

    .line 124
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->getQueueFromCursor(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->doWork()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIsRunning:Z

    return-void
.end method
