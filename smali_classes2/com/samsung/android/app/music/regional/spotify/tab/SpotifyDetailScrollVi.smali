.class public Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/support/design/widget/AppBarLayout;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->a:Landroid/support/v4/app/Fragment;

    .line 26
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130575

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->b:Landroid/widget/TextView;

    .line 30
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130576

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->c:Landroid/widget/ImageView;

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f130136

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->d:Landroid/support/design/widget/AppBarLayout;

    :cond_1
    return-void
.end method

.method private a()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->a:Landroid/support/v4/app/Fragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130575

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->b:Landroid/widget/TextView;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->a:Landroid/support/v4/app/Fragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130576

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->b:Landroid/widget/TextView;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->d:Landroid/support/design/widget/AppBarLayout;

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->d:Landroid/support/design/widget/AppBarLayout;

    :cond_2
    return-void
.end method


# virtual methods
.method public a(FII)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->a()V

    const/high16 p3, 0x3f800000    # 1.0f

    if-gez p2, :cond_0

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->d:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1, p3}, Landroid/support/design/widget/AppBarLayout;->setAlpha(F)V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    .line 47
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->d:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p2, p1}, Landroid/support/design/widget/AppBarLayout;->setAlpha(F)V

    .line 48
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->b:Landroid/widget/TextView;

    sub-float/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailScrollVi;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
