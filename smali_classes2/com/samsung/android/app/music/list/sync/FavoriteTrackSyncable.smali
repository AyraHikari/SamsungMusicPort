.class public final Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;,
        Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$Companion;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$Companion;

    const-string v0, "_id"

    const-string v1, "audio_source_id"

    const-string v2, "title"

    const-string v3, "audio_cp_attrs"

    const-string v4, "modified_state"

    .line 284
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->b:Landroid/content/Context;

    return-void
.end method

.method private final a(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "_id"

    .line 293
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    .line 276
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Landroid/database/Cursor;)J
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Landroid/database/Cursor;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "audio_source_id"

    .line 294
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
    sget-object v0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->c:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Track Favorite-Sync"

    .line 277
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
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v1, "sync start"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 28
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 30
    new-instance v0, Lcom/samsung/android/app/music/list/sync/SyncableImpl;

    new-instance v1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable$TrackSyncProcess;-><init>(Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;)V

    check-cast v1, Lcom/samsung/android/app/music/list/sync/SyncProcess;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/sync/SyncableImpl;-><init>(Lcom/samsung/android/app/music/list/sync/SyncProcess;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/sync/SyncableImpl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->b:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    .line 33
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v5, "MediaContents.Favorites.CONTENT_URI"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 34
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v5, "MediaContents.Favorites.Tracks.CONTENT_URI"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 32
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;[Landroid/net/Uri;)V

    :cond_0
    return v0
.end method
