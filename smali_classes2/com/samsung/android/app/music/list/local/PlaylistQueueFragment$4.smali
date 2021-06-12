.class Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->j(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic b:I

.field final synthetic c:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;I)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$4;->c:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$4;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$4;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 399
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$4;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$4;->c:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$4;->b:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->i(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 405
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$4;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 406
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$4;->c:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$4;->b:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->i(I)V

    return-void
.end method
