.class Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->a(Landroid/app/Dialog;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$1;->b:Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$1;->b:Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->dismissAllowingStateLoss()V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$1;->b:Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;)Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/artist/Artist;

    if-eqz p1, :cond_0

    const/16 v0, 0x6e

    .line 91
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/artist/Artist;->getArtistID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$1;->b:Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;

    .line 92
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string p1, "ArtistSelectPopup"

    const-string v0, "onItemClick - artist is null"

    .line 94
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
