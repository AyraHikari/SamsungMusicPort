.class public Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;,
        Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseAdapter;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseAdapter;

.field private final c:Landroid/widget/TextView;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 4

    const/16 v0, -0x3eb

    .line 37
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;-><init>(Landroid/view/View;I)V

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;->d:Landroid/view/View$OnClickListener;

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;->a:Landroid/support/v4/app/Fragment;

    .line 39
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseAdapter;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseAdapter;

    const v0, 0x7f130164

    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;->c:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;->c:Landroid/widget/TextView;

    const v1, 0x7f0b00b7

    .line 43
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f130165

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f130150

    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 50
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100013

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f10017f

    .line 54
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 55
    new-instance v2, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v1, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v0, p1, v0

    invoke-direct {v2, v3, p1, v0}, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;-><init>(Landroid/graphics/Rect;II)V

    .line 58
    invoke-virtual {p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseAdapter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;->a:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;
    .locals 4

    .line 71
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040015

    const/4 v3, 0x0

    .line 72
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f0b00b7

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseAdapter;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseAdapter;Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
