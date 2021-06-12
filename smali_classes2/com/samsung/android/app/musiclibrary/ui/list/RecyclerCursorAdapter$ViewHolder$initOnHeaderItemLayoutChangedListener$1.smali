.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnHeaderItemLayoutChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->initOnHeaderItemLayoutChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnHeaderItemLayoutChangedListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnHeaderItemLayoutChangedListener$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 13

    move-object v0, p0

    .line 1102
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnHeaderItemLayoutChangedListener$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getAdapterPosition()I

    move-result v4

    if-gez v4, :cond_0

    const-string v1, "UiList"

    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnHeaderItemLayoutChangedListener$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnHeaderItemLayoutChangedListener$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onLayoutChange() invalid position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1104
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1110
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder$initOnHeaderItemLayoutChangedListener$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$getOnHeaderItemLayoutChangedListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "view"

    move-object v3, p1

    .line 1111
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    .line 1110
    invoke-interface/range {v2 .. v12}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;->a(Landroid/view/View;IIIIIIIII)V

    :cond_1
    return-void
.end method
