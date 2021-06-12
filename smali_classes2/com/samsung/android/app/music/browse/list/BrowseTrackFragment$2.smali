.class Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 343
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IJ)V
    .locals 2

    .line 347
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;->a:Z

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Prevent double tap."

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 352
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;->a:Z

    .line 354
    new-instance p3, Ljava/util/Timer;

    invoke-direct {p3}, Ljava/util/Timer;-><init>()V

    new-instance p4, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2$1;

    invoke-direct {p4, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2$1;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p3, p4, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 360
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p3, "source_id"

    .line 362
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_2

    .line 364
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 365
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    .line 366
    invoke-virtual {p3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->x()Z

    move-result p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Ljava/lang/String;Z)Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p1, "BrowseTrackFragment"

    const-string p2, "detail popup is null!"

    .line 368
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 371
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 372
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;)V

    .line 373
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p3, "trackDetailPopup"

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public b(Landroid/view/View;IJ)Z
    .locals 0

    .line 380
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    .line 381
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;Landroid/database/Cursor;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
