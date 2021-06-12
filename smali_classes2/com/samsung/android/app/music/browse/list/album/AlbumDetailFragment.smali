.class public Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;
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
        "Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;",
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

.field private f:Landroid/support/design/widget/AppBarLayout;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

.field private o:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

.field private p:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

.field private q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;
    .locals 1

    .line 79
    new-instance v0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;-><init>()V

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f13018d

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    const v0, 0x7f1301b8

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v1, 0x7f04003a

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    const v1, 0x7f13017f

    .line 153
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->l:Landroid/widget/ImageView;

    const v1, 0x7f1301b4

    .line 154
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->j:Landroid/widget/TextView;

    .line 155
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->k:Landroid/view/View;

    const v0, 0x7f1301a1

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->i:Landroid/view/View;

    .line 158
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->e()V

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    new-instance p1, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->f:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/support/design/widget/AppBarLayout;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    .line 163
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    new-instance v0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/samsung/android/app/music/model/base/AlbumInfoModel;)V
    .locals 10

    if-nez p1, :cond_0

    const-string p1, "AlbumDetailActivity"

    const-string v0, "item is null"

    .line 233
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 237
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->e:Ljava/lang/String;

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getArtistList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->k:Landroid/view/View;

    const v1, 0x7f13019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->k:Landroid/view/View;

    const v2, 0x7f13019d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 248
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->h:Landroid/view/View;

    const v3, 0x7f1301b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 249
    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->h:Landroid/view/View;

    const v4, 0x7f1301b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 250
    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->h:Landroid/view/View;

    const v5, 0x7f1301ba

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 251
    iget-object v5, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->h:Landroid/view/View;

    const v6, 0x7f1301bc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 252
    iget-object v6, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->k:Landroid/view/View;

    const v7, 0x7f130192

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 254
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->e:Ljava/lang/String;

    .line 255
    iget-object v7, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->m:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v7, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->j:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->d:Ljava/lang/String;

    const v7, 0x7f100086

    .line 259
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->l:Landroid/widget/ImageView;

    const v9, 0x7f0202e5

    .line 260
    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    .line 263
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getGenre()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_3

    .line 265
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getGenre()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 268
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getReleaseDate()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 270
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 271
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    const-string v6, "yyyy.MM.dd"

    invoke-static {v0, v6}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 275
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 277
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f1301b6

    .line 278
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->isVariousArtist()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f1301b7

    .line 281
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 282
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 284
    :cond_5
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    .line 288
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->k:Landroid/view/View;

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :cond_7
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 291
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b019f

    .line 292
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f020286

    .line 293
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->h:Landroid/view/View;

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

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->f:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040261

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    const v1, 0x7f130575

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->m:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->d(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->f(Landroid/app/Activity;)I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->f:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 188
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 189
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 190
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method

.method private f()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->o:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 226
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->getAlbumInfo()Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->o:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    .line 227
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->o:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->a(Lcom/samsung/android/app/music/model/base/AlbumInfoModel;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p2, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "AlbumDetailActivity"

    const-string v0, "item is null"

    .line 198
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f13017f

    if-eq p1, v0, :cond_3

    const v0, 0x7f1301b5

    if-eq p1, v0, :cond_2

    const v0, 0x7f1301b9

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->o:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->o:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    .line 213
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->o:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getAgency()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->o:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getDistributor()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a()Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;->b()Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;

    move-result-object p1

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->o:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->a(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;

    move-result-object p1

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 203
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->o:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getClkImageUrl()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0499

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f04003b

    const/4 p3, 0x0

    .line 96
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 100
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroyView()V

    .line 101
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    return-void
.end method

.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .line 312
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->l:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 314
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 315
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->h:Landroid/view/View;

    const v1, 0x7f1301b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 316
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->h:Landroid/view/View;

    const v1, 0x7f1301b5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .line 302
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 303
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->l:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 304
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 305
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->h:Landroid/view/View;

    const v1, 0x7f1301b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 306
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->h:Landroid/view/View;

    const v1, 0x7f1301b5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 106
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->a:Landroid/content/Context;

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "extra_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->b:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "extra_track_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->c:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "extra_track_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 113
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/util/UiUtils;->c(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->g:Landroid/view/View;

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->d()V

    .line 117
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    const p2, 0x7f1301a0

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->h:Landroid/view/View;

    const p2, 0x7f130136

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->f:Landroid/support/design/widget/AppBarLayout;

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 122
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->a(Landroid/view/View;)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "list"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->n:Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->n:Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

    if-nez p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->n:Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f1301a1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->n:Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

    const-string v1, "list"

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const-string v0, "popup"

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->c:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public t_()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method
