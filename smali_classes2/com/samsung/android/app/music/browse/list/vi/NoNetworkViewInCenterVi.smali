.class public Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

.field private final b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:F

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->b:Landroid/view/View;

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    .line 31
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getUserVisibleHint()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->i:Z

    .line 35
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    new-instance p2, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi$1;-><init>(Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->b:Landroid/view/View;

    const v1, 0x7f13015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->c:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->b:Landroid/view/View;

    const v1, 0x7f13015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->d:Landroid/view/View;

    return-void
.end method

.method private a(II)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p2, p1

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->c:Landroid/view/View;

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->i:Z

    return p1
.end method

.method private b(II)V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p2, p1

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->d:Landroid/view/View;

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()Z
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->b:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->i:Z

    if-nez v0, :cond_1

    return v1

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->b()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    .line 110
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method


# virtual methods
.method public a(FII)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->b:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->a()V

    .line 58
    iput p2, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->f:I

    .line 59
    iput p3, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->g:I

    .line 60
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->e:F

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->d()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 66
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->a(II)V

    .line 67
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->b(II)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->d()Z

    move-result p1

    const-string p2, "NoNetworkViewInCenterVi"

    .line 120
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onLayoutChange. isVisible - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->d()Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-boolean p2, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->h:Z

    if-eq p2, p1, :cond_0

    if-eqz p1, :cond_0

    .line 122
    iget p2, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->e:F

    iget p3, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->f:I

    iget p4, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->g:I

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->a(FII)V

    .line 124
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;->h:Z

    return-void
.end method
