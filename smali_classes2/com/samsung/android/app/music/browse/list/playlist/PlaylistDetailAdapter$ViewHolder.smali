.class Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;
.super Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field protected b:Lcom/samsung/android/app/music/milk/store/widget/RankView;

.field protected c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;Landroid/view/View;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;Landroid/view/View;I)V

    const p3, 0x7f130175

    .line 37
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/milk/store/widget/RankView;

    iput-object p3, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;->b:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    const p3, 0x7f130174

    .line 38
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;->c:Landroid/view/View;

    .line 40
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;->c:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 41
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;->c:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
