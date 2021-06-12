.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$2;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "HotArtistTransitionHelper.Target"

    const-string v1, "captureEndViewAfterTransitionCompleted. hue fade in completed"

    .line 584
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-static {}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->b()Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$2;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->d(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method
