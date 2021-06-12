.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->onFragmentStarted(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$2;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "HotArtistTransitionHelper"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw.startPostponedEnterTransition. fake view visible - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$2;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    .line 179
    invoke-static {v2}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$2;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->c(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->startPostponedEnterTransition()V

    return-void
.end method
