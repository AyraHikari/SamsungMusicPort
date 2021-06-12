.class Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrowseSpotLightPagerAdapter"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v4/app/Fragment;

.field private c:Lcom/samsung/android/app/music/browse/data/BrowseData;

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 270
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 266
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->d:Landroid/util/SparseArray;

    .line 268
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->e:Lio/reactivex/disposables/CompositeDisposable;

    .line 271
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->b:Landroid/support/v4/app/Fragment;

    .line 272
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->d:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->b:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->e:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;)Landroid/content/Context;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->e:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->a()V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 376
    instance-of v0, p3, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 377
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 378
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->c:Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 286
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 288
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->b()I

    move-result v1

    const v2, 0x7f0202e5

    const v3, 0x7f1000b6

    const v4, 0x7f13013a

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    .line 355
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type ! "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 290
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v7, 0x7f04001c

    .line 291
    invoke-virtual {v1, v7, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 292
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 293
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 294
    new-instance v5, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->e()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 304
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c()Ljava/lang/String;

    move-result-object v5

    .line 306
    :cond_2
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v3

    .line 307
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    const v2, 0x7f13015f

    .line 309
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 310
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 315
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v7, 0x7f040033

    .line 316
    invoke-virtual {v1, v7, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f130191

    .line 318
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 319
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 320
    new-instance v5, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter$2;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter$2;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v5, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->a:Landroid/content/Context;

    new-instance v7, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    .line 339
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;-><init>(Landroid/net/Uri;)V

    const/high16 v8, 0x41400000    # 12.0f

    new-instance v9, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter$3;

    invoke-direct {v9, p0, v6}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter$3;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;Landroid/widget/ImageView;)V

    .line 338
    invoke-static {v5, v7, v8, v9}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FLkotlin/jvm/functions/Function2;)V

    .line 347
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 348
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v3

    .line 349
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    .line 350
    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    .line 352
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 357
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0xfa1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
