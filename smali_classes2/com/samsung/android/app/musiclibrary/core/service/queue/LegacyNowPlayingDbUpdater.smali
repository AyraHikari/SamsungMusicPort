.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final DISABLE:Ljava/lang/String; = "disable"

.field private static final EXTERNAL:Ljava/lang/String; = "external"

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-LegacyNowplaying"

.field private static final MAX_BULK_ITEM:I = 0x3e8

.field private static final NOWPLAYING_LIST_NAME:Ljava/lang/String; = "now playing list 0123456789"

.field private static final PARAM_NOTIFY_CHANGE:Ljava/lang/String; = "notifyChange"

.field private static final PLAY_LIST_CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

.field private static final SEC_FILTER:Ljava/lang/String; = "secFilter"

.field private static final TAG:Ljava/lang/String; = "LegacyNowplaying"

.field private static final UNDEFINED:I = -0x1

.field private static final VALUE_INCLUDE:Ljava/lang/String; = "include"

.field private static sNowPlayingListId:J

.field private static final sNowPlayingListToken:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsCancel:Z

.field private final mMusicIds:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 39
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "secFilter"

    const-string v2, "include"

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->PLAY_LIST_CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

    const-wide/16 v0, -0x1

    .line 66
    sput-wide v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListId:J

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListToken:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;[J)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mIsCancel:Z

    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mMusicIds:[J

    return-void
.end method

.method private addToNowPlayinglistInternal(Landroid/content/Context;[JJ)I
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "SMUSIC-LegacyNowplaying"

    const-string p2, "ListSelection null"

    .line 173
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    const-string v1, "external"

    .line 175
    invoke-static {v1, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p3

    .line 176
    array-length p4, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p4, :cond_3

    const/16 v4, 0x3e8

    .line 179
    invoke-direct {p0, p2, v2, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->makeInsertItems([JIII)[Landroid/content/ContentValues;

    move-result-object v4

    .line 180
    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mIsCancel:Z

    if-eqz v5, :cond_1

    const-string p1, "LegacyNowplaying"

    const-string p2, "cancel add to now playing list in db."

    .line 181
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    if-nez v2, :cond_2

    .line 187
    invoke-direct {p0, p1, v3, p3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->deletePreviousAndInsertNew(Landroid/content/Context;ILandroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3

    goto :goto_1

    .line 190
    :cond_2
    invoke-static {p1, p3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v4

    add-int/2addr v3, v4

    :goto_1
    add-int/lit16 v2, v2, 0x3e8

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_2
    return v0
.end method

.method private debugPrintTrackNames(J)V
    .locals 7

    const-string v0, "external"

    .line 237
    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 238
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mContext:Landroid/content/Context;

    const-string p1, "title"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "play_order"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 239
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 242
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    .line 244
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-LegacyNowplaying"

    .line 245
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 238
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 248
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw v0

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void
.end method

.method private deletePreviousAndInsertNew(Landroid/content/Context;ILandroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 0

    .line 203
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->f(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p1, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    add-int/2addr p2, p1

    return p2
.end method

.method private static getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "notifyChange"

    const-string v1, "disable"

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getNowPlayingListId(Landroid/content/Context;)J
    .locals 6

    .line 86
    sget-wide v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 87
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListToken:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-wide v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListId:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    if-nez p0, :cond_0

    const-string p0, "SMUSIC-LegacyNowplaying"

    const-string v1, "try to getNowPlayingListId but id is minus value and context is null. Please check your logic"

    .line 94
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->makeNowplayingList(Landroid/content/Context;)V

    .line 100
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 102
    :cond_2
    :goto_1
    sget-wide v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListId:J

    return-wide v0
.end method

.method private makeInsertItems([JIII)[Landroid/content/ContentValues;
    .locals 6

    add-int v0, p2, p3

    .line 216
    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 217
    array-length p3, p1

    sub-int/2addr p3, p2

    .line 221
    :cond_0
    new-array v0, p3, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 226
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mIsCancel:Z

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 229
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v0, v1

    .line 230
    aget-object v2, v0, v1

    const-string v3, "play_order"

    add-int v4, p4, p2

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    aget-object v2, v0, v1

    const-string v3, "audio_id"

    add-int v4, p2, v1

    aget-wide v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static makeNowplayingList(Landroid/content/Context;)V
    .locals 6

    .line 111
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->PLAY_LIST_CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "name= ?"

    const-string v0, "now playing list 0123456789"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 115
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p0, 0x0

    .line 129
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListId:J

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, p0

    goto :goto_2

    :cond_1
    :goto_0
    const-string v2, "LegacyNowplaying"

    const-string v3, "Playlist but there are no now playing list. So make it."

    .line 117
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "name"

    const-string v4, "now playing list 0123456789"

    .line 119
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 121
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 120
    invoke-static {p0, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 123
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListId:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 131
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 111
    :goto_2
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 131
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_4
    throw p0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    const-string p0, "LegacyNowplaying"

    const-string v0, "makeNowplayingList() - IllegalArgumentException!!"

    .line 132
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_5
    const-string p0, "LegacyNowplaying"

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeNowplayingList make result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mIsCancel:Z

    return-void
.end method

.method public run()V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->getNowPlayingListId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v0, "LegacyNowplaying"

    const-string v1, "id is -1 return"

    .line 141
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mIsCancel:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-string v2, "external"

    .line 151
    invoke-static {v2, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 150
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 153
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mMusicIds:[J

    .line 157
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->convertToMediaProviderIds(Landroid/content/Context;[J)[J

    move-result-object v3

    .line 156
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->addToNowPlayinglistInternal(Landroid/content/Context;[JJ)I

    const-string v2, "LegacyNowplaying"

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToPlaylistInternal now playing id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LegacyNowplaying"

    const-string v1, "saveNowPlayingQueue() - IllegalArgumentException!!"

    .line 160
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
