.class public Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;,
        Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouAdapter;,
        Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BrowseJustForYouViewHolder"


# instance fields
.field private final b:Landroid/support/v4/app/Fragment;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/widget/TextView;

.field private e:Lcom/samsung/android/app/music/browse/util/EllipsizeController;

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;

.field private h:Lcom/samsung/android/app/music/browse/data/BrowseData;

.field private i:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouAdapter;

.field private j:Z

.field private k:Z

.field private l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 5

    const/16 v0, -0x3e9

    .line 90
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;-><init>(Landroid/view/View;I)V

    .line 432
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$5;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b:Landroid/support/v4/app/Fragment;

    .line 92
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->c:Landroid/content/Context;

    const v0, 0x7f130164

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->d:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->h(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->j:Z

    .line 96
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->j:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f130179

    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 98
    new-instance v1, Lcom/samsung/android/app/music/browse/util/EllipsizeController;

    const v2, 0x7f13015f

    .line 99
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f13006c

    .line 100
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->e:Lcom/samsung/android/app/music/browse/util/EllipsizeController;

    .line 101
    new-instance p1, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b:Landroid/support/v4/app/Fragment;

    invoke-direct {p1, v1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->g:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;

    const p1, 0x7f130178

    .line 102
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->f:Landroid/support/v4/view/ViewPager;

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->f:Landroid/support/v4/view/ViewPager;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f100370

    .line 104
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 103
    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->f:Landroid/support/v4/view/ViewPager;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->g:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 107
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 108
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100012

    .line 112
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    .line 113
    sget-object v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "density: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", widthPixels: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", horizontalSpace: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p2, 0x1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, p1, v0, p1, v0}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 116
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->f:Landroid/support/v4/view/ViewPager;

    new-instance p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 133
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->k:Z

    goto :goto_0

    .line 135
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouAdapter;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->i:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouAdapter;

    const p1, 0x7f130150

    .line 136
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 137
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->c:Landroid/content/Context;

    invoke-direct {p2, v1, v0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 140
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f100013

    .line 141
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f10017f

    .line 142
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 143
    new-instance v3, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v0, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v0, p2, v1

    invoke-direct {v3, v4, p2, v0}, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;-><init>(Landroid/graphics/Rect;II)V

    .line 146
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 147
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->i:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 148
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b:Landroid/support/v4/app/Fragment;

    check-cast p1, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;
    .locals 4

    .line 153
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040024

    const/4 v3, 0x0

    .line 154
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->c(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 6

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->h:Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 328
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->b()I

    move-result v2

    .line 330
    sget-object v3, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageSelected position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", text: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", type: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->e:Lcom/samsung/android/app/music/browse/util/EllipsizeController;

    .line 333
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 332
    :goto_0
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a(Landroid/text/TextUtils$TruncateAt;)V

    const/16 p1, -0x7d0

    if-ne v2, p1, :cond_1

    .line 336
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0b00c5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->e:Lcom/samsung/android/app/music/browse/util/EllipsizeController;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a(Ljava/lang/String;)V

    .line 340
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a(I)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 379
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 384
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    goto/16 :goto_0

    .line 404
    :cond_1
    new-instance v5, Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

    new-instance v1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    .line 405
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 406
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x3

    .line 407
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-direct {v5, v1}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;-><init>(Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;)V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b:Landroid/support/v4/app/Fragment;

    .line 409
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/16 v6, 0xc8

    const/high16 v7, 0x41c80000    # 25.0f

    const/high16 v8, 0x41000000    # 8.0f

    new-instance v9, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$4;

    invoke-direct {v9, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$4;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;Ljava/util/List;)V

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;->a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;IFFLkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 386
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    .line 388
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;-><init>(Landroid/net/Uri;)V

    const/high16 v2, 0x41900000    # 18.0f

    new-instance v3, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$3;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)V

    .line 387
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FLkotlin/jvm/functions/Function2;)V

    .line 398
    sget-object v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TintColorCache call uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->c:Landroid/content/Context;

    .line 400
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const v2, 0x7f100087

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;)V

    :goto_0
    return-void

    .line 380
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b:Landroid/support/v4/app/Fragment;

    check-cast p1, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->d:Landroid/widget/TextView;

    const v1, 0x7f0b04bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$2;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    return-void
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 604
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 605
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    if-eqz v0, :cond_4

    .line 345
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 348
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b:Landroid/support/v4/app/Fragment;

    check-cast p1, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 351
    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c()Ljava/lang/String;

    move-result-object p1

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a(Ljava/util/List;)V

    goto :goto_1

    .line 357
    :pswitch_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "4"

    .line 358
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 359
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->k()Ljava/util/List;

    move-result-object p1

    .line 360
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 361
    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 363
    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_0

    .line 366
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->c(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x7d2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method private static c(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)Ljava/lang/String;
    .locals 2

    .line 582
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->k()Ljava/util/List;

    move-result-object v0

    .line 583
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 584
    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 589
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->d(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;

    return-object p0
.end method

.method private static d(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)Ljava/lang/String;
    .locals 1

    .line 593
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->k()Ljava/util/List;

    move-result-object p0

    .line 594
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 595
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->b()V

    .line 164
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->j:Z

    if-eqz v0, :cond_1

    .line 165
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->h:Lcom/samsung/android/app/music/browse/data/BrowseData;

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->g:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    .line 167
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->g:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;->notifyDataSetChanged()V

    .line 168
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->k:Z

    if-nez p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->f:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 170
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a(I)V

    .line 171
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->k:Z

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a(I)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->i:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouAdapter;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouAdapter;Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    .line 177
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->i:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
