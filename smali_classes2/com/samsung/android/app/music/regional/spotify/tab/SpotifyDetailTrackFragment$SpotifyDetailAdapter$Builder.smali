.class public Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;
.super Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 314
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method a(Z)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;
    .locals 0

    .line 327
    iput-boolean p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->b:Z

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->a()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;
    .locals 1

    .line 338
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;)V

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->b()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/String;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->a:Ljava/lang/String;

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->a()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;->a()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
