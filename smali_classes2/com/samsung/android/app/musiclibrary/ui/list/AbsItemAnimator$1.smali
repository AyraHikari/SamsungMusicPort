.class Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;

    .line 110
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v4, v1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->b:I

    iget v5, v1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->c:I

    iget v6, v1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->d:I

    iget v7, v1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->e:I

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
