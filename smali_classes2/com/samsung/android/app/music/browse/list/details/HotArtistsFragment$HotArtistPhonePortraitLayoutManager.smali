.class Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HotArtistPhonePortraitLayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager$InternalItemDecoration;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager$InternalItemDecoration;

.field private b:Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 194
    new-instance p1, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager$InternalItemDecoration;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager$InternalItemDecoration;-><init>(Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager;->a:Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager$InternalItemDecoration;

    .line 197
    new-instance p1, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;

    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation;-><init>()V

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;-><init>(Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager;->b:Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;

    return-void
.end method


# virtual methods
.method protected getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    const/16 p1, 0xc8

    return p1
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 207
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager;->a:Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager$InternalItemDecoration;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager;->a:Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager$InternalItemDecoration;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager;->b:Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->a(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 216
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 218
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager;->a:Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager$InternalItemDecoration;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 219
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager;->b:Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->b(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method
