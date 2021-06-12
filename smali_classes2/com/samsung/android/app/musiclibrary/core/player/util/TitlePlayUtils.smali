.class public final Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayUtils"

.field private static final sEmptyList:Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->sEmptyList:Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    .line 66
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->sEmptyList:Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    const/4 v1, 0x0

    new-array v2, v1, [J

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->list:[J

    .line 67
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->sEmptyList:Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->position:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillUpQueries(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 166
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p3, :cond_1

    const-string p3, " AND "

    .line 170
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " LIKE \"%"

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\""

    .line 175
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0
.end method

.method public static getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PlayUtils"

    const-string p1, "getAudioIds but all parameter was null."

    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object p0

    return-object p0

    .line 135
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->getSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string p2, "_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 139
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 136
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 141
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 142
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 136
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p0, :cond_4

    if-eqz v1, :cond_3

    .line 142
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    throw p1
.end method

.method private static getSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x4

    .line 147
    new-array v0, v0, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "title"

    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v1, v0, p0

    new-instance v1, Landroid/util/Pair;

    const-string v2, "album"

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    new-instance v1, Landroid/util/Pair;

    const-string v2, "artist"

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x2

    aput-object v1, v0, p2

    new-instance p2, Landroid/util/Pair;

    const-string v1, "genre"

    invoke-direct {p2, v1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p3, 0x3

    aput-object p2, v0, p3

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    array-length p3, v0

    const/4 p1, 0x0

    const/4 v1, 0x1

    :goto_0
    if-ge p1, p3, :cond_1

    aget-object v2, v0, p1

    .line 156
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p2, v3, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->fillUpQueries(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSongList(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;
    .locals 8

    if-nez p0, :cond_0

    .line 72
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->sEmptyList:Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    return-object p0

    .line 75
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 77
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->sEmptyList:Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    return-object p0

    .line 80
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string v1, "audio_id"

    .line 84
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "_id"

    .line 86
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 88
    :goto_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 90
    new-array v2, v0, [J

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    :goto_1
    if-ge v3, v0, :cond_3

    .line 93
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v2, v3

    if-gez v5, :cond_2

    .line 98
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v3

    .line 101
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-gez v5, :cond_4

    const-string p0, "PlayUtils"

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " can\'t find request id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Please check if it is music or exist in MediaProvider"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_4
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$1;)V

    .line 109
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->list:[J

    if-gez v5, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    .line 110
    :goto_2
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->position:I

    return-object p0
.end method

.method public static play(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 28
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 30
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p0

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "title"

    .line 33
    invoke-static {p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->getSongList(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 34
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 35
    :cond_0
    iget-object p0, p1, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->list:[J

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->position:I

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 30
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    .line 34
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
    throw p1
.end method

.method public static playById(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 44
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 46
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p0

    .line 47
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "_id"

    .line 49
    invoke-static {p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->getSongList(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 51
    :cond_0
    iget-object p0, p1, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->list:[J

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->position:I

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 46
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    .line 50
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
    throw p1
.end method
