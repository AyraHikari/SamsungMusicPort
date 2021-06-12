.class final Lcom/samsung/android/app/music/list/playlist/BaseDialog$onClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 96
    :pswitch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/BaseDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/BaseDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const/4 v1, 0x0

    .line 369
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 370
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    invoke-virtual {p2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_2
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/BaseDialog;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->doAction([J)V

    goto :goto_1

    .line 97
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.RecyclerCursorAdapter<android.support.v7.widget.RecyclerView.ViewHolder!>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$onClickListener$1;->this$0:Lcom/samsung/android/app/music/list/playlist/BaseDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/BaseDialog;->dismiss()V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
