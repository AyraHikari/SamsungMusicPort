.class final Lcom/samsung/android/app/music/list/playlist/BaseDialog$itemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/BaseDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/BaseDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/BaseDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$itemClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$itemClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/BaseDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$itemClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/BaseDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v7, 0x1

    xor-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;IZZILjava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$itemClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/BaseDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$itemClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/BaseDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$itemClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/BaseDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const-string v2, "(dialog as AlertDialog).getButton(BUTTON_POSITIVE)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$itemClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/BaseDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$itemClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/BaseDialog;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->onItemClicked(Landroid/view/View;IJ)V

    return-void

    .line 115
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.app.AlertDialog"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.RecyclerCursorAdapter.ViewHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
