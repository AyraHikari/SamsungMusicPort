.class Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$3;
.super Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$3;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/app/music/list/favorite/AddResult;)V
    .locals 1

    .line 538
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->onResult(Lcom/samsung/android/app/music/list/favorite/AddResult;)V

    .line 539
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/AddResult;->getFlag()I

    move-result p1

    const/4 v0, 0x4

    .line 540
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->hasFlag(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 541
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 542
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$3;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;Z)V

    :cond_1
    return-void
.end method
