.class public final Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$Companion;

.field private static final g:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$Companion;

    .line 83
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->f:Ljava/lang/String;

    .line 22
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->d:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;

    .line 39
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->b:Ljava/lang/String;

    .line 40
    move-object p2, p0

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->c:Z

    .line 42
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->c:Z

    if-eqz p1, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->a()V

    :cond_0
    return-void
.end method

.method private final a()V
    .locals 3

    .line 77
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendScreenId() | screenId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->c:Z

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->a()V

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getScreenId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "fragment"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    .line 49
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->c:Z

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->a()V

    .line 52
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->c:Z

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->d:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 63
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.ListActionModeObservable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->d:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$mOnListActionModeListener$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    return-void

    .line 68
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.ListActionModeObservable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->c:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->a()V

    .line 59
    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->c:Z

    return-void
.end method
