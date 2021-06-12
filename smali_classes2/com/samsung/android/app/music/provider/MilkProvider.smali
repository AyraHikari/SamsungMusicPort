.class public Lcom/samsung/android/app/music/provider/MilkProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;


# static fields
.field private static final d:Landroid/content/UriMatcher;

.field private static final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/database/sqlite/SQLiteDatabase;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/HashMap;
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
.method static constructor <clinit>()V
    .locals 4

    .line 96
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->e:Ljava/util/ArrayList;

    .line 199
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/milk/purchase/tracks"

    const/16 v3, 0x8d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 200
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/thumbnail/album"

    const/16 v3, 0x97

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/thumbnail/etc"

    const/16 v3, 0x98

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/tracks/full"

    const/16 v3, 0xab

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/tracks/simple"

    const/16 v3, 0xac

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/purchase/vouchers"

    const/16 v3, 0x8e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 205
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/purchase/vouchers/uilist"

    const/16 v3, 0x94

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/purchase/subscriptions"

    const/16 v3, 0x8f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/purchase/download_queue"

    const/16 v3, 0x93

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/download_basket"

    const/16 v3, 0xbf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/tracks/unique"

    const/16 v3, 0xad

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$EventPopups;->a()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/playlists/#/members/heart"

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/playlists/#/members/heart/sync"

    const/16 v3, 0xd9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/mdrm/tracks"

    const/16 v3, 0xf1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$OnlineChartTracks;->a()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x105

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/play_history"

    const/16 v3, 0xe8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/play_history/#"

    const/16 v3, 0xe9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/latest_update_date"

    const/16 v3, 0x10e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/hidden_track"

    const/16 v3, 0x118

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/milk/purchase/tracks/mp3/uilist"

    const/16 v3, 0x95

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->e:Ljava/util/ArrayList;

    const-string v1, "milk_delete_account_user_data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->e:Ljava/util/ArrayList;

    const-string v1, "milk_clean_audio_id_cache"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->f:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;)V
    .locals 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->g:Ljava/util/HashMap;

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->h:Ljava/util/HashMap;

    .line 235
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->a:Landroid/content/Context;

    .line 236
    iput-object p2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 237
    iput-object p3, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->c:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    return-void
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 839
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "duration"

    const-wide/16 v2, 0x0

    .line 840
    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/app/music/provider/ContentValuesWrapper;->a(Landroid/content/ContentValues;Ljava/lang/String;J)J

    move-result-wide v4

    const-string p1, "duration"

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    move-wide v2, v4

    .line 841
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 842
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "audio_meta"

    invoke-virtual {p1, v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private a(Landroid/content/ContentValues;)J
    .locals 10

    .line 858
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MilkProvider;->b(Landroid/content/ContentValues;)J

    move-result-wide v0

    const-string v2, "explicit"

    const/4 v3, 0x0

    .line 859
    invoke-static {p1, v2, v3}, Lcom/samsung/android/app/music/provider/ContentValuesWrapper;->a(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 860
    new-instance v2, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v5, "explicit"

    .line 861
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 862
    iget-object v5, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "audio_meta"

    const-string v7, "source_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v8, "source_id"

    const-string v9, "known"

    .line 863
    invoke-static {p1, v8, v9}, Lcom/samsung/android/app/music/provider/ContentValuesWrapper;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    .line 862
    invoke-virtual {v5, v6, v2, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-wide v0
.end method

.method private a(Landroid/content/ContentValues;Z)J
    .locals 11

    const-string v0, "audio_id"

    .line 817
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string v0, "cp_attrs"

    const v1, 0x80002

    .line 822
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/provider/ContentValuesWrapper;->a(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v0

    .line 824
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_5

    if-nez p2, :cond_5

    const-string p2, "source_id"

    .line 826
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 827
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "audio_meta"

    const-string p2, "_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "source_id =? AND cp_attrs = ?"

    const/4 p2, 0x2

    new-array v7, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, v7, p2

    const/4 p1, 0x1

    .line 829
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 827
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 830
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 831
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 833
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v0, p2

    .line 827
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 833
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    throw p2

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-wide v1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p3

    move-object v5, p4

    .line 1145
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6

    const/4 v0, 0x1

    .line 1150
    new-array v0, v0, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 1152
    invoke-virtual {p1, p2, v1, p5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 1156
    invoke-direct {p0, p3, p4, v0}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p3

    .line 1157
    invoke-virtual {p1, p2, p5, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v2, p1

    const-string p1, "MilkProvider"

    .line 1158
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "insertOrUpdate targetTable : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " whereClause : "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " row : "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v2
.end method

.method private a(Landroid/net/Uri;Landroid/content/ContentValues;IZ)J
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_2

    .line 674
    :sswitch_0
    invoke-direct {p0, p2, p4}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/content/ContentValues;Z)J

    move-result-wide p3

    .line 676
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "audio_id"

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p3, -0x1

    .line 677
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "track_id"

    const-string p4, "source_id"

    .line 679
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 678
    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "hidden_track"

    const-string p4, "track_id"

    invoke-virtual {p2, p3, p4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto/16 :goto_2

    .line 669
    :sswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "latest_update_date_map"

    const-string p4, "server_path"

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto/16 :goto_2

    .line 650
    :sswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "online_chart_tracks"

    invoke-virtual {p1, p3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto/16 :goto_2

    .line 661
    :sswitch_3
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/MilkContents$PlayHistory;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "MilkProvider"

    .line 662
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "preBulkInsert historyId : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "history_id"

    .line 663
    invoke-virtual {p2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "playhistory_detail"

    invoke-virtual {p1, p3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto/16 :goto_2

    .line 657
    :sswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "playhistory_map"

    const-string p4, "history_id"

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto/16 :goto_2

    .line 570
    :sswitch_5
    invoke-direct {p0, p2, p4}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/content/ContentValues;Z)J

    move-result-wide p3

    .line 571
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->a(Landroid/net/Uri;)J

    move-result-wide v0

    .line 573
    invoke-static {p2, v0, v1, p3, p4}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;

    move-result-object p1

    .line 574
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "audio_playlists_map"

    const-string p4, "playlist_id"

    invoke-virtual {p2, p3, p4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto/16 :goto_2

    .line 653
    :sswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "event_popups"

    invoke-virtual {p1, p3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto/16 :goto_2

    :sswitch_7
    const-string p1, "serializedIds"

    .line 624
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    .line 627
    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/content/ContentValues;Z)J

    move-result-wide p3

    .line 629
    invoke-static {p2, p3, p4}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->convertToDownloadBasket(Landroid/content/ContentValues;J)Landroid/content/ContentValues;

    move-result-object p1

    const-string p2, "source_id =?"

    .line 630
    new-array p3, v1, [Ljava/lang/String;

    const-string p4, "track_id"

    .line 632
    invoke-virtual {p1, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v0

    .line 630
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/MilkProvider;->b(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 633
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "download_basket"

    const-string p4, "track_id"

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto/16 :goto_2

    .line 604
    :sswitch_8
    invoke-direct {p0, p2, p4}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/content/ContentValues;Z)J

    move-result-wide v2

    goto/16 :goto_2

    :sswitch_9
    const-string p1, "audio_id"

    .line 586
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_2

    .line 589
    invoke-direct {p0, p2, p4}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/content/ContentValues;Z)J

    move-result-wide v2

    goto :goto_1

    .line 592
    :cond_2
    new-array p1, v1, [Landroid/content/ContentValues;

    aput-object p2, p1, v0

    const-string p3, "source_id"

    const-string p4, "source_id"

    .line 595
    invoke-direct {p0, p3, p4, p1}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p1

    .line 597
    invoke-direct {p0, p2, p1, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 599
    :goto_1
    invoke-static {p2, v2, v3}, Lcom/samsung/android/app/music/model/Track;->convertToMilkTracks(Landroid/content/ContentValues;J)Landroid/content/ContentValues;

    move-result-object p1

    .line 600
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "milk_track"

    const-string p4, "track_id"

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_2

    .line 608
    :sswitch_a
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/provider/MilkProvider;->d(Landroid/content/ContentValues;)J

    move-result-wide v2

    goto/16 :goto_2

    .line 638
    :sswitch_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "( track_id = \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "track_id"

    .line 639
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' and "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "track_type"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "track_type"

    .line 641
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ) "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MilkProvider"

    .line 643
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DOWNLOAD_QUEUE where: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object p3, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p4, "download_queue"

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/samsung/android/app/music/provider/MilkProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_2

    .line 619
    :sswitch_c
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "subscription"

    const-string p4, "orderId"

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_2

    .line 614
    :sswitch_d
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "voucher"

    const-string p4, "voucherId"

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_2

    .line 578
    :sswitch_e
    invoke-direct {p0, p2, p4}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/content/ContentValues;Z)J

    move-result-wide p3

    .line 580
    invoke-static {p2, p3, p4}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->convertToPurchasedTracks(Landroid/content/ContentValues;J)Landroid/content/ContentValues;

    move-result-object p1

    .line 581
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "purchased_track"

    const-string p4, "track_id"

    invoke-virtual {p2, p3, p4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    :goto_2
    :sswitch_f
    return-wide v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x8d -> :sswitch_e
        0x8e -> :sswitch_d
        0x8f -> :sswitch_c
        0x93 -> :sswitch_b
        0x97 -> :sswitch_a
        0x98 -> :sswitch_f
        0xab -> :sswitch_9
        0xac -> :sswitch_8
        0xbf -> :sswitch_7
        0xc9 -> :sswitch_6
        0xd8 -> :sswitch_5
        0xd9 -> :sswitch_5
        0xe8 -> :sswitch_4
        0xe9 -> :sswitch_3
        0x105 -> :sswitch_2
        0x10e -> :sswitch_1
        0x118 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;
    .locals 4

    .line 1302
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "play_order"

    const-string v2, "play_order"

    .line 1303
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "audio_id"

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p3, -0x1

    .line 1305
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 1304
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "playlist_id"

    .line 1306
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "audio_source_id"

    const-string p2, "source_id"

    .line 1308
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1307
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "audio_cp_attrs"

    const-string p2, "audio_cp_attrs"

    .line 1309
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "audio_data"

    const-string p2, "source_id"

    .line 1311
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1310
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "storage_order"

    const/16 p1, 0xc8

    .line 1313
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1312
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private a([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 6

    .line 1284
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1286
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    const-string v5, "_id"

    .line 1287
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1288
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1289
    :cond_0
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1290
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v4, "-1"

    .line 1292
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1296
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    .line 1224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p1, " WHERE "

    .line 1226
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 7

    .line 1207
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "("

    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1210
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p3, v2

    if-eqz v3, :cond_0

    const-string v5, " OR "

    .line 1212
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v5, "("

    .line 1214
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\')"

    .line 1215
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    .line 1218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1219
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a([Ljava/lang/String;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1329
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 1330
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v2, "audio_meta"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 1082
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v2, "audio_meta"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1087
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "MilkProvider"

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAudioIdTo targetTable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " SET audio_id=(SELECT CASE WHEN "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "(SELECT _id FROM "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " WHERE source_id="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "IS NULL THEN -1 ELSE (SELECT _id FROM "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " WHERE source_id="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") END) "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "WHERE audio_id NOT IN (SELECT _id FROM "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AND "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3

    const-string v0, "MilkProvider"

    .line 1126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteNotIn targetTable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " targetColumn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "keyColumn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-direct {p0, p3, p4, p5}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "MilkProvider"

    .line 1131
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteNotIn whereClause : "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "MilkProvider"

    .line 1133
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteNotIn selection : "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "_id NOT IN ( "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p6, :cond_0

    .line 1136
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " AND "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    const/4 p4, 0x0

    .line 1138
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string p3, "MilkProvider"

    .line 1139
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "deleteNotIn targetTable : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " items are deleted"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1121
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/net/Uri;[Landroid/net/Uri;)V
    .locals 0

    .line 689
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 690
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/provider/MilkProvider;->a([Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private a([Landroid/net/Uri;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 696
    array-length v0, p1

    if-lez v0, :cond_0

    .line 697
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 698
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string v3, "MilkProvider"

    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyChange uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1232
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1237
    array-length v2, p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int v3, v0, v2

    .line 1238
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    .line 1240
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 1243
    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v3
.end method

.method private b(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 848
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "track_number"

    const-wide/16 v2, 0x0

    .line 849
    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/app/music/provider/ContentValuesWrapper;->a(Landroid/content/ContentValues;Ljava/lang/String;J)J

    move-result-wide v4

    const-string p1, "track"

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    move-wide v2, v4

    .line 850
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 851
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "audio_meta"

    invoke-virtual {p1, v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private b(Landroid/content/ContentValues;)J
    .locals 13

    const-string v0, "cp_attrs"

    const v1, 0x80002

    .line 872
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/provider/ContentValuesWrapper;->a(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v0

    .line 873
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MilkProvider;->c(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v8

    if-ne v1, v0, :cond_1

    .line 877
    sget-object v2, Lcom/samsung/android/app/music/provider/MilkProvider;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 878
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/Long;

    .line 879
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 880
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 882
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v3, v4

    move-object v4, p1

    move v7, v0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    :cond_0
    if-eqz v9, :cond_1

    .line 885
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception p1

    .line 880
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 888
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->c:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 889
    invoke-static {p1}, Lcom/samsung/android/app/music/model/SimpleTrack;->convertToAudioMeta(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "_id"

    .line 891
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "album_id"

    const-wide/16 v5, -0x1

    .line 893
    invoke-static {v2, v4, v5, v6}, Lcom/samsung/android/app/music/provider/ContentValuesWrapper;->a(Landroid/content/ContentValues;Ljava/lang/String;J)J

    move-result-wide v9

    if-eqz v3, :cond_3

    .line 895
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v5, v2

    if-eqz v4, :cond_2

    if-ne v1, v0, :cond_2

    .line 897
    sget-object v1, Lcom/samsung/android/app/music/provider/MilkProvider;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 898
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->g:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->h:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_2
    :goto_0
    move-wide v11, v2

    goto :goto_1

    :cond_3
    move-wide v11, v5

    :goto_1
    cmp-long v1, v5, v9

    if-eqz v1, :cond_4

    .line 905
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, p1

    move-wide v5, v9

    move v7, v0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    :cond_4
    return-wide v11
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 5

    const/4 v0, 0x1

    .line 1166
    new-array v0, v0, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1168
    invoke-virtual {p1, p2, v0, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 1171
    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    const-string p1, "MilkProvider"

    .line 1172
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insertOrUpdate targetTable : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " whereClause : "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " row : "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v1
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    const-string v0, "@"

    .line 794
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 795
    array-length v0, p1

    new-array v5, v0, [Landroid/content/ContentValues;

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 798
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 799
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "track_id"

    .line 800
    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "audio_id"

    const/4 v3, -0x1

    .line 801
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 802
    aput-object v1, v5, v0

    .line 803
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "download_basket"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 805
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "download_basket"

    const-string v4, "track_id"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 808
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "MilkProvider"

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preBulkInsertDownloadBasket error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1318
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    .line 1319
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private c(Ljava/lang/String;)J
    .locals 10

    const/4 v0, 0x0

    .line 1252
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "audio_meta"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "source_id = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 1255
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "_id"

    .line 1258
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 1261
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v0

    :catchall_0
    move-exception v0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method private c(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "title"

    .line 912
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "album"

    .line 913
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "artist"

    .line 914
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Landroid/content/ContentValues;)J
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "source_album_id"

    .line 920
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cp_attrs"

    .line 921
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->c:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 924
    invoke-static {p1}, Lcom/samsung/android/app/music/model/SimpleTrack;->convertToAlbum(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    const/4 v6, 0x0

    .line 925
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 924
    invoke-interface {v0, v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)Landroid/content/ContentValues;

    move-result-object v0

    const-string v4, "album_id"

    .line 925
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 923
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 929
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object v8, p1

    move-wide v9, v4

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    :cond_1
    return-wide v4
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 990
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const-string v1, "MilkProvider"

    .line 991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update uriMatch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x93

    if-eq v0, v1, :cond_5

    const/16 v1, 0xab

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xf1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x118

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string p2, "MilkProvider"

    const-string p3, "update fail to uri match"

    .line 1031
    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    goto/16 :goto_0

    .line 1012
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "subscription"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_0

    .line 1015
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "voucher"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 1009
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchased_track"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "hidden_track"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "latest_update_date_map"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 1018
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "milk_drm"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 1021
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "event_popups"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 996
    :cond_4
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string p3, "track_id"

    .line 998
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/provider/MilkProvider;->c(Ljava/lang/String;)J

    move-result-wide p3

    .line 999
    invoke-static {p2, p3, p4}, Lcom/samsung/android/app/music/model/Track;->convertToMilkTracks(Landroid/content/ContentValues;J)Landroid/content/ContentValues;

    move-result-object p3

    .line 1000
    iget-object p4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "milk_track"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track_id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "track_id"

    .line 1002
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 1000
    invoke-virtual {p4, v0, p3, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 1005
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_queue"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 1034
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/MilkContents;->a(Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/net/Uri;[Landroid/net/Uri;)V

    const-string p1, "MilkProvider"

    .line 1035
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " items are updated"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :pswitch_data_0
    .packed-switch 0x8d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 937
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const-string v1, "MilkProvider"

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete uriMatch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x93

    if-eq v0, v1, :cond_6

    const/16 v1, 0x98

    if-eq v0, v1, :cond_5

    const/16 v1, 0xbf

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_3

    const/16 v1, 0x105

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x118

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 p2, 0x0

    goto/16 :goto_0

    .line 969
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/MilkContents$PlayHistory;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "history_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 971
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "playhistory_detail"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 966
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "playhistory_map"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 945
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "subscription"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 942
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "voucher"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 954
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchased_track"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "hidden_track"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 975
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "latest_update_date_map"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 960
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "online_chart_tracks"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 963
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "event_popups"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 948
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_basket"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 957
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "milk_thumbnails"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 951
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_queue"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 982
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/MilkContents;->a(Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/net/Uri;[Landroid/net/Uri;)V

    const-string p1, "MilkProvider"

    .line 983
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " items are deleted"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x8d
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 11
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 741
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "MilkProvider"

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bulkInsert uriMatch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 746
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MilkProvider;->b(Landroid/net/Uri;[Landroid/content/ContentValues;)V

    .line 747
    array-length v2, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    :try_start_1
    aget-object v5, p2, v3

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v6, 0x1

    .line 751
    invoke-direct {p0, p1, v5, v0, v6}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    add-int/2addr v4, v6

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_3

    .line 753
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MilkProvider;->c(Landroid/net/Uri;[Landroid/content/ContentValues;)V

    .line 754
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p2

    const/4 v4, 0x0

    .line 756
    :goto_3
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 758
    :goto_4
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string p2, "MilkProvider"

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bulkInsert inserted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/MilkContents;->a(Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MilkProvider;->a([Landroid/net/Uri;)V

    return v4

    .line 758
    :goto_5
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    const-string v2, "MilkProvider"

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v13, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v13}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v2, "limit"

    .line 247
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 249
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 252
    sget-object v2, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v10, -0x3e9

    const/16 v16, 0x0

    const/16 v17, 0x0

    sparse-switch v2, :sswitch_data_0

    move-object v13, v1

    .line 532
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const-string v2, "hidden_track"

    const-string v3, "audio"

    if-eqz v11, :cond_1

    const/4 v4, 0x0

    .line 521
    :goto_0
    array-length v5, v11

    if-ge v4, v5, :cond_1

    .line 522
    aget-object v5, v11, v4

    const-string v6, "_id"

    .line 523
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "._id AS _id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 528
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "._id=audio_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :sswitch_1
    const-string v2, "latest_update_date_map"

    .line 514
    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_2
    const-string v2, "online_chart_tracks_view"

    .line 497
    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_3
    const-string v2, "milk_drm_view"

    .line 493
    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 505
    :sswitch_4
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/provider/MilkContents$PlayHistory;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 506
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "history_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playhistory_detail"

    .line 509
    invoke-virtual {v13, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v10, v1

    move-object v7, v2

    goto/16 :goto_b

    :sswitch_5
    const-string v2, "playhistory_map"

    .line 501
    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_6
    const-string v2, "event_popups"

    .line 488
    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_7
    const-string v2, "download_basket"

    const-string v3, "audio"

    if-eqz v11, :cond_3

    const/4 v4, 0x0

    .line 476
    :goto_1
    array-length v5, v11

    if-ge v4, v5, :cond_3

    .line 477
    aget-object v5, v11, v4

    const-string v6, "_id"

    .line 478
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "._id AS _id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 483
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "._id=audio_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :sswitch_8
    const-string v2, "audio_meta"

    const-string v3, "purchased_track"

    const/4 v4, 0x2

    .line 339
    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CASE WHEN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "audio_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " IS NULL THEN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ELSE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "audio_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " END AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "purchased_audio_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "purchased_audio_id"

    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " LEFT OUTER JOIN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ON "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "local_track_ext_320k"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "local_track_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "local_track_ext"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "local_track_id"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object/from16 v7, p3

    move-object v10, v1

    move-object v6, v4

    move-object v9, v5

    goto/16 :goto_c

    :sswitch_9
    const-string v2, "audio"

    const-string v3, "milk_thumbnails"

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".thumbnail_id=album_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_3

    :sswitch_a
    const-string v2, "milk_track"

    const-string v3, "audio"

    if-eqz v11, :cond_5

    const/4 v4, 0x0

    .line 320
    :goto_2
    array-length v5, v11

    if-ge v4, v5, :cond_5

    .line 321
    aget-object v5, v11, v4

    const-string v6, "_id"

    .line 322
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "._id AS _id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 327
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "._id=audio_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_3

    :sswitch_b
    const-string v2, "milk_etc_thumbnails"

    .line 361
    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_c
    const-string v2, "milk_thumbnails"

    .line 357
    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :goto_3
    move-object v10, v1

    goto/16 :goto_a

    :sswitch_d
    const-string v2, "purchased_track_view"

    .line 260
    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 261
    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 262
    invoke-static {v15, v12}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v2, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    const/16 v12, -0x3e9

    move-object v10, v14

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 265
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_6
    const-string v4, "order_date_local"

    .line 270
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 269
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-interface {v2}, Landroid/database/Cursor;->isFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "order_date_local"

    .line 273
    invoke-direct {v0, v11, v12, v5, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->a([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 277
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z

    const-string v5, "order_date_local"

    .line 278
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 280
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 282
    invoke-direct {v0, v5, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 284
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x186a0

    rem-int/2addr v5, v6

    if-lez v5, :cond_8

    mul-int/lit8 v5, v5, -0x1

    :cond_8
    const-string v6, "order_date_local"

    .line 290
    invoke-direct {v0, v11, v5, v6, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->a([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "MilkProvider"

    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add purchased date date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_9
    :goto_4
    invoke-direct {v0, v11, v2}, Lcom/samsung/android/app/music/provider/MilkProvider;->a([Ljava/lang/String;Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v4

    .line 298
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 299
    invoke-virtual {v5, v4}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 301
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 304
    new-instance v2, Landroid/database/MergeCursor;

    .line 305
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/database/Cursor;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/database/Cursor;

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 306
    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->a:Landroid/content/Context;

    .line 307
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v2

    :cond_a
    if-eqz v2, :cond_b

    .line 311
    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_b
    return-object v2

    :sswitch_e
    const-string v2, "voucher"

    .line 370
    invoke-virtual {v13, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 372
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "( statusCode = \'01\' )"

    .line 377
    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 378
    invoke-static {v15, v12}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v2, v13

    move-object/from16 v4, p2

    move-object/from16 v18, v9

    move-object/from16 v9, p5

    const/16 v1, -0x3e9

    move-object v10, v14

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 383
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_c

    const-string v3, "voucherTitle"

    .line 385
    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->a:Landroid/content/Context;

    const v5, 0x7f0b0257

    .line 388
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 385
    invoke-direct {v0, v11, v1, v3, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->a([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v3

    move-object/from16 v10, v18

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    goto :goto_5

    :cond_c
    move-object/from16 v10, v18

    .line 392
    :goto_5
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    move-object/from16 v10, v18

    :goto_6
    const-string v5, "( statusCode != \'01\' )"

    .line 397
    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 398
    invoke-static {v15, v12}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v2, v13

    move-object/from16 v4, p2

    move-object/from16 v7, v17

    move-object/from16 v9, p5

    move-object v12, v10

    move-object v10, v14

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 402
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_e

    const-string v3, "voucherTitle"

    .line 403
    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->a:Landroid/content/Context;

    const v5, 0x7f0b025f

    .line 406
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 403
    invoke-direct {v0, v11, v1, v3, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->a([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 410
    :cond_e
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x0

    .line 429
    :goto_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 430
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->a:Landroid/content/Context;

    .line 431
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v10, p1

    invoke-interface {v2, v3, v10}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 433
    :cond_10
    new-instance v1, Landroid/database/MergeCursor;

    .line 434
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/Cursor;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/database/Cursor;

    invoke-direct {v1, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_8

    :cond_11
    move-object/from16 v10, p1

    .line 437
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 438
    iget-object v2, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v1, v2, v10}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :goto_8
    return-object v1

    :sswitch_f
    move-object v10, v1

    const-string v1, "download_queue"

    const-string v2, "audio"

    if-eqz v11, :cond_15

    const/4 v3, 0x0

    .line 452
    :goto_9
    array-length v4, v11

    if-ge v3, v4, :cond_15

    .line 453
    aget-object v4, v11, v3

    const-string v5, "_id"

    .line 454
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "._id AS _id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v3

    :cond_12
    const-string v5, "album"

    .line 457
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "album"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "album"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v3

    :cond_13
    const-string v5, "drm_type"

    .line 462
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "drm_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "drm_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 469
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "._id=audio_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_a

    :sswitch_10
    move-object v10, v1

    const-string v1, "subscription"

    .line 445
    invoke-virtual {v13, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    move-object v10, v1

    const-string v1, "voucher"

    .line 366
    invoke-virtual {v13, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_12
    move-object v10, v1

    const-string v1, "purchased_track_view"

    .line 256
    invoke-virtual {v13, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :goto_a
    move-object/from16 v7, p3

    :goto_b
    move-object v6, v11

    move-object/from16 v9, v17

    .line 535
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 536
    iget-object v5, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 537
    invoke-static {v15, v12}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    move-object v4, v13

    move-object v13, v10

    move-object v10, v3

    move-object/from16 v11, p5

    move-object v12, v14

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "MilkProvider"

    .line 540
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query uri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " time_takes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v1

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_16

    .line 542
    iget-object v1, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v3, v1, v13}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_16
    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x8d -> :sswitch_12
        0x8e -> :sswitch_11
        0x8f -> :sswitch_10
        0x93 -> :sswitch_f
        0x94 -> :sswitch_e
        0x95 -> :sswitch_d
        0x97 -> :sswitch_c
        0x98 -> :sswitch_b
        0xab -> :sswitch_a
        0xac -> :sswitch_9
        0xad -> :sswitch_8
        0xbf -> :sswitch_7
        0xc9 -> :sswitch_6
        0xe8 -> :sswitch_5
        0xe9 -> :sswitch_4
        0xf1 -> :sswitch_3
        0x105 -> :sswitch_2
        0x10e -> :sswitch_1
        0x118 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 554
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const-string v1, "MilkProvider"

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert uriMatch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 556
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    .line 557
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 558
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/MilkContents;->a(Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MilkProvider;->a([Landroid/net/Uri;)V

    const-string p1, "MilkProvider"

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1046
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const p3, -0x288ffde4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p3, :cond_1

    const p3, 0x1ba78801

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "milk_clean_audio_id_cache"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const-string p2, "milk_delete_account_user_data"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    const/4 p3, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1071
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported call: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1064
    :pswitch_0
    sget-object p1, Lcom/samsung/android/app/music/provider/MilkProvider;->f:Ljava/lang/Object;

    monitor-enter p1

    .line 1065
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->g:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 1066
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->h:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 1067
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    invoke-static {}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a()V

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 1067
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 1048
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "purchased_track"

    invoke-virtual {p1, p2, p3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1049
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "voucher"

    invoke-virtual {p1, p2, p3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1050
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "subscription"

    invoke-virtual {p1, p2, p3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1051
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "milk_track"

    invoke-virtual {p1, p2, p3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1052
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "download_queue"

    invoke-virtual {p1, p2, p3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1053
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "download_basket"

    invoke-virtual {p1, p2, p3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1054
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "playhistory_detail"

    invoke-virtual {p1, p2, p3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1055
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "playhistory_map"

    invoke-virtual {p1, p2, p3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1056
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "latest_update_date_map"

    invoke-virtual {p1, p2, p3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1057
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "hidden_track"

    invoke-virtual {p1, p2, p3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 p1, 0x6

    .line 1059
    new-array p1, p1, [Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists;->a()Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Subscriptions;->a()Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 1060
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Vouchers;->b()Landroid/net/Uri;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->a()Landroid/net/Uri;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x4

    .line 1061
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadQueue;->a()Landroid/net/Uri;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x5

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->a()Landroid/net/Uri;

    move-result-object v0

    aput-object v0, p1, p2

    .line 1059
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MilkProvider;->a([Landroid/net/Uri;)V

    :goto_2
    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 1

    .line 1041
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 1078
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected b(Landroid/net/Uri;[Landroid/content/ContentValues;)V
    .locals 13
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 705
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const-string v0, "MilkProvider"

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preBulkInsert uriMatch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x118

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 714
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "subscription"

    const-string v4, "orderId"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :pswitch_1
    iget-object v8, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "voucher"

    const-string v10, "voucherId"

    const/4 v12, 0x0

    move-object v7, p0

    move-object v11, p2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "hidden_track"

    const-string v3, "track_id"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "playhistory_map"

    const-string v9, "history_id"

    const/4 v11, 0x0

    move-object v6, p0

    move-object v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 718
    aget-object v0, p2, p1

    const-string v1, "serializedIds"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 719
    aget-object p1, p2, p1

    const-string p2, "serializedIds"

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MilkProvider;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "download_basket"

    const-string v3, "track_id"

    const-string v4, "source_id"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected c(Landroid/net/Uri;[Landroid/content/ContentValues;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 766
    sget-object p2, Lcom/samsung/android/app/music/provider/MilkProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const-string p2, "MilkProvider"

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postBulkInsert uriMatch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x8d

    if-eq p1, p2, :cond_3

    const/16 p2, 0xab

    if-eq p1, p2, :cond_2

    const/16 p2, 0xbf

    if-eq p1, p2, :cond_1

    const/16 p2, 0x118

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 771
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "audio_playlists_map"

    const-string v0, "audio_source_id"

    const-string v1, "audio_cp_attrs = 524290"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 788
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "hidden_track"

    const-string v0, "track_id"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 783
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "download_basket"

    const-string v0, "track_id"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 780
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "milk_track"

    const-string v0, "track_id"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "purchased_track"

    const-string v0, "track_id"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/provider/MilkProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xd8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
