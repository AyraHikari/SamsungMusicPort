.class Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "UiList"

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onItemClick() | position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " | view: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getUserVisibleHint()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "SMUSIC-RadioQueue"

    const-string p2, "list clicked but activity is null"

    .line 547
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 550
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$9;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    .line 551
    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->a(I)Ljava/lang/String;

    move-result-object p4

    .line 552
    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->c(I)I

    move-result p2

    .line 555
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p4, p2, p3, v0}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;IZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
