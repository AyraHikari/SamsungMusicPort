.class Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowseHotArtistAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;

.field private final b:Landroid/support/v4/app/Fragment;

.field private c:Lcom/samsung/android/app/music/browse/data/BrowseData;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;->b:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$1;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;->a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 105
    :cond_1
    check-cast p1, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder;

    .line 106
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder;->a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 91
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;->b:Landroid/support/v4/app/Fragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder;->a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder;

    move-result-object p1

    return-object p1
.end method
