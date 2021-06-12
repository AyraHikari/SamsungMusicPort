.class Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTrackDeleteable;
.super Lcom/samsung/android/app/music/list/ListDeleteableImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HiddenTrackDeleteable"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 321
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTrackDeleteable;->a:Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 322
    invoke-direct {p0, p2, p1, v0}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;II)V

    return-void
.end method


# virtual methods
.method protected deleteItemsInternal(Landroid/app/Activity;[J)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTrackDeleteable;->a:Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->a(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;Landroid/content/Context;[J)V

    .line 330
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTrackDeleteable;->a:Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    .line 331
    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz p2, :cond_0

    .line 332
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->c()V

    :cond_0
    return-void
.end method
