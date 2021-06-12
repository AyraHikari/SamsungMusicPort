.class public Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# instance fields
.field private final a:Landroid/support/design/widget/AppBarLayout;

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/support/design/widget/AppBarLayout;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->b:I

    .line 24
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->c:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->d:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->a:Landroid/support/design/widget/AppBarLayout;

    .line 30
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->a:Landroid/support/design/widget/AppBarLayout;

    new-instance v0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$1;-><init>(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;)V

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 37
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->a:Landroid/support/design/widget/AppBarLayout;

    new-instance v0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$2;-><init>(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;)V

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 46
    new-instance p2, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$3;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$3;-><init>(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method private a(I)F
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->b()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_0

    const-string p1, "AppBarScrollViController"

    const-string v0, "CollapsingToolbarLayout is not exist."

    .line 61
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    int-to-float p1, p1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->a:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float/2addr v1, p1

    return v1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->b:I

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->b:I

    return p1
.end method

.method private a(F)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;

    .line 76
    iget v2, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->b:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->b()I

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;->a(FII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;F)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->a(F)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;I)F
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->a(I)F

    move-result p0

    return p0
.end method

.method private b()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->c:I

    if-gtz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->a:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->c:I

    .line 71
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->c:I

    return v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;)Landroid/support/design/widget/AppBarLayout;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->a:Landroid/support/design/widget/AppBarLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->c:I

    return p1
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->t_()V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;

    .line 114
    instance-of v2, v1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    if-eqz v2, :cond_0

    .line 115
    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 116
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;->onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;

    .line 104
    instance-of v2, v1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    if-eqz v2, :cond_0

    .line 105
    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 106
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;->onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public t_()V
    .locals 1

    .line 82
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->b:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->a(I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->a(F)V

    return-void
.end method
