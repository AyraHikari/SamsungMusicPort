.class Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl$1;->a:Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;)V
    .locals 3

    .line 28
    iget-wide v0, p2, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->a:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(IJ)V

    .line 29
    iget-object v0, p2, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->b:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 30
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p2, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->b:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    .line 34
    :goto_0
    iget-object v0, p2, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->c:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 35
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_1

    .line 37
    :cond_1
    iget-object v0, p2, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->c:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    .line 39
    :goto_1
    iget-object v0, p2, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->d:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 40
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_2

    .line 42
    :cond_2
    iget-object v0, p2, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->d:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    .line 44
    :goto_2
    iget-object v0, p2, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->e:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 45
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_3

    .line 47
    :cond_3
    iget-object v0, p2, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->e:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x6

    .line 49
    iget-wide v1, p2, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->f:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(IJ)V

    return-void
.end method

.method public synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoomSpotifyIdCacheDao_Impl$1;->a(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `spotify_id_cache`(`id`,`title`,`album`,`artist`,`spotify_id`,`last_updated_time_ms`) VALUES (nullif(?, 0),?,?,?,?,?)"

    return-object v0
.end method
