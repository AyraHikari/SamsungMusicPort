.class Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/provider/sync/Syncable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicSync-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a:Ljava/lang/String;

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 615
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->d:Ljava/lang/String;

    const/4 v0, 0x7

    .line 617
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "SELECT 65538 AS category_type, album AS favorite_name, CAST(_id AS TEXT) AS category_id, _id AS album_id, 65537 AS cp_attrs,numsongs AS data1, \'\'  AS data2, NULL AS dummy FROM music_album_info WHERE _id IN("

    aput-object v2, v0, v1

    const-string v1, "SELECT 65539 AS category_type, artist AS favorite_name, CAST(_id AS TEXT) AS category_id, album_id, 65537 AS cp_attrs,number_of_tracks AS data1, number_of_albums AS data2, dummy FROM music_artist_info WHERE _id IN("

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT 65542 AS category_type, genre AS favorite_name, genre AS category_id, album_id, 65537 AS cp_attrs,number_of_tracks AS data1, \'\' AS data2, dummy FROM (SELECT genre, album_id, count(_id) AS number_of_tracks, min(title COLLATE LOCALIZED) AS dummy FROM audio WHERE is_music=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND (cp_attrs & 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " GROUP BY genre) WHERE genre IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "SELECT 65543 AS category_type, bucket_display_name AS favorite_name, bucket_id AS category_id, album_id, 65537 AS cp_attrs,number_of_tracks AS data1, _data AS data2, dummy FROM music_folders_view WHERE bucket_id IN ("

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT 65544 AS category_type, composer AS favorite_name, composer AS category_id, album_id, 65537 AS cp_attrs,number_of_tracks AS data1, \'\' AS data2, dummy  FROM (SELECT composer, album_id, sum(number_of_tracks) AS number_of_tracks, dummy  FROM (SELECT album_id, count(_id) AS number_of_tracks, min(title COLLATE LOCALIZED) as dummy,  composer FROM audio WHERE is_music=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND (cp_attrs & 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " GROUP BY composer) GROUP BY composer ) WHERE composer IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, ""

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "SELECT 65539 AS category_type, artist AS favorite_name, artist AS category_id, album_id, 65537 AS cp_attrs,number_of_tracks AS data1, number_of_albums AS data2, NULL AS dummy FROM music_album_artist_view WHERE artist IN ("

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->e:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->b:Landroid/content/Context;

    .line 51
    iput-boolean p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->c:Z

    return-void
.end method

.method private a(II)I
    .locals 2

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    .line 528
    :pswitch_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listType is Invaild "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_4
    if-ne p2, v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x0

    :goto_0
    :pswitch_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 535
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x64

    packed-switch p2, :pswitch_data_0

    int-to-long v0, p2

    .line 592
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/util/ListUtils;->b(Landroid/content/Context;J)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/music/util/ListUtils;->e(I)Ljava/lang/String;

    move-result-object p1

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SELECT 65540 AS category_type,  name AS favorite_name, CAST("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AS TEXT) AS category_id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " album_id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cp_attrs, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " count(*) AS data1, \'\' AS data2, min("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") AS dummy "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FROM (SELECT "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cp_attrs, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "      M._id as _id, album_id, play_order, name, artist, storage_order, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "      FROM audio_playlists_map M, audio A, audio_playlists PL "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "      WHERE M.audio_id = A._id AND playlist_id="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND PL._id=playlist_id)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 576
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a(Landroid/content/Context;)I

    move-result p1

    .line 575
    invoke-static {p1}, Lcom/samsung/android/app/music/util/ListUtils;->e(I)Ljava/lang/String;

    move-result-object p1

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SELECT 65540 AS category_type, \'Favourites\' AS favorite_name, CAST("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " AS TEXT) AS category_id, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  album_id, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "cp_attrs, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " count(*) AS data1, \'\' AS data2, min("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") AS dummy "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " FROM (SELECT "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cp_attrs, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "       M._id as _id, album_id, play_order, artist, storage_order, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "       FROM favorite_tracks_map M, audio A WHERE M.audio_id = A._id "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "AND modified_state!="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 553
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM (SELECT 65540 AS category_type, \'Most played\' AS favorite_name, CAST("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " AS TEXT) AS category_id, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " album_id, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "cp_attrs, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " min(count(*), "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") AS data1, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  \'\' AS data2, max(most_played) as dummy "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " FROM audio WHERE is_music = 1 AND most_played != 0 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ORDER BY most_played DESC LIMIT "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 563
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT 65540 AS category_type, \'Recently Played\' AS favorite_name, CAST("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " AS TEXT) AS category_id, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  album_id, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "cp_attrs, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  count(*) AS data1, \'\' AS data2, max(recently_played) as dummy "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " FROM (SELECT "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "cp_attrs, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "album_id, recently_played "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "       FROM audio "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "       WHERE is_music = 1 AND recently_played != 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "       ORDER BY recently_played DESC LIMIT "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 541
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " SELECT 65540 AS category_type, \'Recently added\' AS favorite_name, CAST("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " AS TEXT) AS category_id, album_id, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "cp_attrs, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "count(*) AS data1, \'\' AS data2, max("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "date_modified"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") as dummy "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "FROM (SELECT "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "cp_attrs, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "album_id, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "date_modified"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "FROM audio WHERE is_music = 1 AND recently_added_remove_flag = 0 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND (cp_attrs & 1)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ORDER BY "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "date_modified"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " DESC LIMIT 900)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x7

    .line 336
    new-array v1, v0, [Ljava/lang/StringBuilder;

    .line 337
    new-array v2, v0, [Ljava/util/ArrayList;

    .line 338
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;

    .line 339
    iget v5, v3, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->c:I

    iget v6, v3, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->i:I

    .line 340
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a(II)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 342
    aget-object v4, v1, v5

    if-nez v4, :cond_0

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v4, v1, v5

    .line 345
    :cond_0
    aget-object v4, v1, v5

    iget-object v3, v3, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " UNION "

    .line 346
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 349
    :cond_1
    aget-object v4, v1, v5

    if-nez v4, :cond_2

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->e:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v5

    .line 352
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v2, v5

    .line 354
    :cond_2
    aget-object v4, v1, v5

    const-string v6, "?,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    aget-object v4, v2, v5

    iget-object v3, v3, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->d:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    :cond_3
    aget-object p1, v1, v4

    if-eqz p1, :cond_4

    .line 360
    aget-object p1, v1, v4

    .line 361
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const-string v3, " UNION "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr p2, v3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, p2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_4
    const/4 p1, 0x0

    .line 366
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_7

    .line 368
    aget-object v5, v1, v3

    if-eqz v5, :cond_6

    if-eq v3, v4, :cond_5

    .line 370
    aget-object v5, v1, v3

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aput-object v5, v1, v3

    .line 372
    :cond_5
    aget-object v5, v1, v3

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, " UNION "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    aget-object v5, v2, v3

    if-eqz v5, :cond_6

    .line 374
    aget-object v5, v2, v3

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 379
    :cond_7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-eqz p3, :cond_8

    .line 381
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const-string p3, " UNION "

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ORDER BY category_type, category_id"

    .line 382
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method private a(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v1, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;-><init>()V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const-string v3, "category_type=?"

    .line 74
    iput-object v3, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    const/4 v3, 0x1

    .line 75
    new-array v3, v3, [Ljava/lang/String;

    const v4, 0x10004

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iput-object v3, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v3, 0x6

    .line 77
    new-array v3, v3, [I

    fill-array-data v3, :array_0

    .line 80
    array-length v4, v3

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "category_type"

    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-array v6, v4, [Ljava/lang/String;

    :goto_0
    if-ge v2, v4, :cond_1

    const-string v7, "?,"

    .line 85
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    aget v7, v3, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ","

    .line 88
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    .line 89
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 91
    iput-object v6, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    :goto_1
    const-string v2, "category_type, category_id"

    .line 93
    iput-object v2, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 94
    iget-object v4, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v6, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v7, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v8, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object/from16 v3, p1

    .line 95
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 97
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "_id"

    .line 98
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "favorite_name"

    .line 100
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "category_type"

    .line 102
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "category_id"

    .line 104
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "album_id"

    .line 105
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "cp_attrs"

    .line 106
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "data1"

    .line 107
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "data2"

    .line 108
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "sub_category_type"

    .line 110
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 113
    :cond_2
    new-instance v15, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;

    .line 114
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 115
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 116
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 117
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 118
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 119
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 120
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 121
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 122
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move-object v12, v15

    move-object v2, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move-wide/from16 v18, v19

    move/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move/from16 v23, v24

    invoke-direct/range {v12 .. v23}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;-><init>(JLjava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;I)V

    .line 113
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 94
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    :goto_2
    if-eqz v1, :cond_4

    if-eqz v3, :cond_3

    .line 126
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    throw v2

    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0

    nop

    :array_0
    .array-data 4
        0x10002
        0x10003
        0x10006
        0x10007
        0x10008
        0x10004
    .end array-data
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 146
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 149
    div-int/lit16 v5, v4, 0x1f4

    rem-int/lit16 v6, v4, 0x1f4

    const/4 v8, 0x1

    if-nez v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    :goto_0
    add-int/2addr v5, v6

    .line 152
    new-array v6, v5, [Landroid/database/Cursor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v9, v4, :cond_3

    add-int/lit8 v11, v5, -0x1

    if-ne v10, v11, :cond_1

    move v11, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v10, 0x1

    mul-int/lit16 v11, v11, 0x1f4

    .line 157
    :goto_2
    iget-object v12, v1, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->b:Landroid/content/Context;

    new-instance v13, Ljava/util/ArrayList;

    .line 158
    invoke-virtual {v2, v9, v11}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 157
    invoke-direct {v1, v12, v13, v3}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v12

    .line 159
    sget-object v13, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deleteAndUpdateHeartItems - from : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", to : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", subsetSize : "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", size : "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", selectionArgs : "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 159
    invoke-static {v13, v11}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_2

    goto :goto_3

    .line 165
    :cond_2
    invoke-static {v12}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    add-int/lit8 v11, v10, 0x1

    .line 166
    iget-object v14, v1, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->b:Landroid/content/Context;

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 167
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v18, v12

    check-cast v18, [Ljava/lang/String;

    const/16 v19, 0x0

    .line 166
    invoke-static/range {v14 .. v19}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    aput-object v12, v6, v10

    .line 168
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v10, v11

    :goto_3
    add-int/lit16 v9, v9, 0x1f4

    goto/16 :goto_1

    .line 171
    :cond_3
    new-instance v3, Landroid/database/MergeCursor;

    invoke-direct {v3, v6}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 172
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v5, :cond_4

    .line 173
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a:Ljava/lang/String;

    const-string v2, "deleteAndUpdateHeartItems : Source provider\'s cursor is invaild. "

    invoke-static {v8, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v9, 0x0

    goto/16 :goto_f

    :cond_4
    :try_start_2
    const-string v5, "category_type"

    .line 178
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "favorite_name"

    .line 180
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v9, "category_id"

    .line 181
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "album_id"

    .line 182
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "cp_attrs"

    .line 183
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "data1"

    .line 184
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "data2"

    .line 185
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 209
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 210
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 212
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 213
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 217
    :goto_4
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;

    .line 218
    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move/from16 v27, v15

    .line 220
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move/from16 v28, v14

    .line 221
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 220
    invoke-virtual {v2, v15, v14}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->a(ILjava/lang/String;)I

    move-result v14
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-lez v14, :cond_5

    add-int/lit8 v0, v0, 0x1

    :goto_5
    move v2, v0

    move/from16 v34, v5

    move/from16 v33, v6

    move/from16 v29, v10

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v13

    :goto_6
    move/from16 v0, v28

    goto/16 :goto_a

    :cond_5
    if-gez v14, :cond_6

    const/4 v14, 0x1

    .line 225
    :try_start_3
    iput v14, v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->j:I

    .line 226
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 229
    :cond_6
    :try_start_4
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move/from16 v29, v10

    .line 230
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v30, v11

    .line 231
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v31, v12

    .line 232
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v32, v13

    .line 233
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v33, v6

    .line 234
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v34, v5

    .line 235
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v13, :cond_9

    .line 239
    :try_start_5
    invoke-direct {v1, v6, v5, v11}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_9

    :cond_7
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    move-wide/from16 v22, v14

    move/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    .line 250
    invoke-virtual/range {v20 .. v26}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->a(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x2

    .line 252
    iput v5, v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->j:I

    .line 253
    iput-object v13, v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->b:Ljava/lang/String;

    .line 254
    iput-wide v14, v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->e:J

    .line 255
    iput v10, v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->f:I

    .line 256
    iput-object v11, v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->g:Ljava/lang/String;

    .line 257
    iput-object v12, v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->h:Ljava/lang/String;

    .line 258
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    const/4 v5, 0x3

    .line 260
    iput v5, v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->j:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v8, v8, 0x1

    :goto_8
    move v2, v0

    goto :goto_6

    .line 240
    :cond_9
    :goto_9
    :try_start_6
    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleteAndUpdateHeartItems : sourceCategoryType : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", sourceCategoryName : "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", sourceData1 "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 243
    iput v5, v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->j:I

    .line 244
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :goto_a
    if-ge v8, v0, :cond_b

    move/from16 v5, v27

    if-lt v2, v5, :cond_a

    goto :goto_b

    :cond_a
    move v14, v0

    move v0, v2

    move v15, v5

    move/from16 v10, v29

    move/from16 v11, v30

    move/from16 v12, v31

    move/from16 v13, v32

    move/from16 v6, v33

    move/from16 v5, v34

    move-object/from16 v2, p2

    goto/16 :goto_4

    :cond_b
    :goto_b
    if-ge v8, v0, :cond_c

    move-object/from16 v2, p2

    .line 268
    :try_start_7
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;

    const/4 v6, 0x1

    .line 269
    iput v6, v5, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->j:I

    .line 270
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_c
    move-object/from16 v0, p1

    .line 289
    :try_start_8
    invoke-direct {v1, v0, v7, v4}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->b(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 294
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 295
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;

    .line 296
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "favorite_name"

    .line 297
    iget-object v9, v5, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->b:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "album_id"

    .line 298
    iget-wide v9, v5, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->e:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "cp_attrs"

    .line 299
    iget v9, v5, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->f:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "data1"

    .line 300
    iget-object v9, v5, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->g:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "data2"

    .line 301
    iget-object v9, v5, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->h:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v5, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->a:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v9, 0x0

    .line 303
    :try_start_9
    invoke-static {v0, v8, v6, v5, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v7, v5

    goto :goto_c

    :cond_d
    const/4 v9, 0x0

    goto :goto_d

    :cond_e
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 307
    :goto_d
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAndUpdateHeartItems updateHeartItems.size "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", updated "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 310
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_e

    :catchall_2
    move-exception v0

    const/4 v9, 0x0

    :goto_e
    move-object v2, v0

    goto :goto_f

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 171
    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v9, v4

    :goto_f
    if-eqz v9, :cond_f

    .line 310
    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_10

    :catch_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v9, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_10

    :cond_f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_10
    throw v2
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0x10004

    if-ne p1, v1, :cond_0

    const/16 p1, -0xb

    .line 320
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ne p1, p2, :cond_0

    return v0

    .line 324
    :cond_0
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    return v0
.end method

.method private b(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;",
            ">;)V"
        }
    .end annotation

    .line 392
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 393
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;

    const/4 v0, 0x2

    .line 394
    iput v0, p2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->j:I

    const-wide/16 v0, 0x0

    .line 395
    iput-wide v0, p2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->e:J

    const v0, 0x10001

    .line 396
    iput v0, p2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->f:I

    const-string v0, "0"

    .line 397
    iput-object v0, p2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->g:Ljava/lang/String;

    const-string v0, "0"

    .line 398
    iput-object v0, p2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->h:Ljava/lang/String;

    .line 399
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncHeartContentsImpl playlistOnly "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->c:Z

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->b:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 66
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    return-object v0
.end method
