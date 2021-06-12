.class public final Lcom/samsung/android/app/music/list/local/SelectQueueFragment$setQueueActionbar$$inlined$also$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SelectQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SelectQueueFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$setQueueActionbar$$inlined$also$lambda$1;->a:Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$setQueueActionbar$$inlined$also$lambda$1;->a:Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->a(Lcom/samsung/android/app/music/list/local/SelectQueueFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$setQueueActionbar$$inlined$also$lambda$1;->a:Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->a(Lcom/samsung/android/app/music/list/local/SelectQueueFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method
