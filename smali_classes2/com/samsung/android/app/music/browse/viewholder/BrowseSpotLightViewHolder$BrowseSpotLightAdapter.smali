.class Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowseSpotLightAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

.field private final b:Landroid/support/v4/app/Fragment;

.field private c:Lcom/samsung/android/app/music/browse/data/BrowseData;

.field private d:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 397
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->d:Lio/reactivex/disposables/CompositeDisposable;

    .line 400
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->b:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$1;)V
    .locals 0

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 0

    .line 391
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->b:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->d:Lio/reactivex/disposables/CompositeDisposable;

    .line 406
    invoke-static {v0, p1, p2, v1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;->a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;ILio/reactivex/disposables/CompositeDisposable;)Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->d:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->a()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->b()I

    move-result p1

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 420
    :cond_1
    check-cast p1, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;

    .line 421
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;->a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 391
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightItemViewHolder;

    move-result-object p1

    return-object p1
.end method
