.class public Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/support/design/widget/AppBarLayout;

.field private k:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/animation/AnimatorSet;

.field private p:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;

.field private q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;
    .locals 1

    .line 95
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;-><init>()V

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f13018d

    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    const v0, 0x7f1301b4

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->f:Ljava/lang/String;

    const-string v1, "album"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1301b5

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f1301b7

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f1301b6

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f1301b8

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v1, 0x7f0400b7

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 181
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1302cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f13017b

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->i:Landroid/view/View;

    const v0, 0x7f13017f

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f100086

    .line 186
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v1

    const v2, 0x7f0202e5

    .line 187
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    .line 188
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1301a1

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->h:Landroid/view/View;

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 193
    new-instance p1, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->j:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/support/design/widget/AppBarLayout;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    .line 194
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    .line 145
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->k:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->c(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->l:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->k:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->k:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->k:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040256

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->k:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 154
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->k:Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f130575

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->n:Landroid/widget/TextView;

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f130576

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->m:Landroid/widget/ImageView;

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->m:Landroid/widget/ImageView;

    const v1, 0x7f0202e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->l:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private c()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->j:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()V
    .locals 9

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->o:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->i:Landroid/view/View;

    const-string v1, "scaleX"

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->i:Landroid/view/View;

    const-string v3, "scaleY"

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 216
    iget-object v3, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->i:Landroid/view/View;

    const-string v4, "scaleX"

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 217
    iget-object v4, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->i:Landroid/view/View;

    const-string v5, "scaleY"

    new-array v6, v2, [F

    fill-array-data v6, :array_3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v6, 0x0

    const v7, 0x3f547ae1    # 0.83f

    .line 219
    invoke-static {v5, v6, v7, v7}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 221
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->o:Landroid/animation/AnimatorSet;

    .line 222
    iget-object v6, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->o:Landroid/animation/AnimatorSet;

    new-array v7, v2, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 223
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->o:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x82

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 224
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 227
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v3, v2, v8

    aput-object v4, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 228
    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 229
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->o:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_2
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1302cd

    if-eq p1, v0, :cond_0

    const v0, 0x7f130576

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SpotifyDetailFragment"

    const-string v0, "install spotify"

    .line 254
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v0, "install_spotify"

    .line 260
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;)V

    .line 262
    new-instance p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$3;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 275
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment$2;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;)V

    .line 276
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const p2, 0x7f04003b

    const/4 p3, 0x0

    .line 113
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/view/View;IJ)V
    .locals 0

    .line 329
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->d()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 204
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "my_music_tab_spotify_detail"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 119
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->a:Landroid/content/Context;

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->b:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "thumb"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->c:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->d:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->f:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "user_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->g:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "artists"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->e:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->b()V

    const p2, 0x7f1301a0

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f130136

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->j:Landroid/support/design/widget/AppBarLayout;

    if-eqz p2, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->a(Landroid/view/View;)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "list"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->p:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;

    .line 137
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->p:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;

    if-nez p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->p:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f1301a1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->p:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment;

    const-string v1, "list"

    .line 140
    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public t_()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->q:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method
