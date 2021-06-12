.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpotifyPlaylistViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private final c:Landroid/widget/TextView;

.field private d:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 575
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 576
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a:Landroid/content/Context;

    const v0, 0x7f13013a

    .line 577
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->b:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 578
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->b:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setClipToOutline(Z)V

    const v0, 0x7f13015f

    .line 579
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->c:Landroid/widget/TextView;

    .line 580
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->b:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->d:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;
    .locals 0

    .line 556
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->b(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;Ljava/lang/String;)V
    .locals 2

    .line 611
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->d:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    .line 612
    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->e:Ljava/lang/String;

    .line 613
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->d:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 614
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->b:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    sget p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->a:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageResource(I)V

    goto :goto_0

    .line 616
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->b:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->d:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getImages()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;->getUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->a:I

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->a(Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 620
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->d:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;Ljava/lang/String;)V
    .locals 0

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;)Landroid/content/Context;
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a:Landroid/content/Context;

    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;
    .locals 2

    const v0, 0x7f0400f8

    const/4 v1, 0x0

    .line 570
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 571
    new-instance p2, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p2
.end method
