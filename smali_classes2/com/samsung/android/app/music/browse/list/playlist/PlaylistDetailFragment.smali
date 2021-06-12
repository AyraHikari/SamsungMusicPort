.class public Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;
.implements Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback<",
        "Lcom/samsung/android/app/music/model/base/ServerResponse;",
        ">;",
        "Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;",
        "Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Landroid/support/design/widget/AppBarLayout;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;

.field private u:Lcom/samsung/android/app/music/model/base/PlayListModel;

.field private v:Lcom/samsung/android/app/musiclibrary/ui/Refreshable;

.field private w:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

.field private x:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

.field private y:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;

.field private z:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 128
    new-instance v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->z:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;
    .locals 1

    .line 137
    new-instance v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;-><init>()V

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f1301b8

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v1, 0x7f04003a

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    const v1, 0x7f13018d

    .line 209
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->r:Landroid/view/View;

    .line 210
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->r:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    const v1, 0x7f13017f

    .line 211
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->n:Landroid/widget/ImageView;

    const v1, 0x7f1301b3

    .line 212
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->o:Landroid/widget/ImageView;

    const v1, 0x7f13019f

    .line 213
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->p:Landroid/widget/ImageView;

    const v1, 0x7f13015e

    .line 214
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->q:Landroid/widget/ImageView;

    const v1, 0x7f1301b4

    .line 215
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->k:Landroid/widget/TextView;

    .line 216
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->l:Landroid/view/View;

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->l:Landroid/view/View;

    const v1, 0x7f13019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->m:Landroid/widget/TextView;

    const v0, 0x7f1301a1

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->j:Landroid/view/View;

    .line 220
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->r:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->g()V

    .line 225
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->b()V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "PlaylistDetailFragment"

    const-string p2, "loadThumbnail. view is null"

    .line 480
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 483
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f100086

    .line 484
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p2

    const v0, 0x7f0202e5

    .line 485
    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 415
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->i()V

    .line 416
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->j()V

    .line 418
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->k()V

    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a(Ljava/lang/String;)V

    .line 420
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->b(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)V

    .line 421
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->g:Z

    if-eqz p1, :cond_2

    .line 422
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->q:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 542
    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 543
    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 544
    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorB:I

    aput p1, v0, v1

    .line 545
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/16 v0, 0x7f

    .line 546
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 547
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/ui/Refreshable;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->v:Lcom/samsung/android/app/musiclibrary/ui/Refreshable;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 468
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->g:Z

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->o:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->r:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 472
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)Z

    goto :goto_0

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->n:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->f()Z

    move-result p0

    return p0
.end method

.method private a(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_3

    .line 578
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 587
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImgList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x258

    const/16 v6, 0xc8

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 589
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    :goto_2
    const-string p1, "PlaylistDetailFragment"

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image is null or size is less than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->p:Landroid/widget/ImageView;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PlaylistDetailFragment"

    const-string v1, "initScrollVi. appBarLayout is null"

    .line 230
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->h:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/support/design/widget/AppBarLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->y:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->y:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    .line 239
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->g:Z

    if-eqz v0, :cond_3

    .line 240
    new-instance v0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->y:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;

    goto :goto_0

    .line 242
    :cond_3
    new-instance v0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->y:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->y:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    return-void
.end method

.method private b(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)V
    .locals 7

    .line 551
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1301b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 552
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1301ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 553
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1301bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 554
    iget-boolean v3, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->f:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 555
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0b00c4

    const/4 v5, 0x1

    .line 556
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a:Landroid/content/Context;

    .line 557
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getServerResponseTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v4

    .line 556
    invoke-virtual {p0, v3, v5}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f020287

    .line 558
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 559
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v3, 0x7f1301bb

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 560
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 561
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->hasRelatedVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 562
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0b00b9

    .line 563
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f020286

    .line 564
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 567
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->g:Z

    if-eqz p1, :cond_2

    .line 569
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0f00c3

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 570
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 571
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/support/v4/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 573
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 509
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->p:Landroid/widget/ImageView;

    const v0, 0x7f02027e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->p:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->z:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a()V

    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    .line 516
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;-><init>(Landroid/net/Uri;)V

    const/high16 v2, 0x41400000    # 12.0f

    new-instance v3, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2;-><init>(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;Ljava/lang/String;)V

    .line 515
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;)Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->z:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->w:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->w:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->w:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->d()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->w:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040261

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    const v2, 0x7f130575

    .line 260
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->s:Landroid/widget/TextView;

    .line 264
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private e()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->h:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()V
    .locals 3

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->d(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->f(Landroid/app/Activity;)I

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->h:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 290
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 291
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 292
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method

.method private h()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getArtistImageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getArtistImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/ImageListModel;

    if-eqz v2, :cond_0

    .line 373
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/ImageListModel;->getImageList()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x258

    const/16 v4, 0xc8

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 376
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private i()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->d:Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->e:Ljava/lang/String;

    .line 430
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->w:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->w:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->w:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->g:Z

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f02033d

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->k:Landroid/widget/TextView;

    .line 444
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00c4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 443
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->w:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a:Landroid/content/Context;

    const v2, 0x7f0f00be

    .line 446
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 445
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/UiUtils;->a(Lcom/samsung/android/app/musiclibrary/ui/AppBar;I)V

    :cond_2
    return-void
.end method

.method private j()V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->e:Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->g:Z

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00c3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 463
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private k()V
    .locals 4

    .line 489
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 493
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->g:Z

    const/16 v1, 0x258

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getArtistImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getArtistImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 495
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 496
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getArtistImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/base/ImageListModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/ImageListModel;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c:Ljava/lang/String;

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 502
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Lcom/samsung/android/app/music/model/base/ServerResponse;)V
    .locals 1

    .line 391
    instance-of p1, p2, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;

    if-eqz p1, :cond_1

    .line 392
    check-cast p2, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;

    .line 393
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 395
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getArtistId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 396
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->g:Z

    if-eq v0, p1, :cond_0

    .line 397
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->g:Z

    .line 398
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->b()V

    .line 401
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)V

    .line 402
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->z:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->b()V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p2, Lcom/samsung/android/app/music/model/base/ServerResponse;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Lcom/samsung/android/app/music/model/base/ServerResponse;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Ljava/lang/Throwable;)V
    .locals 0

    .line 386
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->z:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->b()V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0499

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 355
    :sswitch_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->f:Z

    if-eqz p1, :cond_1

    .line 356
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->v:Lcom/samsung/android/app/musiclibrary/ui/Refreshable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/Refreshable;->c()V

    goto/16 :goto_1

    .line 357
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->hasRelatedVideo()Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x50

    .line 358
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->b:Ljava/lang/String;

    .line 359
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 360
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 361
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    .line 362
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/FragmentManager;)V

    goto/16 :goto_1

    .line 347
    :sswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getArtistId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const/16 p1, 0x6e

    .line 348
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 349
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 350
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/FragmentManager;)V

    goto/16 :goto_1

    .line 339
    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->h()Ljava/util/List;

    move-result-object p1

    .line 340
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a:Landroid/content/Context;

    const v1, 0x7f0b049a

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/content/Context;Ljava/util/List;I)V

    goto :goto_1

    .line 343
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 313
    :sswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object p1

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x4

    .line 316
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 317
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 321
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImgList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x258

    const/16 v6, 0xc8

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 324
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/base/TrackModel;->getLargeSizeImageUrl()Ljava/lang/String;

    move-result-object v4

    .line 326
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 327
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    .line 329
    :cond_5
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 331
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a:Landroid/content/Context;

    const/4 v2, 0x1

    .line 332
    invoke-static {p1, v1, v0, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/content/Context;Ljava/util/List;IZ)V

    goto :goto_1

    .line 335
    :sswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c:Ljava/lang/String;

    .line 336
    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_7
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f13017f -> :sswitch_4
        0x7f13018d -> :sswitch_3
        0x7f1301b3 -> :sswitch_2
        0x7f1301b4 -> :sswitch_1
        0x7f1301b9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 147
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->setHasOptionsMenu(Z)V

    .line 148
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->z:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f04003b

    const/4 p3, 0x0

    .line 155
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 159
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroyView()V

    .line 160
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    return-void
.end method

.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .line 615
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 616
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->n:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 617
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->r:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 618
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 619
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 620
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->i:Landroid/view/View;

    const v1, 0x7f1301b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 3

    .line 600
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->n:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 602
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 603
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 604
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 605
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->i:Landroid/view/View;

    const v2, 0x7f1301b9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 606
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->g:Z

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a:Landroid/content/Context;

    const v1, 0x7f0f00be

    .line 608
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 607
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/support/v7/view/ActionMode;I)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 299
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 300
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f130136

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->h:Landroid/support/design/widget/AppBarLayout;

    const v0, 0x7f1301a0

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->i:Landroid/view/View;

    .line 169
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a:Landroid/content/Context;

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "extra_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->b:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "extra_title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->d:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "extra_thumbnail"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "extra_show_blur_background"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->g:Z

    .line 177
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 178
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->i()Ljava/lang/String;

    move-result-object p2

    .line 179
    invoke-static {p2}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$TopChartPlaylists;->a(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->f:Z

    .line 182
    :cond_0
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 184
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->w:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c()V

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->f()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 188
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a(Landroid/view/View;)V

    .line 189
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a(Ljava/lang/String;)V

    .line 191
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->g:Z

    if-eqz p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->b(Ljava/lang/String;)V

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "list"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->t:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->t:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;

    if-nez p1, :cond_2

    .line 199
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->t:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f1301a1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->t:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;

    const-string v1, "list"

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 203
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->t:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailTrackFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Refreshable;)V

    return-void
.end method

.method public t_()V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method
