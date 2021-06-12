.class Lcom/samsung/android/app/music/list/local/QueueFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/QueueFragment;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/QueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$2;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 280
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$2;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/music/list/local/QueueFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 272
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$2;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/music/list/local/QueueFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method
