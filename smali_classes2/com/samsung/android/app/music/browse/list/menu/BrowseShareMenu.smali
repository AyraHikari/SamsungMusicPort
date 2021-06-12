.class public Lcom/samsung/android/app/music/browse/list/menu/BrowseShareMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/list/BrowseShareable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseShareMenu;->a:Landroid/support/v4/app/Fragment;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseShareMenu;->b:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    .line 30
    iput-object p3, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseShareMenu;->c:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseShareMenu;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const v0, 0x7f13002c

    .line 41
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b022f

    .line 45
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseShareMenu;->b:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 48
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseShareMenu;->b:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/BrowseShareable;->l()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .line 61
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f13002c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseShareMenu;->b:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseShareMenu;->b:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/BrowseShareable;->m_()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
