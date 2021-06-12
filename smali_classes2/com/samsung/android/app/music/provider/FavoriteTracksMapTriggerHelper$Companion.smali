.class public final Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    const-string p5, "context"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "db"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "uri"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "values"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper;->a()Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "FavoriteProvider-FavoriteTracksMapTriggerHelper"

    const-string p5, "afterUpdate() start"

    invoke-static {p4, p5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    .line 70
    sget-object p5, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    invoke-virtual {p5, p1, p2, p3}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 71
    invoke-static {p2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz p3, :cond_1

    .line 72
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b:Landroid/net/Uri;

    const-string p3, "MediaContents.Playlists.\u2026D_VIEW_NOTIFY_CONTENT_URI"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    const-string p1, "FavoriteProvider-FavoriteTracksMapTriggerHelper"

    const-string p2, "afterUpdate() end"

    .line 74
    invoke-static {p4, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    const-string p4, "context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "db"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "uri"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper;->a()Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "FavoriteProvider-FavoriteTracksMapTriggerHelper"

    const-string p5, "afterDelete() start"

    invoke-static {p4, p5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    .line 51
    sget-object p5, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    invoke-virtual {p5, p1, p2, p3}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 52
    invoke-static {p2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz p3, :cond_1

    .line 53
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b:Landroid/net/Uri;

    const-string p3, "MediaContents.Playlists.\u2026D_VIEW_NOTIFY_CONTENT_URI"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    const-string p1, "FavoriteProvider-FavoriteTracksMapTriggerHelper"

    const-string p2, "afterDelete() end"

    .line 55
    invoke-static {p4, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valuesList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper;->a()Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "FavoriteProvider-FavoriteTracksMapTriggerHelper"

    const-string v0, "afterBulkInsert() start"

    invoke-static {p4, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    .line 30
    sget-object v0, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    invoke-virtual {v0, p1, p2, p4}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 31
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "uri.toString()"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_1

    .line 32
    invoke-static {p2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 35
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b:Landroid/net/Uri;

    const-string p3, "MediaContents.Playlists.\u2026D_VIEW_NOTIFY_CONTENT_URI"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 37
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/provider/FavoriteTracksMapTriggerHelper;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "FavoriteProvider-FavoriteTracksMapTriggerHelper"

    const-string p2, "afterBulkInsert() end"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
