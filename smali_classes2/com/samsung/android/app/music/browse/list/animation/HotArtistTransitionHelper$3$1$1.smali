.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "HotArtistTransitionHelper"

    const-string v1, "performTransition. shared element transition done."

    .line 255
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->b(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)V

    return-void
.end method
