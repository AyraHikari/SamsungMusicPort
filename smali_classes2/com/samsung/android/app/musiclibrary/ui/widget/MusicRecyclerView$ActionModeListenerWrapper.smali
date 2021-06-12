.class final Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionModeListenerWrapper"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 614
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;->a(Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;)V
    .locals 1

    const-string v0, "wrapped"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;

    return-void
.end method

.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result p2

    .line 624
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->a(Landroid/support/v7/view/ActionMode;)V

    return p2
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    .line 638
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v0, 0x0

    check-cast v0, Landroid/support/v7/view/ActionMode;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Landroid/support/v7/view/ActionMode;)V

    .line 640
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->c()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
