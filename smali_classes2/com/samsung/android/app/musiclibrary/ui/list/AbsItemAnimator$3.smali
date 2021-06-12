.class Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;
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

    .line 153
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;->b:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 157
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;->b:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;->b:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
