.class Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 518
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 529
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 530
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->c(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Z)V

    .line 531
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 521
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->F()Z

    move-result p1

    if-nez p1, :cond_0

    .line 522
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Z)V

    .line 523
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$8;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
