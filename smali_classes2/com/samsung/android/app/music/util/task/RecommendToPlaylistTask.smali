.class public Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask$Companion;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/app/ProgressDialog;

.field private final e:J

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->a:Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;JJ)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->e:J

    iput-wide p4, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->f:J

    .line 50
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->b:Ljava/lang/ref/WeakReference;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)[Landroid/content/ContentValues;
    .locals 7

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;->getList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 275
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_0
    check-cast v3, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;

    .line 234
    iget-object v5, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "playlistTracks[index]"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;

    .line 235
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->getTrackId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getTrackId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->getTrackSeqId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    .line 238
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result order is not matched. input trackId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result trackId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " seqId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->getTrackSeqId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 244
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    iget-object v2, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->c:Ljava/util/ArrayList;

    check-cast v2, Ljava/lang/Iterable;

    .line 278
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_3
    check-cast v3, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;

    .line 247
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getAudioId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makePlaylistMemberValues(Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object v1

    .line 246
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_1

    .line 250
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "contentValuesList.toArra\u2026(contentValuesList.size))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Landroid/content/ContentValues;

    return-object p1
.end method

.method private final b()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 153
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    new-instance v1, Landroid/app/ProgressDialog;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b018e

    .line 156
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 157
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 155
    iput-object v1, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->d:Landroid/app/ProgressDialog;

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->d:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_3
    return-void
.end method

.method private final c()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 167
    iget-object v2, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    return-void

    .line 169
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 174
    :cond_2
    check-cast v1, Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->d:Landroid/app/ProgressDialog;

    return-void
.end method

.method private final d()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;
    .locals 14

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 180
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v3, "_id"

    const-string v4, "cp_attrs"

    const-string v5, "local_track_id"

    const-string v6, "source_id"

    const-string v7, "title"

    const-string v8, "source_album_id"

    const-string v9, "source_artist_id"

    const-string v10, "album"

    const-string v11, "artist"

    const-string v12, "_display_name"

    const-string v13, "explicit"

    .line 181
    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    move-result-object v3

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->f:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    iget-object v1, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "uri"

    .line 197
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 196
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v7

    :goto_0
    check-cast v1, Ljava/io/Closeable;

    .line 198
    move-object v2, v7

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    if-nez v3, :cond_1

    goto/16 :goto_a

    .line 258
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_a

    :cond_2
    const-string v4, "_id"

    .line 261
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 201
    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;

    invoke-direct {v9}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;-><init>()V

    .line 202
    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v10

    .line 203
    invoke-virtual {v10, v4, v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setAudioId(J)V

    const-string v4, "source_album_id"

    .line 262
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v4, v7

    goto :goto_1

    :cond_3
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v10, v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setAlbumId(Ljava/lang/String;)V

    const-string v4, "source_artist_id"

    .line 263
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v4, v7

    goto :goto_2

    :cond_4
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const-string v4, "dummyArtistId"

    .line 206
    :goto_3
    invoke-virtual {v10, v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setArtistIds(Ljava/lang/String;)V

    const-string v4, "artist"

    .line 264
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v4, v7

    goto :goto_4

    :cond_6
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    const-string v4, "unknown"

    .line 207
    :goto_5
    invoke-virtual {v10, v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setArtistNames(Ljava/lang/String;)V

    const-string v4, "cp_attrs"

    .line 265
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setCpAttrs(I)V

    .line 211
    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getCpAttrs()I

    move-result v4

    invoke-virtual {v9, v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->toAudioType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setAudioType(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getCpAttrs()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "local_track_id"

    .line 266
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    const-string v4, "source_id"

    .line 267
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    :goto_6
    invoke-virtual {v9, v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setTrackId(Ljava/lang/String;)V

    const-string v4, "title"

    .line 268
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setTrackTitle(Ljava/lang/String;)V

    const-string v4, "album"

    .line 269
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setAlbumTitle(Ljava/lang/String;)V

    const-string v4, "_display_name"

    .line 270
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v4, v7

    goto :goto_7

    :cond_9
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-virtual {v9, v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setFileName(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getArtistIds()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getArtistNames()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->toArtistList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setArtistList(Ljava/util/List;)V

    const-string v4, "1"

    .line 221
    invoke-virtual {v9, v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setAddType(Ljava/lang/String;)V

    const-string v4, "explicit"

    .line 271
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v4, v7

    goto :goto_8

    :cond_a
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_8
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    .line 222
    :goto_9
    invoke-virtual {v9, v4}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setExplicit(I)V

    .line 201
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 225
    :goto_a
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 226
    iget-object v1, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->c:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->c:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;-><init>(Ljava/util/List;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 198
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_b
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a()J
    .locals 33

    move-object/from16 v0, p0

    .line 57
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->b()V

    .line 59
    iget-object v1, v0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_b

    const-string v4, "fragmentRef.get() ?: ret\u2026EFAULT_ADDED_MAP_ID_VALUE"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v4, "fragment.activity ?: ret\u2026EFAULT_ADDED_MAP_ID_VALUE"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 62
    new-instance v15, Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v4}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 64
    invoke-static {v4, v13, v14, v12}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "key_add_tracks_to_top_of_playlist"

    invoke-interface {v5, v6, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 66
    iget-wide v6, v0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->e:J

    invoke-static {v6, v7, v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(JZ)Landroid/net/Uri;

    move-result-object v11

    const/4 v6, -0x1

    .line 70
    iget-wide v7, v0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->e:J

    invoke-static {v4, v7, v8}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getSourcePlaylistId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 72
    move-object/from16 v18, v12

    check-cast v18, Ljava/lang/String;

    .line 76
    sget-boolean v7, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/16 v9, 0x106c

    const-wide/16 v19, 0x0

    if-eqz v7, :cond_6

    if-eqz v10, :cond_6

    sget-object v7, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v7, v1}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 77
    sget-object v1, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 81
    iget-wide v7, v0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->e:J

    invoke-static {v4, v7, v8}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getLastSyncedDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->d()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;

    move-result-object v8

    .line 79
    invoke-interface {v1, v10, v7, v5, v8}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->addPlaylistTracks(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;)Lretrofit2/Call;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 84
    invoke-static {v1}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 85
    invoke-virtual {v1}, Lretrofit2/Response;->d()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 86
    invoke-virtual {v1}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v5, "it.body()!!"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;

    .line 87
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;->getResultCode()I

    move-result v8

    if-eqz v8, :cond_2

    if-eq v8, v9, :cond_1

    move v6, v8

    move-object v3, v10

    move-object v2, v11

    move-object/from16 v24, v15

    move-wide/from16 v7, v19

    move-wide/from16 v21, v7

    const/4 v1, 0x0

    const/16 v23, 0x1

    goto/16 :goto_1

    .line 107
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->deviceName(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)Ljava/lang/String;

    move-result-object v18

    .line 108
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)J

    move-result-wide v5

    .line 109
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->modifiedState(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)I

    move-result v13

    move-object v3, v10

    move-object v2, v11

    move v1, v13

    move-object/from16 v24, v15

    move-wide/from16 v21, v19

    const/16 v23, 0x1

    move-wide/from16 v31, v5

    move v6, v8

    move-wide/from16 v7, v31

    goto/16 :goto_1

    .line 91
    :cond_2
    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->a(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)[Landroid/content/ContentValues;

    move-result-object v5

    aget-object v5, v5, v13

    const-string v6, "uri"

    .line 92
    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v11, v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->g(Landroid/net/Uri;)J

    move-result-wide v5

    move-wide/from16 v21, v5

    goto :goto_0

    :cond_3
    const-wide/16 v21, -0x1

    :goto_0
    cmp-long v5, v21, v19

    if-lez v5, :cond_4

    .line 97
    iget-wide v6, v0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->e:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    .line 98
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 99
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x19c

    const/16 v29, 0x0

    move-object v5, v4

    move/from16 v30, v8

    move-object/from16 v8, v16

    const/16 v2, 0x106c

    move-object/from16 v9, v17

    move-object v3, v10

    move-object/from16 v10, v23

    move-object v2, v11

    move-object/from16 v11, v24

    move-object v12, v1

    const/4 v1, 0x0

    move-object/from16 v13, v25

    const/16 v23, 0x1

    move-object/from16 v14, v26

    move-object/from16 v24, v15

    move/from16 v15, v27

    move/from16 v16, v28

    move-object/from16 v17, v29

    .line 95
    invoke-static/range {v5 .. v17}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    move-wide/from16 v7, v19

    move/from16 v6, v30

    goto :goto_1

    :cond_4
    move-object v3, v10

    move-object v2, v11

    move-object/from16 v24, v15

    const/4 v1, 0x0

    const/16 v23, 0x1

    const/16 v5, -0x64

    move-wide/from16 v7, v19

    const/16 v6, -0x64

    goto :goto_1

    :cond_5
    move-object v3, v10

    move-object v2, v11

    move-object/from16 v24, v15

    const/4 v1, 0x0

    const/16 v23, 0x1

    move-wide/from16 v7, v19

    move-wide/from16 v21, v7

    :goto_1
    move/from16 v27, v1

    move v1, v6

    move-wide/from16 v25, v7

    goto :goto_2

    :cond_6
    move-object v3, v10

    move-object v2, v11

    move-object/from16 v24, v15

    const/4 v1, 0x0

    const/16 v23, 0x1

    move-wide/from16 v21, v19

    move-wide/from16 v25, v21

    const/4 v1, -0x1

    const/16 v27, 0x0

    :goto_2
    cmp-long v5, v21, v19

    if-nez v5, :cond_8

    .line 117
    iget-wide v5, v0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->f:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v7}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makePlaylistMemberValues$default(Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "uri"

    .line 120
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {v4, v2, v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->g(Landroid/net/Uri;)J

    move-result-wide v5

    move-wide/from16 v21, v5

    goto :goto_3

    :cond_7
    const-wide/16 v21, -0x1

    .line 123
    :goto_3
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v2, :cond_8

    .line 125
    iget-wide v6, v0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->e:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/16 v2, 0x3e8

    int-to-long v13, v2

    div-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    .line 127
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x15c

    const/16 v17, 0x0

    move-object v5, v4

    .line 124
    invoke-static/range {v5 .. v17}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    :cond_8
    const/16 v2, 0x106c

    if-ne v1, v2, :cond_9

    .line 135
    iget-wide v6, v0, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->e:J

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v15, 0xa

    const/16 v16, 0x0

    move-object/from16 v5, v24

    move-object v9, v3

    move-object/from16 v11, v18

    move-wide/from16 v12, v25

    move/from16 v14, v27

    .line 134
    invoke-static/range {v5 .. v16}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->addConflict$default(Lcom/samsung/android/app/music/list/playlist/ConflictManager;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)V

    .line 141
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->execute()V

    .line 144
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->c()V

    return-wide v21

    :cond_a
    const-wide/16 v1, -0x1

    return-wide v1

    :cond_b
    const-wide/16 v1, -0x1

    return-wide v1
.end method
