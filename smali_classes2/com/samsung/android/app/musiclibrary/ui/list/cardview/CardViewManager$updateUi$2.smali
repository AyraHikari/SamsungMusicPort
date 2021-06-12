.class final Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->a(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

.field final synthetic b:I

.field final synthetic c:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;ILcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$2;->b:I

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$2;->c:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$2;->b:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$2;->c:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$2;->c:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$updateUi$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->b(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V

    :cond_2
    return-void
.end method
