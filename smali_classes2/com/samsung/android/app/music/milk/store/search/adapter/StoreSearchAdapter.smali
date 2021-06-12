.class public Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;
.super Lcom/samsung/android/app/music/search/SearchableAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;,
        Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/search/SearchableAdapter<",
        "Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field private b:Z

.field private c:Z

.field private d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private e:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

.field private f:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/samsung/android/app/music/milk/store/widget/OnLoadMoreListener;

.field private i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private j:Z

.field private k:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;)V
    .locals 2

    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;-><init>(Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;)V

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->f:I

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->g:Z

    .line 368
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->j:Z

    .line 370
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a:Landroid/os/Handler;

    .line 383
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->k:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 80
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->b:Z

    .line 81
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->c:Z

    .line 82
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->c(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 83
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->d(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->e:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;II)V
    .locals 5

    .line 323
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->e(I)I

    move-result v0

    const/16 v1, 0x19

    if-eq p2, v1, :cond_0

    const/16 v2, 0x1c

    if-eq p2, v2, :cond_0

    const/16 v2, 0x1b

    if-ne p2, v2, :cond_4

    :cond_0
    const/4 v2, 0x1

    .line 327
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->fragment:Landroid/support/v4/app/Fragment;

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 329
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    .line 330
    instance-of v4, v3, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v4, :cond_1

    .line 331
    check-cast v3, Landroid/support/v7/widget/GridLayoutManager;

    .line 332
    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    .line 333
    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    div-int/2addr v2, v3

    :cond_1
    add-int/2addr v0, v2

    if-le v0, p3, :cond_3

    .line 337
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->a:Landroid/support/constraint/Guideline;

    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-ne p2, v1, :cond_2

    const p2, 0x7f1006d5

    goto :goto_0

    :cond_2
    const p2, 0x7f1006d6

    .line 338
    :goto_0
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 337
    invoke-virtual {p1, p2}, Landroid/support/constraint/Guideline;->setGuidelineBegin(I)V

    goto :goto_1

    .line 342
    :cond_3
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->a:Landroid/support/constraint/Guideline;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/constraint/Guideline;->setGuidelineBegin(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->e:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-object p0
.end method

.method private d(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;I)V
    .locals 2

    .line 310
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->h(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;

    .line 311
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->c(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    .line 313
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getPartialLyrics()Ljava/lang/String;

    move-result-object p2

    .line 314
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 316
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 317
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->isActionModeEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private d(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->e:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_0

    .line 276
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->h(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/model/base/TrackModel;

    goto :goto_0

    .line 278
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->h(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/model/milksearch/SearchTrack;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchTrack;->getSimpleTrack()Lcom/samsung/android/app/music/model/base/TrackModel;

    move-result-object p2

    .line 280
    :goto_0
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    if-eqz v0, :cond_4

    .line 281
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    .line 282
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/base/TrackModel;->isExplicit()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 284
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 286
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 290
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->isActionModeEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->c:Z

    return p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method

.method private e(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V
    .locals 1

    .line 296
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->h(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;

    .line 297
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    if-eqz v0, :cond_1

    .line 298
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    .line 299
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->isExplicit()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 301
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private g()I
    .locals 1

    .line 399
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private h(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;
    .locals 1

    .line 262
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    .line 263
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    if-eqz v0, :cond_0

    .line 265
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    .line 266
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b()Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    return-object p1

    .line 269
    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)I
    .locals 1

    .line 202
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->d(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x15

    return p1

    :cond_0
    const-string v0, "2"

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x16

    return p1

    :cond_1
    const-string v0, "3"

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x17

    return p1

    :cond_2
    const-string v0, "5"

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x1c

    return p1

    :cond_3
    const-string v0, "6"

    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x19

    return p1

    :cond_4
    const-string v0, "7"

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0x1a

    return p1

    :cond_5
    const-string v0, "9"

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x1b

    return p1

    :cond_6
    const/4 p1, -0x1

    return p1
.end method

.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;
    .locals 2

    if-nez p3, :cond_8

    const p3, 0x7f0400eb

    .line 91
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 92
    iget p3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->f:I

    goto :goto_1

    :cond_0
    const/16 v0, 0x19

    if-ne p2, v0, :cond_1

    const p3, 0x7f0400b8

    goto :goto_1

    :cond_1
    const/16 v0, 0x1c

    if-eq p2, v0, :cond_6

    const/16 v0, 0x1b

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_3

    const p3, 0x7f0400ef

    goto :goto_1

    :cond_3
    const/16 v0, -0x64

    if-ne p2, v0, :cond_4

    const p3, 0x7f0400f3

    goto :goto_1

    :cond_4
    const/16 v0, -0xc8

    if-ne p2, v0, :cond_5

    const p3, 0x7f0400f0

    goto :goto_1

    :cond_5
    const/16 v0, -0x3eb

    if-ne p2, v0, :cond_7

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->b()I

    move-result p3

    goto :goto_1

    :cond_6
    :goto_0
    const p3, 0x7f0400b9

    .line 107
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, p3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 110
    :cond_8
    new-instance p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method protected a(ILandroid/database/Cursor;)Ljava/lang/String;
    .locals 7

    .line 224
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 225
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const v1, 0x7f0b02fb

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "%s (%s)"

    .line 240
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    int-to-long v5, p2

    .line 241
    invoke-virtual {v0, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v2

    .line 240
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "%s (%s)"

    .line 254
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    int-to-long v5, p2

    .line 255
    invoke-virtual {v0, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v2

    .line 254
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "%s (%s)"

    .line 244
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0b0228

    .line 245
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    int-to-long v3, p2

    .line 246
    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    .line 244
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    const-string p1, "%s (%s)"

    .line 249
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0b0229

    .line 250
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    int-to-long v3, p2

    .line 251
    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    .line 249
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    const-string p1, "%s (%s)"

    .line 228
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0b0091

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    int-to-long v3, p2

    .line 229
    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    .line 228
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    const-string p1, "%s (%s)"

    .line 232
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0b0082

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    int-to-long v3, p2

    .line 233
    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    .line 232
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    const-string p1, "%s (%s)"

    .line 236
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0b03da

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    int-to-long v3, p2

    .line 237
    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    .line 236
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;I)V
    .locals 3

    .line 135
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getItemViewType(I)I

    move-result v0

    .line 136
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V

    if-lez v0, :cond_5

    .line 138
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->h(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object v1

    .line 140
    instance-of v1, v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2$FakeItem;

    if-eqz v1, :cond_0

    .line 141
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 144
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->d(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x19

    if-ne v0, v1, :cond_2

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->e(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V

    .line 149
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;II)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_3

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->d(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x1c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_7

    .line 154
    :cond_4
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;II)V

    goto :goto_0

    :cond_5
    const/16 v1, -0x64

    if-ne v0, v1, :cond_6

    .line 158
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p2

    .line 159
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Landroid/database/Cursor;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const/16 v1, -0xc8

    if-ne v0, v1, :cond_7

    .line 161
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f130062

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->d(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/widget/OnLoadMoreListener;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->h:Lcom/samsung/android/app/music/milk/store/widget/OnLoadMoreListener;

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V
    .locals 0

    .line 54
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1

    .line 394
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 395
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->k:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V
    .locals 4

    const-string v0, "StoreSearchAdapter"

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchScrollStateChanged : newState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StoreSearchAdapter"

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchScrollStateChanged : isEnableLoadMore - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 448
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 449
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 450
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const-string v1, "StoreSearchAdapter"

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateChanged : newState - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", count - "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", lastVisible - "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->d(I)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 3

    const-string v0, "StoreSearchAdapter"

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLoadMore : enable - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 413
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->b(Z)V

    .line 415
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->g:Z

    .line 416
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->g:Z

    return v0
.end method

.method protected b()I
    .locals 1

    const v0, 0x7f0400e0

    return v0
.end method

.method protected b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;I)V
    .locals 2

    .line 168
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    const v0, 0x7f100086

    .line 169
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    const-string v1, "image_url"

    .line 170
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p2

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    const v0, 0x7f0202e5

    .line 171
    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    const-string v0, "StoreSearchAdapter"

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRefreshing : refreshing - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->j:Z

    .line 422
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 353
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->f:I

    return-void
.end method

.method protected c(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;I)V
    .locals 8

    .line 176
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->c()Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    .line 179
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Landroid/database/Cursor;)I

    move-result v2

    const/16 v3, 0x1a

    const/16 v4, 0x19

    const/16 v5, 0x15

    const/16 v6, 0x16

    const/16 v7, 0x17

    if-ne v2, v7, :cond_0

    .line 181
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v7, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    if-ne v2, v6, :cond_1

    .line 183
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v7, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->b(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-eq v2, v5, :cond_3

    const/16 v7, 0x1c

    if-eq v2, v7, :cond_3

    const/16 v7, 0x1b

    if-eq v2, v7, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_4

    .line 188
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 186
    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 191
    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    if-eq v2, v6, :cond_6

    if-eq v2, v4, :cond_6

    if-ne v2, v3, :cond_5

    goto :goto_2

    :cond_5
    if-ne v2, v5, :cond_7

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->b(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 194
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public d(I)V
    .locals 4

    .line 426
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "StoreSearchAdapter"

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchScroll : itemCount - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", position - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", loading - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v0, -0xf

    if-le p1, v1, :cond_1

    .line 432
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->j:Z

    if-nez v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->h:Lcom/samsung/android/app/music/milk/store/widget/OnLoadMoreListener;

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->h:Lcom/samsung/android/app/music/milk/store/widget/OnLoadMoreListener;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/OnLoadMoreListener;->a(II)V

    :cond_1
    return-void
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->g()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/16 p1, -0x3eb

    return p1

    .line 121
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 123
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Landroid/database/Cursor;)I

    move-result p1

    return p1

    :cond_1
    const/4 v1, -0x5

    if-ne v0, v1, :cond_2

    return v0

    :cond_2
    int-to-long v0, v0

    .line 128
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->d(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 54
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 54
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;I)V

    return-void
.end method

.method protected synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 54
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->c(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;I)V

    return-void
.end method

.method protected synthetic onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 54
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
