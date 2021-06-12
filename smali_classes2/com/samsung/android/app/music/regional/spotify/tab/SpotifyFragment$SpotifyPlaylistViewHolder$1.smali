.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;Landroid/content/Context;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 583
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getUri()Ljava/lang/String;

    move-result-object p1

    .line 584
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spotify_tab_content"

    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    .line 591
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->b(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 594
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 597
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getOwner()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyOwner;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getOwner()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyOwner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyOwner;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 599
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    .line 600
    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->b(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    invoke-static {v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    invoke-static {v2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    .line 601
    invoke-static {v3}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getImages()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    invoke-static {v4}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    .line 602
    invoke-static {v5}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getArtistList()Ljava/util/List;

    move-result-object v6

    move-object v5, p1

    .line 600
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailActivity$SpotifyListDetailActivityLauncher;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 603
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    invoke-static {v2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;->b:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    invoke-static {v2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
