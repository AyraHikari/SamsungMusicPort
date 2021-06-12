.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpotifyPlaylistAdapter"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 516
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 517
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$1;)V
    .locals 0

    .line 510
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;->b:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;)V
    .locals 0

    .line 510
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;->b:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;->getContent()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistPaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistPaging;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;->b:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;

    if-nez v0, :cond_0

    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;->b:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;->getContent()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistPaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistPaging;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 537
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    if-nez p2, :cond_2

    return-void

    .line 542
    :cond_2
    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    .line 543
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;->b:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 522
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;->a:Landroid/content/Context;

    .line 523
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;->a(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;

    move-result-object p1

    return-object p1
.end method
