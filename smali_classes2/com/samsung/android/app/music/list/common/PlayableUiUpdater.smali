.class public Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->b:I

    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 55
    iput p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->b:I

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;-><init>(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->i(I)V

    :goto_0
    return-void
.end method

.method public a(IJJ)V
    .locals 0

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->b:I

    .line 29
    iput-wide p4, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->c:J

    .line 30
    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a(J)V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;-><init>(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->b(J)V

    :goto_0
    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->k()V

    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->l()V

    return-void
.end method
