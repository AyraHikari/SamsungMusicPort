.class public final Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "db"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "uri"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MusicProvider-AudioMetaTrigger"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beforeDelete() start ids "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    if-eqz p4, :cond_3

    .line 120
    move-object v1, p4

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 121
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_2

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "milk_drm"

    const/4 v3, 0x0

    .line 123
    invoke-virtual {p2, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    const-string v2, "MusicProvider-AudioMetaTrigger"

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beforeDelete() deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " drm infos from milk_drm"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_2
    sget-object v1, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper;->a:Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;

    invoke-virtual {v1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)V

    .line 133
    sget-object v1, Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper$Companion;

    invoke-virtual {v1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)V

    .line 134
    invoke-static {p2, p4}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "FolderBucketIds"

    .line 135
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p2, "MusicProvider-AudioMetaTrigger"

    const-string p3, "beforeDelete() end"

    .line 137
    invoke-static {v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;JLandroid/content/ContentValues;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MusicProvider-AudioMetaTrigger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterInsert() start id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cp_attrs"

    .line 43
    invoke-virtual {p6, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 44
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/CpAttrs;->e(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 46
    :cond_1
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    .line 48
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, p2, v0, p3}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 49
    sget-object p3, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper;->a:Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;

    invoke-virtual {p3, p2, v0}, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 50
    sget-object p3, Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper$Companion;

    invoke-virtual {p3, p2, v0}, Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->b(Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZILjava/lang/Object;)I

    .line 52
    sget-boolean p3, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p3, :cond_5

    const-string p3, "drm_type"

    .line 53
    invoke-virtual {p6, p3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "_data"

    .line 54
    invoke-virtual {p6, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_4

    const/4 v2, 0x2

    .line 55
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v2, :cond_4

    const-string p3, "validity"

    .line 56
    invoke-virtual {p6, p3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 57
    :cond_2
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    const-string p3, "track_id"

    .line 58
    invoke-virtual {p6, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 59
    :cond_3
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_1
    const-string p1, "milk_drm"

    const/4 p6, 0x0

    .line 61
    new-instance v1, Landroid/content/ContentValues;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "audio_id"

    .line 62
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p4, "validity"

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {v1, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p4, "track_id"

    .line 64
    invoke-virtual {v1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2, p1, p6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 67
    :cond_4
    sget-object p1, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper;->a:Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 69
    :cond_5
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "MusicProvider-AudioMetaTrigger"

    const-string p2, "afterInsert() end"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    :goto_2
    return-void

    .line 43
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    const-string v1, "album_id"

    .line 174
    invoke-virtual {p4, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {p1, p2, p5, p6}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    const-string p5, "recently_played"

    .line 178
    invoke-virtual {p4, p5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p5

    const/4 p6, 0x0

    if-eqz p5, :cond_2

    .line 179
    sget-object p5, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    invoke-virtual {p5, p1, p2, p6}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Z)I

    move-result p5

    if-lez p5, :cond_1

    .line 180
    sget-object p5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    invoke-virtual {v0, p5}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    sget-object p5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b:Landroid/net/Uri;

    invoke-virtual {v0, p5}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string p5, "most_played"

    .line 184
    invoke-virtual {p4, p5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_4

    .line 185
    sget-object p5, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    invoke-virtual {p5, p1, p2, p6}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->c(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Z)I

    move-result p5

    if-lez p5, :cond_3

    .line 186
    sget-object p5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    invoke-virtual {v0, p5}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_3
    sget-object p5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b:Landroid/net/Uri;

    invoke-virtual {v0, p5}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object p5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$MostPlayedRank;->a:Landroid/net/Uri;

    invoke-virtual {v0, p5}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p5, "recently_added_remove_flag"

    .line 191
    invoke-virtual {p4, p5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 192
    sget-object p4, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    invoke-virtual {p4, p1, p2, p6}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->d(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Z)I

    move-result p2

    if-lez p2, :cond_5

    .line 193
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_5
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_6
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 198
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "MusicProvider-AudioMetaTrigger"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "afterUpdate : disabled Uri : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p3, 0x7d

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 201
    :cond_8
    check-cast v0, Ljava/lang/Iterable;

    .line 210
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    const-string p4, "it"

    .line 202
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_9
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    const-string p4, "context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "db"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "uri"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "MusicProvider-AudioMetaTrigger"

    const-string p4, "afterDelete() start"

    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-lez p5, :cond_1

    .line 153
    sget-object p3, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    sget-object p4, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->HEART_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    check-cast p4, Ljava/lang/Enum;

    invoke-static {p4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p4

    const-string p5, "EnumSet.of(SyncOperation.HEART_UPDATE)"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1, p4}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;->a(Landroid/content/Context;Ljava/util/EnumSet;)V

    :cond_1
    if-eqz p6, :cond_2

    const-string p3, "FolderBucketIds"

    const/4 p4, 0x0

    .line 157
    invoke-virtual {p6, p3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 158
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    const-string p2, "MusicProvider-AudioMetaTrigger"

    const-string p3, "afterDelete() end"

    .line 160
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valuesList"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    move-object v1, p4

    check-cast v1, Ljava/lang/Iterable;

    sget-object v0, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion$afterBulkInsert$ids$1;->INSTANCE:Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion$afterBulkInsert$ids$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MusicProvider-AudioMetaTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterBulkInsert() start ids : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p3

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    .line 82
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, p2, v0, p3}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 83
    sget-object p3, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper;->a:Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;

    invoke-virtual {p3, p2, v0}, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 84
    sget-object p3, Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper$Companion;

    invoke-virtual {p3, p2, v0}, Lcom/samsung/android/app/music/provider/FavoriteTracksMapDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 85
    sget-object v2, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->b(Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZILjava/lang/Object;)I

    .line 86
    sget-boolean p3, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p3, :cond_6

    const-string p3, "INSERT INTO milk_drm (audio_id,validity,track_id) VALUES (?, ?, ?)"

    .line 92
    invoke-virtual {p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p3

    .line 93
    check-cast p5, Ljava/lang/Iterable;

    const/4 v2, 0x0

    .line 208
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_1
    check-cast v3, Landroid/content/ContentValues;

    const-string v5, "drm_type"

    .line 94
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "_data"

    .line 95
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 96
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    const-string v5, "validity"

    .line 98
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    .line 99
    :cond_2
    invoke-static {p1, v6}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    :goto_1
    const-string v5, "track_id"

    .line 101
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 102
    :cond_3
    invoke-static {p1, v6}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    :goto_2
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 104
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {p3, v1, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 105
    invoke-virtual {p3, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v2, 0x3

    .line 106
    invoke-virtual {p3, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 107
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    :cond_4
    move v2, v4

    goto :goto_0

    .line 110
    :cond_5
    sget-object p1, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper;->a:Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/provider/PlaylistMapDbHelper$Companion;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 112
    :cond_6
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "MusicProvider-AudioMetaTrigger"

    const-string p2, "afterBulkInsert() end"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
