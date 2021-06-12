.class public final Lcom/samsung/android/app/music/menu/ShareMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private b:I

.field private c:I

.field private final d:Landroid/app/Activity;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ShareMenu;->d:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/app/music/menu/ShareMenu;->e:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/samsung/android/app/music/menu/ShareMenu;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "fragment.activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/menu/ShareMenu;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 34
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iput-object v0, p0, Lcom/samsung/android/app/music/menu/ShareMenu;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 35
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    if-nez v0, :cond_2

    move-object p1, v1

    :cond_2
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->g()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    :goto_1
    iput p1, p0, Lcom/samsung/android/app/music/menu/ShareMenu;->b:I

    return-void
.end method

.method private final a(Landroid/view/Menu;I)V
    .locals 4

    .line 58
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 60
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 61
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 65
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ShareMenu;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/ShareMenu;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 67
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 69
    :cond_1
    iget p2, p0, Lcom/samsung/android/app/music/menu/ShareMenu;->c:I

    if-lez p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 72
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isLocalTrack()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 73
    new-array p2, v1, [J

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCurrentAudioId()J

    move-result-wide v2

    aput-wide v2, p2, v0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ShareMenu;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/util/MediaDbUtils;->b(Landroid/content/Context;[J)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 76
    :cond_4
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_5
    return-void
.end method

.method private final a()Z
    .locals 2

    .line 31
    iget v0, p0, Lcom/samsung/android/app/music/menu/ShareMenu;->b:I

    const v1, 0x100012

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isLocalTrack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final b(Landroid/view/Menu;I)V
    .locals 1

    .line 82
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 84
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 85
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/ShareMenu;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 90
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 92
    :cond_1
    iget p2, p0, Lcom/samsung/android/app/music/menu/ShareMenu;->c:I

    if-lez p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ShareMenu;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/music/menu/ShareMenu;->c:I

    const v0, 0x7f13002c

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ShareMenu;->a(Landroid/view/Menu;I)V

    const v0, 0x7f1305ad

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ShareMenu;->b(Landroid/view/Menu;I)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f13002c

    if-eq p1, v0, :cond_0

    const v0, 0x7f1305ad

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ShareMenu;->e:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;->m_()V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method
