.class public Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;,
        Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;,
        Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BrowseSpotLightViewHolder"

.field private static k:F = 0.75f


# instance fields
.field private final b:Landroid/support/v4/app/Fragment;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;

.field private h:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;

.field private i:Lcom/samsung/android/app/music/browse/data/BrowseData;

.field private j:Z

.field private l:Lio/reactivex/disposables/CompositeDisposable;

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 5

    const/16 v0, -0x3ec

    .line 79
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;-><init>(Landroid/view/View;I)V

    .line 76
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->l:Lio/reactivex/disposables/CompositeDisposable;

    .line 498
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$5;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->m:Landroid/view/View$OnClickListener;

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->b:Landroid/support/v4/app/Fragment;

    .line 81
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->c:Landroid/content/Context;

    const v0, 0x7f130164

    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->d:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->d:Landroid/widget/TextView;

    const v2, 0x7f0b00bb

    .line 84
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f130165

    .line 86
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->h(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->j:Z

    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->j:Z

    const v1, 0x7f10017f

    const v2, 0x7f100013

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const v0, 0x7f130179

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->e:Landroid/widget/TextView;

    const v0, 0x7f130178

    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->f:Landroid/support/v4/view/ViewPager;

    .line 95
    new-instance p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->g:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->f:Landroid/support/v4/view/ViewPager;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 97
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 96
    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->f:Landroid/support/v4/view/ViewPager;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->g:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->f:Landroid/support/v4/view/ViewPager;

    new-instance p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 126
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 127
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 128
    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 130
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 131
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const v2, 0x7f10017c

    .line 132
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    const v2, 0x7f10017e

    .line 133
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    const v2, 0x7f10017d

    .line 134
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 135
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr v0, p2

    .line 137
    sget-object p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", widthPixels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", endSpace: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_1

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v3, v3, v0, v3}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->f:Landroid/support/v4/view/ViewPager;

    const/4 p2, 0x1

    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$2;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)V

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    goto :goto_0

    .line 167
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->b:Landroid/support/v4/app/Fragment;

    const/4 v4, 0x0

    invoke-direct {p1, p0, v0, v4}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->h:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;

    const p1, 0x7f130150

    .line 168
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 169
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->c:Landroid/content/Context;

    invoke-direct {p2, v0, v3, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 172
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 173
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 174
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 175
    new-instance v1, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v0, p2, v0

    invoke-direct {v1, v2, p2, v0}, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;-><init>(Landroid/graphics/Rect;II)V

    .line 178
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 179
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->h:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->g:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;

    return-object p0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;
    .locals 4

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040032

    const/4 v3, 0x0

    .line 185
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method

.method private a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 254
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->b()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$3;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$4;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xfa1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    return-void
.end method

.method static synthetic b()F
    .locals 1

    .line 50
    sget v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->k:F

    return v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)Lcom/samsung/android/app/music/browse/data/BrowseData;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->i:Lcom/samsung/android/app/music/browse/data/BrowseData;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->b:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->l:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->d:Landroid/widget/TextView;

    const v0, 0x7f0b00bb

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 2

    .line 195
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->i:Lcom/samsung/android/app/music/browse/data/BrowseData;

    .line 196
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->j:Z

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 201
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    .line 202
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->g:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    .line 204
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->g:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->h:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    .line 207
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->h:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public u_()V
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->j:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->g:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->a()V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->h:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->a()V

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->l:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->a()V

    .line 219
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;->u_()V

    return-void
.end method
