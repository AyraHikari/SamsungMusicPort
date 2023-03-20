.class public final Lcom/samsung/android/app/music/provider/MusicProvider;
.super Landroid/content/ContentProvider;
.source "MusicProvider.kt"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MusicProvider$b;,
        Lcom/samsung/android/app/music/provider/MusicProvider$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/samsung/android/app/music/provider/MusicProvider$a;

.field public static final e:Z

.field public static final f:Landroid/content/UriMatcher;

.field public static final g:Lcom/samsung/android/app/musiclibrary/core/utils/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/utils/h<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/provider/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/music/provider/MusicProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Lcom/samsung/android/app/music/provider/MusicProvider$a;

    .line 1
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "media_db_backup"

    const/16 v3, 0x64

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "db_info/sync"

    const/16 v3, 0xc8

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "sync/local/update"

    const/16 v3, 0x12c

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media"

    const/16 v3, 0x2775

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media/#"

    const/16 v3, 0x2776

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media/all"

    const/16 v3, 0x2779

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media/all/#"

    const/16 v3, 0x277a

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/raw_meta"

    const/16 v3, 0x2777

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/raw_meta/#"

    const/16 v3, 0x2778

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/drm_info"

    const/16 v3, 0x277b

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media/selected/*"

    const/16 v3, 0x277e

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media/base_artists"

    const/16 v3, 0x2905

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media/music_artists_album_id"

    const/16 v3, 0x2906

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media/music_artists_album_id/#"

    const/16 v3, 0x2907

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media/music_albumartist"

    const/16 v3, 0x290f

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media/base_albums"

    const/16 v3, 0x2969

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media/music_albums"

    const/16 v3, 0x296a

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media/music_albums/#"

    const/16 v3, 0x296b

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/thumbnails"

    const/16 v3, 0x2973

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/thumbnails/#"

    const/16 v3, 0x2974

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media/music_genres"

    const/16 v3, 0x29cd

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media/music_composers"

    const/16 v3, 0x2a95

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/media/raw_sql/*"

    const/16 v3, 0x271a

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/h;

    const-wide/16 v1, 0x7d0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/h;-><init>(J)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->g:Lcom/samsung/android/app/musiclibrary/core/utils/h;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/music/provider/MusicProvider;->e:Z

    return v0
.end method

.method public static final synthetic e()Landroid/content/UriMatcher;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/content/UriMatcher;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 10

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialValues"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_id"

    .line 1
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2
    sget-object v9, Lcom/samsung/android/app/music/provider/h0;->a:Lcom/samsung/android/app/music/provider/h0;

    .line 3
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/util/HashMap;

    const/4 v8, 0x0

    move-object v2, v9

    move-object v5, p1

    move-object v6, p2

    move v7, p5

    .line 4
    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/app/music/provider/h0;->q(Ljava/util/HashMap;Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;IZ)Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {v9, v2}, Lcom/samsung/android/app/music/provider/h0;->t(Landroid/content/ContentValues;)V

    const-string v3, "audio_meta"

    .line 7
    invoke-virtual {p1, v3, v2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_3

    const-string p3, "changedValue"

    .line 8
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 p4, 0x4

    and-int/2addr p3, p4

    if-ne p3, p4, :cond_2

    :cond_1
    const-string p3, "album_id"

    .line 10
    invoke-virtual {v2, p3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    .line 11
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string p4, "context!!"

    invoke-static {v3, p4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "albumId"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v4, p1

    move-object v5, p2

    move v8, p5

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/music/provider/p0;->e(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    .line 12
    :cond_2
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v2

    .line 13
    :cond_3
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    return-object p1
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Landroid/content/ContentValues;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    const-string v2, "db"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "initialValues"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v2, Lcom/samsung/android/app/music/provider/MusicProvider;->e:Z

    const/4 v12, 0x3

    const-string v13, "MusicProvider"

    const/4 v14, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v3

    if-le v3, v12, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2, v13}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "insertOrUpdateOnlineTracksToAudioTable initialValues "

    .line 4
    invoke-static {v3, v11}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string v2, "source_id"

    .line 5
    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v15, "_id"

    .line 6
    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    const-string v3, "sourceId"

    .line 7
    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v6, v14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x30

    const/16 v16, 0x0

    const-string v3, "audio_meta"

    const-string v5, "source_id=?"

    move-object/from16 v2, p1

    move/from16 v17, v10

    move-object/from16 v10, v16

    .line 8
    invoke-static/range {v2 .. v10}, Lcom/samsung/android/app/musiclibrary/ktx/database/b;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v2

    .line 9
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_2

    .line 10
    invoke-static {v2, v15}, Lcom/samsung/android/app/musiclibrary/ktx/database/a;->e(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    move-wide v9, v6

    goto :goto_1

    :cond_2
    move-wide v9, v4

    .line 11
    :goto_1
    sget-object v3, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    .line 12
    invoke-static {v2, v8}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 13
    sget-object v7, Lcom/samsung/android/app/music/provider/h0;->a:Lcom/samsung/android/app/music/provider/h0;

    .line 14
    iget-object v3, v1, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/util/HashMap;

    cmp-long v16, v9, v4

    if-nez v16, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v17, v14

    :goto_2
    move-object v2, v7

    move-object v4, v6

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v14, v7

    move/from16 v7, p3

    move-object v12, v8

    move/from16 v8, v17

    .line 15
    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/app/music/provider/h0;->q(Ljava/util/HashMap;Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;IZ)Landroid/content/ContentValues;

    move-result-object v8

    if-nez v8, :cond_4

    .line 16
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    return-object v0

    :cond_4
    const-string v2, "audio_meta"

    if-nez v16, :cond_5

    .line 17
    invoke-virtual {v0, v2, v12, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {v14, v8}, Lcom/samsung/android/app/music/provider/h0;->t(Landroid/content/ContentValues;)V

    .line 19
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "_id="

    invoke-static {v4, v3}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v8, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 20
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 21
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_6

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {v3, v13}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertOrUpdateOnlineTracksToAudioTable update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rowId : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_3
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "album_id"

    .line 25
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v4, "context!!"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "albumId"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v2, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/p0;->e(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    return-object v8

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 27
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v2

    const/4 v3, 0x3

    const-string v4, "MusicProvider"

    const/4 v5, 0x0

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v2

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bulkInsert match["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 7
    sget-object v2, Lcom/samsung/android/app/music/provider/e0;->b:Lcom/samsung/android/app/music/provider/e0$a;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v9, "context!!"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/music/provider/e0$a;->c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_1

    return v5

    :cond_1
    const/16 v8, 0x12c

    if-eq v0, v8, :cond_5

    const/16 v8, 0x2775

    if-eq v0, v8, :cond_4

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->k(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/c;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {v8, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/c;->h(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_3

    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->g(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;I)I

    move-result p2

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->f(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->h(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p2

    .line 12
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v0

    if-le v0, v3, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bulkInsert : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items are inserted, takes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms, uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return p2
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Landroid/content/ContentValues;
    .locals 9

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialValues"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/provider/MusicProvider;->e:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    const/4 v1, 0x0

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "MusicProvider"

    .line 3
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "insertOnlineTracksToAudioTable initialValue "

    .line 4
    invoke-static {v2, p2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    :goto_0
    sget-object v2, Lcom/samsung/android/app/music/provider/h0;->a:Lcom/samsung/android/app/music/provider/h0;

    .line 6
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/util/HashMap;

    const/4 v8, 0x1

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .line 7
    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/app/music/provider/h0;->q(Ljava/util/HashMap;Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;IZ)Landroid/content/ContentValues;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    return-object p1

    :cond_2
    const/4 v1, 0x0

    const-string v2, "audio_meta"

    .line 9
    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "album_id"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v3, "context!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "albumId"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/p0;->e(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    return-object v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/provider/e0;->b:Lcom/samsung/android/app/music/provider/e0$a;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/provider/e0$a;->c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "exec_sql"

    .line 2
    invoke-static {p1, v2}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_1

    const-string p1, "selectionArgs"

    .line 3
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 4
    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    invoke-static {v0, p2, p1}, Lcom/samsung/android/app/musiclibrary/ktx/database/b;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    const/4 p3, 0x0

    .line 6
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "MusicProvider"

    .line 7
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Method.EXEC_SQL "

    .line 8
    invoke-static {v0, p2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v1

    .line 9
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->l(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/provider/c;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string p3, "Unsupported call: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "MusicProvider"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete uri : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " selection : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v0, "context!!"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/samsung/android/app/music/provider/e0;->b:Lcom/samsung/android/app/music/provider/e0$a;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/provider/e0$a;->c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_1

    return v2

    .line 7
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->k(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/c;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/c;->e(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 9
    :cond_3
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string p3, "Invalid URI "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "_id="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_4

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v7, p2

    goto :goto_2

    :cond_4
    move-object v7, v1

    :goto_2
    move-object v3, p0

    move-object v6, p1

    move-object v8, p3

    .line 12
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/app/music/provider/MusicProvider;->j(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_3

    :pswitch_1
    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    .line 13
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/app/music/provider/MusicProvider;->j(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_3

    :cond_5
    const-string v1, "smusic_db_info"

    .line 14
    invoke-virtual {v5, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 15
    :goto_3
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ktx/net/a;->j(Landroid/net/Uri;)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->q(Landroid/net/Uri;I)V

    :cond_6
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x2775
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "writer"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/app/music/provider/i0;->a:Lcom/samsung/android/app/music/provider/i0;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v0, "context!!"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MUSIC_PROVIDER"

    invoke-virtual {p1, p3, p2, v0}, Lcom/samsung/android/app/music/provider/i0;->b(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final f(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 11

    .line 1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    :try_start_0
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    .line 5
    invoke-virtual {p0, p1, v3, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->o(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-lez v4, :cond_0

    .line 6
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/provider/a;->a:Lcom/samsung/android/app/music/provider/a;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string p3, "context!!"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/a;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)V

    .line 9
    sget-object p3, Lkotlin/u;->a:Lkotlin/u;

    .line 10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 12
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ktx/net/a;->j(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x2775

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->q(Landroid/net/Uri;I)V

    .line 13
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :catchall_0
    move-exception p2

    .line 14
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method

.method public final g(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;I)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2
    :try_start_0
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, p4, v3}, Lcom/samsung/android/app/music/provider/MusicProvider;->p(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p3, Lkotlin/u;->a:Lkotlin/u;

    .line 5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 7
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ktx/net/a;->j(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p2, p4}, Lcom/samsung/android/app/music/provider/MusicProvider;->q(Landroid/net/Uri;I)V

    :cond_2
    return v2

    :catchall_0
    move-exception p2

    .line 8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "vnd.android.cursor.dir/audio"

    return-object p1
.end method

.method public final h(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    const-string v2, "MusicProvider"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v1

    const/4 v4, 0x3

    if-le v1, v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "bulkUpdate() is called. values.size : "

    invoke-static {v4, v1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "match"

    .line 5
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v4, 0x183c7

    if-eq v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x14b

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v0, 0x136

    .line 6
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    array-length v1, p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v4, v3

    move v5, v4

    :goto_3
    if-ge v4, v1, :cond_4

    :try_start_2
    aget-object v6, p3, v4

    add-int/lit8 v4, v4, 0x1

    .line 8
    invoke-virtual {p0, p1, p2, v0, v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->i(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_3

    .line 9
    :cond_4
    sget-object p3, Lkotlin/u;->a:Lkotlin/u;

    .line 10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_6

    :catchall_0
    move-exception p3

    goto :goto_4

    :catchall_1
    move-exception p3

    move v5, v3

    :goto_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p3
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    move v5, v3

    .line 12
    :goto_5
    sget-object p3, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 13
    invoke-virtual {p3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "bulkUpdate : SQLiteException "

    .line 14
    invoke-static {v0, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :goto_6
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/e;->m(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 16
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string p2, "context!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/e$o;->e:Landroid/net/Uri;

    const-string p3, "MUSIC_PROVIDER_CONTENT_URI"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ktx/content/a;->H(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_5
    return v5
.end method

.method public final i(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;)I
    .locals 9

    const/16 v0, 0x136

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_2

    const/16 v0, 0x14b

    if-eq p3, v0, :cond_1

    .line 1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->d()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p3, "Unsupported bulkUpdate "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    sget-object p2, Lcom/samsung/android/app/music/provider/h;->a:Lcom/samsung/android/app/music/provider/h;

    invoke-virtual {p2, p1, p4}, Lcom/samsung/android/app/music/provider/h;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v2

    goto :goto_0

    :cond_2
    new-array v8, v1, [Ljava/lang/String;

    const-string p3, "_data"

    .line 3
    invoke-virtual {p4, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v8, v2

    const-string v7, "_data=?"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    .line 4
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/app/music/provider/MusicProvider;->r(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 2
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    const/4 v3, 0x0

    .line 3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "MusicProvider"

    .line 4
    invoke-virtual {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert match["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v3, "context!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v3, Lcom/samsung/android/app/music/provider/e0;->b:Lcom/samsung/android/app/music/provider/e0$a;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/provider/e0$a;->c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v0

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->k(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/c;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 9
    invoke-interface {v4, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/c;->b(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-virtual {p0, v3, p1, v1, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->p(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ktx/net/a;->j(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    invoke-static {v2, p1}, Lcom/samsung/android/app/musiclibrary/ktx/content/a;->H(Landroid/content/Context;Landroid/net/Uri;)V

    .line 13
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider$b;->a:Lcom/samsung/android/app/music/provider/MusicProvider$b;

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/app/music/provider/MusicProvider$b;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_5
    move-object v0, p2

    :goto_1
    return-object v0
.end method

.method public final j(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 14

    move-object v0, p1

    move-object/from16 v10, p2

    move-object/from16 v1, p4

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v11, 0x1

    .line 2
    :try_start_0
    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/ui/provider/e;->b(I)Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0x29

    if-eqz v1, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " AND ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object v13, v2

    const-string v1, "group_concat(_id, \',\')"

    const-string v2, "group_concat(source_id, \',\')"

    .line 4
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "audio_meta"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object/from16 v1, p2

    move-object v4, v13

    move-object/from16 v5, p5

    .line 5
    invoke-static/range {v1 .. v9}, Lcom/samsung/android/app/musiclibrary/ktx/database/b;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v2, v4

    move-object v5, v2

    .line 9
    :goto_0
    sget-object v6, Lkotlin/u;->a:Lkotlin/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-static {v1, v4}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 11
    sget-object v1, Lcom/samsung/android/app/music/provider/a;->a:Lcom/samsung/android/app/music/provider/a;

    move-object/from16 v6, p3

    invoke-virtual {v1, p1, v10, v6, v2}, Lcom/samsung/android/app/music/provider/a;->e(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "audio_meta"

    move-object/from16 v8, p5

    .line 12
    invoke-virtual {v10, v7, v13, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    const-string v8, "Local_to_virtual"

    .line 13
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    .line 14
    invoke-virtual {v1, p1, v10, v7, v2}, Lcom/samsung/android/app/music/provider/a;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ILandroid/os/Bundle;)V

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 17
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/app/musiclibrary/ktx/net/a;->l(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v7

    .line 18
    :cond_2
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/a;->g0:Z

    if-eqz v1, :cond_3

    return v7

    :cond_3
    if-lez v7, :cond_5

    .line 19
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "external"

    .line 21
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 22
    invoke-static {p1, v2, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/b;->c(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 23
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 24
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    goto :goto_1

    :cond_4
    const-string v4, "MusicProvider"

    .line 25
    invoke-virtual {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAudioMedia : source provider - deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", where : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return v7

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 27
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-static {v1, v2}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final k(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/provider/c;

    .line 2
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/c;->f(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final l(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/provider/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/provider/c;

    .line 2
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/c;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final m(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    const-string v1, "MusicProvider"

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDcfAlbumArt : albumId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", albumArtData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->h:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p5, :cond_1

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {p6}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-static {v1, p5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p1

    .line 9
    :catch_0
    :cond_1
    :try_start_2
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/c0;->f(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 10
    sget-object p2, Lkotlin/u;->a:Lkotlin/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final n(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p3, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->o(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)J

    move-result-wide v8

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_0

    .line 3
    sget-object v1, Lcom/samsung/android/app/music/provider/a;->a:Lcom/samsung/android/app/music/provider/a;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v0, "context!!"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    move-object v4, p2

    move-wide v5, v8

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/music/provider/a;->c(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;JLandroid/content/ContentValues;)V

    .line 4
    :cond_0
    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    .line 5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v8

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method

.method public final o(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)J
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "_data"

    .line 1
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cp_attrs"

    .line 2
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const/4 v15, 0x0

    if-eqz v2, :cond_12

    .line 3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v15

    :goto_0
    if-nez v2, :cond_12

    if-nez v3, :cond_1

    goto/16 :goto_b

    .line 4
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const-string v0, "album_artist"

    .line 5
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    if-nez v0, :cond_2

    move-object v0, v14

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lkotlin/text/p;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v5, "artist"

    .line 6
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v5, v14

    goto :goto_2

    :cond_3
    invoke-static {v5}, Lkotlin/text/p;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_5

    .line 7
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    move v6, v15

    goto :goto_4

    :cond_5
    :goto_3
    move v6, v4

    :goto_4
    if-eqz v6, :cond_6

    const-string v5, "<unknown>"

    :cond_6
    move-object v13, v5

    const-string v5, "album"

    .line 8
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    move-object v5, v14

    goto :goto_5

    :cond_7
    invoke-static {v5}, Lkotlin/text/p;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    const-string v6, "_data"

    .line 9
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v5, :cond_9

    .line 10
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_8

    goto :goto_6

    :cond_8
    move v4, v15

    :cond_9
    :goto_6
    if-eqz v4, :cond_c

    if-eqz v12, :cond_a

    .line 11
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 12
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_a
    move-object v4, v14

    :goto_7
    if-nez v4, :cond_b

    const-string v4, "<unknown>"

    :cond_b
    move-object/from16 v20, v4

    goto :goto_8

    :cond_c
    move-object/from16 v20, v5

    :goto_8
    const-string v4, "source_artist_id"

    .line 13
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 14
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/util/HashMap;

    monitor-enter v4

    .line 15
    :try_start_0
    sget-object v10, Lcom/samsung/android/app/music/provider/h0;->a:Lcom/samsung/android/app/music/provider/h0;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v10, v11, v13, v5}, Lcom/samsung/android/app/music/provider/h0;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 16
    iget-object v5, v1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 17
    sget-object v6, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    monitor-exit v4

    .line 19
    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_d

    .line 20
    sget-object v4, Lcom/samsung/android/app/music/provider/l0;->a:Lcom/samsung/android/app/music/provider/l0;

    const-string v6, "artists"

    const-string v7, "artist_unique_key"

    const-string v8, "artist_key"

    const-string v16, "artist"

    const-string v17, "source_artist_id"

    const/16 v18, 0x0

    .line 21
    iget-object v5, v1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/util/HashMap;

    move-object/from16 v19, v5

    move-object/from16 v5, p1

    move-object/from16 v21, v9

    move-object/from16 v9, v16

    move-object/from16 p2, v10

    move-object v10, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v17

    move-object/from16 v22, v12

    move-object/from16 v12, v16

    move-object/from16 v23, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v18

    move-object/from16 v15, v23

    move-object/from16 v16, v19

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move/from16 v19, p3

    .line 22
    invoke-virtual/range {v4 .. v19}, Lcom/samsung/android/app/music/provider/l0;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v4

    goto :goto_9

    :cond_d
    move-object/from16 p2, v10

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    .line 23
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_9
    const-wide/16 v24, 0x0

    cmp-long v6, v4, v24

    if-lez v6, :cond_e

    const-string v6, "artist_id"

    .line 24
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_e
    const-string v4, "source_album_id"

    .line 25
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 26
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_1
    const-string v5, "path"

    move-object/from16 v15, v22

    .line 27
    invoke-static {v15, v5}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x2f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v15

    invoke-static/range {v7 .. v12}, Lkotlin/text/p;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v15, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v9, v5}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v5, p2

    move-object v6, v13

    move-object/from16 v7, v20

    move-object v8, v0

    .line 28
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/app/music/provider/h0;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 29
    iget-object v5, v1, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    monitor-exit v4

    .line 31
    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_f

    .line 32
    sget-object v4, Lcom/samsung/android/app/music/provider/l0;->a:Lcom/samsung/android/app/music/provider/l0;

    const-string v6, "albums"

    const-string v7, "album_unique_key"

    const-string v8, "album_key"

    const-string v9, "album"

    const-string v11, "source_album_id"

    .line 33
    iget-object v12, v1, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    move-object/from16 v5, p1

    move-object/from16 v10, v20

    move-object/from16 v16, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v0

    move-object v0, v15

    move-object/from16 v15, v23

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move/from16 v19, p3

    .line 34
    invoke-virtual/range {v4 .. v19}, Lcom/samsung/android/app/music/provider/l0;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v3

    goto :goto_a

    :cond_f
    move-object v0, v15

    .line 35
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_a
    cmp-long v5, v3, v24

    if-lez v5, :cond_10

    const-string v5, "album_id"

    .line 36
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_10
    move-object/from16 v3, p2

    .line 37
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/provider/h0;->j(Landroid/content/ContentValues;)V

    move-object/from16 v5, v23

    .line 38
    invoke-virtual {v3, v5, v2}, Lcom/samsung/android/app/music/provider/h0;->f(Ljava/lang/String;Landroid/content/ContentValues;)V

    const-string v4, "_display_name"

    .line 39
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v3, v0, v2}, Lcom/samsung/android/app/music/provider/h0;->d(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 40
    :cond_11
    invoke-virtual {v3, v0, v2}, Lcom/samsung/android/app/music/provider/h0;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 41
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/provider/h0;->e(Landroid/content/ContentValues;)V

    .line 42
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/provider/h0;->b(Landroid/content/ContentValues;)V

    .line 43
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/provider/h0;->k(Landroid/content/ContentValues;)V

    .line 44
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/provider/h0;->c(Landroid/content/ContentValues;)V

    .line 45
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/provider/h0;->h(Landroid/content/ContentValues;)V

    .line 46
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/provider/h0;->s(Landroid/content/ContentValues;)V

    const-string v0, "audio_meta"

    move-object/from16 v3, p1

    const/4 v4, 0x0

    .line 47
    invoke-virtual {v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2

    :catchall_0
    move-exception v0

    .line 48
    monitor-exit v4

    throw v0

    :catchall_1
    move-exception v0

    .line 49
    monitor-exit v4

    throw v0

    :cond_12
    :goto_b
    move v6, v15

    .line 50
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    const-string v2, "MusicProvider"

    .line 51
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Necessary columns can\'t be null or empty."

    .line 52
    invoke-static {v2, v6}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public onCreate()Z
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "MusicProvider"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate"

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v0, "context!!"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/a;->Z:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/provider/melon/c;

    invoke-direct {v1, v3, p0}, Lcom/samsung/android/app/music/provider/melon/c;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/provider/d;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/provider/k0;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/provider/k0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/provider/k;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/provider/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/provider/q;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/provider/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/provider/n0;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/provider/n0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/provider/backuprestore/e;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/provider/backuprestore/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->p:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$a;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$a;->g(Lcom/samsung/android/app/music/provider/sync/MusicSyncService$a;Landroid/content/Context;ILjava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 25

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const-string v2, "uri"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mode"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v3

    const/4 v4, 0x3

    const-string v5, "MusicProvider"

    const/4 v6, 0x0

    if-nez v3, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v3

    if-le v3, v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "openFile uri "

    .line 4
    invoke-static {v7, v1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->k(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/c;

    move-result-object v3

    const/4 v9, 0x0

    if-nez v3, :cond_1

    move-object v3, v9

    goto :goto_1

    :cond_1
    invoke-interface {v3, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/c;->c(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    return-object v3

    .line 6
    :cond_2
    sget-object v7, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v7, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    const/16 v8, 0x2974

    if-eq v7, v8, :cond_3

    .line 7
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFile : only album art uri is valid. request invalid match ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], uri["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v9

    .line 9
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v8, "context!!"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v8, Lcom/samsung/android/app/music/provider/e0;->b:Lcom/samsung/android/app/music/provider/e0$a;

    invoke-virtual {v8, v7}, Lcom/samsung/android/app/music/provider/e0$a;->c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    if-nez v8, :cond_4

    return-object v9

    .line 11
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v11, "uri.lastPathSegment!!"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const-string v10, "albums"

    const-string v11, "thumbnails"

    const-string v15, "source_album_id"

    const-string v14, "album_cp_attrs"

    const-string v13, "image_data"

    .line 12
    filled-new-array {v15, v14, v13}, [Ljava/lang/String;

    move-result-object v12

    const-string v9, "album_id=?"

    const/4 v4, 0x1

    move-object/from16 v16, v15

    new-array v15, v4, [Ljava/lang/String;

    .line 13
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v6

    .line 14
    new-instance v6, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v6}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    const-string v3, "(SELECT * FROM "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " LEFT OUTER JOIN "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ON "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".album_id="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".thumbnail_id)"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 16
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicProvider;->g:Lcom/samsung/android/app/musiclibrary/core/utils/h;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/h;->a(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    move-object v10, v6

    move-object v11, v8

    move-object v6, v13

    move-object v13, v9

    move-object/from16 v22, v4

    move-object v4, v14

    move-object v14, v15

    move-object/from16 v24, v9

    move-object/from16 v23, v15

    move-object/from16 v9, v16

    move-object v15, v3

    move-object/from16 v16, v17

    move-object/from16 v17, v21

    .line 17
    :try_start_0
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v10, :cond_a

    .line 18
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_3

    .line 19
    :cond_5
    invoke-static {v10, v4}, Lcom/samsung/android/app/musiclibrary/ktx/database/a;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const v4, 0x10001

    if-eq v3, v4, :cond_8

    const v2, 0x40001

    if-eq v3, v2, :cond_7

    .line 20
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->d()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_6

    move-object/from16 v3, v20

    move-object/from16 v11, v22

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Invalid URI "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_7
    invoke-static {v10, v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/e;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, p0

    move-object v3, v7

    move-object/from16 v11, v22

    move-object v4, v8

    move-wide/from16 v5, v18

    move-object v7, v9

    move-object/from16 v8, p2

    .line 22
    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/app/music/provider/MusicProvider;->m(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    goto :goto_2

    :cond_8
    move-object/from16 v11, v22

    .line 23
    invoke-static {v10, v9}, Lcom/samsung/android/app/musiclibrary/ktx/database/a;->e(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v3

    .line 24
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/e$a;->a:Landroid/net/Uri;

    .line 25
    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "withAppendedId(\n        \u2026                        )"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {v7, v3, v0}, Lcom/samsung/android/app/musiclibrary/ktx/content/a;->J(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 27
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v0

    const/4 v4, 0x3

    if-le v0, v4, :cond_9

    goto :goto_2

    .line 28
    :cond_9
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "openFile return pfd is returned from MediaProvider : "

    .line 29
    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_2
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 31
    :try_start_2
    invoke-static {v10, v0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 32
    invoke-virtual {v11, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/h;->c(Ljava/lang/Object;)V

    return-object v3

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :cond_a
    :goto_3
    move-object/from16 v11, v22

    .line 33
    :try_start_3
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFile : no album info : selection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", selectionArgs[0] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, v23, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    .line 35
    :try_start_4
    invoke-static {v10, v0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 36
    invoke-virtual {v11, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/h;->c(Ljava/lang/Object;)V

    return-object v0

    .line 37
    :goto_4
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-static {v10, v2}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 38
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->g:Lcom/samsung/android/app/musiclibrary/core/utils/h;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/h;->c(Ljava/lang/Object;)V

    throw v0
.end method

.method public final p(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12

    move-object v1, p1

    move-object v6, p2

    move v0, p3

    move-object/from16 v2, p4

    const/16 v3, 0x64

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-eq v0, v3, :cond_5

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_4

    const/16 v3, 0x2775

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2973

    if-ne v0, v3, :cond_2

    const-string v0, "thumbnail_id"

    .line 1
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "album_cp_attrs"

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x40002

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v5, "context!!"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "albumId"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-string v0, "cpAttrs"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, v4

    move-object v1, p1

    move-object/from16 v2, p4

    move-wide v3, v10

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/p0;->e(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    move-object v0, p0

    move-wide v1, v7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x5

    const-string v3, "thumbnails"

    .line 6
    invoke-virtual {p1, v3, v9, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    move-wide v1, v0

    move-object v0, p0

    goto :goto_1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Invalid URI "

    invoke-static {v1, p2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, p0

    .line 8
    invoke-virtual {p0, p1, p2, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->n(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto :goto_1

    :cond_4
    move-object v0, p0

    const-string v3, "smusic_db_info"

    .line 9
    invoke-virtual {p1, v3, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto :goto_1

    :cond_5
    move-object v0, p0

    const-string v3, "media_db_backup"

    .line 10
    invoke-virtual {p1, v3, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    :goto_1
    cmp-long v3, v1, v7

    if-lez v3, :cond_6

    .line 11
    invoke-static {p2, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    :cond_6
    return-object v9
.end method

.method public final q(Landroid/net/Uri;I)V
    .locals 2

    const-string v0, "context!!"

    const/16 v1, 0x2710

    if-lt p2, v1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "content://com.sec.android.app.music/audio"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "parse(\"$CONTENT_AUTHORITY/audio\")"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ktx/content/a;->H(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ktx/content/a;->H(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16

    move-object/from16 v6, p1

    move-object/from16 v4, p4

    const-string v0, "uri"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v0, v6}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v2

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "MusicProvider"

    .line 4
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query match["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], uri : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v2, Lcom/samsung/android/app/music/provider/e0;->b:Lcom/samsung/android/app/music/provider/e0$a;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/provider/e0$a;->b(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v2, 0x0

    if-nez v8, :cond_1

    return-object v2

    .line 8
    :cond_1
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/ktx/net/a;->i(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/ktx/net/a;->g(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "_id"

    const/16 v10, 0xc8

    if-eq v0, v10, :cond_f

    const/16 v10, 0x271a

    if-eq v0, v10, :cond_d

    const/16 v10, 0x277e

    const-string v11, "audio"

    if-eq v0, v10, :cond_c

    const/16 v10, 0x290f

    if-eq v0, v10, :cond_b

    const/16 v10, 0x29cd

    if-eq v0, v10, :cond_a

    const/16 v10, 0x2a95

    if-eq v0, v10, :cond_9

    const/16 v10, 0x2973

    const-string v13, "thumbnails"

    if-eq v0, v10, :cond_8

    const/16 v10, 0x2974

    if-eq v0, v10, :cond_7

    const-string v10, "melon_tracks_view"

    const/4 v13, 0x2

    const-string v14, "=?"

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 12
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->k(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/c;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/c;->i(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    return-object v2

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown URL: "

    invoke-static {v1, v6}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/music/provider/f0$a;->a:Lcom/samsung/android/app/music/provider/f0$a;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/f0$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 15
    invoke-static {v9, v14}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/e$c;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 17
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/music/provider/f0$a;->a:Lcom/samsung/android/app/music/provider/f0$a;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/f0$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    const-string v0, "albums"

    .line 18
    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 19
    :pswitch_3
    sget-object v0, Lcom/samsung/android/app/music/provider/f0$c;->a:Lcom/samsung/android/app/music/provider/f0$c;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/f0$c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    const-string v0, "artists"

    .line 20
    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_5
    const-string v0, "drm_info"

    .line 21
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/a;->Z:Z

    if-eqz v2, :cond_4

    move-object v11, v10

    .line 22
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "._id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".audio_id"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 24
    :pswitch_6
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/a;->Z:Z

    if-eqz v2, :cond_5

    move-object v11, v10

    :cond_5
    invoke-virtual {v7, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v2, 0x277a

    if-ne v0, v2, :cond_6

    .line 25
    invoke-static {v9, v14}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_7
    const-string v2, "(SELECT * FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id )"

    .line 27
    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v2, 0x2778

    if-ne v0, v2, :cond_6

    .line 28
    invoke-static {v9, v14}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 30
    :pswitch_8
    invoke-virtual {v7, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v2, 0x2776

    if-ne v0, v2, :cond_6

    .line 31
    invoke-static {v9, v14}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    :pswitch_9
    move-object/from16 v3, p2

    goto/16 :goto_3

    .line 33
    :cond_7
    invoke-virtual {v7, v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v2, "thumbnail_id="

    invoke-static {v2, v0}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 35
    :cond_8
    invoke-virtual {v7, v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2

    .line 36
    :cond_9
    sget-object v0, Lcom/samsung/android/app/music/provider/f0$f;->a:Lcom/samsung/android/app/music/provider/f0$f;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/f0$f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :cond_a
    sget-object v0, Lcom/samsung/android/app/music/provider/f0$i;->a:Lcom/samsung/android/app/music/provider/f0$i;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/f0$i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2

    .line 38
    :cond_b
    sget-object v0, Lcom/samsung/android/app/music/provider/f0$b;->a:Lcom/samsung/android/app/music/provider/f0$b;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/f0$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2

    .line 39
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    sget-object v2, Lcom/samsung/android/app/music/provider/l0;->a:Lcom/samsung/android/app/music/provider/l0;

    const-string v3, "selectionGroup"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v11}, Lcom/samsung/android/app/music/provider/l0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    move-object/from16 v3, p2

    invoke-virtual {v2, v11, v3}, Lcom/samsung/android/app/music/provider/l0;->h(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v9, v2

    goto :goto_4

    .line 43
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    invoke-virtual {v8, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 45
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/ktx/net/a;->j(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_e
    return-object v0

    :cond_f
    move-object/from16 v3, p2

    const-string v0, "smusic_db_info"

    .line 46
    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :goto_3
    move-object v9, v3

    .line 47
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/provider/l0;->a:Lcom/samsung/android/app/music/provider/l0;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/app/music/provider/l0;->b(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    move-object/from16 v10, p3

    move-object/from16 v14, p5

    .line 49
    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_5

    .line 50
    :cond_10
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2775
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2905
        :pswitch_4
        :pswitch_3
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2969
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "artist"

    .line 1
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    if-nez v2, :cond_0

    move-object v14, v15

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/text/p;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    :goto_0
    const-string v2, "album"

    .line 2
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object/from16 v18, v15

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/text/p;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    :goto_1
    const-string v2, "_data"

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cp_attrs"

    .line 4
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 5
    sget-object v4, Lcom/samsung/android/app/music/provider/h0;->a:Lcom/samsung/android/app/music/provider/h0;

    invoke-virtual {v4, v2, v0}, Lcom/samsung/android/app/music/provider/h0;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_2
    const/4 v13, 0x0

    if-nez v14, :cond_3

    if-eqz v18, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v12, v2

    move-object/from16 v19, v3

    goto :goto_3

    :cond_5
    :goto_2
    const-string v2, "_data"

    const-string v3, "cp_attrs"

    .line 6
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v5, "audio_meta"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x30

    const/4 v12, 0x0

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 7
    invoke-static/range {v4 .. v12}, Lcom/samsung/android/app/musiclibrary/ktx/database/b;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v2

    .line 8
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 9
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "_data"

    .line 10
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ktx/database/a;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cp_attrs"

    .line 11
    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ktx/database/a;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 12
    sget-object v5, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    invoke-static {v2, v15}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v12, v3

    move-object/from16 v19, v4

    :goto_3
    const-wide/16 v20, 0x0

    if-eqz v14, :cond_7

    if-eqz v19, :cond_7

    const-string v2, "source_artist_id"

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 15
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/util/HashMap;

    monitor-enter v2

    .line 16
    :try_start_1
    sget-object v3, Lcom/samsung/android/app/music/provider/h0;->a:Lcom/samsung/android/app/music/provider/h0;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3, v10, v14, v4}, Lcom/samsung/android/app/music/provider/h0;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 17
    iget-object v3, v1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    sget-object v4, Lkotlin/u;->a:Lkotlin/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit v2

    if-nez v3, :cond_6

    .line 20
    sget-object v2, Lcom/samsung/android/app/music/provider/l0;->a:Lcom/samsung/android/app/music/provider/l0;

    const-string v4, "artists"

    const-string v5, "artist_unique_key"

    const-string v6, "artist_key"

    const-string v7, "artist"

    const-string v9, "source_artist_id"

    const/16 v16, 0x0

    .line 21
    iget-object v8, v1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v3, p1

    move-object/from16 v22, v8

    move-object v8, v14

    move-object/from16 v23, v12

    move-object/from16 v12, v16

    move-object v13, v14

    move-object/from16 v24, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v19

    move-object/from16 v16, p3

    .line 22
    invoke-virtual/range {v2 .. v17}, Lcom/samsung/android/app/music/provider/l0;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v2

    goto :goto_4

    :cond_6
    move-object/from16 v23, v12

    move-object/from16 v24, v14

    .line 23
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_4
    cmp-long v4, v2, v20

    if-lez v4, :cond_8

    const-string v4, "artist_id"

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 25
    monitor-exit v2

    throw v0

    :cond_7
    move-object/from16 v23, v12

    move-object/from16 v24, v14

    :cond_8
    :goto_5
    if-eqz v18, :cond_a

    if-eqz v19, :cond_a

    const-string v2, "album_artist"

    .line 26
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "source_album_id"

    .line 27
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 28
    iget-object v2, v1, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 29
    :try_start_2
    sget-object v3, Lcom/samsung/android/app/music/provider/h0;->a:Lcom/samsung/android/app/music/provider/h0;

    .line 30
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const/16 v7, 0x2f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object/from16 v6, v23

    invoke-static/range {v6 .. v11}, Lkotlin/text/p;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v4

    move-object/from16 v5, v23

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v8

    move-object v4, v13

    move-object/from16 v5, v18

    move-object v6, v12

    .line 32
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/app/music/provider/h0;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 33
    iget-object v3, v1, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 34
    sget-object v4, Lkotlin/u;->a:Lkotlin/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    monitor-exit v2

    .line 36
    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_9

    .line 37
    sget-object v2, Lcom/samsung/android/app/music/provider/l0;->a:Lcom/samsung/android/app/music/provider/l0;

    const-string v4, "albums"

    const-string v5, "album_unique_key"

    const-string v6, "album_key"

    const-string v7, "album"

    const-string v9, "source_album_id"

    .line 38
    iget-object v14, v1, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v3, p1

    move-object/from16 v8, v18

    move-object v10, v13

    move-object/from16 v13, v24

    move-object/from16 v15, v19

    move-object/from16 v16, p3

    .line 39
    invoke-virtual/range {v2 .. v17}, Lcom/samsung/android/app/music/provider/l0;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v2

    goto :goto_6

    .line 40
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_6
    cmp-long v4, v2, v20

    if-lez v4, :cond_a

    const-string v4, "album_id"

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    .line 42
    monitor-exit v2

    throw v0

    :cond_a
    :goto_7
    const-string v2, "title"

    .line 43
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 44
    sget-object v2, Lcom/samsung/android/app/music/provider/h0;->a:Lcom/samsung/android/app/music/provider/h0;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/provider/h0;->j(Landroid/content/ContentValues;)V

    :cond_b
    const-string v2, "album_artist"

    .line 45
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    const/4 v15, 0x0

    goto :goto_8

    :cond_c
    invoke-static {v2}, Lkotlin/text/p;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_8
    if-eqz v15, :cond_d

    const-string v2, "music_album_artist"

    .line 46
    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    move-object/from16 v15, v24

    if-eqz v15, :cond_e

    const-string v2, "music_album_artist"

    .line 47
    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_9
    const-string v2, "genre_name"

    .line 48
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/samsung/android/app/music/provider/h0;->a:Lcom/samsung/android/app/music/provider/h0;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/provider/h0;->e(Landroid/content/ContentValues;)V

    :cond_f
    const-string v2, "composer"

    .line 49
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/samsung/android/app/music/provider/h0;->a:Lcom/samsung/android/app/music/provider/h0;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/provider/h0;->b(Landroid/content/ContentValues;)V

    :cond_10
    const-string v2, "year"

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lcom/samsung/android/app/music/provider/h0;->a:Lcom/samsung/android/app/music/provider/h0;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/provider/h0;->k(Landroid/content/ContentValues;)V

    .line 51
    :cond_11
    sget-object v2, Lcom/samsung/android/app/music/provider/h0;->a:Lcom/samsung/android/app/music/provider/h0;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/provider/h0;->h(Landroid/content/ContentValues;)V

    .line 52
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 53
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/provider/h0;->s(Landroid/content/ContentValues;)V

    const-string v2, "audio_meta"

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 54
    invoke-virtual {v5, v2, v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_12

    .line 55
    sget-object v3, Lcom/samsung/android/app/music/provider/a;->a:Lcom/samsung/android/app/music/provider/a;

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v2, "context!!"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 57
    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/app/music/provider/a;->d(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_12
    return v0

    :cond_13
    move v6, v13

    .line 58
    :try_start_3
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    const-string v4, "MusicProvider"

    .line 59
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAudioFile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rows "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v0, 0x0

    .line 61
    invoke-static {v2, v0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v6

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 62
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public shutdown()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "MusicProvider"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Shutdown()"

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    invoke-super {p0}, Landroid/content/ContentProvider;->shutdown()V

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 2
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "MusicProvider"

    .line 4
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update match["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " selection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    const-string v3, "context!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v3, Lcom/samsung/android/app/music/provider/e0;->b:Lcom/samsung/android/app/music/provider/e0$a;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/provider/e0$a;->c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_2

    return v0

    :cond_2
    const/16 v0, 0x2905

    if-eq v1, v0, :cond_7

    const/16 v0, 0x2969

    if-eq v1, v0, :cond_6

    packed-switch v1, :pswitch_data_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->k(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/c;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    .line 9
    :cond_3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/provider/c;->g(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 10
    :cond_4
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string p3, "Invalid URI "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_id="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_5

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p3, 0x29

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_5
    move-object p3, v0

    :goto_2
    move-object v4, p0

    move-object v5, v3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    .line 13
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/music/provider/MusicProvider;->r(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 14
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/p;->a:Lcom/samsung/android/app/music/provider/sync/p;

    move-object v5, v2

    move-object v6, v3

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/app/music/provider/sync/p;->o(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    move-object v4, p0

    move-object v5, v3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    .line 15
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/music/provider/MusicProvider;->r(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 16
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/p;->a:Lcom/samsung/android/app/music/provider/sync/p;

    move-object v5, v2

    move-object v6, v3

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/app/music/provider/sync/p;->o(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v0, "albums"

    .line 17
    invoke-virtual {v3, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_7
    const-string v0, "artists"

    .line 18
    invoke-virtual {v3, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 19
    :goto_3
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ktx/net/a;->j(Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-static {v2, p1}, Lcom/samsung/android/app/musiclibrary/ktx/content/a;->H(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_8
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2775
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
