.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 6

    .line 233
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    iget-object v1, v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    iget-object v2, v2, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    .line 239
    invoke-static {v2}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/view/View;

    move-result-object v2

    .line 238
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a(Ljava/lang/String;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {p3, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    iget-object v1, v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    .line 244
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    iget-object v2, v2, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->e(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HotArtistTransitionHelper"

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performTransition. transition name - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 251
    new-instance v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$SharedElement;

    new-instance v4, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1$1;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;)V

    invoke-direct {v3, v4}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$SharedElement;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3, v3}, Landroid/support/v4/app/Fragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    .line 261
    new-instance v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1$2;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;)V

    invoke-virtual {p3, v3}, Landroid/support/v4/app/Fragment;->setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V

    .line 280
    new-instance v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$DetailEnter;

    invoke-direct {v3}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$DetailEnter;-><init>()V

    invoke-virtual {p3, v3}, Landroid/support/v4/app/Fragment;->setEnterTransition(Ljava/lang/Object;)V

    .line 281
    new-instance v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    iget v4, v4, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->d:I

    invoke-direct {v3, v4}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;-><init>(I)V

    invoke-virtual {p2, v3}, Landroid/support/v4/app/Fragment;->setExitTransition(Ljava/lang/Object;)V

    .line 283
    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    iget-object v3, v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-static {v3}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->e(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    const/4 v0, 0x1

    .line 288
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->setReorderingAllowed(Z)Landroid/support/v4/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 290
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const p2, 0x7f130011

    .line 291
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    return-void
.end method
