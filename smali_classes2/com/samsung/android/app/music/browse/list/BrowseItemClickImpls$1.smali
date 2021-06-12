.class final Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls;->a(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;Lio/reactivex/internal/disposables/DisposableContainer;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

.field final synthetic b:Lio/reactivex/internal/disposables/DisposableContainer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;Lio/reactivex/internal/disposables/DisposableContainer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$1;->b:Lio/reactivex/internal/disposables/DisposableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "moveMusicVideoPlayer"

    const-string p2, "onItemClick. activity is null"

    .line 43
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "moveMusicVideoPlayer"

    .line 49
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
    const-string p2, "source_video_id"

    .line 54
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 53
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "1"

    const-string p4, "explicit"

    .line 56
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 55
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 58
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    .line 59
    invoke-virtual {p3}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3, p2, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 60
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$1;->b:Lio/reactivex/internal/disposables/DisposableContainer;

    if-eqz p3, :cond_2

    .line 61
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$1;->b:Lio/reactivex/internal/disposables/DisposableContainer;

    invoke-interface {p3, p1}, Lio/reactivex/internal/disposables/DisposableContainer;->a(Lio/reactivex/disposables/Disposable;)Z

    :cond_2
    const-string p1, "sendVideoPlayHistory"

    const-string p3, "4"

    .line 64
    invoke-static {p1, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x1

    .line 66
    invoke-static {p2, p3}, Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayItem;->create(Ljava/lang/String;I)Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 68
    invoke-static {p1}, Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;->create(Ljava/util/List;)Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;

    move-result-object p1

    .line 67
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;)V

    return-void
.end method
