.class Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic b:I

.field final synthetic c:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;I)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->c:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput p3, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->c:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    iget v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->b:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->i(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->c:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    iget v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->b:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->i(I)V

    return-void
.end method
