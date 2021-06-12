.class Lcom/samsung/android/app/music/service/observer/abstraction/FavoriteTrackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;


# static fields
.field private static final a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;


# instance fields
.field private b:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/samsung/android/app/music/service/observer/abstraction/FavoriteTrackImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/observer/abstraction/FavoriteTrackImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/observer/abstraction/FavoriteTrackImpl;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;
    .locals 1

    .line 15
    sget-object v0, Lcom/samsung/android/app/music/service/observer/abstraction/FavoriteTrackImpl;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;

    return-object v0
.end method


# virtual methods
.method public isFavorite(Landroid/content/Context;JZ)Z
    .locals 0

    .line 23
    iget-object p4, p0, Lcom/samsung/android/app/music/service/observer/abstraction/FavoriteTrackImpl;->b:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    if-nez p4, :cond_0

    .line 24
    new-instance p4, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    invoke-direct {p4, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/samsung/android/app/music/service/observer/abstraction/FavoriteTrackImpl;->b:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/abstraction/FavoriteTrackImpl;->b:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavoriteTrack(J)Z

    move-result p1

    return p1
.end method
