.class public Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->b:Ljava/util/List;

    .line 27
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getUserVisibleHint()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->c:Z

    .line 28
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    new-instance v0, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi$1;-><init>(Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->c:Z

    return p1
.end method


# virtual methods
.method public a(FII)V
    .locals 1

    .line 44
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->c:Z

    if-nez p1, :cond_0

    const-string p1, "ViewInCenterVi"

    const-string p2, "fragment userVisibleHint is false"

    .line 45
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sub-int/2addr p3, p2

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    neg-int v0, p3

    .line 54
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
