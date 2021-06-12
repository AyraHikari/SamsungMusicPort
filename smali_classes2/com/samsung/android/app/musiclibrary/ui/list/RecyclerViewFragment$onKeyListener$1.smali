.class public final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x14

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3d

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_3

    .line 221
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 224
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w_()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result p1

    sget p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result p1

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;->a()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->J()V

    return v0

    .line 213
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 219
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setIsDownKeyPerforming(Z)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x14

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/16 p2, 0x3d

    if-eq p1, p2, :cond_1

    const/16 p2, 0x70

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->F()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->deleteItems()V

    goto :goto_0

    .line 236
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 237
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setIsDownKeyPerforming(Z)V

    .line 238
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->s(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 239
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->x(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 240
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->x(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return v0
.end method
