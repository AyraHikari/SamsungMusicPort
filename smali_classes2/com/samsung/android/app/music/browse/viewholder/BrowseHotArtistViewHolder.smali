.class public Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder;,
        Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;

.field private final b:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 6

    const/16 v0, -0x3ee

    .line 34
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;-><init>(Landroid/view/View;I)V

    .line 35
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;

    const v1, 0x7f130164

    .line 37
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;->b:Landroid/widget/TextView;

    .line 38
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;->b:Landroid/widget/TextView;

    const v2, 0x7f0b00b2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    .line 39
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;->b:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;->a(Landroid/support/v4/app/Fragment;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f130165

    .line 40
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;->a(Landroid/support/v4/app/Fragment;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f130150

    .line 44
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 45
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100013

    .line 48
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v4, 0x7f10017f

    .line 49
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 50
    new-instance v4, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3, v3, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v2, v0, v2

    invoke-direct {v4, v5, v0, v2}, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;-><init>(Landroid/graphics/Rect;II)V

    .line 53
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const v0, 0x7f13014e

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10035e

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 141
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;
    .locals 4

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040015

    const/4 v3, 0x0

    .line 65
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0b00b2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistAdapter;->notifyDataSetChanged()V

    return-void
.end method
