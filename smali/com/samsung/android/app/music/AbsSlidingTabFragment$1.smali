.class Lcom/samsung/android/app/music/AbsSlidingTabFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/AbsSlidingTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/AbsSlidingTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/AbsSlidingTabFragment;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment$1;->a:Lcom/samsung/android/app/music/AbsSlidingTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment$1;->a:Lcom/samsung/android/app/music/AbsSlidingTabFragment;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->a(IZ)V

    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment$1;->a:Lcom/samsung/android/app/music/AbsSlidingTabFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->a(IZ)V

    return-void
.end method
