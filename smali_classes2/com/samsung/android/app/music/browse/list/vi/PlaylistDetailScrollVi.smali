.class public Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;


# instance fields
.field protected a:Landroid/widget/TextView;

.field private final b:Landroid/support/v4/app/Fragment;

.field private c:Landroid/support/design/widget/AppBarLayout;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;->b:Landroid/support/v4/app/Fragment;

    .line 25
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f130575

    .line 28
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;->a:Landroid/widget/TextView;

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f130136

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;->c:Landroid/support/design/widget/AppBarLayout;

    :cond_1
    return-void
.end method

.method private a()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;->b:Landroid/support/v4/app/Fragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f130575

    .line 53
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;->a:Landroid/widget/TextView;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;->c:Landroid/support/design/widget/AppBarLayout;

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;->c:Landroid/support/design/widget/AppBarLayout;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(FII)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;->a()V

    const/high16 p3, 0x3f800000    # 1.0f

    if-gez p2, :cond_0

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;->c:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1, p3}, Landroid/support/design/widget/AppBarLayout;->setAlpha(F)V

    .line 41
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    return-void

    .line 44
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;->c:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p2, p1}, Landroid/support/design/widget/AppBarLayout;->setAlpha(F)V

    .line 45
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/vi/PlaylistDetailScrollVi;->a:Landroid/widget/TextView;

    sub-float/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
