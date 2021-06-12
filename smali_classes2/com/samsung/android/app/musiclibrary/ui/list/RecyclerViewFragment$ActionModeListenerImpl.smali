.class public final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionModeListenerImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field private c:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1047
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Landroid/support/v7/widget/Toolbar;
    .locals 2

    .line 1054
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;)Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;
    .locals 0

    .line 1047
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 0

    .line 1047
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;)V
    .locals 4

    if-eqz p1, :cond_6

    .line 1148
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v0

    .line 1149
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w_()I

    move-result v1

    .line 1151
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;->a()I

    move-result v3

    if-ne v2, v3, :cond_0

    if-nez v0, :cond_0

    .line 1152
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->K()V

    goto :goto_2

    .line 1154
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->j(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 1155
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    if-lez v0, :cond_3

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 1154
    :goto_0
    invoke-interface {v2, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 1159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->a()Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    :goto_1
    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;->a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    return-void
.end method

.method public final b(Landroid/support/v7/view/ActionMode;)V
    .locals 4

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->j(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 1165
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    const-string v1, "selectAllViewHolder!!.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1170
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->c(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    const-string v1, "selectAllViewHolder!!.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->k(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/view/View;Z)V

    .line 1172
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Z)V

    .line 1173
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$initSelectAll$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$initSelectAll$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;->a(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "UiList"

    .line 1108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onOptionsItemSelected() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return p1
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->e(Landroid/app/Activity;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1058
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$1$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$1$1;

    check-cast v1, Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1068
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1070
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    const/4 v1, 0x1

    .line 1071
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setActionModeEnabled(Z)V

    .line 1073
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w_()I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g(Z)V

    .line 1075
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->b(Landroid/support/v7/view/ActionMode;)V

    .line 1077
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 1078
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    invoke-interface {v2, p1, p2, v4}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;->a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1080
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v5, p0

    check-cast v5, Landroid/support/v7/view/ActionMode$Callback;

    invoke-direct {v2, v4, p2, p1, v5}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/Menu;Landroid/support/v7/view/ActionMode;Landroid/support/v7/view/ActionMode$Callback;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    .line 1082
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v4, v2, Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;

    if-nez v4, :cond_4

    move-object v2, v3

    :cond_4
    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;

    if-eqz v2, :cond_5

    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$$inlined$also$lambda$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$$inlined$also$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;->doOnPrepare(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 1083
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->b()V

    .line 1087
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->h(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/ArrayList;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 1487
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    const/4 v4, 0x0

    .line 1088
    invoke-interface {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;->setViewEnabled(Z)V

    goto :goto_1

    .line 1091
    :cond_7
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->i(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;->onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 1092
    :cond_8
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    instance-of v2, p2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-nez v2, :cond_9

    move-object p2, v3

    :cond_9
    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getActionModeObservableManager$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager;->a(Landroid/support/v7/view/ActionMode;)V

    .line 1094
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result p1

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;->a()I

    move-result p2

    if-ne p1, p2, :cond_b

    .line 1095
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->safeNotifyDataSetChanged()V

    :cond_b
    return v1
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 5

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1117
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1119
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    move-object v0, v3

    :cond_3
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;

    if-eqz v0, :cond_4

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onDestroyActionMode$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onDestroyActionMode$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;->doOnPrepare(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 1120
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->c()V

    .line 1122
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->c(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1124
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    const-string v4, "selectAllViewHolder!!.itemView"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/view/View;)V

    .line 1125
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onDestroyActionMode$$inlined$let$lambda$1;

    invoke-direct {v2, v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onDestroyActionMode$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 1132
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->c(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setActionModeEnabled(Z)V

    .line 1134
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->h(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1489
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    .line 1135
    invoke-interface {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;->setViewEnabled(Z)V

    goto :goto_1

    .line 1138
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->i(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;->onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    .line 1139
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-nez v1, :cond_b

    move-object v0, v3

    :cond_b
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getActionModeObservableManager$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager;->b(Landroid/support/v7/view/ActionMode;)V

    .line 1141
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result p1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;->a()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 1142
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->safeNotifyDataSetChanged()V

    :cond_d
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "menu"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
