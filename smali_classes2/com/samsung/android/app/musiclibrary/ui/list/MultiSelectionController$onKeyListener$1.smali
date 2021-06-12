.class public final Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "MultiSelectionController"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " event: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 105
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->b(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;Z)V

    .line 106
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;Z)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const-string v0, "MultiSelectionController"

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " event: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 123
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x1d

    if-eq v0, v3, :cond_6

    const/16 p1, 0x20

    if-eq v0, p1, :cond_5

    const/16 p1, 0x22

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    move-object p1, v3

    :cond_2
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-nez p1, :cond_4

    .line 141
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-nez v0, :cond_3

    move-object p1, v3

    :cond_3
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    :cond_4
    if-eqz p1, :cond_9

    .line 143
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->launchSearch()V

    goto :goto_1

    .line 132
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->F()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->deleteItems()V

    goto :goto_1

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->F()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result p1

    sget v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    if-ne p1, v0, :cond_7

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->J()V

    .line 128
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g(Z)V

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v2, 0x0

    .line 149
    :cond_9
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x8c

    if-ne p1, p2, :cond_a

    .line 150
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 153
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->c(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 154
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->b(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;Z)V

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;Z)V

    goto :goto_2

    .line 156
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->b(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 157
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController$onKeyListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;Z)V

    :cond_c
    :goto_2
    return v2

    :cond_d
    :goto_3
    return v1
.end method
