.class public Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseIntArray;

.field private final e:Landroid/util/SparseIntArray;

.field private f:Landroid/support/v7/widget/Toolbar;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/support/design/widget/AppBarLayout;

.field private k:Landroid/support/graphics/drawable/ArgbEvaluator;

.field private l:Landroid/view/View;

.field private m:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

.field private n:Landroid/view/Menu;

.field private o:Landroid/view/View;

.field private p:Z

.field private q:Z

.field private r:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->b:Landroid/content/Context;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->c:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->d:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->e:Landroid/util/SparseIntArray;

    .line 57
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->f:Landroid/support/v7/widget/Toolbar;

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->f:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f130575

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->g:Landroid/widget/TextView;

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f130143

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->l:Landroid/view/View;

    const v0, 0x7f130136

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->j:Landroid/support/design/widget/AppBarLayout;

    .line 67
    :cond_1
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->k:Landroid/support/graphics/drawable/ArgbEvaluator;

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->j(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->q:Z

    return-void
.end method

.method private a(I)F
    .locals 4

    int-to-float p1, p1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->j:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    const v1, 0x3f19999a    # 0.6f

    div-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->j:Landroid/support/design/widget/AppBarLayout;

    .line 104
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    div-float/2addr p1, v1

    sub-float v3, v2, p1

    :cond_0
    return v3
.end method

.method private a(II)Landroid/content/res/ColorStateList;
    .locals 6

    const/4 v0, 0x2

    .line 226
    new-array v1, v0, [[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const v5, 0x10100a1

    aput v5, v3, v4

    aput-object v3, v1, v4

    new-array v3, v4, [I

    aput-object v3, v1, v2

    .line 230
    new-array v0, v0, [I

    aput p2, v0, v4

    aput p1, v0, v2

    .line 233
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->g:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->f:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f130575

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->g:Landroid/widget/TextView;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->n:Landroid/view/Menu;

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->f:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->n:Landroid/view/Menu;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->j:Landroid/support/design/widget/AppBarLayout;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    const v1, 0x7f130136

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->j:Landroid/support/design/widget/AppBarLayout;

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->m:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    const v1, 0x7f130142

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->m:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->o:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->o:Landroid/view/View;

    :cond_4
    return-void
.end method

.method private a(F)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->g:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string p1, "ArtistDetailScrollVi"

    const-string v0, "actionBarTitle is null"

    .line 128
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->g:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->e(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit16 p1, v0, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v0, -0x2001

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method private b(F)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->f:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->f:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->f:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->e(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "ArtistDetailScrollVi"

    const-string v0, "toolbar is null"

    .line 136
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(F)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->n:Landroid/view/Menu;

    if-nez v0, :cond_0

    const-string p1, "ArtistDetailScrollVi"

    const-string v0, "menu is null"

    .line 144
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->e(F)I

    move-result p1

    const/4 v0, 0x0

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->n:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->n:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->n:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d(F)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->m:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    if-nez v0, :cond_0

    const-string p1, "ArtistDetailScrollVi"

    const-string v0, "tabLayout is null"

    .line 158
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->m:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->g(F)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a(Landroid/content/res/ColorStateList;Z)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->m:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->f(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->setSubTabSelectedIndicatorColor(I)V

    return-void
.end method

.method private e(F)I
    .locals 5

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 180
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->d:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->k:Landroid/support/graphics/drawable/ArgbEvaluator;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->b:Landroid/content/Context;

    const v3, 0x7f0f00bf

    .line 182
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->b:Landroid/content/Context;

    const v4, 0x7f0f00be

    .line 183
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 181
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 184
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->d:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private f(F)I
    .locals 5

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 194
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->e:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 195
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->k:Landroid/support/graphics/drawable/ArgbEvaluator;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->b:Landroid/content/Context;

    const v3, 0x7f0f0017

    .line 196
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->b:Landroid/content/Context;

    const v4, 0x7f0f00c8

    .line 197
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 195
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 198
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private g(F)Landroid/content/res/ColorStateList;
    .locals 6

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 208
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->k:Landroid/support/graphics/drawable/ArgbEvaluator;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->b:Landroid/content/Context;

    const v3, 0x7f0f0018

    .line 210
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->b:Landroid/content/Context;

    const v4, 0x7f0f00c9

    .line 211
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 209
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 213
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->k:Landroid/support/graphics/drawable/ArgbEvaluator;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->b:Landroid/content/Context;

    const v4, 0x7f0f0019

    .line 214
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->b:Landroid/content/Context;

    const v5, 0x7f0f00ca

    .line 215
    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 213
    invoke-virtual {v2, p1, v3, v4}, Landroid/support/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 217
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 218
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->c:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/ColorStateList;

    :goto_0
    return-object p1
.end method

.method private h(F)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->h:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->e(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->i:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->e(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(FII)V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->a()V

    const/high16 p1, 0x3f800000    # 1.0f

    if-gez p2, :cond_0

    .line 75
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->r:F

    .line 76
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->j:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p2, p1}, Landroid/support/design/widget/AppBarLayout;->setAlpha(F)V

    .line 77
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->g:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 78
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->l:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->a(F)V

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->b(F)V

    return-void

    .line 83
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->a(I)F

    move-result p3

    iput p3, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->r:F

    .line 85
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->j:Landroid/support/design/widget/AppBarLayout;

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->r:F

    invoke-virtual {p3, v0}, Landroid/support/design/widget/AppBarLayout;->setAlpha(F)V

    .line 86
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->g:Landroid/widget/TextView;

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->r:F

    sub-float/2addr p1, v0

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->l:Landroid/view/View;

    iget p3, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->r:F

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->l:Landroid/view/View;

    neg-int p2, p2

    int-to-float p2, p2

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 89
    iget p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->r:F

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->a(F)V

    .line 90
    iget p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->r:F

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->b(F)V

    .line 91
    iget p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->r:F

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->c(F)V

    .line 92
    iget p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->r:F

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->d(F)V

    .line 94
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->q:Z

    if-nez p1, :cond_2

    .line 95
    iget p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->r:F

    float-to-double p1, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->a(Z)V

    .line 97
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->p:Z

    if-eqz p1, :cond_3

    .line 98
    iget p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->r:F

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->h(F)V

    :cond_3
    return-void
.end method

.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 0

    const/4 p1, 0x0

    .line 257
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->p:Z

    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->p:Z

    .line 249
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1303b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->h:Landroid/widget/TextView;

    .line 250
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f1303b0

    .line 251
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->i:Landroid/widget/TextView;

    .line 252
    iget p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->r:F

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ArtistDetailScrollVi;->h(F)V

    return-void
.end method
