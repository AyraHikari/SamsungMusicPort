.class public final Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$AlbumSyncProcess;,
        Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$ArtistSyncProcess;,
        Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;,
        Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$Companion;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$Companion;

    const-string v0, "_id"

    const-string v1, "category_id"

    const-string v2, "category_type"

    const-string v3, "favorite_name"

    const-string v4, "modified_state"

    .line 628
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b:Landroid/content/Context;

    return-void
.end method

.method private final a(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "_id"

    .line 639
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-string p1, "getAlbumId - imageUrl is null"

    const/4 p2, 0x2

    .line 49
    invoke-static {p0, p1, v0, p2, v0}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b:Landroid/content/Context;

    .line 53
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$AlbumArt;->b:Landroid/net/Uri;

    const-string v3, "AlbumArt.CONTENT_URI_INCLUDE_UPDATE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "thumbnail_id"

    .line 55
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "thumbnail_type"

    .line 56
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "image_url"

    .line 57
    invoke-virtual {v3, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->g(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private final a(I)Ljava/lang/String;
    .locals 10

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b:Landroid/content/Context;

    .line 64
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->c:Landroid/net/Uri;

    const-string v2, "Favorites.CONTENT_URI_INCLUDE_DELETED"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "_id"

    .line 65
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "modified_state!=?"

    const/4 v8, 0x1

    .line 67
    new-array v4, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    .line 63
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 68
    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 69
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 70
    :goto_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v8, :cond_1

    const-string p1, ""

    goto :goto_1

    .line 74
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/list/sync/SyncInfo;->a:Lcom/samsung/android/app/music/list/sync/SyncInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b:Landroid/content/Context;

    const-string v2, "favorite"

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/app/music/list/sync/SyncInfo;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 68
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;I)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 622
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    .line 619
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Landroid/database/Cursor;)J
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Landroid/database/Cursor;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->c()Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "category_id"

    .line 640
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final synthetic b()[Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->c:[Ljava/lang/String;

    return-object v0
.end method

.method private final c()Lcom/samsung/android/app/music/list/favorite/FavoriteApi;
    .locals 2

    .line 26
    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subTag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Category Favorite-Sync"

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Category Favorite-Sync"

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v1, "sync start"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 30
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x3

    .line 32
    new-array v0, v0, [Lcom/samsung/android/app/music/list/sync/SyncableImpl;

    .line 33
    new-instance v1, Lcom/samsung/android/app/music/list/sync/SyncableImpl;

    new-instance v2, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$AlbumSyncProcess;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$AlbumSyncProcess;-><init>(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)V

    check-cast v2, Lcom/samsung/android/app/music/list/sync/SyncProcess;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/list/sync/SyncableImpl;-><init>(Lcom/samsung/android/app/music/list/sync/SyncProcess;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 34
    new-instance v1, Lcom/samsung/android/app/music/list/sync/SyncableImpl;

    new-instance v3, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$ArtistSyncProcess;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$ArtistSyncProcess;-><init>(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)V

    check-cast v3, Lcom/samsung/android/app/music/list/sync/SyncProcess;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/list/sync/SyncableImpl;-><init>(Lcom/samsung/android/app/music/list/sync/SyncProcess;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 35
    new-instance v1, Lcom/samsung/android/app/music/list/sync/SyncableImpl;

    new-instance v4, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable$PlaylistSyncProcess;-><init>(Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;)V

    check-cast v4, Lcom/samsung/android/app/music/list/sync/SyncProcess;

    invoke-direct {v1, v4}, Lcom/samsung/android/app/music/list/sync/SyncableImpl;-><init>(Lcom/samsung/android/app/music/list/sync/SyncProcess;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 637
    array-length v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v6, v0, v4

    .line 39
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->f()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->b:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v2, "Favorites.CONTENT_URI"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_3
    return v5
.end method
