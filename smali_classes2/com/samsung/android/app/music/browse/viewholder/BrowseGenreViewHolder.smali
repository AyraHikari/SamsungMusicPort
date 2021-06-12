.class public Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder;,
        Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;

.field private final c:Landroid/widget/TextView;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 6

    const/16 v0, -0x3ef

    .line 38
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;-><init>(Landroid/view/View;I)V

    .line 142
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->d:Landroid/view/View$OnClickListener;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->a:Landroid/support/v4/app/Fragment;

    .line 40
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;

    const v1, 0x7f130164

    .line 42
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->c:Landroid/widget/TextView;

    .line 43
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->c:Landroid/widget/TextView;

    const v2, 0x7f0b00b1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    .line 44
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f130165

    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 47
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f130150

    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 50
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100013

    .line 53
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v4, 0x7f10017f

    .line 54
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 55
    new-instance v4, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3, v3, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v2, v0, v2

    invoke-direct {v4, v5, v0, v2}, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;-><init>(Landroid/graphics/Rect;II)V

    .line 58
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const v0, 0x7f13014e

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10035d

    .line 64
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->a:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;
    .locals 4

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040015

    const/4 v3, 0x0

    .line 70
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f0b00b1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->f(Landroid/content/Context;)Lcom/samsung/android/app/music/browse/data/BrowseData;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreAdapter;->notifyDataSetChanged()V

    return-void
.end method
