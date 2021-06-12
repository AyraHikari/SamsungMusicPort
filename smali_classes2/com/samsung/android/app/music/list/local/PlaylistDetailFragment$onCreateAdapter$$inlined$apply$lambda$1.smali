.class public final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onCreateAdapter$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c()Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onCreateAdapter$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IJ)V
    .locals 0

    .line 608
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onCreateAdapter$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "source_id"

    .line 609
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_1

    .line 611
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 612
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 613
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onCreateAdapter$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const-string p3, "trackDetailPopup"

    .line 612
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 615
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onCreateAdapter$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;->c()V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;IJ)Z
    .locals 0

    .line 621
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onCreateAdapter$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getItemCpAttrs(I)I

    move-result p1

    const p2, 0x80002

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
