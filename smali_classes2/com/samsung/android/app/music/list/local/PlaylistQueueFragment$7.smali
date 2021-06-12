.class Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic b:J

.field final synthetic c:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;J)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$7;->c:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$7;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput-wide p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$7;->b:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 503
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$7;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 504
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$7;->c:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$7;->b:J

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;J)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 497
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$7;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 498
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$7;->c:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$7;->b:J

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;J)V

    return-void
.end method
