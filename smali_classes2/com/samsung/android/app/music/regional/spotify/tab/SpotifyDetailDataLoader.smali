.class public Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader;
.super Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;,
        Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;,
        Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader<",
        "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "id"

    .line 51
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "thumb"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "user_id"

    .line 52
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    .line 51
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$1;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V

    return-void
.end method
