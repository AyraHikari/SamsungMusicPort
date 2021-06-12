.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->b(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->c:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "HotArtistTransitionHelper"

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performTransition. doOnLayout. fragment - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->c(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_thumbnail"

    .line 215
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra_show_blur_background"

    const/4 v2, 0x1

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->c(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->c(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "HotArtistTransitionHelper"

    const-string v1, "performTransition. activity is null"

    .line 223
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v2, 0x5a

    .line 227
    invoke-static {v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-static {v3}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->c(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->b:Ljava/lang/String;

    .line 228
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    new-instance v2, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;)V

    .line 229
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$Transaction;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object v0

    .line 293
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method
