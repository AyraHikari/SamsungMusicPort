.class Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$3;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/support/design/widget/AppBarLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$3;->b:Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$3;->a:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$3;->a:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$3;->b:Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$3;->a:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$3;->b:Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    return-void
.end method
