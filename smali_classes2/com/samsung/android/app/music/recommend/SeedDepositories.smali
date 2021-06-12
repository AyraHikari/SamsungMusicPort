.class public Lcom/samsung/android/app/music/recommend/SeedDepositories;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/recommend/SeedDepository;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/samsung/android/app/music/recommend/SeedDepository;

.field public static final c:Lcom/samsung/android/app/music/recommend/SeedDepository;

.field public static final d:Lcom/samsung/android/app/music/recommend/SeedDepository;

.field public static final e:Lcom/samsung/android/app/music/recommend/SeedDepository;

.field public static final f:Lcom/samsung/android/app/music/recommend/SeedDepository;

.field public static final g:Lcom/samsung/android/app/music/recommend/SeedDepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/recommend/SeedDepositories;->a:Ljava/util/List;

    .line 17
    sget-object v0, Lcom/samsung/android/app/music/recommend/SeedDepositories;->a:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/app/music/recommend/depository/SeedFavoriteSongs;->c()Lcom/samsung/android/app/music/recommend/depository/SeedFavoriteSongs;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/samsung/android/app/music/recommend/SeedDepositories;->a:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/app/music/recommend/depository/SeedMostPlayedSongs;->c()Lcom/samsung/android/app/music/recommend/depository/SeedMostPlayedSongs;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/samsung/android/app/music/recommend/SeedDepositories;->a:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;->c()Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/recommend/SeedDepositories;->a:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/app/music/recommend/depository/SeedSearchAndClickedSongs;->c()Lcom/samsung/android/app/music/recommend/depository/SeedSearchAndClickedSongs;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/samsung/android/app/music/recommend/SeedDepositories;->a:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;->c()Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/samsung/android/app/music/recommend/SeedDepositories;->a:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;->c()Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-static {}, Lcom/samsung/android/app/music/recommend/depository/SeedMostPlayedSongs;->c()Lcom/samsung/android/app/music/recommend/depository/SeedMostPlayedSongs;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/recommend/SeedDepositories;->b:Lcom/samsung/android/app/music/recommend/SeedDepository;

    .line 27
    invoke-static {}, Lcom/samsung/android/app/music/recommend/depository/SeedFavoriteSongs;->c()Lcom/samsung/android/app/music/recommend/depository/SeedFavoriteSongs;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/recommend/SeedDepositories;->c:Lcom/samsung/android/app/music/recommend/SeedDepository;

    .line 29
    invoke-static {}, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;->c()Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/recommend/SeedDepositories;->d:Lcom/samsung/android/app/music/recommend/SeedDepository;

    .line 31
    invoke-static {}, Lcom/samsung/android/app/music/recommend/depository/SeedSearchAndClickedSongs;->c()Lcom/samsung/android/app/music/recommend/depository/SeedSearchAndClickedSongs;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/recommend/SeedDepositories;->e:Lcom/samsung/android/app/music/recommend/SeedDepository;

    .line 33
    invoke-static {}, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;->c()Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/recommend/SeedDepositories;->f:Lcom/samsung/android/app/music/recommend/SeedDepository;

    .line 35
    invoke-static {}, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;->c()Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/recommend/SeedDepositories;->g:Lcom/samsung/android/app/music/recommend/SeedDepository;

    return-void
.end method
