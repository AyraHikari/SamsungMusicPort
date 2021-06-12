.class public Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;,
        Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeAdapter;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeAdapter;

.field private final b:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 4

    const/16 v0, -0x3ed

    .line 34
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;-><init>(Landroid/view/View;I)V

    .line 35
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeAdapter;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeAdapter;

    const v1, 0x7f130164

    .line 37
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;->b:Landroid/widget/TextView;

    .line 38
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;->b:Landroid/widget/TextView;

    const v2, 0x7f0b00c1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    .line 39
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;->b:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;->a(Landroid/support/v4/app/Fragment;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f130165

    .line 40
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;->a(Landroid/support/v4/app/Fragment;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x7f130150

    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 45
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100013

    .line 48
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f10017f

    .line 49
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 50
    new-instance v2, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v1, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v0, p2, v0

    invoke-direct {v2, v3, p2, v0}, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;-><init>(Landroid/graphics/Rect;II)V

    .line 53
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 54
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;
    .locals 4

    .line 68
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040015

    const/4 v3, 0x0

    .line 69
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0b00c1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeAdapter;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeAdapter;Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeAdapter;->notifyDataSetChanged()V

    return-void
.end method
