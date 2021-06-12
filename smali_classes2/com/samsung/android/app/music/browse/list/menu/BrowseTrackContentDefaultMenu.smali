.class public Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;
    }
.end annotation


# instance fields
.field private final a:I
    .annotation build Landroid/support/annotation/MenuRes;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;)V
    .locals 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;->b:Ljava/util/List;

    .line 32
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->a(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;->c:Landroid/app/Activity;

    .line 33
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->b(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;->a:I

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;->b:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/menu/HeartMenu;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->a(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/menu/HeartMenu;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;->b:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/menu/BrowseShareMenu;

    .line 36
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->a(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->c(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;)Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->d(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;)Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->e(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/samsung/android/app/music/browse/list/menu/BrowseShareMenu;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/list/BrowseShareable;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;-><init>(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 48
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 52
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;->c:Landroid/app/Activity;

    .line 57
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0042

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 42
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;->a:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 69
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    return v1
.end method
