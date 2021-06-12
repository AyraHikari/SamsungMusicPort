.class public Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;
.super Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/BrowseLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArtistActivityRequester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester<",
        "Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/support/v4/app/FragmentManager;


# direct methods
.method constructor <init>()V
    .locals 1

    const/16 v0, 0x6e

    .line 505
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;-><init>(I)V

    return-void
.end method


# virtual methods
.method a()Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;
    .locals 0

    return-object p0
.end method

.method public a(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;)",
            "Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;"
        }
    .end annotation

    .line 514
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->g:Ljava/util/List;

    .line 515
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->h:Landroid/support/v4/app/FragmentManager;

    if-eqz p2, :cond_0

    .line 516
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 517
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/base/ArtistModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->a:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->h:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_0

    .line 525
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->h:Landroid/support/v4/app/FragmentManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->g:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->a(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    return-void

    .line 528
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->h:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_0

    .line 534
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->h:Landroid/support/v4/app/FragmentManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->g:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->a(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    return-void

    .line 537
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;->a(Landroid/content/Context;)V

    return-void
.end method

.method synthetic b()Ljava/lang/Object;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->a()Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;

    move-result-object v0

    return-object v0
.end method
