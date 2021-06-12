.class public final Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;


# static fields
.field private static final a:Landroid/net/Uri;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://media/external/audio/albumart"

    .line 24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->b:Landroid/content/Context;

    return-void
.end method

.method private a(IJ)Ljava/lang/String;
    .locals 1

    const v0, 0x10001

    if-eq p1, v0, :cond_0

    const v0, 0x80002

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->c:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->b(IJ)Ljava/lang/String;

    move-result-object p1

    .line 84
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->c:Landroid/util/Pair;

    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->d:Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->d:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->d:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 135
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;-><init>(Ljava/lang/String;)V

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v0, :cond_4

    .line 138
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "play_list_name"

    .line 140
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :try_start_2
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->d:Landroid/util/Pair;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_0
    move-object v1, p1

    .line 137
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 143
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 144
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_5
    return-object v1
.end method

.method private a(J)Z
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->c:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(IJ)Ljava/lang/String;
    .locals 8

    .line 93
    invoke-static {p1}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v1

    const v0, 0x10001

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq p1, v0, :cond_5

    const v0, 0x80002

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->b:Landroid/content/Context;

    const-string p1, "image_url_big"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v3, "thumbnail_id=?"

    new-array v4, v2, [Ljava/lang/String;

    .line 99
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v7

    const/4 v5, 0x0

    move-object v2, p1

    .line 96
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 100
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 101
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 103
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v6, p2

    .line 96
    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v6, :cond_2

    .line 103
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v6, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    throw p2

    :cond_4
    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->b:Landroid/content/Context;

    const-string p1, "source_album_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v3, "album_id=?"

    new-array v4, v2, [Ljava/lang/String;

    .line 109
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v7

    const/4 v5, 0x0

    move-object v2, p1

    .line 107
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 110
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 111
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 112
    sget-object v0, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->a:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 113
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_6

    .line 115
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object p2

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    move-object v6, p2

    .line 106
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    if-eqz p1, :cond_8

    if-eqz v6, :cond_7

    .line 115
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {v6, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_3
    throw p2

    :cond_9
    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_4
    return-object v6
.end method


# virtual methods
.method public fillUpIntentExtras(Landroid/content/Intent;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4

    const-string v0, "smusic_source_id"

    .line 58
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "smusic_title"

    .line 59
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "smusic_artist"

    .line 60
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "smusic_track_type"

    .line 62
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v1

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    .line 65
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v1

    const-string v3, "smusic_artwork_uri"

    .line 66
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->a(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getChannelId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "smusic_station_id"

    .line 69
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "smusic_station_name"

    .line 70
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
