.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1181
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAdded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->isAdded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAdded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper$onLoadFinished$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
