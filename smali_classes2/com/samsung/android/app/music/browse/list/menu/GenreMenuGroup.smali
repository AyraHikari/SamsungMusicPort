.class public Lcom/samsung/android/app/music/browse/list/menu/GenreMenuGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:I
    .annotation build Landroid/support/annotation/MenuRes;
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/menu/GenreMenuGroup;->c:I

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/menu/GenreMenuGroup;->a:Landroid/support/v4/app/Fragment;

    .line 27
    iput p2, p0, Lcom/samsung/android/app/music/browse/list/menu/GenreMenuGroup;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/menu/GenreMenuGroup;->c:I

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/menu/GenreMenuGroup;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/menu/GenreMenuGroup;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 1

    const v0, 0x7f130184

    .line 37
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 39
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/menu/GenreMenuGroup;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 32
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/menu/GenreMenuGroup;->b:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .line 46
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f130184

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x2a

    .line 48
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/GenreMenuGroup;->a:Landroid/support/v4/app/Fragment;

    .line 49
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/GenreMenuGroup;->a:Landroid/support/v4/app/Fragment;

    .line 50
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/FragmentManager;)V

    const/4 p1, 0x1

    return p1
.end method
