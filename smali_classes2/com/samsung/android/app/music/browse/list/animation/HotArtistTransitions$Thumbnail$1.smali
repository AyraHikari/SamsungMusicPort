.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail$1;
.super Landroid/support/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail;-><init>(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail;Ljava/lang/Runnable;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail$1;->b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/support/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 1
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "HotArtistTransitions.Thumbnail"

    const-string v0, "onTransitionEnd"

    .line 220
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail$1;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$Thumbnail$1;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
