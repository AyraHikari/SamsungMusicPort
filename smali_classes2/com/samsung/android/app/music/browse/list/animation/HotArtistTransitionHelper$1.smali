.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;
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

    .line 109
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    const-string p2, "HotArtistTransitionHelper"

    .line 113
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScrolled. visible - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    .line 114
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 113
    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 116
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$1;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->b(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)V

    return-void
.end method
