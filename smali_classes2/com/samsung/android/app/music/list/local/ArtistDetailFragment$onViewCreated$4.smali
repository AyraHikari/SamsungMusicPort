.class public final Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onViewCreated$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onViewCreated$4;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .line 207
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onViewCreated$4;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->c(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "getChildAt(0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 209
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "getChildAt(1)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 211
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onViewCreated$4;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->c(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout;->setAlpha(F)V

    .line 212
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onViewCreated$4;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->b(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setSwipeEnabled(Z)V

    return-void

    .line 207
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 3

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onViewCreated$4;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->c(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "getChildAt(0)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x1

    .line 200
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "getChildAt(1)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 202
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onViewCreated$4;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->c(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object p1

    const v1, 0x3ebd70a4    # 0.37f

    invoke-virtual {p1, v1}, Landroid/support/design/widget/TabLayout;->setAlpha(F)V

    .line 203
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onViewCreated$4;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->b(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setSwipeEnabled(Z)V

    return-void

    .line 198
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
