.class final Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$SpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$SpaceItemDecoration;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_4

    .line 393
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$SpaceItemDecoration;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 394
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$SpaceItemDecoration;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p3

    const/4 p4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, p4, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p2, :cond_2

    const/4 p4, 0x1

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    .line 396
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$SpaceItemDecoration;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    const-string v3, "recyclerView.adapter"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ne p2, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 398
    :goto_2
    sget-object p2, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->c()I

    move-result p2

    .line 399
    sget-object v2, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->d()I

    move-result v2

    if-eqz p3, :cond_4

    .line 402
    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :cond_4
    if-eqz p4, :cond_5

    .line 403
    invoke-virtual {p1, p2, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 404
    invoke-virtual {p1, v2, v1, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 405
    :cond_6
    invoke-virtual {p1, v2, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    return-void

    :cond_7
    :goto_4
    return-void
.end method

.method public onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->b(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->e(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentPaused(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->c(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentResumed(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->b(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->c(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->d(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method
