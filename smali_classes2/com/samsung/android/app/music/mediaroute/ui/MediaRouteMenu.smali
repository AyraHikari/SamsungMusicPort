.class public final Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$OnCountChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v4/app/FragmentManager;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteMenu;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteMenu;->b:Landroid/support/v4/app/FragmentManager;

    .line 33
    invoke-virtual {p3}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->a()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteMenu;->c:I

    .line 34
    invoke-virtual {p3, p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$OnCountChangedListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-UI-PlayerCast"

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRouteMenu> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteMenu;->c:I

    if-ne v0, p1, :cond_0

    return-void

    .line 71
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteMenu;->c:I

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Media route count: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteMenu;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteMenu;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 1

    const v0, 0x7f1305d5

    .line 43
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteMenu;->c:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f1305d5

    if-ne p1, v0, :cond_0

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteMenu;->b:Landroid/support/v4/app/FragmentManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteMenu;->a:Landroid/content/Context;

    const-string v0, "general_click_event"

    const-string v1, "click_event"

    const-string v2, "fullplayer_more_continue_playing_on"

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/player/logger/googlefirebase/PlayerFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
