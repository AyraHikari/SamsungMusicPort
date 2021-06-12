.class public Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/BrowseLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityRequesterFactory"
.end annotation


# static fields
.field private static a:Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 460
    new-instance v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;->a:Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;
    .locals 1

    .line 467
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;->a:Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;
    .locals 1

    .line 471
    new-instance v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;-><init>()V

    return-object v0
.end method

.method public c()Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;
    .locals 1

    .line 475
    new-instance v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;-><init>()V

    return-object v0
.end method
