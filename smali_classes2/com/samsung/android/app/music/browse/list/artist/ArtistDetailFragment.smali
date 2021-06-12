.class public Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/browse/list/PlaylistAdGetter;
.implements Lcom/samsung/android/app/music/browse/list/PlaylistNameGetter;
.implements Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$DataLoaderCallback;
.implements Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/support/design/widget/AppBarLayout;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/FrameLayout;

.field private n:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

.field private q:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

.field private r:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;
    .locals 1

    .line 104
    new-instance v0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;-><init>()V

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->c:Ljava/lang/String;

    return-object p0
.end method

.method private a(II)V
    .locals 0

    const/4 p1, 0x0

    .line 243
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->n:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f1301b8

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v1, 0x7f04003a

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    const v1, 0x7f1301b3

    .line 177
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->k:Landroid/widget/ImageView;

    .line 178
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->k:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f13019f

    .line 179
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->l:Landroid/widget/ImageView;

    const v1, 0x7f130143

    .line 180
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->m:Landroid/widget/FrameLayout;

    const v1, 0x7f1301b4

    .line 181
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->i:Landroid/widget/TextView;

    .line 182
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->j:Landroid/view/View;

    const v0, 0x7f1301a1

    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->h:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->b(Landroid/view/View;)V

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    new-instance p1, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->e:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/support/design/widget/AppBarLayout;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->r:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    .line 191
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->r:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    new-instance v0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/model/base/ArtistInfoModel;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p1, "ArtistDetailFragment"

    const-string v0, "item is null"

    .line 259
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getArtistName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->d:Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->q:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    if-eqz v0, :cond_4

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->q:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    const-string v0, ""

    .line 269
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getGenre()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 271
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getGenre()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 273
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getCategory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 281
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->q:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->o:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00c4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->q:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a:Landroid/content/Context;

    const v4, 0x7f0f00be

    .line 291
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 290
    invoke-static {v0, v3}, Lcom/samsung/android/app/music/util/UiUtils;->a(Lcom/samsung/android/app/musiclibrary/ui/AppBar;I)V

    .line 293
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->c:Ljava/lang/String;

    const v0, 0x7f100086

    .line 294
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->k:Landroid/widget/ImageView;

    const v4, 0x7f0202e5

    .line 295
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->l:Landroid/widget/ImageView;

    const v3, 0x7f02027e

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 300
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->c:Ljava/lang/String;

    .line 301
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;-><init>(Landroid/net/Uri;)V

    const/high16 v4, 0x41400000    # 12.0f

    new-instance v6, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;)V

    .line 300
    invoke-static {v0, v3, v4, v6}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FLkotlin/jvm/functions/Function2;)V

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->j:Landroid/view/View;

    const v3, 0x7f13019c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 322
    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->j:Landroid/view/View;

    const v4, 0x7f13019d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 323
    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->j:Landroid/view/View;

    const v6, 0x7f130192

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f00c3

    invoke-static {v6, v7, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 326
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getGenre()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 328
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getGenre()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 332
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 334
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 335
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 336
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getCategory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    :cond_8
    if-eqz v0, :cond_9

    .line 341
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->j:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->m:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 349
    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 350
    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 351
    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorB:I

    aput p1, v0, v1

    .line 352
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/16 v0, 0x7f

    .line 353
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->l:Landroid/widget/ImageView;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    .line 358
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->d(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->f(Landroid/app/Activity;)I

    move-result v0

    .line 362
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->e:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 363
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 364
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 365
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_0
    const v0, 0x7f1301b2

    .line 369
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 370
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 373
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->i:Landroid/widget/TextView;

    .line 374
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 375
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 377
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    return-void
.end method

.method private b()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->e:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->q:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->q:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->q:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->f()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->q:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040261

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    const v2, 0x7f130575

    .line 208
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->o:Landroid/widget/TextView;

    .line 209
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->f:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->f:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 217
    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/model/AdInfo;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->n:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->n:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getAd()Lcom/samsung/android/app/music/model/AdInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->r:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->r:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/model/contents/ArtistDetailModel;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/ArtistDetailModel;->getArtistInfo()Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->n:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    .line 227
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->n:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a(Lcom/samsung/android/app/music/model/base/ArtistInfoModel;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    const/4 v0, -0x1

    .line 229
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a(II)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 235
    instance-of p1, p1, Ljava/net/ConnectException;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    const/4 v0, -0x1

    .line 238
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a(II)V

    :goto_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->r:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->r:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->n:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    if-nez v0, :cond_0

    const-string p1, "ArtistDetailFragment"

    const-string v0, "item is null"

    .line 385
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 388
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1301b3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 390
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->n:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getClkImageUrlList()Ljava/util/List;

    move-result-object p1

    const v0, 0x7f0b049a

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->n:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getClkImageUrlList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 394
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->n:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getClkImageUrlList()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/content/Context;Ljava/util/List;I)V

    goto :goto_1

    .line 391
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->n:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getClkImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 113
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f04003b

    const/4 p3, 0x0

    .line 121
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 125
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroyView()V

    .line 126
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    return-void
.end method

.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 412
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 413
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->k:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .line 403
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a:Landroid/content/Context;

    const v1, 0x7f0f00be

    .line 406
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 405
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/support/v7/view/ActionMode;I)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->r:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->r:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 131
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a:Landroid/content/Context;

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "extra_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->b:Ljava/lang/String;

    .line 137
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 139
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->q:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/util/UiUtils;->c(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->f:Landroid/view/View;

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->d()V

    const p2, 0x7f1301a0

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->g:Landroid/view/View;

    const p2, 0x7f130136

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->e:Landroid/support/design/widget/AppBarLayout;

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 146
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->g:Landroid/view/View;

    check-cast p2, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100008

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 146
    invoke-virtual {p2, v0}, Landroid/support/constraint/ConstraintLayout;->setMinHeight(I)V

    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a(Landroid/view/View;)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "tab"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    .line 152
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    if-nez p1, :cond_1

    .line 153
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f1301a1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->p:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    const-string v1, "tab"

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public t_()V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->r:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->r:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method
