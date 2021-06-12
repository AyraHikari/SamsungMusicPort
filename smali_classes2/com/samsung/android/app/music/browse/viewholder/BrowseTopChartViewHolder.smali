.class public Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;,
        Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartAdapter;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartAdapter;

.field private final c:Landroid/widget/TextView;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 4

    const/16 v0, -0x3ea

    .line 44
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;-><init>(Landroid/view/View;I)V

    .line 348
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->d:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->a:Landroid/support/v4/app/Fragment;

    .line 46
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 47
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->a:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartAdapter;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartAdapter;

    const v0, 0x7f130164

    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->c:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->c:Landroid/widget/TextView;

    const v1, 0x7f0b00c3

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f130165

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f130150

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 56
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100013

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f10017f

    .line 60
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 61
    new-instance v2, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v1, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v0, p1, v0

    invoke-direct {v2, v3, p1, v0}, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;-><init>(Landroid/graphics/Rect;II)V

    .line 64
    invoke-virtual {p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 65
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartAdapter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->a:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;
    .locals 4

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040037

    const/4 v3, 0x0

    .line 70
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f0b00c3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartAdapter;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartAdapter;Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartAdapter;->notifyDataSetChanged()V

    return-void
.end method
