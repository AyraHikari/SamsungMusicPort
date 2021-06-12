.class Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic b:J

.field final synthetic c:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;J)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;->c:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput-wide p3, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;->b:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 45
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 46
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;->c:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    iget-wide v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->b(J)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 39
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;->c:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    iget-wide v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->b(J)V

    return-void
.end method
