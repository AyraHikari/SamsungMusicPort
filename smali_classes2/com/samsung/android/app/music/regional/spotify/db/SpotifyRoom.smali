.class public Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCacheDao;,
        Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;,
        Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyDatabase;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyDatabase;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom;->a:Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyDatabase;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom;->a:Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyDatabase;

    if-nez v1, :cond_0

    .line 27
    const-class v1, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyDatabase;

    const-string v2, "spotify_db"

    .line 28
    invoke-static {p0, v1, v2}, Landroid/arch/persistence/room/Room;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->a()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyDatabase;

    sput-object p0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom;->a:Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyDatabase;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 33
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom;->a:Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyDatabase;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 86
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyDatabase;->a()Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCacheDao;

    move-result-object p0

    .line 87
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCacheDao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 93
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyDatabase;->a()Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCacheDao;

    move-result-object p0

    .line 94
    invoke-static/range {p1 .. p6}, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCacheDao;->a(Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;)V

    return-void
.end method
