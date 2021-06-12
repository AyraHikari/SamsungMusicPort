.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$SpotifyViewHolder;
.super Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpotifyViewHolder"
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;Landroid/view/View;I)V
    .locals 2

    .line 202
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;Landroid/view/View;I)V

    const p3, 0x7f130043

    .line 204
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 v0, 0x8

    if-eqz p3, :cond_0

    .line 206
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$SpotifyViewHolder;->textView2:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 210
    iget-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter$SpotifyViewHolder;->textView2:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailTrackFragment$SpotifyDetailAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
