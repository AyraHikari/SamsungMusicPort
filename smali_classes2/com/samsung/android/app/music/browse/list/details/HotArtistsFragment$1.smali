.class Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 96
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p1, "HotArtistsFragment"

    const-string p2, "onItemClick. activity is null"

    .line 97
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p3

    if-nez p3, :cond_1

    const-string p1, "HotArtistsFragment"

    .line 102
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onItemClick. pos - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", cursor null"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p4, "source_playlist_id"

    .line 106
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 105
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p4, "name"

    .line 108
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p4, "album_art"

    .line 110
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 109
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 112
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;

    invoke-static {p3}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->a(Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;)Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    move-result-object v0

    move v1, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
