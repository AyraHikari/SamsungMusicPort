.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1$2;
.super Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$SharedElementCallbackAdapter;
.source "SourceFile"


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

    .line 261
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1$2;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$SharedElementCallbackAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$1;)V

    return-void
.end method


# virtual methods
.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 275
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$SharedElementCallbackAdapter;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 276
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1$2;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->h(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)V

    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 266
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$SharedElementCallbackAdapter;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 268
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1$2;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->g(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1$2;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;

    iget-object p2, p2, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    iget-object p2, p2, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;->e:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    .line 269
    invoke-static {p2}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->f(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object p2

    .line 268
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
