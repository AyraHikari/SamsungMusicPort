.class Lcom/samsung/android/app/music/list/local/QueueFragment$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/QueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/QueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 601
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->c(Lcom/samsung/android/app/music/list/local/QueueFragment;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 602
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->c(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)V

    .line 603
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 593
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->F()Z

    move-result p1

    if-nez p1, :cond_0

    .line 594
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->b(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)V

    .line 595
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
