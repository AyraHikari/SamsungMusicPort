.class Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 0

    .line 387
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->F()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p2, "BrowseTrackFragment"

    const-string p3, "action mode."

    .line 388
    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void

    .line 392
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "source_album_id"

    .line 394
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_1

    .line 395
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-static {p3, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;Landroid/database/Cursor;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 396
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x64

    .line 397
    invoke-static {p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    .line 398
    invoke-virtual {p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method
