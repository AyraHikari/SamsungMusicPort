.class final Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/Menu;Landroid/support/v7/view/ActionMode;Landroid/support/v7/view/ActionMode$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/MenuItem;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

.field final synthetic c:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic d:Landroid/view/Menu;

.field final synthetic e:Landroid/support/v7/view/ActionMode$Callback;

.field final synthetic f:Landroid/support/v7/view/ActionMode;

.field final synthetic g:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Landroid/view/MenuItem;Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/Menu;Landroid/support/v7/view/ActionMode$Callback;Landroid/support/v7/view/ActionMode;Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;->a:Landroid/view/MenuItem;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;->c:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;->d:Landroid/view/Menu;

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;->e:Landroid/support/v7/view/ActionMode$Callback;

    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;->f:Landroid/support/v7/view/ActionMode;

    iput-object p7, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;->g:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "UiList"

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onActionModeItemClicked() menu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;->a:Landroid/view/MenuItem;

    const-string v2, "menuItem"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", isResumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;->e:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;->f:Landroid/support/v7/view/ActionMode;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$$special$$inlined$forEach$lambda$1;->a:Landroid/view/MenuItem;

    invoke-interface {p1, v0, v1}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
